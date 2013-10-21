class SeedFile < File
  def original_filename
    path.split('/').last
  end
end

Item.create([
  {
    "name" => "BIC Venturi V52 Stereo Speakers - Excellent Condition!",
    "picture" => SeedFile.new(File.join(Rails.root, 'db/seeds/1.jpg')),
    "status" => "Active",
    "location" => "San Francisco, CA",
    "description" => "Most will probably overlook these because they're not familiar with Venturi speakers. Because of the amount of speakers we receive, I get a chance to test and listen to a LOT of speakers. You'll be very surprised at just how good these sound. Definitely some of best I've heard in this class of speaker, outperforming speakers that are far more costly. They reportedly won Consumer Reports reward for most accurate speaker under $400. If you like crystal clear highs that capture every detail, you'll love these! And the bottom is still full. Those coming in to where I was testing would ask \"Is all of that sound is coming from those?\". Look closely at the pictures and you can see that they are also in excellent cosmetic condition. I'm selling them as-is, as described and pictured. CASH ONLY. Call me, Leopold (510) 418-9722. I'm located in San Ramon",
    "value" => "65.0",
    "user_id" => 1,
    "lonlat" => "POINT (-122.39475949999999 37.7751071)",
    "created_at" => "2013-10-06T21:11:29.374Z",
    "updated_at" => "2013-10-16T04:10:47.837Z"
  },

  {
    "name" => "InFocus TV or Monitor Projector",
    "picture" => SeedFile.new(File.join(Rails.root, 'db/seeds/2.jpg')),
    "status" => "Active",
    "location" => "San Francisco, CA",
    "description" => "Works with tv or computer monitor has been used very little, comes with padded bag and cables",
    "value" => "50.0",
    "user_id" => 1,
    "lonlat" => "POINT (-122.39475949999999 37.7751071)",
    "created_at" => "2013-10-06T21:13:14.129Z",
    "updated_at" => "2013-10-16T04:10:47.834Z"
  },

  {
    "name" => "Martin Logan Purity Electrostatic Speakers",
    "picture" => SeedFile.new(File.join(Rails.root, 'db/seeds/3.jpg')),
    "status" => "Active",
    "location" => "San Francisco, CA",
    "description" => "Pair of sensuous black Martin Logan Purity Electrostatic loudspeakers with original accessories including covers, wedge stands, spikes, and shipping/storage boxes. Each speaker has a power cord and built-in 200 watt power amplifier so you can drive each directly with low level signals from your preamp or even an iPod. They also have binding posts so you can bypass the internal amp and run them from your favorite amp.\r\n\r\nWe've moved and our new place has a brick wall behind the entertainment system -- a bit too hard for these amazing dipole speakers.\r\n\r\nRead more about them on the Martin Logan site:\r\nhttp://www.martinlogan.com/products/purity\r\n\r\nLocated in west Cupertino. Please call Alan at (408) 499-3856.",
    "value" => "1650.0",
    "user_id" => 1,
    "lonlat" => "POINT (-122.39475949999999 37.7751071)",
    "created_at" => "2013-10-06T21:21:04.867Z",
    "updated_at" => "2013-10-16T04:10:47.851Z"
  },

  {
    "name" => "Ipad 3 64gb",
    "picture" => SeedFile.new(File.join(Rails.root, 'db/seeds/4.jpg')),
    "status" => "Active",
    "location" => "San Francisco, CA",
    "description" => "Hi, I'm selling my 3rd gen Ipad with 64gb storage, wifi version only, black color.\r\nIpad is in good working condition. However, there are 2 dents on top and bottom right corners. There are also few light scratches on the screen bezel but the screen itself has no scratch.\r\n\r\nCome with charger and cable, no box.\r\n\r\nPrice is firm.\r\nNot interested in trading.\r\nLocal pick up only. \r\n408 598 7199",
    "value" => "400.0",
    "user_id" => 1,
    "lonlat" => "POINT (-122.39475949999999 37.7751071)",
    "created_at" => "2013-10-06T21:23:02.217Z",
    "updated_at" => "2013-10-16T04:10:47.807Z"
  },

  {
    "name" => "Mustek ScanExpress Scanner (ScanExpress S40)",
    "picture" => SeedFile.new(File.join(Rails.root, 'db/seeds/5.jpg')),
    "status" => "Active",
    "location" => "San Francisco, CA",
    "description" => "Easy to scan legal-sized documents and photos, Scan and convert all your documents to PDF, Word, Excel, High-speed USB 2.0 Scanning, Scanning Resolution up to 600 dpi, USB powered design.\r\n\r\nWe bought a 3 in 1 scanner and no longer need this one. Works great & selling for $85.00 on Amazon - this is a great deal!\r\n\r\nCall: 925-957-6870",
    "value" => "55.0",
    "user_id" => 1,
    "lonlat" => "POINT (-122.39475949999999 37.7751071)",
    "created_at" => "2013-10-06T21:24:42.878Z",
    "updated_at" => "2013-10-16T04:10:47.822Z"
  },

  {
    "name" => "Amazon Kindle WiFi 6\" E-Ink with cover",
    "picture" => SeedFile.new(File.join(Rails.root, 'db/seeds/6.jpg')),
    "status" => "Active",
    "location" => "San Francisco, CA",
    "description" => "For sale is an Amazon Kindle WiFi 6\" E-Ink e-reader with Special Offers (ad), black color. It was purchased in July, 2013. I upgraded to Kindle Fire recently, therefore selling this 6\" Kindle. I put the Xtreme Guard screen protector and protective leather book style case cover the day I started using it. It's in good working condition. I will include an OEM travel charger as well. Ask for $50.\r\n\r\n* Less than 6 ounces - lighter than a paperback, fits in your pocket\r\n* New darker, hand-tuned fonts for easier reading\r\n* Reads like paper with no glare, even in bright sunlight\r\n* Download books in 60 seconds with built-in Wi-Fi\r\n* Holds over 1,000 books - take your library wherever you go\r\n* Massive book selection. Lowest prices. Over a million titles less than $9.99\r\n* 180,000 Kindle-exclusive titles that you won't find anywhere else, including books by best-selling authors such as Kurt Vonnegut\r\n* Supports children's books and includes new parental controls",
    "value" => "50.0",
    "user_id" => 1,
    "lonlat" => "POINT (-122.39475949999999 37.7751071)",
    "created_at" => "2013-10-06T21:26:11.966Z",
    "updated_at" => "2013-10-16T04:10:47.850Z"
  },

  {
    "name" => "MacBook Pro (15'', Late 2011), 2.4GHz i7 Quad Core, 4GB RAM, 750GB HDD",
    "picture" => SeedFile.new(File.join(Rails.root, 'db/seeds/7.jpg')),
    "status" => "Active",
    "location" => "San Francisco, CA",
    "description" => "As stated in my title, I am selling a late 2011 15'' high-end Apple MacBook Pro that is in excellent condition.\r\n\r\nHere are the full system specs:\r\n\r\nProcessor: 2.4GHz quad-core Intel Core i7 processor\r\nMemory: 4GB (two 2GB SO-DIMMs) of 1333MHz DDR3 memory\r\nHard Drive: 750GB 5400-rpm hard drive\r\nOptical Drive: 8x SuperDrive (DVD±R DL/DVD±RW/CD-RW)\r\nGraphics: Intel HD Graphics 30005 and AMD Radeon HD 6770M with automatic graphics switching\r\nPorts: MagSafe power port, Gigabit Ethernet port, FireWire 800 port (up to 800 Mbps), Two USB 2.0 ports (up to 480 Mbps), Thunderbolt port (up to 10 Gbps), Audio line in, Audio line out, SDXC card slot, Kensington lock slot\r\nAudio: Stereo speakers with subwoofers, Omnidirectional microphone (located under left speaker grille), Audio line in minijack (digital/analog), Audio line out/headphone minijack (digital/analog), Support for Apple iPhone headset with microphone\r\nNetworking/Wireless: 10/100/1000BASE-T (Gigabit) Ethernet, Wi-Fi (based on IEEE 802.11n specification)2; Bluetooth 2.1 + EDR (Enhanced Data Rate) wireless technology\r\n\r\nSerial Number: C02HF5M6DV7M\r\nYou can view information about this serial number at the following link:\r\nhttps://selfsolve.apple.com/agreementWarrantyDynamic.do\r\n\r\nBattery Information:\r\nCondition: Normal\r\nCycle Count: 37\r\n\r\nI've used this computer for about a year now, and it continues to run very well. Now that I have upgraded to a newer system, I have decided to put this one up for sale. The system remains fully functional and has already been wiped and re-loaded with a fresh install of Mac OS 10.7. This bundle includes all of the peripherals (The Recovery Disc is built into the system, unlike older models which used physical CDs.), excluding the original packaging. There is no visible cosmetic damage, and all ports are functional. Because this computer was seldom used off the charger, the battery has seen very little use, and thus remains in peek condition with few cycles.\r\n\r\nPlease be advised that I am interested in CASH ONLY, and will only sell to LOCAL BUYERS with NO SHIPPING. I am willing to demonstrate that the system is functioning properly. The price is FIRM.\r\n\r\nIf you have any questions, feel free to send me an email.\r\n\r\nThanks.",
    "value" => "1200.0",
    "user_id" => 1,
    "lonlat" => "POINT (-122.39475949999999 37.7751071)",
    "created_at" => "2013-10-06T21:27:54.679Z",
    "updated_at" => "2013-10-16T04:10:47.825Z"
  },

  {
    "name" => "54cm SPECIALIZED Tarmac Carbon Road Bike ~ 5'5\"-5'8\"",
    "picture" => SeedFile.new(File.join(Rails.root, 'db/seeds/8.jpg')),
    "status" => "Active",
    "location" => "San Francisco, CA",
    "description" => "Specialized Tarmac full carbon road bike set up with Shimano 105 cranks, Shimano 105 rear derailleur with a 105 front derailleur as well as Shimano 105 integrated brake shifter levers. This quick & comfortable bike also includes a carbon seat post, powerful Shimano 105 dual pivot brake calipers, & Mavic wheelset. Frame size is 54cm so it's intended to fit riders from ~5'7\" to 5'10\". An amazing state of the art bike for all types of road riding & triathlons. Come down to our showroom at 201 Santa Rosa Ave or call 707-528-8676 if you want to check it out. Cash, Credit/Debit Card, & PayPal accepted. We also love trade-ins! \r\n\r\nClick the link to see more photos of this bike!\r\nhttps://store.bicycleczar.com/54cm-Medium-Specialized-Tarmac-Full-Carbon-p/06135157.htm",
    "value" => "1475.0",
    "user_id" => 1,
    "lonlat" => "POINT (-122.39475949999999 37.7751071)",
    "created_at" => "2013-10-06T21:29:15.750Z",
    "updated_at" => "2013-10-16T04:10:47.843Z"
  },

  {
    "name" => "Canon G12 10 MP Digital Camera - Almost New",
    "picture" => SeedFile.new(File.join(Rails.root, 'db/seeds/9.jpg')),
    "status" => "Active",
    "location" => "San Francisco, CA",
    "description" => "Canon G12 10 MP Digital Camera with 5x Optical Image Stabilized Zoom and 2.8 Inch Vari-Angle LCD\r\n\r\nUsed on one trip. Virtually new. Includes extra battery\r\n\r\nPrice: $465. (Current Amazon price is $749.00 without extra battery)\r\n\r\nDetails\r\n10.0-megapixel sensor and the DIGIC 4 Image Processor combine to create Canon's HS SYSTEM for improved low light performance\r\nShoot 720p HD video in stereo sound; HDMI output\r\nCanon's Hybrid IS compensates for angular and shift camera shake during close-up shooting\r\n5x optical zoom with Optical Image Stabilizer; 28mm wide-angle lens; optical viewfinder\r\nCapture images and video to SD/SDHC/SDXC memory card, MultiMediaCard, MMC Plus Card, HC MMC Plus Card (not included)",
    "value" => "465.0",
    "user_id" => 1,
    "lonlat" => "POINT (-122.39475949999999 37.7751071)",
    "created_at" => "2013-10-06T21:30:02.271Z",
    "updated_at" => "2013-10-16T04:10:47.827Z"
  },

  {
    "name" => "2010 Specialized Roubaix Elite 56cm",
    "picture" => SeedFile.new(File.join(Rails.root, 'db/seeds/10.jpg')),
    "status" => "Active",
    "location" => "San Francisco, CA",
    "description" => "Very good condition stock 2010 Specialized Roubaix Elite. 56cm carbon frame/fork. 105 groupo. Mavic rims with Specialized Roubaix 700c x 23 Pro II tires. Also including, Specialized saddle bag with spare tube and basic pedals.\r\n\r\nNo issues. Normal wear and tear.\r\n\r\n$1300 OBO cash and local pick-up only. Send contact number for response.\r\n\r\nIf ad is up, it's still for sale; asking will get you flagged.",
    "value" => "1300.0",
    "user_id" => 1,
    "lonlat" => "POINT (-122.39475949999999 37.7751071)",
    "created_at" => "2013-10-06T21:31:46.112Z",
    "updated_at" => "2013-10-16T04:10:47.829Z"
  },

  {
    "name" => "Huffy Sea Star Girls 16\" Bike",
    "picture" => SeedFile.new(File.join(Rails.root, 'db/seeds/11.jpg')),
    "status" => "Active",
    "location" => "San Francisco, CA",
    "description" => "Huffy Sea Star girls 16\" bike for sale. Good condition and rides well. Tires are fully inflated and have plenty of tread. Best for a 4 to 6 year old who has learned to balance. Training wheels are not included. Located in Castro Valley.",
    "value" => "35.0",
    "user_id" => 1,
    "lonlat" => "POINT (-122.39475949999999 37.7751071)",
    "created_at" => "2013-10-06T21:32:57.680Z",
    "updated_at" => "2013-10-16T04:10:47.831Z"
  },

  {
    "name" => "two seadoos jetski for sale",
    "picture" => SeedFile.new(File.join(Rails.root, 'db/seeds/12.jpg')),
    "status" => "Active",
    "location" => "San Francisco, CA",
    "description" => "I got two jetskis one is register boht runs perfec and I have the pink slip for the trailer call me for more info. Please don't email me just call or text 510-857-2319 thanks 2500 obo",
    "value" => "2500.0",
    "user_id" => 1,
    "lonlat" => "POINT (-122.39475949999999 37.7751071)",
    "created_at" => "2013-10-06T21:45:56.960Z",
    "updated_at" => "2013-10-16T04:10:47.836Z"
  },

  {
    "name" => "Yamaha f325 Guitar bundle",
    "picture" => SeedFile.new(File.join(Rails.root, 'db/seeds/13.jpg')),
    "status" => "Active",
    "location" => "San Francisco, CA",
    "description" => "Excellent condition Yamaha guitar for any beginning musician or someone looking for a replacement. Comes with an extra set of strings,learning book,learning cd, learning chord book and carrying case. Asking $150 or anything worth trading for. Just let me know what you have,worts I can say is no thanks. Please leave a number to text back if you are interested, Thank you.",
    "value" => "125.0",
    "user_id" => 1,
    "lonlat" => "POINT (-122.39475949999999 37.7751071)",
    "created_at" => "2013-10-06T21:46:44.339Z",
    "updated_at" => "2013-10-16T04:10:47.833Z"
  },

  {
    "name" => "Nice front load gas dryer like new works great",
    "picture" => SeedFile.new(File.join(Rails.root, 'db/seeds/14.jpg')),
    "status" => "Active",
    "location" => "San Francisco, CA",
    "description" => "I have up for trade or sale nice front load gas dryer \r\nWorking great like new large capacity with pedestal included\r\nSend pics what you have I'm open to anything with value\r\n510 688 4420 no drugs\r\nAnd please if you have something to offer send pics to my cellphone\r\nI don't check emails",
    "value" => "299.0",
    "user_id" => 1,
    "lonlat" => "POINT (-122.39475949999999 37.7751071)",
    "created_at" => "2013-10-06T21:47:34.949Z",
    "updated_at" => "2013-10-16T04:10:47.846Z"
  },

  {
    "name" => "SAMSUNG SIDE BY SIDE GRAY COLOR",
    "picture" => SeedFile.new(File.join(Rails.root, 'db/seeds/15.jpg')),
    "status" => "Active",
    "location" => "San Francisco, CA",
    "description" => "BEFORE YOU MAKE ME AN OFFER, PLEASE COME AND SEE IT ****\r\nALSO I HAVE OTHER USED APPLIANCES\r\nItems are guaranteed to work and look clean.\r\nIncludes Warranty (Parts and labor for ,90 days)\r\nInterested. Feel free to call: (510) 781-0571 (SE HABLA ESPANOL)\r\nHours: 8:00 am to 9:00 pm -7 Days A Week- \r\nWe only take in cash. We do not charge taxes\r\nDelivery & Installation range from $ 20 to $ 100",
    "value" => "550.0",
    "user_id" => 1,
    "lonlat" => "POINT (-122.39475949999999 37.7751071)",
    "created_at" => "2013-10-06T21:48:28.841Z",
    "updated_at" => "2013-10-16T04:10:47.839Z"
  },

  {
    "name" => "Casio LK-35 Electric Keyboard",
    "picture" => SeedFile.new(File.join(Rails.root, 'db/seeds/16.jpg')),
    "status" => "Active",
    "location" => "San Francisco, CA",
    "description" => "Man Cave Consignment is selling this awesome Casio LK-35 electric keyboard. It is in great condition, and plays great! It is a good keyboard for beginners to advanced players. It includes the lighted key system which is great for learning to play songs! It also has built in speakers allowing you to just plug in and play, no amps needed! This keyboard can be yours today for only $100! Come get it while it's still here!\r\n\r\nStop by and check it out, we're open 7 days a week, from 10am-7pm!\r\n\r\nMan Cave Consignment\r\n3850 Balfour Rd Suite M (By the fountain!)\r\nBrentwood, CA 94513\r\nhttps://www.facebook.com/mancaveconsignmentshop (Like Us!)\r\n(925) 420-5614",
    "value" => "100.0",
    "user_id" => 1,
    "lonlat" => "POINT (-122.39475949999999 37.7751071)",
    "created_at" => "2013-10-06T21:49:07.108Z",
    "updated_at" => "2013-10-16T04:10:47.847Z"
  },

  {
    "name" => "1996 Fender Precision Bass",
    "picture" => SeedFile.new(File.join(Rails.root, 'db/seeds/17.jpg')),
    "status" => "Active",
    "location" => "San Francisco, CA",
    "description" => "excellent cond for a 17 year old bass, all orginal, no mods, strait neck, low action, plays by its self....well almost. $299.00 takes her home. call (707) 720-9091",
    "value" => "299.0",
    "user_id" => 1,
    "lonlat" => "POINT (-122.39475949999999 37.7751071)",
    "created_at" => "2013-10-06T21:52:57.204Z",
    "updated_at" => "2013-10-16T04:10:47.840Z"
  },

  {
    "name" => "full-size violin for beginning student w/ hard case",
    "picture" => SeedFile.new(File.join(Rails.root, 'db/seeds/18.jpg')),
    "status" => "Active",
    "location" => "San Francisco, CA",
    "description" => "this violin was my first. it needs a bridge and strings, but it plays well, would be excellent for a beginner AND you get a case for free.",
    "value" => "75.0",
    "user_id" => 1,
    "lonlat" => "POINT (-122.39475949999999 37.7751071)",
    "created_at" => "2013-10-06T21:53:53.474Z",
    "updated_at" => "2013-10-16T04:10:47.842Z"
  },

  {
    "name" => "Like new PS3 160GB",
    "picture" => SeedFile.new(File.join(Rails.root, 'db/seeds/19.jpg')),
    "status" => "Active",
    "location" => "San Francisco, CA",
    "description" => "Like New PlayStation 3 160GB. Comes with everything except the package.",
    "value" => "180.0",
    "user_id" => 1,
    "lonlat" => "POINT (-122.39475949999999 37.7751071)",
    "created_at" => "2013-10-06T21:54:37.050Z",
    "updated_at" => "2013-10-16T04:10:47.848Z"
  },

  {
    "name" => "Super Nintendo System and 21 Games",
    "picture" => SeedFile.new(File.join(Rails.root, 'db/seeds/20.jpg')),
    "status" => "Active",
    "location" => "San Francisco, CA",
    "description" => "Super Nintendo Entertainment System (SNES) with RF adapter, AC adapter, two controllers, Super Mario World and the following games...\r\n\r\nBill Laimbeer's Combat Basketball\r\nBoxing Legends of the Ring\r\nCool Spot\r\nDennis The Menace\r\nF-Zero\r\nGradius III\r\nJudge Dredd\r\nKen Griffy Jr. Presents Major League Baseball\r\nMortal Kombat\r\nNBA Jam\r\nPitfall\r\nPopulous\r\nPorky Pig\r\nShaq-Fu\r\nSuper Baseball Simulator 1000\r\nSuper Black Bass\r\nSuper Caesars Palace\r\nSuper Soccer\r\nTaz-Mania\r\nVegas Stakes\r\nWing Commander",
    "value" => "200.0",
    "user_id" => 1,
    "lonlat" => "POINT (-122.39475949999999 37.7751071)",
    "created_at" => "2013-10-06T21:55:52.361Z",
    "updated_at" => "2013-10-16T04:40:59.353Z"
  }
])
