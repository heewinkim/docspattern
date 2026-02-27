#!/bin/bash
set -e

SKILLS_DIR="$HOME/.claude/skills"

echo "Installing docspattern skills to $SKILLS_DIR ..."

mkdir -p "$SKILLS_DIR/makedocs" "$SKILLS_DIR/docs"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

cp "$SCRIPT_DIR/skills/makedocs/SKILL.md" "$SKILLS_DIR/makedocs/SKILL.md"
cp "$SCRIPT_DIR/skills/docs/SKILL.md" "$SKILLS_DIR/docs/SKILL.md"

echo "Done! Available commands in Claude Code:"
echo "  /makedocs  - 프로젝트 docs/ 문서 자동 생성"
echo "  /docs      - 세션 시작 시 프로젝트 파악"
