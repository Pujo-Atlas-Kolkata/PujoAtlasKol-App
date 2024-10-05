# Contribution Guidelines

When contributing to `PujoAtlasKol-App`, whether on GitHub or in other community spaces:

- Be respectful, civil, and open-minded.
- Before opening a new pull request, search the [issue tracker](https://github.com/Pujo-Atlas-Kolkata/PujoAtlasKol-App/issues) for known issues or fixes.
- If you want to make code changes based on your personal opinion(s), make sure you open an issue first describing the changes you want to make, and open a pull request only when your suggestions get approved by maintainers.

## How to Contribute

### Prerequisites

To not waste your time implementing a change that has already been declined, or is generally not needed, start by [opening an issue](https://github.com/Pujo-Atlas-Kolkata/PujoAtlasKol-App/issues/new) describing the problem you would like to solve.

### Recommended VSCode Extensions

To ensure a consistent development environment and code quality, please install the following VSCode extensions before contributing:

1. 

### Setup your environment locally

_Some commands will assume you have the GitHub CLI installed, if you haven't, consider [installing it](https://github.com/cli/cli#installation), but you can always use the Web UI if you prefer that instead._

To contribute to this project, you will need to fork the repository:

```bash
gh repo fork Pujo-Atlas-Kolkata/PujoAtlasKol-App
```

then, clone it to your local machine:

```bash
gh repo clone <your-github-name>/PujoAtlasKol-App
```

When making commits, make sure to follow the [conventional commit](https://www.conventionalcommits.org/en/v1.0.0/) guidelines, i.e. prepending the message with `feat:`, `fix:`, `chore:`, `docs:`. You can use `git status` to double check which files have not yet been staged for commit:

```bash
git add <file> && git commit -m "feat/fix/chore/docs: commit message"
```

Please keep in mind that you will not be able to push commits if you're not following the [conventional commit](https://www.conventionalcommits.org/en/v1.0.0/) guidelines or Lint check is failing.

### When you're done

When you're done implementing your changes, please also make a manual, functional test of your changes. When all that's done, it's time to file a pull request to upstream, and fill out the title and body appropriately. Again, make sure to follow the [conventional commit](https://www.conventionalcommits.org/en/v1.0.0/) guidelines for your title.

### Community

For help, discussion about best practices, or any other conversation that would benefit this project: [Join the Pujo Atlas Discord Server.](https://discord.com/invite/xxSXWYf6d4)
