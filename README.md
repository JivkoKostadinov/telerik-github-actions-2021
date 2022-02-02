#### Main Concepts

- That repository is to demonstarte Continues Integration process with intergarted pipeline.
 
- Code and test decomposition


#### Functionality contains

- On every pull request we assigned default template that should be updated with information to code reviewers

- On every pull request is assigned default reviewers that should review the incomming changes.

- [Style and Linting](https://flake8.pycqa.org/en/latest/) cheks over the python code.

- [Cyclomatic and Code complexity](https://pypi.org/project/xenon/)  checks over the python code.

- Unitand Intgeration tests are performaed with [Nose](https://nose.readthedocs.io/en/latest/testing.html) runner.

- Performance tests are performed with [Locust.io](https://locust.io/) runner

- Build docker image and upload it to Docker Hub. 

#### Flow diagram

![Untitled](https://user-images.githubusercontent.com/10487861/152150060-a989d6ab-a11a-42c8-a6a2-f2143ba1f684.jpg)
