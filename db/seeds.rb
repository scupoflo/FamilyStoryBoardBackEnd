# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create({name: 'Shinik Cupo', picture: ""})
user2= User.create({name:'Angelo Cupo', picture: ""})
user3= User.create({name:'Martha Florez', picture: ""})
user4= User.create({name:'Bobby Cupo', picture: ""})
user5= User.create({name:'Olga Cupo', picture: ""})
user6= User.create({name:'Maria Florez', picture: ""})
user7= User.create({name:'Shana Cupo', picture: ""})
user8= User.create({name:'Vanessa Cupo', picture: ""})


t1= Tree.create({user: user1, name: 'Cupo'})
t2= Tree.create({user: user2, name: 'Florez'})



p1= Post.create({
  author: user1,
  title: "Vanessa's First Steps",
  picture: "",
  body: "So Cute!",
  subject: ""}
)

p2=Post.create(
  author: user1,
  title: "First Trip to New York",
  picture: "",
  body: "Longest Road Trip Ever!"
)

p3= Post.create(
  author: user2,
  title: "a",
  picture: "",
  body: "1!",
  subject: ""
)
p4= Post.create(
    author: user3,
    title: "2",
    picture: "",
    body: "b!",
    subject: ""
  )
p5= Post.create(
    author: user4,
    title: "Grandpa Story",
    picture: " ",
    body: "test",
    subject: ""
  )
p6= Post.create(
    author: user6,
  title: "zzzzz",
  picture: " ",
  body: "Stories about Grandpa",
  subject: ""
)
p7= Post.create(
    author: user5,
  title: "Angelo's last football game!",
  picture: "",
  body: "Football stories",
  subject: ""
)

group1 = Group.create!(
  tree: t1,
  name: "Grandparents-MomSide"
)

group2= Group.create(
  tree: t2,
  name: "Florez"
)

group3 = Group.create!(
  tree: t1,
  name: "Uncle Dennis's Family"
)

group4= Group.create(
  tree: t1,
  name: "Florez"
)

group5 = Group.create!(
  tree: t1,
  name: "Immiediate Family"
)

group6= Group.create(
  tree: t1,
  name: "Siblings"
)

member1= Member.create(
  tree_owner: user1,
  family_member: user2,
  relationship: "Brother",
)


GroupsMember.create(
  group: group5,
  member: member1
  )


member3= Member.create(
  tree_owner: user1,
  family_member: user3,
  relationship: "Aunt"
)


member4= Member.create(
  tree_owner: user2,
  family_member: user6,
  relationship: "Grandma"
)

member5= Member.create(
  tree_owner: user1,
  family_member: user4,
  relationship: "Dad"
)


member6= Member.create(
  tree_owner: user1,
  family_member: user5,
  relationship: "Mom",
 
)




member7= Member.create(
  tree_owner: user1,
  family_member: user6,
  relationship: "Grandma",
 
)


member8= Member.create(
  tree_owner: user2,
  family_member: user5,
  relationship: "Sister",
 
)

member9= Member.create(
  tree_owner: user2,
  family_member: user6,
  relationship: "Brother",
 
)
