#克隆git仓库
git clone [URL]
#进入git仓库
cd [仓库名]

#创建一个名为 new_branch 新的空分支(不包含历史的分支)
git checkout --orphan  new_branch

#添加所有文件到new_branch分支，对new_branch分支做一次提交
git add -A
git commit -am 'init'

#删除master分支
git branch -D master
#将当前所在的new_branch分支重命名为master
git branch -m master
#将更改强制推送到github仓库
git push origin master --force