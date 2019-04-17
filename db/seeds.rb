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
  name: "Grandparents-MomSide",
  picture: "https://i.postimg.cc/76s2qpkY/abuelitos.jpg"

)

# group2= Group.create(
#   tree: t2,
#   name: "Florez",
#   picture: "https://www.family-action.org.uk/content/uploads/2017/11/Mixed-Raced-family-e1513084049363-600x320.jpg"
# )

group3 = Group.create!(
  tree: t1,
  name: "Uncle Dennis's Family",
  picture: "https://i.postimg.cc/wB3t0wNC/cupo.jpg"
)

group4= Group.create(
  tree: t1,
  name: "Florez",
  picture: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/304437_4411304956829_1310663438_n.jpg?_nc_cat=110&_nc_ht=scontent-iad3-1.xx&oh=dec509503586aecf8298b2bf22e48243&oe=5D508C0B"
)

group5 = Group.create!(
  tree: t1,
  name: "Immiediate Family",
  picture: "https://i.postimg.cc/Hnv4Prxz/Sisters.jpg"
)

group6= Group.create(
  tree: t1,
  name: "Siblings",
  picture: "https://i.postimg.cc/bwDLW91t/Siblings.jpg"
)



member1= Member.create(
  group: group6,
  family_member_type: User ,
  family_member_id: 2,
  relationship: "Brother",
  name: "Angelo Cupo",
  picture: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/52464410_10213500268931487_1524950442209968128_n.jpg?_nc_cat=100&_nc_ht=scontent-iad3-1.xx&oh=b8340b6f26d0f4f3bd2cbe937b7fd9a9&oe=5D3EAEE2"
)

member2= Member.create(
  group: group6,
  family_member_type: User,
  family_member_id: 5,
  relationship: "Sister",
  name: "Vanessa Cupo",
  picture: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/48406537_10213123448191204_3221601264458530816_n.jpg?_nc_cat=110&_nc_ht=scontent-iad3-1.xx&oh=7b88ba4b8578d15fe1b2c9a28a151b9c&oe=5D36D9D4"
)
member3= Member.create(
  group: group6,
  family_member_type: User ,
  family_member_id: 7,
  relationship: "Sister",
  name: "Shana Cupo",
  picture: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/37595593_10156669454627664_5562738846031937536_n.jpg?_nc_cat=107&_nc_ht=scontent-iad3-1.xx&oh=2bb3d378339b3addd25191ea443a9611&oe=5D4CDC4C"
)
member4= Member.create(
  group: group4,
  family_member_type: User ,
  family_member_id: 7,
  relationship: "Aunt",
  name: "Maite Florez",
  picture:"https://i.postimg.cc/bwtdKZrJ/Maite.jpg"
)
member5= Member.create(
  group: group4,
  family_member_type: User ,
  family_member_id: 6,
  relationship: "Cousin",
  name: "Julian Florez",
  picture: "https://i.postimg.cc/HLSwLJ0g/julian.jpg"
)
# member6= Member.create(
#   group: group2,
#   family_member_type: User,
#   family_member_id: 2,
#   relationship: "goodbye",
# )

#
# gm1= GroupsMember.create(
#   group: group5,
#   member: member1
#   )
#
# gm2= GroupsMember.create(
# group: group5,
# member: member2
# )
# gm3= GroupsMember.create(
# group: group5,
# member: member3
# )
# gm4= GroupsMember.create(
# group: group2,
# member: member4
# )
# gm5= GroupsMember.create(
#   group: group5,
#   member: member5
#   )


member3= Member.create(
  family_member: user3,
  relationship: "Aunt"
)


member4= Member.create(
  family_member: user6,
  relationship: "Grandma"
)

member5= Member.create(
  family_member: user4,
  relationship: "Dad"
)


member6= Member.create(
  family_member: user5,
  relationship: "Mom",

)




member7= Member.create(
  family_member: user6,
  relationship: "Grandma",

)


member8= Member.create(
  family_member: user5,
  relationship: "Sister",

)

member9= Member.create(
  family_member: user6,
  relationship: "Brother",

)

nonuser1= NonUser.create(
  name: "Great Great Cousin",
  picture: "http://2.bp.blogspot.com/-Oh9xOVx5tso/U4JZO-Ao4wI/AAAAAAAAQz8/JON9ShbPYyo/s1600/Grandpa+Orem+Porch.jpg",
  group: group3
)
nonuser2= NonUser.create(
  name: "Great Great Grandma",
  picture: "http://2.bp.blogspot.com/-Oh9xOVx5tso/U4JZO-Ao4wI/AAAAAAAAQz8/JON9ShbPYyo/s1600/Grandpa+Orem+Porch.jpg",
  group: group1
)
nonuser3= NonUser.create(
  name: "Great Great Papa",
  picture: "http://2.bp.blogspot.com/-Oh9xOVx5tso/U4JZO-Ao4wI/AAAAAAAAQz8/JON9ShbPYyo/s1600/Grandpa+Orem+Porch.jpg",
  group: group1
)
