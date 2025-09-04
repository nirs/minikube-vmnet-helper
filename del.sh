set -euo pipefail
REPO="minikube-machine/vmnet-helper"

# Delete ALL releases (IDs are required for DELETE)
gh api /repos/$REPO/releases --paginate -q '.[].id' \
| while read -r id; do
  [ -n "$id" ] && gh api -X DELETE /repos/$REPO/releases/"$id"
done

# Delete ALL remote tags, then local tags
git fetch --tags origin
git tag -l | while read -r t; do
  [ -n "$t" ] && git push origin ":refs/tags/$t"
done
git tag -l | xargs -r -n1 git tag -d

