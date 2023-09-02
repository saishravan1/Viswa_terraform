http://54.198.218.232:8080/postreceive


us-east-bastion.amazon.com


ssh -i <pemfile> <username>@<IP>/<DNS>

route 53> Record set > bastion.<website.name>
    ssh-lb-1339528131.us-east-1.elb.amazonaws.com (classic lb dns)


variables: string, number ,boolean

        list >> [] , setof strings >> type = list(string) >> length=3, 0,1,2
        map >> {}  , key and value pair >> type = map(string)


MetaArgments:
count
for_each
Example

> toset(["a", "b", "c"])
[
  "a",
  "b",
  "c",
]

> toset(["a", "b", 3])
[
  "3",
  "a",
  "b",
]

> toset(["c", "b", "b"])
[
  "b",
  "c",
]


JENKINS SERVER CONFIGURATION

step1: jenkins installation
step2:
   $ vi /etc/passwd
    jenkins >> /bin/bash

step3: sudors.d >> jenkins users (admin)

$ vi /etc/sudoers.d/90-cloud-init-users
  # User rules for ec2-user
  ec2-user ALL=(ALL) NOPASSWD:ALL
  jenkins ALL=(ALL)  NOPASSWD:ALL

step4: login into jenkins user
  $ sudo su - jenkins


Step5: $ssh-keygen

step6: add the jenkins public key into your github account

step7: $ssh -T git@github.com

step8: jenkins support applications>> docker, terraform, ansible
