
Rebasing with bare repo does not seem to work so well.

git fetch --all

git merge




To receive the new commits

git fetch

Reset

You can reset the commit for a local branch using git reset.

To change the commit of a local branch:

git reset origin/main --hard

Be careful though, as the documentation puts it:

    Resets the index and working tree. Any changes to tracked files in the working tree since <commit> are discarded.

If you want to actually keep whatever changes you've got locally - do a --soft reset instead. Which will update the commit history for the branch, but not change any files in the working directory (and you can then commit them).

Rebase

You can replay your local commits on top of any other commit/branch using git rebase:

git rebase -i origin/main

This will invoke rebase in interactive mode where you can choose how to apply each individual commit that isn't in the history you are rebasing on top of.

If the commits you removed (with git push -f) have already been pulled into the local history, they will be listed as commits that will be reapplied - they would need to be deleted as part of the rebase or they will simply be re-included into the history for the branch - and reappear in the remote history on the next push.

Use the help git command --help for more details and examples on any of the above (or other) commands.

