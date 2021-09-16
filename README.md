# TS-Template
This is a simple template for my projects to have the same starting point on most, if not all, of my projects.


## 'Features'
* TypeScript first
* Configured for the latest Node LTS release or sometimes a newer version not being LTS (Can be easily changed
  in `packages.json` and `tsconfig.json`
* Jest for testing
* Simple example code with test coverage


## Initial setup
1. I recommend running `npm update` first (and probably `npm outdated` too)
2. Edit the initial `package.json` file to your liking


## How to I change the Node.js version used in this template
This template used `@tsconfig/node{{nodeVersion}}` and makes use of the `engines` directive in the `package.json`. So
you'd want to change the `@tsconfig` dependency to the version you would want to use (e.g. `14` or `16`) and edit
the `tsconfig.json` file to point to that version.

You might need to make additional adjustments to my `tsconfig.json` as I might be overwriting some settings that are
suboptimal for other version of node. If you are not sure, stick to the configuration provided by `@tsconfig`'s
configuration.
