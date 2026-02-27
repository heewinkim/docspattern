# docspattern

Claude Code에서 사용하는 프로젝트 문서화 패턴 스킬 모음입니다.

## 포함된 스킬

### `/makedocs`
프로젝트를 분석해서 `docs/` 디렉토리에 영구 문서를 자동 생성/갱신합니다.
- 기술 스택, 프로젝트 구조, 개발 환경, 배포 환경 등을 문서화
- 세션이 끝나도 남아있는 프로젝트 참조 문서 생성

### `/docs`
새 세션 시작 시 `docs/` 디렉토리를 읽고 프로젝트 컨텍스트를 빠르게 복원합니다.
- docs/ 전체 파일을 읽고 요약
- "프로젝트 파악 완료" 후 바로 작업 시작 가능

## 설치

```bash
curl -fsSL https://raw.githubusercontent.com/heewinkim/docspattern/main/setup.sh | bash
```

또는 직접 클론:

```bash
git clone https://github.com/heewinkim/docspattern.git
cd docspattern
./setup.sh
```

## 사용 예시

```
# 새 프로젝트에서 문서 생성
/makedocs

# 새 세션 시작 시 프로젝트 파악
/docs
```
