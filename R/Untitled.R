require(ztable)
z=ztable(head(iris),zebra=1)
cgroup=c("Sepal","Petal","Species")
n.cgroup=c(2,2,1)
z=addcgroup(z,cgroup=cgroup,n.cgroup=n.cgroup,color="red")
str(z)
# cgroup2=c("Length","Species")
# n.cgroup2=c(4,1)
# z=addcgroup(z,cgroup=cgroup2,n.cgroup=n.cgroup2,top=TRUE)
rgroup=c("OneToThree","Four","FiveToSix")
n.rgroup=c(3,1,2)
z=addrgroup(z,rgroup=rgroup,n.rgroup=n.rgroup,color=c("blue","red","yellow"),bg="platinum")
z

str(z)
z=addFrontColor(z,rows=1,cols=1:6,color="red")
z=addFrontColor(z,rows=2,cols=1:6,color="blue")
z


rgroup=c("OneToThree","Four","FiveToSix")
n.rgroup=c(3,1,2)
z=addrgroup(z,rgroup=rgroup,n.rgroup=n.rgroup,cspan.rgroup=1)
z=addFrontColor(z,rows=1,cols=1:6,color="red")
z=addFrontColor(z,rows=3,cols=1:6,color="red")
z=addFrontColor(z,rows=2,cols=1:6,color="blue")
z

require(magrittr)
