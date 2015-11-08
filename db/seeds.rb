# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Campaign.create!(header:'MILLI MILLU HANDBAG',
cost:750.00,
title:'Amazing handbag from London',
picture1:'millimillu.jpg',
picture2:'stockholm.jpg',
picture1_title:'The Stockholm by MilliMillu',
picture2_title: 'Stockholm bag',
description:'I love this bag!!!It is a startup founded by a former management consultant - not please keep reading!!! ;-) Anyway like many of us she struggled to find chic, but practical handbags for work - these look awesome. But at near 500 pounds and iternational availability only it is a big risk to buy one. So I would love for us to try it out. I figure if we start with a month each we can find out whether it is worth investing more heavily... I am willing to pay more to have the bag for longer if people want - let me know!!! xxx Ram
Check out the website, Oooh and not that it matters (ahem) but Elle McPherson loves this bag!!!!',
expiration:Date.today+1.week,
minimum_contribution:100.00,
owner_id:1,
custodian_id:1,
rfid:'tbd')

Campaign.create!(
 header:'Leather & Chain Halter Belt SEXXXY',
 cost:300.00,
 title:'Willow leather & chain Halter Neck & Belt',
 picture1:'halter1.jpg',
 picture2:'halter2.jpg',
 picture1_title:'Halter Neck & Belt by Wilow',
 picture2_title: 'leather & chain Halter Neck & Belt',
 description:"Chic & sexy - let's do this people! Check out this cool body jewelry from my favorite Aussie label - would be amazing to wear. If you are nervous about showing the full harness look you can wear it under a jacket (and whip it off when you feel fierce that night ;-)",
 expiration:Date.today+1.week,
 minimum_contribution:50.00,
 owner_id:1,
 custodian_id: 1,
 rfid:'1')
