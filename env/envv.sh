
#!/bin/bash
VERSION=1.1
usage ()
{
 echo "Usage: envv [--show] [--new NAME VALUE]" 
}

help ()
{
 echo -e "envv\t\t\t[--show] [--new NAME VALUE]\n" 
 echo -e "Desctiption:\nThis utility provide simple persistent var creation\n" 
 echo -e "Common options:" 
 echo -e "--show\t\t\tlists all paris NAME=VALUE" 
 echo -e "--new NAME VALUE\tcreates new persisctend variable" 
 echo -e "--usage\t\t\tprints usuage" 
 echo -e "--help\t\t\tprints this text" 
 echo -e "--verstion\t\tprints version" 
 echo -e ""
}

version() {
  echo "version: $VERSION"
}

show=0
case $1 in 
  "--show")
    echo "CUSTOM VARS ARE: "
    show=1
    ;;
  "--new")
    echo $3
    echo "export $2=$3" >> $(pwd)/envv.sh
    echo "((show)) && echo $2=$3" >> $(pwd)/envv.sh 
    echo "CREATED NEW VAR: $2=$3" 
    show=0
    ;;
  "--help")
    help
    ;;
  "--usage")
    usage 
    ;;
  "--version")
    version 
    ;;

  *)
    echo "wrong option, see usage"
    usage
    ;;
esac

export ce=some
((show)) && echo ce=some_test_value
