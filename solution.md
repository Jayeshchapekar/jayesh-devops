Task 1 – Setup & Navigation
bashcd git-repo          # Navigate into the repository
ls                   # List files
git status           # Check working directory status
git log              # View full commit history
git log --oneline    # Compact commit history
Task 2 – Branch Management
bashgit branch                  # View all branches
git branch dev              # Create new branch
git switch dev              # Switch to dev branch
git switch master           # Switch to master
git switch feature-update   # Switch to feature-update
Task 3 – Making Changes & Committing
bashvim add.sh                                       # Create/edit file
git add add.sh                                   # Stage file
git commit -m "added add.sh to dev"              # Commit with message
git add info.txt                                 # Stage info.txt
git commit -m "Feature update: Enhance info.txt" # Commit
Task 4 – Remote & Pull Requests
bashgit push origin feature-update   # Push branch to GitHub
git pull origin master            # Pull merged changes locally




Why Branching Strategies Are Important in Collaborative Development

1. 🔒 Isolating Features and Bug Fixes
When each feature or bug fix has its own branch, the main codebase stays untouched.

If your feature breaks → only your branch is affected
master always remains stable and deployable
Multiple fixes can happen without interfering with each other


Without isolation, one developer's broken code can bring down the entire project for everyone.


2. ⚡ Facilitating Parallel Development
Branches let multiple developers work at the same time on different things:
master         ──────────────────────────────●
                   ↘                        ↗
feature-login       ───●───●───
feature-payment     ──────●───●───
bugfix-navbar             ●───
No one blocks anyone. Everyone works independently and merges when ready.

3. 🤝 Reducing Merge Conflicts
Good branching strategy reduces conflicts by:

Keeping branches small and short-lived
Merging back to master frequently
Each branch touching only its own files


Smaller branches = smaller merges = fewer conflicts.


4. 👀 Enabling Effective Code Reviews
Branches make reviews clean and structured:

Developer pushes branch → opens a Pull Request
Team reviews only the new changes, not the entire codebase
Changes can be requested, approved, or rejected
Every merge is documented and traceable


This ensures no unreviewed code ever reaches master.


Summary
BenefitImpactFeature isolationmaster stays stable alwaysParallel developmentNo one waits — teams move fasterFewer conflictsSmall branches are easier to mergeCode reviews via PRsQuality is checked before merging
