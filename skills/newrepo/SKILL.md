---
name: newrepo
description: 새 GitHub 레포지토리를 생성하고 초기 설정까지 완료한다. gh CLI를 사용해 레포 생성 후 로컬 git 초기화 및 첫 푸시까지 자동 처리한다.
---

사용자가 `/newrepo`를 실행하면 새 GitHub 레포지토리를 생성하고 현재 디렉토리를 연결한다.

## 사전 확인

`gh` CLI가 설치되어 있는지 확인한다:
```bash
gh auth status
```
- 설치 안 됐으면: `brew install gh && gh auth login` 안내
- 여러 계정이 있으면 현재 활성 계정을 보여주고, 맞는 계정인지 확인한다
  ```bash
  gh api user --jq '.login'
  # 전환 필요 시: gh auth switch --user <사용자명>
  ```

## 실행 절차

### 1. 정보 수집

사용자에게 아래를 확인한다 (이미 말했으면 생략):
- 레포 이름
- 설명 (선택)
- 공개(public) / 비공개(private)

### 2. GitHub 레포 생성

```bash
# public
gh repo create <레포명> --public --description "<설명>"

# private
gh repo create <레포명> --private --description "<설명>"
```

### 3. 로컬 git 초기화 및 연결

현재 디렉토리가 이미 git repo이면 remote만 추가, 아니면 init부터:
```bash
git init
git add .
git commit -m "init"
git branch -M main
git remote add origin https://github.com/<USER>/<REPO>.git
git push -u origin main
```

USER는 `gh api user --jq '.login'` 으로 확인한다.

### 4. 완료 보고

- 생성된 레포 URL 출력
- `/makedocs`로 문서 만들지 여부 제안

## 주의사항

- 레포 이름에 공백이 있으면 하이픈으로 변환한다
- 이미 같은 이름의 레포가 있으면 사용자에게 알리고 중단한다
- 계정이 여러 개인 경우 레포 생성 전에 반드시 활성 계정을 확인한다
