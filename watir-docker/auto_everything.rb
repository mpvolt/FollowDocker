 require 'watir'
 require 'twilio-ruby'
 require 'headless'
 require 'base64'
 require 'webdriver-user-agent'
 require 'selenium-webdriver'
#proxy = '104.247.215.105:21257'
 
comments = ['Awesome Pic!', 'Amazing Pic!', 'Great Pic!', 'Haha Wonderful!', 'Haha',
  'Haha awesome!', 'Love your profile', 'I love your profile', 
  'I really like your profile', 'Awesome!', 'your profile is nice', 
  'Nice!', 'Cool!', 'Awesome', 'Really cool!', 'Nice', 'Wow', 'Wow!', 
  'Love your profile', 'Really awesome!', 'Very cool!', 
  'Youre profile is much nicer', 'Great post!', 'Great',
  'Nice post!', 'I love this!', 
  'Nice picture!', 'I really love your profile', 
  'Great post!']   

emails = ['antiseptize@v-mail.xyz', 'antiseptize@rajasoal.online', 'nomis@young-app-lexacc.com', 
  'nomis@v-mail.xyz', 'smalann@v-mail.xyz', 'susuka@yarnpedia.ml', 
  'suzuka@iapermisul.ro', 'retrople@danirafsanjani.com', 'omgebo@v-mail.xyz', 
  'vulpecul@v-mail.xyz', 'Oxycepha@emeraldcluster.com', 'sansculottism@v-mail.xyz', 
  'Rattls@rifkian.ga', 'Shahe@resepku.site', 'suzuka@rex-app-lexc.com', 
  'rojekte@myccscollection.com', 'perceron@v-mail.xyz', 'Lonesomeness@suhuempek.ga', 
  'sangria@v-mail.xyz', 'subidero@v-mail.xyz', 'brillasse@v-mail.xyz', 
  'goucher@v-mail.xyz', 'jahrm@v-mail.xyz', 'currentwise@v-mail.xyz', 
  'unbolted@v-mail.xyz', 'pincodes@v-mail.xyz', 'matt@v-mail.xyz', 
  'irlandesca@v-mail.xyz', 'xylomas@v-mail.xyz','brillasse@v-mail.xyz',
  'goucher@v-mail.xyz', 'jahrm@v-mail.xyz', 'currentwise@v-mail.xyz',
  'unbolted@v-mail.xyz', 'oracletradingbot@gmail.com', 'mattypfanpage@gmail.com',
  'dylan@v-mail.xyz', 'davis@v-mail.xyz', 'dybbuks@v-mail.xyz',
  'subidero@v-mail.xyz'
]


proxies = ['']

instagramers = ['jayalvarrez', 'lilhuddy', 'lopez_tony', 'taylerholder', 
  'brycehall', 'nick__bateman', 'matthew_noszka', 
  'andrehamann', 'davidgandy_official', 'johanneshuebl', 'kortajarenajon',
  'seanopry55', 'marlontx', 'landocommando0', 
  'riverviiperi', 'broderickhunter', 'scotteastwood', 'luckybsmith', 'pietroboselli', 
  'chico_lachowski', 'jmeeksofficial', 'rafaelmiller', 'iblamejordan', 'themacrobarista', 
  'iamgalla', 'eugeneleeyang', 'nickwooster','dad_beets', 'avantgardevegan',
  'thepacman82', 'fitmencook', 'justinliv', 'briankelly', 
  'ryanstylesnyc', 'everchanginghorizon','jamesduigan', 
  'bradleysimmonds', 'thedomesticman', 'bretthoebel', 'davidchang', 'bennyor', 'calvinroyaliii', 
  'doyoutravel', 'artdrunk', 'lukehannon', 'marianodivaio', 'brightbazaar', 'fabioattanasio', 'mario8855']


rand = rand(5)
puts rand

#Timer
start = Time.now

 # put your own credentials here
account_sid = 
auth_token = 
# set up a client to talk to the Twilio REST API
tclient = Twilio::REST::Client.new(account_sid, auth_token)
from = 
to = 




  
#Account Constraints
#New Accounts can only do 50-80 actions first day
#Increase 10-20 each day until maximum of 500/day is reached



class Account
  
  @@array = Array.new
  

  attr_accessor :email, :user, :proxy, :dayCounter, 
  :followdayCounter, :followhourCounter, :followLimit, 
  :likedayCounter, :likehourCounter, :likeLimit, 
  :commentdayCounter, :commenthourCounter, :commentLimit, 
  :unfollowdayCounter, :unfollowhourCounter, :unfollowLimit, :username, :begtime, :endtime

   
  def initialize(email, user, proxy, followLimit, likeLimit, commentLimit, unfollowLimit)
      @email = email
      @user = user
      @proxy = proxy  
      @followLimit = followLimit
      @likeLimit = likeLimit
      @commentLimit = commentLimit
      @unfollowLimit = unfollowLimit
      @username = email
      #Follow Constraints
      #Max 200 per day
      @followdayCounter = 0
      @followhourCounter = 0
      #Like Constraints
      #Max 1000 per day  
      @likedayCounter = 0
      @likehourCounter = 0

      @begtime = 0
      @endtime = 0
      #Comment Constraints
      #Max is 180-200 per day
      @commentdayCounter = 0
      @commenthourCounter = 0

      #Unfollow Constraints
      #Max same as follow constraints
      @unfollowdayCounter = 0
      @unfollowhourCounter = 0

      @dayCounter = 0    
  end

  def self.all
    @@array
  end
