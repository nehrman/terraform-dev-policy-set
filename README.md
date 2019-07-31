# Set of Policies to demonstrates Sentinel in Terraform Enterprise

This repo hosts some sentinel examples that I use in my demo to demonstrate VCS integration for Sentinel policies.
As the name mentionned it, I apply this policy set to Development workspaces in my Organization.

Rule applied:

- Restrict VM Size for Developers: Enforce some specific VM Size that Developers must comply with. 

Sentinel.hcl file allows to configure the **Enforcement Level** of the different policies.

As a reminder, we have 3 level that you can configure:
- **Advisory**: Will show the warning state in the run but no user action is required if the policy fails.
- **Soft Mandatory**: If the policy fails, it will stop the run and someone from the **Organization Owners** team wille be presented with an **"Override & Continue"** button. That gives him the possibility to continue the run and bypass the policy.
- **Hard Mandatory**: The policy **must pass** in order to continue the run process. 