package §6!'§
{
   import §"!2§.§+,§;
   import §"!2§.UIContainerRovio;
   import §"!2§.UITextFieldRovio;
   import §#!X§.LevelManager;
   import §'!%§.CachedFacebookFriends;
   import §'!%§.CustomAvatarCache;
   import §+R§.§3!1§;
   import §+R§.§6!A§;
   import §+R§.ProfilePicture;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §8T§.FacebookUserProgress;
   import §<!=§.FriendListItemVO;
   import §<!=§.UserLevelScoreVO;
   import §<!G§.§9h§;
   import §<!G§.TweenManager;
   import §>!<§.UIComponentRovio;
   import §@!H§.§-!H§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class VersusComponent
   {
       
      
      private var §^,§:§-!H§;
      
      private var §]!?§:CachedFacebookFriends;
      
      private var §4!4§:§9h§;
      
      private var §,F§:§9h§;
      
      private var §^!d§:Number;
      
      private var §8o§:Number;
      
      private var §7>§:ProfilePicture;
      
      private var §4!&§:§6!A§;
      
      private var §%!C§:Boolean = false;
      
      private var §4'§:Boolean;
      
      private var §0!i§:UserLevelScoreVO;
      
      private var §9,§:int;
      
      private var §=1§:UserLevelScoreVO;
      
      private var §&q§:int = -1;
      
      private var §,!h§:Array;
      
      private var § #§:String;
      
      private var § g§:UserLevelScoreVO;
      
      private var §,!e§:UIContainerRovio;
      
      private var §?+§:UIContainerRovio;
      
      private var §'G§:UIComponentRovio;
      
      private var § ?§:§+,§;
      
      private var §';§:§+,§;
      
      private var §[3§:§+,§;
      
      private var §+E§:§+,§;
      
      private var §#+§:§+,§;
      
      private var §,4§:§+,§;
      
      private var § !$§:UITextFieldRovio;
      
      private var §>o§:UITextFieldRovio;
      
      private var §&!=§:UITextFieldRovio;
      
      private var §08§:UITextFieldRovio;
      
      private var §3!Z§:UITextFieldRovio;
      
      private var §?'§:UITextFieldRovio;
      
      public function VersusComponent(uiView:§-!H§)
      {
         this.§,!h§ = [];
         super();
         this.§^,§ = uiView;
         this.§<!C§();
         this.§^!d§ = this.§?+§.x;
         this.§8o§ = this.§'G§.y;
      }
      
      private function §<!C§() : void
      {
         this.§?+§ = this.§^,§.getItemByName("Container_VsHero") as UIContainerRovio;
         this.§'G§ = this.§^,§.getItemByName("Container_VsEnemy") as UIContainerRovio;
         this.§,!e§ = this.§^,§.getItemByName("Container_Vs") as UIContainerRovio;
         this.§ ?§ = this.§^,§.getItemByName("MovieClip_VsAnimation") as §+,§;
         this.§';§ = this.§^,§.getItemByName("MovieClip_Boom") as §+,§;
         this.§[3§ = this.§^,§.getItemByName("MovieClip_VsProfilePicHero") as §+,§;
         this.§+E§ = this.§^,§.getItemByName("MovieClip_VsProfilePicEnemy") as §+,§;
         this.§#+§ = this.§^,§.getItemByName("MovieClip_CrownHero") as §+,§;
         this.§,4§ = this.§^,§.getItemByName("MovieClip_CrownEnemy") as §+,§;
         this.§ !$§ = this.§^,§.getItemByName("TextField_VsScore") as UITextFieldRovio;
         this.§>o§ = this.§^,§.getItemByName("TextField_VsScoreEnemy") as UITextFieldRovio;
         this.§&!=§ = this.§^,§.getItemByName("TextField_NameHero") as UITextFieldRovio;
         this.§08§ = this.§^,§.getItemByName("TextField_NameEnemy") as UITextFieldRovio;
         this.§3!Z§ = this.§^,§.getItemByName("TextField_VsPositionHero") as UITextFieldRovio;
         this.§?'§ = this.§^,§.getItemByName("TextField_VsPositionEnemy") as UITextFieldRovio;
      }
      
      public function activate() : void
      {
         if(this.§4!4§)
         {
            this.§4!4§.play();
         }
         if(this.§,F§)
         {
            this.§,F§.play();
         }
         var playerNameMask:MovieClip = this.§^,§.getItemByName("PlayerNameMask").mClip;
         var playerUsername:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).userName;
         this.§;c§(playerUsername,this.§&!=§,playerNameMask);
         if(this.§ g§)
         {
            this.§;c§(this.§ g§.userName,this.§08§,this.§^,§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         if(this.§4!4§)
         {
            this.§4!4§.pause();
            this.§4!4§.§'H§ = false;
         }
         if(this.§,F§)
         {
            this.§,F§.pause();
            this.§,F§.§'H§ = false;
         }
      }
      
      public function levelStarted(levelScores:CachedFacebookFriends, levelId:String) : void
      {
         this.§ #§ = levelId;
         this.§[>§();
         this.§<0§();
         this.§'G§.setVisibility(true);
         this.§,!e§.setVisibility(false);
         this.§]!?§ = levelScores;
         this.§%!C§ = false;
         this.§=1§ = null;
         this.§&q§ = -1;
         this.§,!h§ = [];
         this.§ ?§.setVisibility(true);
         this.§ ?§.§"r§("Start");
         this.§ ?§.§9X§ = true;
         this.§9,§ = -1;
         this.§?+§.x = this.§^!d§;
         this.§'G§.y = this.§8o§;
         this.§,F§ = null;
         this.§4!4§ = null;
         this.§%u§();
      }
      
      private function initialize() : void
      {
         var playerRank:int = 0;
         this.§ !k§();
         var playerNameMask:MovieClip = this.§^,§.getItemByName("PlayerNameMask").mClip;
         var username:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).userName;
         username = this.§;c§(username,this.§&!=§,playerNameMask);
         this.§=1§ = null;
         var currentHighScore:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§ #§);
         this.§0!i§ = this.§]!?§.§6!i§();
         if(this.§0!i§)
         {
            this.§#T§(this.§0!i§);
            playerRank = this.§0!i§.rank + 1;
            this.§'G§.setVisibility(true);
            this.§ ?§.setVisibility(true);
         }
         else
         {
            playerRank = 1;
            this.§'G§.setVisibility(false);
            this.§ ?§.setVisibility(false);
            this.§?+§.x = this.§'G§.x;
         }
         this.§3!Z§.setText(playerRank.toString());
         if(currentHighScore > 0)
         {
            (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§38§(LevelManager.§!=§,playerRank);
         }
         var currentEagle:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(this.§ #§);
         this.§#+§.setVisibility(playerRank <= 3 && (currentHighScore > 0 || currentEagle > 0));
         if(playerRank > 0 && playerRank <= 3 && (currentHighScore > 0 || currentEagle > 0))
         {
            this.§#+§.§"r§(["Gold","Silver","Bronze"][playerRank - 1]);
         }
         else
         {
            this.§#+§.§[!?§(1);
         }
         this.§,!e§.setVisibility(true);
         this.§%!C§ = true;
      }
      
      public function run(deltaTime:Number) : Boolean
      {
         if(this.§]!?§.§?,§ || §4!T§.§1t§.objects.mSardineCanAdded || this.§4'§)
         {
            this.§,!e§.setVisibility(false);
            return true;
         }
         if(!this.§%!C§)
         {
            this.initialize();
         }
         this.updateAnimations(deltaTime);
         return this.§=1§ == null;
      }
      
      public function updateCurrentScore(scoreVisible:int, score:int, highscore:int) : void
      {
         var nextToBeatIndex:int = 0;
         if(this.§9,§ == scoreVisible)
         {
            return;
         }
         this.§9,§ = scoreVisible;
         this.§ !$§.setText(this.§4!+§(this.§9,§));
         if(!this.§0!i§)
         {
            return;
         }
         if(this.§]!?§.§?,§ || §4!T§.§1t§.objects.mSardineCanAdded || this.§4'§)
         {
            return;
         }
         while(this.§0!i§ && this.§9,§ > this.§0!i§.levelScore)
         {
            this.§,!h§.unshift(this.§0!i§);
            nextToBeatIndex = this.§]!?§.data.indexOf(this.§0!i§) - 1;
            if(nextToBeatIndex >= 0)
            {
               this.§0!i§ = this.§]!?§.data[nextToBeatIndex];
            }
            else
            {
               this.§0!i§ = null;
            }
         }
         while(this.§,!h§.length > 5)
         {
            this.§,!h§.pop();
         }
         if(this.§,!h§.length > 0 && !this.§=1§)
         {
            this.§+!B§();
         }
      }
      
      private function §#T§(enemyUser:UserLevelScoreVO) : void
      {
         this.§,4§.setVisibility(enemyUser.rank <= 3);
         if(enemyUser.rank > 0 && enemyUser.rank <= 3)
         {
            this.§,4§.§"r§(["Gold","Silver","Bronze"][enemyUser.rank - 1]);
         }
         this.§?'§.setText(enemyUser.rank.toString());
         this.§>o§.setText(this.§4!+§(enemyUser.levelScore));
         this.§+!f§(enemyUser);
      }
      
      private function updateAnimations(deltaTime:Number) : void
      {
         var movieClip:§+,§ = null;
         for each(movieClip in [this.§ ?§,this.§';§,this.§ ?§])
         {
            this.§'5§(movieClip,deltaTime,true);
         }
      }
      
      private function §+!f§(enemyUser:UserLevelScoreVO) : void
      {
         var avatarString:String = CustomAvatarCache.§try §(enemyUser.userId);
         var userID:String = enemyUser.userId;
         this.§ g§ = enemyUser;
         this.§[>§();
         this.§7>§ = new §6!A§(userID,"",false,§3!1§.NORMAL);
         this.§;f§(this.§+E§,this.§7>§);
         this.§;c§(enemyUser.userName,this.§08§,this.§^,§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §;c§(username:String, nameTextField:UITextFieldRovio, maskClip:MovieClip) : String
      {
         if(username.length > 6)
         {
            nameTextField.mClip.mask = maskClip;
            maskClip.visible = true;
         }
         else
         {
            nameTextField.mClip.mask = null;
            maskClip.visible = false;
         }
         nameTextField.setText(username);
         return username;
      }
      
      private function §;f§(holder:§+,§, newMovieClip:MovieClip) : void
      {
         while(holder.mClip.numChildren > 0)
         {
            holder.mClip.removeChildAt(0);
         }
         holder.mClip.addChild(newMovieClip);
      }
      
      private function §%u§() : void
      {
         var avatarString:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).avatarString;
         var userID:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID;
         this.§<0§();
         this.§4!&§ = new §6!A§(userID,"",false,§3!1§.NORMAL);
         this.§;f§(this.§[3§,this.§4!&§);
      }
      
      private function §'L§(e:Event) : void
      {
         this.§%u§();
      }
      
      private function §[>§() : void
      {
         if(this.§7>§)
         {
            this.§7>§.dispose();
            this.§7>§ = null;
         }
      }
      
      private function §<0§() : void
      {
         if(this.§4!&§)
         {
            this.§4!&§.dispose();
            this.§4!&§ = null;
         }
      }
      
      public function set §,!a§(value:Boolean) : void
      {
         this.§4'§ = value;
         this.§,!e§.setVisibility(!this.§4'§);
      }
      
      private function §+!B§() : void
      {
         this.§=1§ = this.§,!h§.pop();
         this.§,F§ = TweenManager.§&!'§.§3L§(this.§?+§.mClip,{"x":this.§^!d§ + 15},{"x":this.§^!d§},0.5,TweenManager.§4!-§);
         this.§,F§.onComplete = this.§false§;
         this.§,F§.play();
         SoundEngine.§`B§("NextToBeat_Sound","ChannelPowerups");
      }
      
      private function §false§() : void
      {
         var heroCurrentRank:int = 0;
         this.§,F§ = null;
         this.§';§.§"r§("Start");
         this.§';§.§9X§ = true;
         this.§';§.setVisibility(true);
         var nextToBeat:UserLevelScoreVO = this.§,!h§.length > 0 ? this.§,!h§[this.§,!h§.length - 1] : this.§0!i§;
         if(this.§=1§.rank == 1 || nextToBeat == null)
         {
            this.§'G§.setVisibility(false);
            this.§,F§ = TweenManager.§&!'§.§3L§(this.§?+§.mClip,{"x":this.§'G§.mClip.x},null,0.5);
            this.§,F§.onComplete = this.§^e§;
            this.§,F§.play();
            this.§#+§.§"r§("Gold");
            this.§3!Z§.setText("1");
            this.§#+§.setVisibility(true);
         }
         else
         {
            this.§,F§ = TweenManager.§&!'§.§3L§(this.§?+§.mClip,{"x":this.§^!d§},null,0.5);
            this.§,F§.onComplete = null;
            this.§,F§.play();
            this.§#T§(nextToBeat);
            heroCurrentRank = nextToBeat.rank + 1;
            this.§#+§.setVisibility(heroCurrentRank <= 3);
            if(heroCurrentRank > 0 && heroCurrentRank <= 3)
            {
               this.§#+§.§"r§(["Gold","Silver","Bronze"][heroCurrentRank - 1]);
            }
            this.§3!Z§.setText(heroCurrentRank.toString());
            this.§4!4§ = TweenManager.§&!'§.§3L§(this.§'G§.mClip,{"y":this.§8o§},{"y":-150},2,TweenManager.§4!-§);
            this.§4!4§.onComplete = this.§&k§;
            this.§4!4§.play();
         }
      }
      
      private function §&k§() : void
      {
         this.§4!4§ = null;
         this.§=1§ = null;
         if(this.§,!h§.length > 0)
         {
            this.§+!B§();
         }
      }
      
      private function §^e§() : void
      {
         this.§,F§ = null;
         this.§=1§ = null;
      }
      
      private function §4!+§(amt:int) : String
      {
         var subString:String = null;
         var result:String = amt.toString();
         var subStrings:Array = [];
         if(result.length % 3 > 0)
         {
            subStrings.push(result.substr(0,result.length % 3));
            result = result.slice(result.length % 3);
         }
         while(result.length > 0)
         {
            subStrings.push(result.substr(0,3));
            result = result.substr(3);
         }
         for each(subString in subStrings)
         {
            result += subString + ",";
         }
         return result.substr(0,result.length - 1);
      }
      
      private function §'5§(movieClip:§+,§, deltaTime:Number, hideWhenDone:Boolean = false) : void
      {
         var label:String = null;
         if(movieClip.§9X§ == true)
         {
            label = movieClip.§0!]§(deltaTime);
            if(label == "End")
            {
               movieClip.§9X§ = false;
               if(hideWhenDone)
               {
                  movieClip.setVisibility(false);
               }
            }
         }
      }
      
      private function § !k§() : void
      {
         var scoreObject:FriendListItemVO = null;
         var pic:ProfilePicture = null;
         for each(scoreObject in this.§]!?§.data)
         {
            if(scoreObject is UserLevelScoreVO)
            {
               pic = new ProfilePicture(scoreObject.userId,"",false,§3!1§.NORMAL);
               pic.dispose();
            }
         }
      }
   }
}