end

accounts = []
z = 0

emails.each_with_index do |email, index|
  if index.even?
    accounts << Account.new(email, instagramers[rand(instagramers.length)], proxies[z], 5, 15, 1, 5)
  else
    accounts << Account.new(email, instagramers[rand(instagramers.length)], proxies[z], 5, 15, 1, 5)
    z+=1
  end
end

while true

  accounts.each do |account|

    begin

    #Username/Password
    username = account.email
    password = "Mpvolt42"
    
    if(username == 'antiseptize@v-mail.xyz')
      password = 'buddyboy'
    elsif (username == 'omgebo@v-mail.xyz')
      password = 'Matt78180@mpvolt42'
    elsif (username == 'vulpecul@v-mail.xyz') || (username == 'Oxycepha@emeraldcluster.com') || (username == 'Shahe@resepku.site') || (username == 'Lonesomeness@suhuempek.ga') || (username == 'Rattls@rifkian.ga') || (username == 'suzuka@iapermisul.ro') || (username == 'perceron@v-mail.xyz') || (username == 'susuka@yarnpedia.ml') || (username == 'sansculottism@v-mail.xyz') || (username == 'smalann@v-mail.xyz')
      password = 'Mpvolt@matt78180'
    end

    user = account.user
    proxy = account.proxy

    skipfollow = false
    skipunfollow = false
    skipcomment = false
    skiplike = false

    puts "Instagramer: " + user
    puts "Like Limit = " + (account.likeLimit*0.10).ceil.to_s
    puts "Follow Limit = " + (account.followLimit*0.10).ceil.to_s
    puts "Comment Limit = " + (account.commentLimit*0.10).ceil.to_s
    puts "Unfollow Limit = " + (account.unfollowLimit*0.10).ceil.to_s

    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--headless')
    options.add_argument('--no-sandbox')
    options.add_argument('--disable-dev-shm-usage')
    options.add_argument('--window-size=1400,1400')
    switches = ["--proxy-server=#{proxy}"]
    #open browser, navigate to login page
    driver = Webdriver::UserAgent.driver(:browser => :chrome, :agent => :iphone, :switches => switches, :options => options)
    browser = Watir::Browser.new driver
    browser.driver.manage.window.resize_to(1280,688)
    #browser = Watir::Browser.new :chrome
    browser.cookies.clear

    browser.goto "https://www.instagram.com/accounts/login/"

    while browser.button(:id => 'reload-button').exists?
      browser.button(:id => 'reload-button').click
      sleep(10)
    end

    #log into instagram
    puts "Logging into #{username}"
    browser.text_field(:name => "username").set "#{username}"
    browser.text_field(:name => "password").set "#{password}"
    #Click login button
    browser.button(:class => ["sqdOP", "L3NKy", "y3zKF"], :type => 'submit').click
    sleep(4)
    
    if browser.button(:text => 'Change Password').exists?
      browser.button(:text => 'Change Password').click
      browser.text_field(:name => 'old_password').set "#{password}"
      browser.text_field(:name => 'new_password1').set "Mpvolt@matt78180"
      browser.text_field(:name => 'new_password2').set 'Mpvolt@matt78180'
      browser.button(:text => 'Change Password').click
      tclient.messages.create(
      from: from,
      to: to,
      body: "Hey Matt, #{account.email}'s new password is Mpvolt@matt78180"
      )
      skiplike = true
      skipfollow = true
      skipcomment = true
      skipunfollow = true
      browser.quit
      break
    end

    if browser.button(:class => ["sqdOP", "L3NKy", "y3zKF"], :text => 'Log In').exists?
      emails -= ["#{account.email}"]
      browser.quit
      next
    end

    #Email Verification
    if browser.button(:class => ["_5f5mN", "jIbKX", "KUBKM", "yZn4P"]).exists?
      sleep(5)
      if browser.div(:class => 'x8k0n ').exists?
        browser.div(:class => 'x8k0n ').click
        sleep(2)
      end 
      browser.button(:class => ["_5f5mN", "jIbKX", "KUBKM", "yZn4P"]).click
      sleep(10)
      browser.execute_script( "window.open()" )
      browser.driver.switch_to.window(browser.driver.window_handles[1])
      browser.goto("emailfake.com/#{username}")
      sleep(30)
      
      while browser.button(:id => 'reload-button').exists?
        browser.button(:id => 'reload-button').click
        sleep(10)
      end
      

      browser.driver.execute_script("window.scrollBy(0, 400)")
      
      if browser.div(:text => 'Verify Your Account').exists?
        browser.div(:text => 'Verify Your Account', :index => 0).scroll.to :center
        browser.div(:text => 'Verify Your Account', :index => 0).click
        sleep(4)
        
        while browser.button(:id => 'reload-button').exists?
        browser.button(:id => 'reload-button').click
        sleep(10)
        end
        
        code = browser.font(:size => '6').text
        puts code
        browser.windows.last.close
        sleep(2)
        browser.text_field(:aria_label => 'Security code').set "#{code}"
        browser.button(:class => ["_5f5mN", "jIbKX", "KUBKM", "yZn4P"]).click
        sleep(3)
        if browser.button(:text => 'Change Password').exists?
          browser.button(:text => 'Change Password').click
          browser.text_field(:name => 'old_password').set "#{password}"
          browser.text_field(:name => 'new_password1').set "Mpvolt@matt78180"
          browser.text_field(:name => 'new_password2').set 'Mpvolt@matt78180'
          browser.button(:text => 'Change Password').click
          tclient.messages.create(
          from: from,
          to: to,
          body: "Hey Matt, #{account.email}'s new password is Mpvolt@matt78180"
          )
        elsif browser.button(:text => 'submit').exists?
          tclient.messages.create(
            from: from,
            to: to,
            body: "#{account.email} needs authentication"
            )
          browser.quit
          next
        end
      else
        emails -= ["#{account.email}"]
        browser.quit
        next
      end
      
      sleep(2)
    end

    if browser.button(:class => 'GAMXX').exists?
    	browser.button(:class => 'GAMXX').click
    end

    sleep(5)

    if browser.button(:text => "Add to Home screen").exists? 
      browser.button(:text => "Add to Home screen").click
      sleep(5)
    end

    browser.goto "instagram.com" 

    if browser.button(:text => 'Not Now').exists?
      browser.button(:text => 'Not Now').click
      sleep(5)
    end

    if browser.button(:text => 'Cancel').exists?
      browser.button(:text => 'Cancel').click
      sleep(5)
    end
      
    if browser.svg(:aria_label => 'Profile').exists?
       browser.svg(:aria_label => 'Profile').scroll.to :center
       browser.svg(:aria_label => 'Profile').click
       sleep(3)
       username = browser.h1(:class => ['_7UhW9', 'fKFbl', 'yUEEX', 'KV-D4', 'fDxYl']).text
       account.username = username
    end         

    rand = 1

      while true
        #Follow 
        while account.followdayCounter < account.followLimit && rand == 0 && skipfollow == false
          while account.followhourCounter < (account.followLimit*0.10).ceil && skipfollow == false && rand == 0
           puts "Performing Follow Algorithm"
           browser.goto "instagram.com"

          if browser.button(:text => 'Change Password').exists?
            browser.button(:text => 'Change Password').click
            browser.text_field(:name => 'old_password').set "#{password}"
            browser.text_field(:name => 'new_password1').set "Mpvolt@matt78180"
            browser.text_field(:name => 'new_password2').set 'Mpvolt@matt78180'
            browser.button(:text => 'Change Password').click
            tclient.messages.create(
            from: from,
            to: to,
            body: "Hey Matt, #{account.email}'s new password is Mpvolt@matt78180"
            )
            skiplike = true
            skipfollow = true
            skipcomment = true
            skipunfollow = true
            browser.quit
            break
          end

           while browser.button(:id => 'reload-button').exists?
            browser.button(:id => 'reload-button').click
            sleep(10)
           end

      	   sleep(2)
           if browser.button(:class => ["aOOlW", "HoLwm"]).exists?
              browser.button(:class => ["aOOlW", "HoLwm"]).click
           end
           #Go to instagramer's page
           browser.goto "instagram.com/#{user}/"
        	 sleep(2)
           browser.driver.execute_script("window.scrollBy(0,100)")
           #Open his followers list
           
           if browser.a(:href => "/#{user}/followers/").exists?
            browser.a(:href => "/#{user}/followers/").click
        	   sleep(8)
      	
            #Press follow Button
      	    if browser.button(:class => ["sqdOP", "L3NKy", "y3zKF"]).exists?
      		    followButton = browser.button(:class => ["sqdOP", "L3NKy", "y3zKF"])
              followButton.scroll.to :center
              followButton.click
      	      account.followhourCounter+=1
      		    rand = rand(5)
      		    sleep(10)
      			
              #Action Blocked
      		    if browser.h3(:text => "Action Blocked").exists?
                puts "Username #{username} action was blocked"
      			    skipfollow = true
                skiplike = true
                skipcomment = true
                skipunfollow = true
                account.followdayCounter=(account.followLimit*0.10).ceil
                break
      		    end
      		  
              #Phone Verification
              if browser.input(:class=> ["PAhYv", "zyHYP"]).exists? || browser.div(:id => "checkpoint").exists? || browser.h3(:text => 'Your Account Was Compromised').exists?
                if browser.button(:text => 'Change Password').exists?
                  browser.button(:text => 'Change Password').click
                  browser.text_field(:name => 'old_password').set "#{password}"
                  browser.text_field(:name => 'new_password1').set "Mpvolt@matt78180"
                  browser.text_field(:name => 'new_password2').set 'Mpvolt@matt78180'
                  browser.button(:text => 'Change Password').click
                  tclient.messages.create(
                  from: from,
                  to: to,
                  body: "Hey Matt, #{account.email}'s new password is Mpvolt@matt78180"
                  )
                  skiplike = true
                  skipfollow = true
                  skipcomment = true
                  skipunfollow = true
                  browser.quit
                  break
                else
                  tclient.messages.create(
                  from: from,
                  to: to,
                  body: "Hey Matt, #{account.email} needs verification"
                  )
                end
                skipfollow = true
                account.followdayCounter=(account.followLimit*0.10).ceil
              end
      	    end
            rand = rand(5)    
           else
            if browser.h2(:text => "Help Us Confirm It's You").exists?
              tclient.messages.create(
              from: from,
              to: to,
              body: "Hey Matt, #{account.email} needs verification"
              )
              sleep(3600)
            end
            browser.refresh
           end
          end
          rand = rand(5) 
          sleep(8)
        end
          
        #Like
        while account.likedayCounter < account.likeLimit && rand == 1 && skiplike == false
          while account.likehourCounter < (account.likeLimit*0.10).ceil && skiplike == false && rand == 1
              puts "Performing Like Algorithm"
              browser.goto "instagram.com"
              
              if browser.button(:text => 'Change Password').exists?
                browser.button(:text => 'Change Password').click
                browser.text_field(:name => 'old_password').set "#{password}"
                browser.text_field(:name => 'new_password1').set "Mpvolt@matt78180"
                browser.text_field(:name => 'new_password2').set 'Mpvolt@matt78180'
                browser.button(:text => 'Change Password').click
                tclient.messages.create(
                from: from,
                to: to,
                body: "Hey Matt, #{account.email}'s new password is Mpvolt@matt78180"
                )
                skiplike = true
                skipfollow = true
                skipcomment = true
                skipunfollow = true
                browser.quit
                break
              end

              while browser.button(:id => 'reload-button').exists?
                browser.button(:id => 'reload-button').click
                sleep(5)
              end

              if browser.button(:class => ["aOOlW", "HoLwm"]).exists?
                browser.button(:class => ["aOOlW", "HoLwm"]).click
              end
              
              #Go to instagramer's page
              browser.goto "instagram.com/#{user}/"
              sleep(3)

              if browser.a(:text => 'Log in').exists?
                skiplike = true
                skipfollow = true
                skipcomment = true
                skipunfollow = true
                browser.quit
                break
              end

              if !(browser.a(:href => "/#{user}/followers/").exists?)
                sleep(1)
                browser.refresh
              end

              if browser.a(:href => "/#{user}/followers/").exists?
                followers = browser.a(:href => "/#{user}/followers/")
              
                followers.scroll.to :center

                browser.a(:href => "/#{user}/followers/").
                
                #Open followers page
                browser.a(:href => "/#{user}/followers/").click
                sleep(5)
                browser.driver.switch_to.default_content
        				#Link to follower page
                check = 0
                while browser.a(:class => ["_2dbep", "qNELH", "kIKUG"], :index => check).exists?
                  browser.a(:class =>["_2dbep", "qNELH", "kIKUG"],:index => check).click
                  sleep(5)
                  
                  if browser.h2(:text => 'This Account is Private').exists? || !(browser.div(:class => ["v1Nh3", "kIKUG", "_bz0w"]).exists?) || browser.div(:text => 'No Posts Yet').exists?
                    browser.back
                    check+=1
                  else
                    #First picture on page
                    if browser.div(:class => ["v1Nh3", "kIKUG", "_bz0w"]).exists?
                      sleep(5)
                      if(browser.div(:class => ["RnEpo", "Yx5HN"]).exists?)
                        browser.back
                      else
                        firstPic = browser.div(:class => ["v1Nh3", "kIKUG", "_bz0w"])
                        firstPic.scroll.to :center 
                        firstPic.click
                      
                        sleep(5)

                      #Like Button
                        if browser.svg(:aria_label => "Like").exists? && !(browser.a(:text => "#{username}").exists?) && !(browser.svg(:aria_label => 'Unlike').exists?)
                          browser.svg(:aria_label => "Like").click
                          account.likehourCounter += 1
                          rand = rand(5)
                          sleep(10)

                          #Action Blocked
                          if browser.h3(:text => "Action Blocked").exists?
                            puts "Username #{username} action was blocked"
                            account.likedayCounter=(account.likeLimit*0.10).ceil
                            skipfollow = true
                            skiplike = true
                            skipcomment = true
                            skipunfollow = true
                            break
                          end


                          #Phone Verification
                          if browser.input(:class=> ["PAhYv", "zyHYP"]).exists? || browser.div(:id => "checkpoint").exists? || browser.h3(:text => 'Your Account Was Compromised').exists?
                            if browser.button(:text => 'Change Password').exists?
                              browser.button(:text => 'Change Password').click
                              browser.text_field(:name => 'old_password').set "#{password}"
                              browser.text_field(:name => 'new_password1').set "Mpvolt@matt78180"
                              browser.text_field(:name => 'new_password2').set 'Mpvolt@matt78180'
                              browser.button(:text => 'Change Password').click
                              tclient.messages.create(
                              from: from,
                              to: to,
                              body: "Hey Matt, #{account.email}'s new password is Mpvolt@matt78180"
                              )
                              skiplike = true
                              skipfollow = true
                              skipcomment = true
                              skipunfollow = true
                              browser.quit
                              break
                            else
                              tclient.messages.create(
                              from: from,
                              to: to,
                              body: "Hey Matt, #{account.email} needs verification"
                              )
                            end
                            account.likedayCounter=(account.likeLimit*0.10).ceil
                            skiplike = true
                          end
                          break
                        else
                          browser.back
                          browser.back
                          check+=1
                        end
                      end
                    end 
                  end
                end
              else
                if browser.h2(:text => "Help Us Confirm It's You").exists?
                  tclient.messages.create(
                  from: from,
                  to: to,
                  body: "Hey Matt, #{account.email} needs verification"
                  )
                  sleep(3600)
                end
                browser.refresh
              end
              rand = rand(5)
          end
          sleep(3)
          rand = rand(5)
        end 

        rand = rand(5)

        #Scroll Activity Feed/Follow a few back
        while rand == 2 && account.followhourCounter < (account.followLimit*0.10).ceil && skipfollow == false && account.followdayCounter < account.followLimit
      	  puts "Performing Activity Feed Algorithm"
      	  browser.goto "instagram.com"

          if browser.button(:text => 'Change Password').exists?
            browser.button(:text => 'Change Password').click
            browser.text_field(:name => 'old_password').set "#{password}"
            browser.text_field(:name => 'new_password1').set "Mpvolt@matt78180"
            browser.text_field(:name => 'new_password2').set 'Mpvolt@matt78180'
            browser.button(:text => 'Change Password').click
            tclient.messages.create(
            from: from,
            to: to,
            body: "Hey Matt, #{account.email}'s new password is Mpvolt@matt78180"
            )
            skiplike = true
            skipfollow = true
            skipcomment = true
            skipunfollow = true
            browser.quit
            break
          end
          
          while browser.button(:id => 'reload-button').exists?
            browser.button(:id => 'reload-button').click
            sleep(5)
          end

      	  if browser.button(:text => "Cancel").exists? 
            browser.button(:text => "Cancel").click
          end
      	   
          if browser.button(:text => 'Not Now').exists?
            browser.button(:text => 'Not Now').click
          end

          sleep(2)

          if browser.button(:text => "Cancel").exists?
            browser.button(:text => "Cancel").click
          end

          if browser.button(:text => 'Not Now').exists?
            browser.button(:text => 'Not Now').click
          end

          activity = browser.svg(:aria_label => "Activity")
          
          while !(activity.exists?)
            sleep(1)
          end
          
          if activity.exists?
            activity.click
      		  sleep(5)
            if account.followhourCounter < (account.followLimit*0.10).ceil
              if browser.button(:text => "Follow").exists?
                follow = browser.button(:text => "Follow")
                follow.scroll.to :center
      			    follow.click
                account.followhourCounter+=1
                rand = rand(5)

         #Action Blocked
                if browser.h3(:text => "Action Blocked").exists?
                  puts "Username #{username} action was blocked"
                  account.followdayCounter=(account.followLimit*0.10).ceil
                  skipfollow = true
                  skiplike = true
                  skipcomment = true
                  skipunfollow = true
                  break
                end

                

                #Phone Verification
                if browser.input(:class=> ["PAhYv", "zyHYP"]).exists? || browser.div(:id => "checkpoint").exists? || browser.h3(:text => 'Your Account Was Compromised').exists?
                  if browser.button(:text => 'Change Password').exists?
                    browser.button(:text => 'Change Password').click
                    browser.text_field(:name => 'old_password').set "#{password}"
                    browser.text_field(:name => 'new_password1').set "Mpvolt@matt78180"
                    browser.text_field(:name => 'new_password2').set 'Mpvolt@matt78180'
                    browser.button(:text => 'Change Password').click
                    tclient.messages.create(
                    from: from,
                    to: to,
                    body: "Hey Matt, #{account.email}'s new password is Mpvolt@matt78180"
                    )
                    skiplike = true
                    skipfollow = true
                    skipcomment = true
                    skipunfollow = true
                    browser.quit
                    break
                  else
                    tclient.messages.create(
                    from: from,
                    to: to,
                    body: "Hey Matt, #{account.email} needs verification"
                    )
                  end
                  account.followdayCounter=(account.followLimit*0.10).ceil
                  skipfollow = true
                end
      		    else
                rand = rand(5)
                break
              end
            else
              rand = rand(5)
            end
          end
      	 rand = rand(5)
      	 sleep(8)
        end 
        
        rand = rand(5)

        #Comment
        while account.commentdayCounter < account.commentLimit && rand == 3 && skipcomment == false
          while account.commenthourCounter < (account.commentLimit*0.10).ceil && skipcomment == false && rand == 3
            puts "Performing Comment Algorithm"
            browser.goto "instagram.com"

            if browser.button(:text => 'Change Password').exists?
              browser.button(:text => 'Change Password').click
              browser.text_field(:name => 'old_password').set "#{password}"
              browser.text_field(:name => 'new_password1').set "Mpvolt@matt78180"
              browser.text_field(:name => 'new_password2').set 'Mpvolt@matt78180'
              browser.button(:text => 'Change Password').click
              tclient.messages.create(
              from: from,
              to: to,
              body: "Hey Matt, #{account.email}'s new password is Mpvolt@matt78180"
              )
              skiplike = true
              skipfollow = true
              skipcomment = true
              skipunfollow = true
              browser.quit
              break
            end

            while browser.button(:id => 'reload-button').exists?
              browser.button(:id => 'reload-button').click
              sleep(5)
            end

            browser.goto "instagram.com/#{user}/"
            sleep(3)
            
            if !(browser.a(:href => "/#{user}/followers/").exists?)
              sleep(1)
            end

            if browser.a(:href => "/#{user}/followers/").exists?
              following = browser.a(:href => "/#{user}/followers/")
              following.scroll.to :center
              #browser.driver.execute_script("window.scrollBy(0,200)")
              browser.a(:href => "/#{user}/followers/").click
              sleep(3)
              browser.driver.switch_to.default_content
      				#Link to follower page
              check = 0
              while browser.a(:class => ["_2dbep", "qNELH", "kIKUG"], :index => check).exists?
                browser.a(:class =>["_2dbep", "qNELH", "kIKUG"], :index => check).click
                sleep(5)
                
                if browser.h2(:text => 'This Account is Private').exists? 
                  browser.back
                  check+=1
                else
        					#First Pic  
                  if browser.div(:class => ["v1Nh3", "kIKUG", "_bz0w"]).exists? && !(browser.div(:text => 'No Posts Yet').exists?)
        		        firstPic = browser.div(:class => ["v1Nh3", "kIKUG", "_bz0w"])
                    firstPic.scroll.to :center
        		        #Pick A Random Comment
        		        random = rand(comments.length)
        		        randomComment = comments[random]
        		    
        		        sleep(2)
                    if(browser.div(:class => ["RnEpo", "Yx5HN"]).exists?)
                      browser.back
                    else   
                    firstPic.click
                	  sleep(3)
                    end
        						#Comment Button
        		        if browser.svg(:aria_label => "Comment").exists? && !(browser.svg(:aria_label => 'Unlike').exists?)
                		  browser.svg(:aria_label => "Comment").click
        		        

                   	  sleep(5)
                      #Check for a previous comment from any account
                      accountusernamepresent = false
                      accounts.each do |n|
                        if(browser.a(:text => "#{n.username}").exists?)
                          accountusernamepresent = true
                        end 
                      end

        					   #Write Comment
        		          if browser.textarea(:aria_label => "Add a comment…").exists? && !(accountusernamepresent) 
        		            browser.textarea(:aria_label => "Add a comment…").set "#{randomComment}"
                      
                        #Press Submit Button
                        if browser.button(:text => 'Post').exists? && browser.button(:text => 'Post').enabled?
                          browser.button(:text => 'Post').click
                          account.commenthourCounter += 1
                          sleep(2)
                              #Action Blocked
                          if browser.h3(:text => "Action Blocked").exists? || browser.button(:text => 'Retry').exists?
                            puts "Username #{username} action was blocked"
                            account.commentdayCounter=(account.commentLimit*0.10).ceil
                            skipfollow = true
                            skiplike = true
                            skipcomment = true
                            skipunfollow = true
                            break
                          end
                          sleep(10)
                          rand = rand(5)

                          #Phone Verification
                          if browser.input(:class=> ["PAhYv", "zyHYP"]).exists? || browser.div(:id => "checkpoint").exists? || browser.h3(:text => 'Your Account Was Compromised').exists?
                            #For sending a text message
                            if browser.button(:text => 'Change Password').exists?
                              browser.button(:text => 'Change Password').click
                              browser.text_field(:name => 'old_password').set "#{password}"
                              browser.text_field(:name => 'new_password1').set "Mpvolt@matt78180"
                              browser.text_field(:name => 'new_password2').set 'Mpvolt@matt78180'
                              browser.button(:text => 'Change Password').click
                              tclient.messages.create(
                              from: from,
                              to: to,
                              body: "Hey Matt, #{account.email}'s new password is Mpvolt@matt78180"
                              )
                              skiplike = true
                              skipfollow = true
                              skipcomment = true
                              skipunfollow = true
                              browser.quit
                              break
                            else
                              tclient.messages.create(
                              from: from,
                              to: to,
                              body: "Hey Matt, #{account.email} needs verification"
                              )
                            end
                            account.commentdayCounter=(account.commentLimit*0.10).ceil
                            skipcomment = true
                            rand = 5
                          end
                          break
                        end
        		          else
                        browser.back
                        browser.back
                        browser.back
                        check+=1
                      end
                    else
                      browser.back
                      browser.back
                      check+=1
                    end
                   	sleep(3)
      					  else
                    browser.back
                    check+=1
                  end
                end	
               	sleep(4)
              end 
            else
              if browser.h2(:text => "Help Us Confirm It's You").exists?
                tclient.messages.create(
                from: from,
                to: to,
                body: "Hey Matt, #{account.email} needs verification"
                )
                sleep(3600)
              end
              browser.refresh
            end	
            rand = rand(5)
          end
          sleep(8)
          rand = rand(5)
      	end

        rand = rand(5)

        #Unfollow
        while account.unfollowdayCounter < account.unfollowLimit && rand == 4 && skipunfollow == false
          while account.unfollowhourCounter < (account.unfollowLimit*0.10).ceil && skipunfollow == false && rand == 4
            puts "Performing Unfollow Algorithm"
            browser.goto "instagram.com"
            
            if browser.button(:text => 'Change Password').exists?
              browser.button(:text => 'Change Password').click
              browser.text_field(:name => 'old_password').set "#{password}"
              browser.text_field(:name => 'new_password1').set "Mpvolt@matt78180"
              browser.text_field(:name => 'new_password2').set 'Mpvolt@matt78180'
              browser.button(:text => 'Change Password').click
              tclient.messages.create(
              from: from,
              to: to,
              body: "Hey Matt, #{account.email}'s new password is Mpvolt@matt78180"
              )
              skiplike = true
              skipfollow = true
              skipcomment = true
              skipunfollow = true
              break
            end

            while browser.button(:id => 'reload-button').exists?
              browser.button(:id => 'reload-button').click
              sleep(5)
            end

             sleep(2)
            if browser.button(:class => "aOOlW HoLwm").exists?
                        browser.button(:class => "aOOlW HoLwm").click
            end
             
            if browser.button(:text => 'Not Now').exists?
              browser.button(:text => 'Not Now').click
              sleep(5)
            end 
             
            if browser.svg(:aria_label => 'Profile').exists?
               browser.svg(:aria_label => 'Profile').scroll.to :center
        	     browser.svg(:aria_label => 'Profile').click
             
          	   sleep(3)
               following = browser.a(:href => "/#{username}/following/")
               following.scroll.to :center

               browser.a(:href => "/#{username}/following/").click
          	   sleep(5)
               browser.driver.switch_to.default_content
        		 #unfollow Button
        	    if browser.button(:text => 'Following').exists?
                browser.button(:text => 'Following').click
                sleep(2)

        			 #unfollow
        		    browser.button(:text => 'Unfollow').click
                sleep(5)
                rand = rand(5)

        #Action Blocked
                if browser.h3(:text => "Action Blocked").exists?
                  puts "Username #{username} action was blocked"
                  account.unfollowdayCounter=(account.unfollowLimit*0.10).ceil
                  skipfollow = true
                  skiplike = true
                  skipcomment = true
                  skipunfollow = true
                  break
                end

                if browser.input(:class=> ["PAhYv", "zyHYP"]).exists? || browser.div(:id => "checkpoint").exists? || browser.h3(:text => 'Your Account Was Compromised').exists?      
                  if browser.button(:text => 'Change Password').exists?
                    browser.button(:text => 'Change Password').click
                    browser.text_field(:name => 'old_password').set "#{password}"
                    browser.text_field(:name => 'new_password1').set "Mpvolt@matt78180"
                    browser.text_field(:name => 'new_password2').set 'Mpvolt@matt78180'
                    tclient.messages.create(
                    from: from,
                    to: to,
                    body: "Hey Matt, #{username}'s new password is Mpvolt@matt78180"
                    )
                    skiplike = true
                    skipfollow = true
                    skipcomment = true
                    skipunfollow = true
                    browser.quit
                    break
                  else
                    tclient.messages.create(
                    from: from,
                    to: to,
                    body: "Hey Matt, #{account.email} needs verification")
                  end
                  account.unfollowdayCounter=(account.unfollowLimit*0.10).ceil
                  skipunfollow = true
                  rand = 5
                end
        	    end
            end
            account.unfollowhourCounter += 1 
          end
            sleep(10)
            rand = rand(5)
        end

        random = rand(instagramers.length)
        user = instagramers[random]
        puts "New user = " + user
        puts "Current like counter " + account.likehourCounter.to_s
        puts "Current follow counter " + account.followhourCounter.to_s
        puts "Current comment counter " + account.commenthourCounter.to_s
        puts "Current unfollow counter " + account.unfollowhourCounter.to_s
        rand = rand(5)

        if skipfollow == true || skipunfollow == true || skipcomment == true || skiplike == true
          skipfollow = false
          skipunfollow = false
          skiplike = false
          skipcomment = false
          break
        end

        #IMPORTANT!! -> !Floor = 0 
        if account.followhourCounter >= (account.followLimit*0.10).floor && account.unfollowhourCounter >= (account.unfollowLimit*0.10).floor && account.commenthourCounter >= (account.commentLimit*0.10).floor && account.likehourCounter >= (account.likeLimit*0.10).floor
      	
      	  account.followdayCounter += account.followhourCounter	#Followers per day counter
          account.followhourCounter = 0 	#Reset Hourly Counter
      	
      	  account.unfollowdayCounter += account.unfollowhourCounter	#Followers per day counter
          account.unfollowhourCounter = 0 	#Reset Hourly Counter
      	
      	  account.commentdayCounter += account.commenthourCounter	#Followers per day counter
          account.commenthourCounter = 0 	#Reset Hourly Counter
      	
      	  account.likedayCounter += account.likehourCounter	#Followers per day counter
          account.likehourCounter = 0 	#Reset Hourly Counter

          puts "#{username} Ending 1 hour run"
          puts "Total Likes  = " + (account.likedayCounter).to_s
          puts "Total Follows = " + (account.followdayCounter).to_s
          puts "Total Comments = " + (account.commentdayCounter).to_s
          puts "Total Unfollows  = " + (account.unfollowdayCounter).to_s	
          current = Time.now
          puts "Running for #{current-start} seconds"

            #No checkpoint encountered #1 checkpoint encountered #2 checkpoints encountered #3 checkpoints encountered #4 checkpoints encountered
          if account.likedayCounter >= account.likeLimit && account.followdayCounter >= account.followLimit && account.commentdayCounter >= account.commentLimit && account.unfollowdayCounter >= account.unfollowLimit 
            account.likedayCounter = 0
            account.likehourCounter = 0
            account.followdayCounter = 0
            account.followhourCounter = 0
            account.commentdayCounter = 0
            account.commenthourCounter = 0
            account.unfollowhourCounter = 0
            account.unfollowdayCounter = 0

            if account.followLimit < 125
              account.followLimit = account.followLimit+10
            end

            if account.likeLimit < 200
              account.likeLimit = account.likeLimit+14
            end

            if account.commentLimit < 25
              account.commentLimit = account.commentLimit+3
            end

            if account.unfollowLimit < 150
              account.unfollowLimit = account.unfollowLimit+10
            end 

            puts "#{username} limits have been reached"
            puts "New Like Limit = " + account.likeLimit.to_s
            puts "New Follow Limit = " + account.followLimit.to_s
            puts "New Comment Limit = " + account.commentLimit.to_s
            puts "New Unfollow Limit = " + account.unfollowLimit.to_s

            time = Time.now
            
            #Alert for new post
            account.dayCounter += 1
            if time.wednesday? || time.saturday?
              tclient.messages.create(
                from: from,
                to: to,
                body: "Hey Matt, please post a new picture to account #{account.email} when you can"
                )
            end

            #Change this based on # of accounts
            #hoursLeft = 3600(24-time.hour)
            #sleep(3600*(accounts.length*2))
            
          end
          break
        end
      end
    
    #close the browser window to release resources
    current = Time.now
    puts "Program has been running for #{current-start} seconds"
    time = Time.new
    puts "Current Time : " + (time.inspect).to_s
    browser.quit
    sleep(10)

    rescue Watir::Exception::UnknownObjectException, Selenium::WebDriver::Error::TimeoutError, Selenium::WebDriver::Error::ElementClickInterceptedError, Net::ReadTimeout, Errno::ECONNRESET
      puts("Caught an Error")
      browser.quit
      retry
    end

  end
