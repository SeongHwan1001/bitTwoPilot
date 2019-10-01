appName="9m1i9n1/p1"
containerName="p1"
word="1"
echo "$word"
word=`docker ps -a -q --no-trunc --filter name=^/"$containerName"$`
echo "$word"
if [ -z "$word" ];
then
    echo "해당 컨테이너가 존재하지 않아 실행------------------"
elif [ -n "$word" ];
then
    echo "해당 컨테이너가 존재하여 정지시키고 삭제------------"
    /usr/bin/docker stop "$word"
    /usr/bin/docker rm "$word"
elif [ "$word" == "1" ];
then
    echo "컨테이너 에러로 종료하고 삭제----------------------"
    /usr/bin/docker stop "$word"
    /usr/bin/docker rm "$word"
fi

/usr/bin/docker push "$appName"
/usr/bin/docker run -p 18080:18080 -d --name "$containerName" "$appName":latest

echo "완료------------------------------------------------"
