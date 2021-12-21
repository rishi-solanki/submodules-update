echo "Starting Submodules pull"
git config --global credential.helper store
touch ~/.git-credentials
git clone https://${USER}:${TOKEN}@${GIT_PROVIDER}/${USER}/${REPO_NAME}.git
cd ${REPO_NAME}
echo $submodules
for i in ${submodules[@]}
do
echo "https://${USER}:${TOKEN}@${GIT_PROVIDER}/${USER}/${i}.git" >> ~/.git-credentials
echo Submodule: ${i} - Added to Credentials
done
git config --global user.name "${COMMIT_USER}"
git config --global user.email "${COMMIT_USER_EMAIL}"
git submodule update  --init --recursive --remote
ls -lR
git commit -am "${COMMIT_MESSAGE}"
git push