end



#  if browser.button(:class => '_0mzm- sqdOP  L3NKy       ').exists?
#	browser.button(:class => '_0mzm- sqdOP  L3NKy       ').click
  
#  while true
#  	if browser.button(:class => '_0mzm- sqdOP  L3NKy       ').exists?
#  	 ap "Following #{val}"
#  	 browser.button(:class => '_0mzm- sqdOP  L3NKy       ').click
#  	 sleep(5)
#  	else
#  	 browser.driver.execute_script("window.scrollBy(0, document.body.scrollHeight)")

  
  
	
 # pry.start(binding)


# users = ['instagram', 'selenagomez', 'arianagrande', 'taylorswift', 'beyonce', 'kimkardashian', 'cristiano', 'kyliejenner', 'justinbieber', 'kendalljenner', 'nickiminaj', 'natgeo', 'neymarjr', 'nike', 'leomessi','khloekardashian', 'mileycyrus', 'katyperry', 'jlo', 'ddlovato', 'kourtneykardash', 'victoriasecret', 'badgalriri', 'fcbarcelona', 'realmadrid', 'theellenshow', 'justintimberlake', 'zendaya' 'caradelevingne', '9gag', 'chrisbrownofficial', 'vindiesel', 'champagnepapi', 'davidbeckham', 'shakira', 'gigihadid', 'emmawatson', 'jamesrodiguez10', 'kingjames', 'garethbale11', 'nikefootball', 'adele', 'zacefron', 'vanessahudgens', 'ladygaga', 'maluma', 'nba', 'nasa', 'rondaldinho', 'luissuarez9', 'zayn', 'shawnmendes', 'adidasfootball', 'brumarquezine', 'hm', 'harrystyles','chanelofficial', 'ayutingting92', 'letthelordbewithyou', 'niallhoran', 'anitta', 'hudabeauty', 'camerondallas', 'adidasoriginals', 'marinaruybarbosa', 'lucyhale', 'karimbenzema', 'princessyahrini', 'zara', 'nickyjampr', 'onedirection', 'andresiniesta8', 'raffinagita1717', 'krisjenner', 'manchesterunited', 'natgeotravel', 'marcelottwelve', 'deepikapadukone', 'snoopdogg', 'davidluiz_4', 'kalbiminrozeti', 'priyankachopra', 'ashleybenson', 'shaym', 'lelepons', 'prillylatuconsina96','louisvuitton','britneyspears', 'sr4official', 'jbalvin', 'laudyacynthiabella', 'ciara', 'stephencurry30', 'instagrambrasil']
