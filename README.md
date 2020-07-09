# Well Dev Utils
A collection of useful tools and features at diverse languages to help all develops


# Table of Contents
1. [Git](#git)
2. [Merge branch from another repository](#git)
3. [Create a Tag and push](#git)


# Utils

## Git

## Merge branch from another repository

```
git remote add origin2 https://github.com/user/otherRepo
git merge origin2/branchYouWantToMerge
```


## Create a Tag and push

```
git tag -a v1.0 -m “Sum functionality”
git push
```



## Show files unmerged

```
git diff --name-status --diff-filter=U
```
