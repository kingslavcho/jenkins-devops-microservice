param ([string]$mes = "new commit")

git add *
git commit -m $mes
git push origin