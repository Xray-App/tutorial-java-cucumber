# Tutorial with Cucumber scenarios/tests, in Java, integrated with Xray

[![build workflow](https://github.com/Xray-App/tutorial-java-cucumber/actions/workflows/main-cloud.yml/badge.svg)](https://github.com/Xray-App/tutorial-java-cucumber/actions/workflows/main-cloud.yml)
[![license](https://img.shields.io/badge/License-BSD%203--Clause-green.svg)](https://opensource.org/licenses/BSD-3-Clause)
[![Gitter chat](https://badges.gitter.im/gitterHQ/gitter.png)](https://gitter.im/Xray-App/community)

## Overview

Code that supports the tutorial [Testing using Cucumber in Java](https://docs.getxray.app/display/XRAYCLOUD/Testing+using+Cucumber+in+Java) showcasing the integration between [Xray Test Management](https://www.getxray.app/) on Jira and Cucumber (Java).

The test automation code implements some basic tests (i.e. scenarios/scenario outlines) for a dummy calculator, using two stories (i.e. addition and multiplication) as the features we aim to deliver.

## Prerequisites

In order to run this tutorial, you need to have Java (i.e. a JDK) and Maven.
Dependencies aree installed automatically whenever running Maven.

## Running

The straighforward approach to run everything in a single shot is to invoke the auxiliary script [run_all_cloud_standard_workflow.sh](run_all_cloud_standard_workflow.sh).
You need to update the client_id and client_secret to interact with your Xray cloud instance (obtainable from Xray API Keys section); you also need to update the issue keys of the corresponding stories in Jira, that you'll use as basis to generate the .feature file(s).

Remember that to be able to run the scenarios, we need to have the corresponding .feature files. The previous script assumes you are using Xray to manage the specification of the scenarios, so you need to extract them from Jira (more on the possible workflows [here](https://docs.getxray.app/pages/viewpage.action?pageId=31622264)).

When you have the .feature files, containing the Feature along with the Scenario properly tagged, you can finally run the tests using the `mvn` tool.

```bash
mvn clean compile test -Dcucumber.plugin="json:report.json" -Dcucumber.features="features/"
```

We need to specify that we want a Cucumber JSON report as output, and also the path where the .feature files are at.


## Submitting results to Jira

Results can be submitted to Jira so that they can be shared with the team and their impacts be easily analysed.
This can be achieved using [Xray Test Management](https://www.getxray.app/) as shown in further detail in this [tutorial](https://docs.getxray.app/display/XRAYCLOUD/Testing+using+Cucumber+in+Java).
This repo contains an auxiliary script [import_results_cloud.sh](import_results_cloud.sh) that does that; it uses a configuration file to have Xray's client_id and client_secret.
You can also have a look at the [workflows implemented in this repo](.github/workflows) using GitHub Actions.


## Auxiliary scripts

This repo also contains some auxiliary shell scripts, provided as an example; feel free to download and customize them to your needs.
You may find scripts for interacting both with Xray server/DC or Xray cloud, which have slightly different APIs.


## Contact

Any questions related with this code, please raise issues in this GitHub project. Feel free to contribute and submit PR's.
For Xray specific questions, please contact [Xray's support team](https://jira.xpand-it.com/servicedesk/customer/portal/2).

## References

- [Cucumber docs](https://cucumber.io/docs/installation/)
- [Possible workflows for implementing Cucumber](https://docs.getxray.app/pages/viewpage.action?pageId=31622264)
- [Detailed tutorial for Xray Cloud showcasing the integration with Jira Cloud](https://docs.getxray.app/display/XRAYCLOUD/Testing+using+Cucumber+in+Java)
- [Detailed tutorial for Xray server/DC showcasing the integration with Jira server/DC](https://docs.getxray.app/display/XRAY/Testing+using+Cucumber+in+Java)

## LICENSE

[BSD 3-Clause](LICENSE)


