bastion sg: sg-03e6e15565cb49ea5


apache: sg-09eb835ebda8b5e7f

amazon.com


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