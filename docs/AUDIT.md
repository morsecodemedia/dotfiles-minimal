# NextGen Workstation Audit

## Status

- [ ] Repository Structure
- [ ] Bootstrap
- [ ] Shell (zsh)
- [ ] Environment
- [ ] Git
- [ ] tmux
- [ ] Vim
- [ ] Scripts
- [ ] Package Management
- [ ] macOS
- [ ] Linux
- [ ] AI Integration

---

## Findings

_To be completed during the audit._

### Current workflow
- How often do you bootstrap a new machine (Once every few years? More often?)

  There was a point in time where it was multiple times a year, if it was setting
up a new developer who didn't have workstation preferences, or if IT was
rotating in a new laptop to keep dev with the latest hardware, or I was getting
an additional workstation that I needed to remote into, I was bootstrapping
machines more regularly than I do now. That being said, the longer the time
period, the nuances of the bootstrapping process are likely to be forgotten, so
I am cautious of that.

- Do you expect to use the repo for work-only machines, personal machines, or
  both?

  Both

- Are there things you intentionally do not want to automate?

  Nothing that I can think of at this time.

### Pain points

- What's the first thing you install manually after cloning the repo?

  Honestly, I can't tell you. It most likely changes based on when/where I am
doing the install.

- What part of setup annoys you every single time?

  Things being outdated, or deprecated, so needing to debug installs to make sure
things work as expected.

- What do you always have to Google because you never remember it?

  Loaded question, let's just say everything.

### AI

- Do you want AI tooling to be optional or part of the default bootstrap?

  I would say, if possible, the right move would be to make it part of the default
bootstrap, but as optional so that it can be turned off before running the
install.

- Should local models be installed automatically, or should bootstrap only
  prepare the environment?

 No, but there should be a document that contains recommended models and their
 configurations based on the workstation.
