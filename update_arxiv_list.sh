source activate env/bin/activate
export PYTHONIOENCODING=utf8

git fetch --all
git reset --hard origin/master

/opt/anaconda3/bin/python3 create_group_arxiv_html.py 

git add .
git commit -m "synced @ $(date)"
git push
