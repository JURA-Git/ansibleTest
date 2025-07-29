
echo "achache2 install 앤서블 & bash"
echo " *주의*현제 설치하시려는 웹 서버는 디폴트 설정이 아닙니다"

answer="yes"
read -p "아파치를 설치하겠습니까? (yes/no 디폴트 값:yes입니다)" user_answer_input


answer=${user_answer_input:-$answer}

if [ "$answer" == "no" ]; then
	echo "설치를 취소하셨습니다"
	return 1	
fi
ansible-playbook installApach.yml
echo "설치가 종료됩니다"

