# Freeform
The Freeman Company's new brand agnostic, accessible, modern design system.

Based on Bootstrap.

## Principles to Follow

1. We want to continue to use the improvements in the Bootstrap codebase as much as possible, without breaking components.
2. **DO NOT** change the default Bootstrap SASS files, including the variables file.
3. Like Bootstrap, Freeform has three main SASS files that incorporate varying degrees of the design system and framework. These are freeform.scss, freeform-grid.scss and freeform-reboot.scss.
4. **DO NOT** change the order of the imports. These have been carefully designed so that necessary Bootstrap functions, variables and mixins are imported first. Then Freeform functions, variables, brand overrides, custom components, and mixins are imported.
5. Please add new functions, mixins, variables and components into their respective SASS partial and keep those types separated in their respective folders.

## Creating Custom Code

* **Custom Functions** - Please put custom or third party SASS functions in this folder. It is imported near the top of the Freeform compile stack.
* **Custom Mixins** - Mixins allow use to define programmatic styles that can be re-used throughout the stylesheets.
* **Custom Freeform Variables** - Updates the Bootstrap variables to match the Freeform design system and allows us to add custom code snippets for existing components.
* **Custom Brand** - Limited set of variables that will allow developers to edit the look and feel of their application in controlled ways.
* **Custom Components** - Brand new components or components not found in Bootstrap should be put in here.
