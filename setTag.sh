read version

echo "updateVersion $version"
git tag $version
git push origin $version

pod trunk push