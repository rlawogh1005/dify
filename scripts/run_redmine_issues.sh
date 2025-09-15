#!/bin/bash

. /usr/src/pyexamine_project/pyexamine/jenkinstestvenv/bin/activate

pip install -r /usr/src/pyexamine_project/redmine_project/requirements.txt
# python -c "import nltk; nltk.download('punkt'); nltk.download('averaged_perceptron_tagger'); nltk.download('punkt_tab')"

# 현재 workspace 경로 출력
echo "Current WORKSPACE: $WORKSPACE"

# 저장 경로 확인용 출력
echo "Will save JSON to: $WORKSPACE/some2.json"

# 파이썬 출력 결과를 some2.json에 저장
python3 /usr/src/pyexamine_project/redmine_project/Redmine.py > "$WORKSPACE/some2.json"

# 저장 완료 메시지
echo "Redmine issue report saved to: $WORKSPACE/some2.json"