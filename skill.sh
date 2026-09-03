#!/usr/bin/env bash

# Print a repository-relative path for a known skill. This file intentionally
# does not execute, install, or source skill contents.
skill_path() {
  local path

  if (($# != 1)); then
    printf 'Usage: %s <skill-name>\n' "${BASH_SOURCE[0]##*/}" >&2
    return 64
  fi

  case "$1" in
    taste-skill) path='skills/taste-skill/SKILL.md' ;;
    taste-skill-v1) path='skills/taste-skill-v1/SKILL.md' ;;
    gpt-taste) path='skills/gpt-tasteskill/SKILL.md' ;;
    image-to-code-skill) path='skills/image-to-code-skill/SKILL.md' ;;
    imagegen-frontend-web) path='skills/imagegen-frontend-web/SKILL.md' ;;
    imagegen-frontend-mobile) path='skills/imagegen-frontend-mobile/SKILL.md' ;;
    brandkit) path='skills/brandkit/SKILL.md' ;;
    redesign-skill) path='skills/redesign-skill/SKILL.md' ;;
    soft-skill) path='skills/soft-skill/SKILL.md' ;;
    output-skill) path='skills/output-skill/SKILL.md' ;;
    minimalist-skill) path='skills/minimalist-skill/SKILL.md' ;;
    brutalist-skill) path='skills/brutalist-skill/SKILL.md' ;;
    stitch-skill) path='skills/stitch-skill/SKILL.md' ;;
    *)
      printf 'Unknown skill: %s\n' "$1" >&2
      return 65
      ;;
  esac

  printf '%s\n' "$path"
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  skill_path "$@"
fi
