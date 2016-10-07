class RandomCelebritySightingsController < ApplicationController
  def index
  end

  def show
    @path = 'random_celebrity_sightings'
  	rotate_quotes
  	rotate_celebrities
  end

  def rotate_quotes
     quotes = ["Yeah, I like animals better than people sometimes... Especially dogs. Dogs are the best. Every time you come home, they act like they haven't seen you in a year.", "And the good thing about dogs... is they got different dogs for different people. Like pit bulls. The dog of dogs. Pit bull can be the right man's best friend... or the wrong man's worst enemy. You going to give me a dog for a pet, give me a pit bull. Give me... Raoul. Right, Omar? Give me Raoul.", 

  "You see? It's curious. Ted did figure it out - time travel. And when we get back, we gonna tell everyone. How it's possible, how it's done, what the dangers are. But then why fifty years in the future when the spacecraft encounters a black hole does the computer call it an 'unknown entry event'? Why don't they know? If they don't know, that means we never told anyone. And if we never told anyone it means we never made it back. Hence we die down here. Just as a matter of deductive logic.",

"Do you see any Teletubbies in here? Do you see a slender plastic tag clipped to my shirt with my name printed on it? Do you see a little Asian child with a blank expression on his face sitting outside on a mechanical helicopter that shakes when you put quarters in it? No? Well, that's what you see at a toy store. And you must think you're in a toy store, because you're here shopping for an infant named Jeb.",

"The path of the righteous man is beset on all sides by the iniquities of the selfish and the tyranny of evil men. Blessed is he who, in the name of charity and good will, shepherds the weak through the valley of darkness, for he is truly his brother's keeper and the finder of lost children. And I will strike down upon thee with great vengeance and furious anger those who would attempt to poison and destroy My brothers. And you will know My name is the Lord when I lay My vengeance upon thee.",

"I'll be happy to make these unnecessary changes to this irrelevant document.  I'm slowly becoming a convert to the principle that you can't motivate people to do things, you can only demotivate them.",

"The primary job of the manager is not to empower but to remove obstacles. No one believes forecasts, but we all want to hear them.",

"An optimist is simply a pessimist with no job experience.
 Feedback is a business term which refers to the joy of criticizing other people's work. This is one of the few genuine pleasures of the job, and you should milk it for all it's worth.",

"We're a planet of nearly six billion ninnies living in a civilization that was designed by a few thousand amazingly smart deviants.",

"Engineers like to solve problems. If there are no problems handily available, they will create their own problems.",

"When you grow up you'll be put in a container called a cubicle. The bleak oppressiveness will warp your spine and destroy your capacity to feel joy. Luckily you'll have a boss like me to motivate you with something called fear.",

"An optimist is simply a pessimist with no job experience. We're a planet of nearly six billion ninnies living in a civilization that was designed by a few thousand amazingly smart deviants.",

"Let's form proactive synergy restructuring teams. All of your co-workers are fools. You must learn to pity and tolerate them.",

"If you give a man a fish he will eat for a day. But if you teach a man to fish he will buy an ugly hat. And if you talk about fish to a starving man then you are a consultant.",

"Your boss reached his/her position by being politically astute. Don't turn your back.  Corollary : To be a successful manager, you must learn to be insensitive to the needs of your employees.", 
 
"Stupidity is like nuclear power; it can be used for good or evil.",

"Celiac tbh gochujang plaid twee authentic. Green juice flannel farm-to-table fingerstache flexitarian tilde normcore tattooed forage hot chicken.",

"Banh mi stumptown live-edge tilde, disrupt meditation keffiyeh aesthetic yr coloring book. Tofu subway tile locavore kombucha chicharrones poutine sustainable, keytar pitchfork austin shoreditch lomo thundercats fixie actually. Microdosing lumbersexual twee art party YOLO.",

"Cray celiac banh mi, direct trade drinking vinegar asymmetrical messenger bag pickled taxidermy wayfarers pabst truffaut. Ethical air plant narwhal whatever heirloom, migas hammock ramps ennui synth keytar.",

"Pour-over gochujang pabst, selvage butcher pitchfork snackwave poke vape roof party disrupt yuccie activated charcoal. Pickled marfa listicle brunch.", 

"Green juice tumblr flexitarian hexagon, roof party retro cold-pressed edison bulb. Bushwick yuccie blue bottle keytar heirloom fanny pack. Activated charcoal thundercats artisan, succulents hell of skateboard neutra vaporware selvage.",

"Fap la croix you probably haven't heard of them chia, aesthetic migas hashtag tilde. Prism vegan leggings ethical lo-fi messenger bag, pinterest four dollar toast man braid cray semiotics gastropub."
]
    @random_quote = quotes.sample
  end

  def rotate_celebrities
     celebrities = [
["https://www.placecage.com/200/300", "Nicholas Cage"],

["https://www.placecage.com/c/200/300", "Nicholas Cage"],

["https://www.placecage.com/gif/200/300", "Nicholas Cage"],

["http://www.fillmurray.com/200/300", "Bill Murray"],

["https://peopledotcom.files.wordpress.com/2016/09/oprah-winfrey-0-660.jpg?w=660", "Oprah Winfrey"],

["https://peopledotcom.files.wordpress.com/2016/09/angelina-5-435-5.jpg?w=435", "Angelina Jolie"],

["https://static01.nyt.com/images/2013/04/21/arts/21SCHUMER2/21JPSCHUMER1-blog427.jpg", "Amy Schumer"],

["https://static01.nyt.com/images/2016/05/12/arts/12OPRAH/12OPRAH-master768.jpg", "Oprah Winfrey"],

["http://static.oprah.com/images/o2/201507/201507-omag-wikfs-949x534.jpg", "Oprah Winfrey"],

["http://static.oprah.com/images/201302/omag/201302-omag-wikfs-600x411.jpg", "Oprah Winfrey"],

["http://static.oprah.com/images/tows/201104/20110420-rob-lowe-1-300x205.jpg", "Oprah Winfrey"],

["http://static.oprah.com/images/201206/omag/201206-omag-maggie-gyllenhaal-300x205.jpg", "Maggie Gyllenhaal"],

["http://static.oprah.com/images/tows/201104/20110427-tows-obamas-1-300x205.jpg", "America's First Family"],

["https://upload.wikimedia.org/wikipedia/commons/b/ba/Rob_Lowe_2012_Shankbone_2.JPG", "Rob Lowe"],

["https://upload.wikimedia.org/wikipedia/commons/7/7d/Harrison_Ford.jpg", "Harrison Ford"], 

["https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Robert_Downey_Jr.jpg/340px-Robert_Downey_Jr.jpg", "Robert Downey, Jr."],

["https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Robert_Downey_Jr_at_Comic_Con_2007.jpg/340px-Robert_Downey_Jr_at_Comic_Con_2007.jpg", "Robert Downey, Jr."],

["https://upload.wikimedia.org/wikipedia/en/5/50/Tyrion_Lannister-Peter_Dinklage.jpg", "Peter Dinklage"],

["https://upload.wikimedia.org/wikipedia/en/c/c4/Ygritte-Rose_Leslie.jpg", "Ygritte"],

["https://upload.wikimedia.org/wikipedia/en/2/25/Catelyn_Stark-Michelle_Fairley_S3.jpg", "Catelyn Stark"],

["https://upload.wikimedia.org/wikipedia/en/5/52/Ned_Stark-Sean_Bean.jpg", "Sean Bean"],

["https://upload.wikimedia.org/wikipedia/en/7/74/SophieTurnerasSansaStark.jpg", "Sansa Stark"],

["https://upload.wikimedia.org/wikipedia/en/0/0d/Daenerys_Targaryen_with_Dragon-Emilia_Clarke.jpg", "Daenerys Targaryen"], 

["https://upload.wikimedia.org/wikipedia/en/c/c6/Tywin_Lannister-Charles_Dance.jpg", "Tywin Lannister"],

["https://upload.wikimedia.org/wikipedia/en/8/84/Margery_Tyrell-Natalie_Dormer.jpg", "Margery Tyrell"],

["https://upload.wikimedia.org/wikipedia/commons/c/cd/Benedict_Cumberbatch_filming_Sherlock_cropped.jpg", "Benedict Cumberbatch"],

["https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/RyanGosling07TIFF.jpg/340px-RyanGosling07TIFF.jpg", "Ryan Gosling"],

["https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/RyanGosling10-19.JPG/340px-RyanGosling10-19.JPG", "Ryan Gosling"],

["https://upload.wikimedia.org/wikipedia/commons/3/33/The_Equalizer_08_%2815310534581%29.jpg", "Denzel Washington"],

["https://upload.wikimedia.org/wikipedia/commons/c/ca/Denzel_Washington_cropped.jpg", "Denzel Washington"],

["https://upload.wikimedia.org/wikipedia/commons/a/aa/ChrisRock.jpg", "Chris Rock"],

["https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Dave_Chapelle_cropped.jpg/440px-Dave_Chapelle_cropped.jpg", "Dave Chapelle"],

["https://upload.wikimedia.org/wikipedia/commons/1/19/Dame_Maggie_Smith-cropped.jpg", "Dame Maggie Smith"],

["https://upload.wikimedia.org/wikipedia/commons/7/72/Maggie_Gyllenhaal_Golden_Globes_2009.jpg", "Maggie Gyllenhaal"],

["https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ruth_Bader_Ginsburg_official_SCOTUS_portrait.jpg/1024px-Ruth_Bader_Ginsburg_official_SCOTUS_portrait.jpg", "The Honorable Ruth Bader Ginsburg"],

["https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Sonia_Sotomayor_in_SCOTUS_robe.jpg/1280px-Sonia_Sotomayor_in_SCOTUS_robe.jpg", "The Honorable Sonia Sotomayor"],

["https://upload.wikimedia.org/wikipedia/commons/c/ce/Elena_Kagan_Official_SCOTUS_Portrait_%282013%29.jpg", "The Honorable Elena Kagan"],

["https://upload.wikimedia.org/wikipedia/commons/c/cf/Hillary_Clinton_Bill_Chelsea_on_parade.jpg", "Hillary, Bill, and Chelsea Clinton"], 

["https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Obama-DeGeneres-dance-20120201.jpg/2560px-Obama-DeGeneres-dance-20120201.jpg", "Michelle Obama and Ellen DeGeneres"],

["https://upload.wikimedia.org/wikipedia/commons/4/44/Obamas_walk_down_PA_Ave._1-20-09_hires_090120-N-0696M-546a.jpg", "America's First Family"],

["https://upload.wikimedia.org/wikipedia/commons/f/fc/Elizabeth_Warren_CFPB.jpg", "The Honorable Elizabeth Warren"], 

["https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Mazie_Hirono%2C_official_portrait%2C_113th_Congress.jpg/1280px-Mazie_Hirono%2C_official_portrait%2C_113th_Congress.jpg", "The Honorable Mazie Hirono"], 

["https://upload.wikimedia.org/wikipedia/commons/b/b2/Dianne_Feinstein_2010.jpg", "The Honorable Dianne Feinstein"],

["https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Barbara_Boxer%2C_Official_Portrait%2C_112th_Congress.jpg/440px-Barbara_Boxer%2C_Official_Portrait%2C_112th_Congress.jpg", "The Honorable Barbara Boxer"], 

["https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Nancy_Pelosi_060211.jpg/2560px-Nancy_Pelosi_060211.jpg", "The Honorable Nancy Pelosi"],

["https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Nancy_Pelosi_%289179648593%29.jpg/2560px-Nancy_Pelosi_%289179648593%29.jpg", "The Honorable Nancy Pelosi"],

["https://upload.wikimedia.org/wikipedia/commons/c/c0/Margaret_Cho_2009.jpg", "Margaret Cho"],

["https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Margaret_Cho_at_Los_Angeles_Pride_-_20110612.jpg/1024px-Margaret_Cho_at_Los_Angeles_Pride_-_20110612.jpg", "Margaret Cho"],

["https://upload.wikimedia.org/wikipedia/commons/6/60/Meryl_Streep_-_Berlin_Berlinale_66_%2824609057279%29.jpg", "Meryl Streep"],

["https://upload.wikimedia.org/wikipedia/commons/4/47/AnthonyHopkins10TIFF.jpg", "Sir Anthony Hopkins"],

["https://upload.wikimedia.org/wikipedia/en/0/0e/Anthony_Hopkins_as_Hannibal_Lecter_%28screenshot%29.jpg", "Sir Anthony Hopkins"],
["https://upload.wikimedia.org/wikipedia/commons/8/8d/Neil_deGrasse_Tyson.jpg", "Neil deGrasse Tyson"]
]
    celebrity = celebrities.sample
    
    @celebrity_img = celebrity[0]
    @celebrity_name = celebrity[1]
    
    return @celebrity_img, @celebrity_name
  end

end
