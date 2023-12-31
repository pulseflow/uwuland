# Contributing

First off, thank you for taking the time to contribute.

The following is a set of guidelines for contributing to this project. These are just guidelines, not rules, so use your best judgement and feel free to propose changes to this document in a pull request. All types of contributions are welcome and valued. Please read the [Code of Conduct](CODE_OF_CONDUCT.md) and our [Positon on Trans Rights](TRANS_RIGHTS.md) before contributing.

> And if you appreciate this project, please consider starring it or tweeting about it.

## I have a Question

> If you want to ask a question we assume that you have read the available [Documentation](https://paulie.works/uwuland/docs)

Before you ask a question, it is best to search for existing [Issues](https://github.com/pulseflow/uwuland/issues) that might help you. In case you have found a suitable issue and still need clarification, you can write your question in this issue. It is also advisable to search the internet for answers first.

If you then still feel the need to ask a question and need clarification, we recommend the following:

- Open an [Issue](https://github.com/pulseflow/uwuland/issues/new) See [our issue guide](#issue-guide).
- Provide as much context as you can about what you're running into.
- Provide project and platform versions (Rust version (eg. 1.69.1), OS (eg. Arch, NixOS, Fedora, etc...), dependecy versions etc... ), depending on what seems relevant.

## Contributing to the Codebase

We recommend using VS Code and download the recommended extensions in the `.vscode` folder. Alternatively, you may use IntelliJ's CLion. Please make sure to follow standard Rust code guidelines and format using `rustfmt` before pushing.

## Issue Guide

### Bug Reports

A good bug report shouldn't leave others needing to chase you up for more information. Therefore, we ask you to investigate carefully, collect information and describe the issue in detail in your report. Please complete the following steps in advance to help us fix any potential bug as fast as possible.

- Make sure that you are using the latest version.
- Determine if your bug is really a bug and not an error on your side e.g. using older releases of the Rust compiler or dependencies (Make sure that you have read the [documentation](https://paulie.works/uwuland/docs). If you are looking for support, you might want to check [this section](#i-have-a-question)).
- To see if other users have experienced (and potentially already solved) the same issue you are having, check if there is not already a bug report existing for your bug or error in the [bug tracker](https://github.com/pulseflow/uwuland/issues?q=label%3Abug).
- Also make sure to search the internet to see if users outside of the GitHub community have discussed the issue.
- Collect information about the bug:
  - Stack trace (Traceback)
  - OS, Platform and Version (Arch, NixOS, x86_64, ARM)
  - Version of the compiler and dependencies depending on what seems relevant.
  - Steps to reproduce

#### How Do I Submit a Good Bug Report?

> You must NEVER report security related issues, vulnerabilities or bugs including sensitive information to the issue tracker, or elsewhere in public. Instead sensitive bugs must be sent to `pauliesnug` (see socials on profile).

We use GitHub issues to track bugs and errors. If you run into an issue with the project:

- Open an [Issue](https://github.com/pulseflow/uwuland/issues/new). (Since we can't be sure at this point whether it is a bug or not, we ask you not to talk about a bug yet and not to label the issue.)
- Explain the behavior you would expect and the actual behavior.
- Please provide as much context as possible and describe the *reproduction steps* that someone else can follow to recreate the issue on their own. This usually includes your code. For good bug reports you should isolate the problem and create a reduced test case.
- Provide the information you collected in the previous section.

Once it's filed:

- The project team will label the issue accordingly.
- A team member will try to reproduce the issue with your provided steps. If there are no reproduction steps or no obvious way to reproduce the issue, the team will ask you for those steps and mark the issue as `needs-repro`. Bugs with the `needs-repro` tag will not be addressed until they are reproduced.
- If the team is able to reproduce the issue, it will be marked `needs-fix`, as well as possibly other tags (such as `critical`), and the issue will be left to be [implemented by someone](#contributing-to-the-codebase).

### Enhancements

This section guides you through submitting an enhancement suggestion for uwuland, **including completely new features and minor improvements to existing functionality**. Following these guidelines will help maintainers and the community to understand your suggestion and find related suggestions.

#### Before Submitting an Enhancement

- Make sure that you are using the latest version.
- Read the [documentation](https://paulie.works/uwuland/docs) carefully and find out if the functionality is already covered, maybe by an individual configuration.
- Perform a [search](https://github.com/pulseflow/uwuland/issues) to see if the enhancement has already been suggested. If it has, add a comment to the existing issue instead of opening a new one.
- Find out whether your idea fits with the scope and aims of the project. It's up to you to make a strong case to convince the project's developers of the merits of this feature. Keep in mind that we want features that will be useful to the majority of our users and not just a small subset. If you're just targeting a minority of users, consider writing an add-on/plugin library.

#### How Do I Submit a Good Enhancement Suggestion?

Enhancement suggestions are tracked as [GitHub issues](https://github.com/pulseflow/uwuland/issues).

- Use a **clear and descriptive title** for the issue to identify the suggestion.
- Provide a **step-by-step description of the suggested enhancement** in as many details as possible.
- **Describe the current behavior** and **explain which behavior you expected to see instead** and why. At this point you can also tell which alternatives do not work for you.
- You may want to **include screenshots and animated GIFs** which help you demonstrate the steps or point out the part which the suggestion is related to.
- **Explain why this enhancement would be useful** to most uwuland users. You may also want to point out the other projects that solved it better and which could serve as inspiration.
