git filter-branch --force --index-filter \
  'git rm --cached --ignore-unmatch app-config.yaml' \
  --prune-empty --tag-name-filter cat -- --all


  git filter-branch --force --index-filter \
  'git rm --cached --ignore-unmatch app-config-secret.yaml' \
  --prune-empty --tag-name-filter cat -- --all


  git filter-branch --force --index-filter \
  'git rm --cached --ignore-unmatch 0_set_env.sh' \
  --prune-empty --tag-name-filter cat -- --all


git filter-branch --force --index-filter \
  'git rm --cached --ignore-unmatch set_env.sh' \
  --prune-empty --tag-name-filter cat -- --all