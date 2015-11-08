# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.find(1).update(photon:'mary')
User.find(2).update(photon:'bry')

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
rfid:'mary')

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

 Campaign.create!(
 header:'Elena Miro Sparkling Cardigan US size 16',
 cost:750,
 title:"ELENA MIRO SPARKLING CARDIGAN",
 picture1:'elena1.jpg',
 picture2:'elena2.jpg',
 picture1_title:"hundreds of delicate sequins",
 picture2_title: 'Beautiful fabrication',
 description:"Finally - designer wear in my size! This is straight off the Italian catwalk and I am keen to try it in size L (US 16). Interwoven with hundreds of delicate sequins, this Elena Miro cardigan is a special piece which shimmers beautifully as it catches the light. Contrast your textures by team with a pleated skirt for a glamorous evening ensemble.
 ",
 expiration:Date.today+1.week,
 minimum_contribution:90.00,
 owner_id:1,
 custodian_id: 1,
 rfid:'2')


 Campaign.create!(
 header:'Suqqu eyeshadow compact',
 cost:70.00,
 title:"Not available in USA Suqqu eyeshadow",
 picture1:'suqqu1.jpg',
 picture2:'suqqu1.jpg',
 picture1_title:"SUQQU Blend color eyeshadow",
 picture2_title: 'Palette in 02',
 description:"I desperately want to try cult brand Suqqu but it is only available from Selfridges in London or Japan. So is anyone willing to try it out with me? I will happily buy 50% of the cost but I'd love to share the cost and trial out with some other makeup junkie tribies :-)) For $7 you can try it out which is pretty low cost for such a cult brand! Suqqu's compact four-in-one eyeshadow palette contains innovative silicone-coated powders and amino acid-coated pigments developed to promote healthy skin and a long-lasting finish. It spreads smoothly, giving depth and beautiful graduation onto the lids to bring out your eyes.",
 expiration:Date.today+1.week,
 minimum_contribution:7.00,
 owner_id:1,
 custodian_id: 1,
 rfid:'3')



 Campaign.create!(
 header:'Montecristi hat from Napa Valley',
 cost:648.00,
 title:"Handmade Panama hat Extra Extra Fino Natural",
 picture1:'panama1.jpg',
 picture2:'panama2.jpg',
 picture1_title:"Hand-woven to perfection",
 picture2_title: 'Extra Extra Fino Natural',
 description:"These are the most amazing panama hats and hand-made in Napa Valley. Would be amazing for summer! Hand-woven to perfection this hat is beige Toquilla straw with a brown folded elegant silk band.",
 expiration:Date.today+1.week,
 minimum_contribution:60.00,
 owner_id:1,
 custodian_id: 1,
 rfid:'4')

 Campaign.create!(
 header:'Exclusive Liberty UK silk scarf',
 cost:790.00,
 title:"Rubens' bouquet silk scarf by Liberty UK",
 picture1:'liberty1.jpg',
 picture2:'liberty2.jpg',
 picture1_title:"Rubens' silk scarf by Liberty",
 picture2_title: 'Perfect to dress up all black outfit',
 description:"Liberty UK scarf => A luxurious homage to the Dutch masters, this Liberty London scarf collection brings back pieces from the design archive to an exciting new finish. Named after the great Peter Paul Rubens, this vibrant piece showcases a bouquet with colourful paint splashes. Double layered with silk chiffon and silk satin, this shawl is a superbly soft rendition of historical style.",
 expiration:Date.today+1.week,
 minimum_contribution:90.00,
 owner_id:1,
 custodian_id: 1,
 rfid:'5',
 live:true)

 Campaign.create!(
 header:'Beaded Caftan - can be worn long & loose or short & tight...',
 cost:600.00,
 title:"Camilla Printed Beaded Caftan ",
 picture1:'kaftan1.jpg',
 picture2:'kaftan2.jpg',
 picture1_title:"Long & Elegant",
 picture2_title: 'Or cheeky and short',
 description:"Camilla is a famous Australian designer of beaded caftans - this is gorgeous. It is also one size fits all!!! You can wear it long and loose and elegant ('broads with drinks anyone!?'). Or there are a million ways to tie it so it can be as sexy and short as you like. I think it would be a great item to share around & adventure in!!!",
 expiration:Date.today+1.week,
 minimum_contribution:50.00,
 owner_id:1,
 custodian_id: 1,
 rfid:'6',
 live: true)

 Campaign.create!(
 header:'Alice Temperley Clutch Bag ',
 cost:250,
 title:"Alice Temperley Flutura clutch bag ",
 picture1:'alice1.jpg',
 picture2:'alice.jpg',
 picture1_title:"Temperley Flutura clutch bag",
 picture2_title: 'Exquisite embroidery',
 description:"Stunning London designer clutch - would be perfect summer against a plan white or black dress - or in fall/winter with woollen clothes & accessories. A Temperley take on the season’s nomadic accessories, the Flutura Clutch Bag features bold floral embroidery and subtle tribal touches. With intricate stitching and embellishment, this vibrant bag taps into the collection’s bohemian theme. Wear yours for evening with the story’s matching skirt.
- Composition: 100% Viscose, Lining: 100% Silk",
 expiration:Date.today+1.week,
 minimum_contribution:50.00,
 owner_id:1,
 custodian_id: 1,
 rfid:'7',
 live: true)


 Campaign.create!(
 header:'Masha Ma limited edition Mini dress US size 6',
 cost:750,
 title:"Masha Ma Mini dress US size 6",
 picture1:'masha1.jpg',
 picture2:'masha2.jpg',
 picture1_title:"Great flounce & contrast lining",
 picture2_title: 'Sharp lines at back',
 description:"I desperately want to wear this stunning dress - but the price ouch! So anyone willing to share the size 8 (US) with me? I figure we can work out timings to ensure we can wear it to the most important events! The clean, contemporary lines of this dress are enhanced by the vivid yellow colour and the asymmetrical flourish of pale blue. The clever design of the skirt creates contours and volume. To lift the colour, pair with a blue or red Python Nubuck Clutch.This item is available in very Limited quantity. Only 10 pieces per size Worldwide.
Material: 95% polyester, 5% spandex
",
 expiration:Date.today+1.week,
 minimum_contribution:90.00,
 owner_id:1,
 custodian_id: 1,
 rfid:'8',
 live: true)
