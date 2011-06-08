#!/bin/bash

bin=/Users/hallgren/www/bin

charset="UTF-8"
AUTOHEADER=no

. $bin/cgistart.sh
export LC_CTYPE="UTF-8"
style_url="editor.css"

tmp="$documentRoot/tmp"

make_dir() {
  dir="$(mktemp -d "$tmp/gfse.XXXXXXXXXX")"
# chmod a+rxw "$dir"
  chmod a+rx "$dir"
  cp "grammars.cgi" "$dir"
}


check_grammar() {
  pagestart "Uploaded"
# echo "$PATH_INFO"
  chgrp everyone "$dir"
  chmod g+ws "$dir"
  umask 002
  files=( $(Reg from-url | LC_CTYPE=sv_SE.ISO8859-1 ./save "$dir") )
  gffiles=( )
  otherfiles=( )
  for f in ${files[*]} ; do
    case "$f" in
      *.gf) gffiles=( ${gffiles[*]} "$f" ) ;;
      *) otherfiles=( ${otherfiles[*]} "$f" ) ;;
    esac
  done

  if [ ${#otherfiles} -gt 0  -a -n "$PATH_INFO" ] ; then
      echo "Use the following link for shared access to your grammars from multiple devices:"
      begin ul
        case "$SERVER_PORT" in
	    80) port="" ;;
	    *) port=":$SERVER_PORT"
        esac
        parent="http://$SERVER_NAME$port${REQUEST_URI%/upload.cgi/tmp/gfse.*}"
        cloudurl="$parent/share.html#${dir##*/}"
        li; link "$cloudurl" "$cloudurl"
      end
      begin dl
      dt ; echo "◂"; link "javascript:history.back()" "Back to Editor"
      end
  fi

  cd $dir
  if [ ${#gffiles} -gt 0 ] ; then
    begin pre
    echo "gf -s -make ${gffiles[*]}"
    if gf -s -make ${gffiles[*]} 2>&1 ; then
      end
      h3 OK
      begin dl
      [ -z "$minibar_url" ] || { dt; echo "▸"; link "$minibar_url?/tmp/${dir##*/}/" "Minibar"; }
      [ -z "$transquiz_url" ] || { dt; echo "▸"; link "$transquiz_url?/tmp/${dir##*/}/" "Translation Quiz"; }
      [ -z "$gfshell_url" ] || { dt; echo "▸"; link "$gfshell_url?dir=${dir##*/}" "GF Shell"; }
      dt ; echo "◂"; link "javascript:history.back()" "Back to Editor"

      end
      begin pre
      ls -l *.pgf
    else
      end
      begin h3 class=error_message; echo Error; end
      for f in ${gffiles[*]} ; do
	h4 "$f"
	begin pre class=plain
	cat -n "$f"
	end
      done
    fi
  fi
  hr
  date
# begin pre ; env
  endall
}

error400() {
    echo "Status: 400"
    pagestart "Error"
    echo "What do you want?"
    endall
}

error404() {
    echo "Status: 404"
    pagestart "Not found"
    echo "Not found"
    endall
}

if [ -z "$tmp" ] || ! [ -d "$tmp" ] ; then
  pagestart "Error"
  begin pre
  echo "upload.cgi is not properly configured:"
  if [ -z "$tmp" ] ; then
    echo "cgiconfig.sh must define tmp"
  elif [ ! -d "$tmp" ] || [ ! -w "$tmp" ] ; then
    echo "$tmp must be a writeable directory"
  fi
  # cgiconfig.sh should define minibar & gfshell to allow grammars to be tested.
  endall
else
case "$REQUEST_METHOD" in
  POST)
    case "$PATH_INFO" in
      /tmp/gfse.*)
	style_url="../../$style_url"
        dir="$tmp/${PATH_INFO##*/}"
	check_grammar
	;;
      *)
        make_dir
	check_grammar
        rm -rf "$dir"
    esac
    ;;
  GET)
    case "$QUERY_STRING" in
	dir) make_dir
	     ContentType="text/plain"
	     cgiheaders
	     echo_n "/tmp/${dir##*/}"
             ;;
	download=*)
	     file=$(qparse "$QUERY_STRING" download)
	     case "$file" in
		 /tmp/gfse.*/*.json) # shouldn't allow .. in path !!!
		     path="$documentRoot$file"
		     if [ -r "$path" ] ; then
			 ContentType="text/javascript; charset=$charset"
			 cgiheaders
			 cat "$path"
		     else
			 error404
		     fi
		     ;;
                *) error400
	     esac
	     ;;
        *) error400
    esac
esac
fi
