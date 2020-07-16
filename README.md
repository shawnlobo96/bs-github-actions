![Node.js CI - GitHub Hosted](https://github.com/sourav-browserstack/myapp/workflows/Node.js%20CI%20-%20GitHub%20Hosted/badge.svg)

This is a sample Node.js web application running on a local server. The purpose of this application is to tryout GitHub Actions and setup CI workflows with test being run on BrowserStack infrastructure.

The .github/workflows/browserstack.yml is the workflow file for automating the build, run and test part.
The sample test script can be found in testScripts/automate_test.rb file

The setup also includes setting up GitHub Secrets by going to GitHub Repo -> Settings -> Secrets -> New Secrets
BROWSERSTACK_USERNAME and BROWSERSTACK_ACCESS_KEY secrets have been set which obviously should contain your own BrowserStack Username and Access Key

If the BrowserStack needs to run on an application that is already deployed on a publicly accessible web server, then installing and running the BrowserStackLocal through the language bindings (as can be seen in the automate_test.rb script) is not required and instead, the publicly accessible URL can be directly tested.

Cheers!

