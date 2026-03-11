#!/bin/bash
git filter-branch --env-filter '
export GIT_AUTHOR_NAME="Agentics Bot"
export GIT_AUTHOR_EMAIL="noreply@agentics.dev"
export GIT_COMMITTER_NAME="Agentics Bot"  
export GIT_COMMITTER_EMAIL="noreply@agentics.dev"
' -- --all
