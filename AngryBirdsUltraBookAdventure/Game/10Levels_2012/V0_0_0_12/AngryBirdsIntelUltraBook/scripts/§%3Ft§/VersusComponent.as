package §?t§
{
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §2=§.§!T§;
   import §2=§.TweenManager;
   import §4!9§.§6"§;
   import §5!'§.§#![§;
   import §5!'§.§>Y§;
   import §5!'§.ProfilePicture;
   import §9R§.CachedFacebookFriends;
   import §9R§.CustomAvatarCache;
   import §=?§.SoundEngine;
   import §>!-§.UIComponentRovio;
   import §?j§.FacebookUserProgress;
   import §@!`§.FriendListItemVO;
   import §@!`§.UserLevelScoreVO;
   import §]!6§.§6#§;
   import §]!6§.UIContainerRovio;
   import §]!6§.UITextFieldRovio;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class VersusComponent
   {
       
      
      private var §5!M§:§6"§;
      
      private var §%q§:CachedFacebookFriends;
      
      private var §;!=§:§!T§;
      
      private var §!!Y§:§!T§;
      
      private var §>6§:Number;
      
      private var §0!!§:Number;
      
      private var §%p§:ProfilePicture;
      
      private var §`;§:§#![§;
      
      private var §]Z§:Boolean = false;
      
      private var §7w§:Boolean;
      
      private var §,<§:UserLevelScoreVO;
      
      private var §4h§:int;
      
      private var §`f§:UserLevelScoreVO;
      
      private var §^!P§:int = -1;
      
      private var §!S§:Array;
      
      private var §0!h§:String;
      
      private var §&Y§:UserLevelScoreVO;
      
      private var §+C§:UIContainerRovio;
      
      private var §-!S§:UIContainerRovio;
      
      private var §9!%§:UIComponentRovio;
      
      private var §8-§:§6#§;
      
      private var §!D§:§6#§;
      
      private var §5+§:§6#§;
      
      private var §1!Y§:§6#§;
      
      private var §1!_§:§6#§;
      
      private var §0!$§:§6#§;
      
      private var §3R§:UITextFieldRovio;
      
      private var §^r§:UITextFieldRovio;
      
      private var §8!9§:UITextFieldRovio;
      
      private var §3W§:UITextFieldRovio;
      
      private var §3E§:UITextFieldRovio;
      
      private var §>!<§:UITextFieldRovio;
      
      public function VersusComponent(uiView:§6"§)
      {
         this.§!S§ = [];
         super();
         this.§5!M§ = uiView;
         this.§"'§();
         this.§>6§ = this.§-!S§.x;
         this.§0!!§ = this.§9!%§.y;
      }
      
      private function §"'§() : void
      {
         this.§-!S§ = this.§5!M§.getItemByName("Container_VsHero") as UIContainerRovio;
         this.§9!%§ = this.§5!M§.getItemByName("Container_VsEnemy") as UIContainerRovio;
         this.§+C§ = this.§5!M§.getItemByName("Container_Vs") as UIContainerRovio;
         this.§8-§ = this.§5!M§.getItemByName("MovieClip_VsAnimation") as §6#§;
         this.§!D§ = this.§5!M§.getItemByName("MovieClip_Boom") as §6#§;
         this.§5+§ = this.§5!M§.getItemByName("MovieClip_VsProfilePicHero") as §6#§;
         this.§1!Y§ = this.§5!M§.getItemByName("MovieClip_VsProfilePicEnemy") as §6#§;
         this.§1!_§ = this.§5!M§.getItemByName("MovieClip_CrownHero") as §6#§;
         this.§0!$§ = this.§5!M§.getItemByName("MovieClip_CrownEnemy") as §6#§;
         this.§3R§ = this.§5!M§.getItemByName("TextField_VsScore") as UITextFieldRovio;
         this.§^r§ = this.§5!M§.getItemByName("TextField_VsScoreEnemy") as UITextFieldRovio;
         this.§8!9§ = this.§5!M§.getItemByName("TextField_NameHero") as UITextFieldRovio;
         this.§3W§ = this.§5!M§.getItemByName("TextField_NameEnemy") as UITextFieldRovio;
         this.§3E§ = this.§5!M§.getItemByName("TextField_VsPositionHero") as UITextFieldRovio;
         this.§>!<§ = this.§5!M§.getItemByName("TextField_VsPositionEnemy") as UITextFieldRovio;
      }
      
      public function activate() : void
      {
         if(this.§;!=§)
         {
            this.§;!=§.play();
         }
         if(this.§!!Y§)
         {
            this.§!!Y§.play();
         }
         var playerNameMask:MovieClip = this.§5!M§.getItemByName("PlayerNameMask").mClip;
         var playerUsername:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).userName;
         this.§4!5§(playerUsername,this.§8!9§,playerNameMask);
         if(this.§&Y§)
         {
            this.§4!5§(this.§&Y§.userName,this.§3W§,this.§5!M§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         if(this.§;!=§)
         {
            this.§;!=§.pause();
            this.§;!=§.§2!_§ = false;
         }
         if(this.§!!Y§)
         {
            this.§!!Y§.pause();
            this.§!!Y§.§2!_§ = false;
         }
      }
      
      public function levelStarted(levelScores:CachedFacebookFriends, levelId:String) : void
      {
         this.§0!h§ = levelId;
         this.§=o§();
         this.§^J§();
         this.§9!%§.setVisibility(true);
         this.§+C§.setVisibility(false);
         this.§%q§ = levelScores;
         this.§]Z§ = false;
         this.§`f§ = null;
         this.§^!P§ = -1;
         this.§!S§ = [];
         this.§8-§.setVisibility(true);
         this.§8-§.§;!G§("Start");
         this.§8-§.§ O§ = true;
         this.§4h§ = -1;
         this.§-!S§.x = this.§>6§;
         this.§9!%§.y = this.§0!!§;
         this.§!!Y§ = null;
         this.§;!=§ = null;
         this.§6I§();
      }
      
      private function initialize() : void
      {
         var playerRank:int = 0;
         this.§]a§();
         var playerNameMask:MovieClip = this.§5!M§.getItemByName("PlayerNameMask").mClip;
         var username:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).userName;
         username = this.§4!5§(username,this.§8!9§,playerNameMask);
         this.§`f§ = null;
         var currentHighScore:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§0!h§);
         this.§,<§ = this.§%q§.§>!J§();
         if(this.§,<§)
         {
            this.§7!e§(this.§,<§);
            playerRank = this.§,<§.rank + 1;
            this.§9!%§.setVisibility(true);
            this.§8-§.setVisibility(true);
         }
         else
         {
            playerRank = 1;
            this.§9!%§.setVisibility(false);
            this.§8-§.setVisibility(false);
            this.§-!S§.x = this.§9!%§.x;
         }
         this.§3E§.setText(playerRank.toString());
         if(currentHighScore > 0)
         {
            (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§5Q§(LevelManager.§var§,playerRank);
         }
         var currentEagle:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(this.§0!h§);
         this.§1!_§.setVisibility(playerRank <= 3 && (currentHighScore > 0 || currentEagle > 0));
         if(playerRank > 0 && playerRank <= 3 && (currentHighScore > 0 || currentEagle > 0))
         {
            this.§1!_§.§;!G§(["Gold","Silver","Bronze"][playerRank - 1]);
         }
         else
         {
            this.§1!_§.§?i§(1);
         }
         this.§+C§.setVisibility(true);
         this.§]Z§ = true;
      }
      
      public function run(deltaTime:Number) : Boolean
      {
         if(this.§%q§.§5!W§ || §]!B§.§>F§.objects.mSardineCanAdded || this.§7w§)
         {
            this.§+C§.setVisibility(false);
            return true;
         }
         if(!this.§]Z§)
         {
            this.initialize();
         }
         this.updateAnimations(deltaTime);
         return this.§`f§ == null;
      }
      
      public function updateCurrentScore(scoreVisible:int, score:int, highscore:int) : void
      {
         var nextToBeatIndex:int = 0;
         if(this.§4h§ == scoreVisible)
         {
            return;
         }
         this.§4h§ = scoreVisible;
         this.§3R§.setText(this.§,v§(this.§4h§));
         if(!this.§,<§)
         {
            return;
         }
         if(this.§%q§.§5!W§ || §]!B§.§>F§.objects.mSardineCanAdded || this.§7w§)
         {
            return;
         }
         while(this.§,<§ && this.§4h§ > this.§,<§.levelScore)
         {
            this.§!S§.unshift(this.§,<§);
            nextToBeatIndex = this.§%q§.data.indexOf(this.§,<§) - 1;
            if(nextToBeatIndex >= 0)
            {
               this.§,<§ = this.§%q§.data[nextToBeatIndex];
            }
            else
            {
               this.§,<§ = null;
            }
         }
         while(this.§!S§.length > 5)
         {
            this.§!S§.pop();
         }
         if(this.§!S§.length > 0 && !this.§`f§)
         {
            this.§^_§();
         }
      }
      
      private function §7!e§(enemyUser:UserLevelScoreVO) : void
      {
         this.§0!$§.setVisibility(enemyUser.rank <= 3);
         if(enemyUser.rank > 0 && enemyUser.rank <= 3)
         {
            this.§0!$§.§;!G§(["Gold","Silver","Bronze"][enemyUser.rank - 1]);
         }
         this.§>!<§.setText(enemyUser.rank.toString());
         this.§^r§.setText(this.§,v§(enemyUser.levelScore));
         this.§2!Q§(enemyUser);
      }
      
      private function updateAnimations(deltaTime:Number) : void
      {
         var movieClip:§6#§ = null;
         for each(movieClip in [this.§8-§,this.§!D§,this.§8-§])
         {
            this.§!$§(movieClip,deltaTime,true);
         }
      }
      
      private function §2!Q§(enemyUser:UserLevelScoreVO) : void
      {
         var avatarString:String = CustomAvatarCache.§#!@§(enemyUser.userId);
         var userID:String = enemyUser.userId;
         this.§&Y§ = enemyUser;
         this.§=o§();
         this.§%p§ = new §#![§(userID,"",false,§>Y§.NORMAL);
         this.§@o§(this.§1!Y§,this.§%p§);
         this.§4!5§(enemyUser.userName,this.§3W§,this.§5!M§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §4!5§(username:String, nameTextField:UITextFieldRovio, maskClip:MovieClip) : String
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
      
      private function §@o§(holder:§6#§, newMovieClip:MovieClip) : void
      {
         while(holder.mClip.numChildren > 0)
         {
            holder.mClip.removeChildAt(0);
         }
         holder.mClip.addChild(newMovieClip);
      }
      
      private function §6I§() : void
      {
         var avatarString:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).avatarString;
         var userID:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID;
         this.§^J§();
         this.§`;§ = new §#![§(userID,"",false,§>Y§.NORMAL);
         this.§@o§(this.§5+§,this.§`;§);
      }
      
      private function §1>§(e:Event) : void
      {
         this.§6I§();
      }
      
      private function §=o§() : void
      {
         if(this.§%p§)
         {
            this.§%p§.dispose();
            this.§%p§ = null;
         }
      }
      
      private function §^J§() : void
      {
         if(this.§`;§)
         {
            this.§`;§.dispose();
            this.§`;§ = null;
         }
      }
      
      public function set §-F§(value:Boolean) : void
      {
         this.§7w§ = value;
         this.§+C§.setVisibility(!this.§7w§);
      }
      
      private function §^_§() : void
      {
         this.§`f§ = this.§!S§.pop();
         this.§!!Y§ = TweenManager.§8!X§.§8m§(this.§-!S§.mClip,{"x":this.§>6§ + 15},{"x":this.§>6§},0.5,TweenManager.§0D§);
         this.§!!Y§.onComplete = this.§>!N§;
         this.§!!Y§.play();
         SoundEngine.§9!X§("NextToBeat_Sound","ChannelPowerups");
      }
      
      private function §>!N§() : void
      {
         var heroCurrentRank:int = 0;
         this.§!!Y§ = null;
         this.§!D§.§;!G§("Start");
         this.§!D§.§ O§ = true;
         this.§!D§.setVisibility(true);
         var nextToBeat:UserLevelScoreVO = this.§!S§.length > 0 ? this.§!S§[this.§!S§.length - 1] : this.§,<§;
         if(this.§`f§.rank == 1 || nextToBeat == null)
         {
            this.§9!%§.setVisibility(false);
            this.§!!Y§ = TweenManager.§8!X§.§8m§(this.§-!S§.mClip,{"x":this.§9!%§.mClip.x},null,0.5);
            this.§!!Y§.onComplete = this.§default§;
            this.§!!Y§.play();
            this.§1!_§.§;!G§("Gold");
            this.§3E§.setText("1");
            this.§1!_§.setVisibility(true);
         }
         else
         {
            this.§!!Y§ = TweenManager.§8!X§.§8m§(this.§-!S§.mClip,{"x":this.§>6§},null,0.5);
            this.§!!Y§.onComplete = null;
            this.§!!Y§.play();
            this.§7!e§(nextToBeat);
            heroCurrentRank = nextToBeat.rank + 1;
            this.§1!_§.setVisibility(heroCurrentRank <= 3);
            if(heroCurrentRank > 0 && heroCurrentRank <= 3)
            {
               this.§1!_§.§;!G§(["Gold","Silver","Bronze"][heroCurrentRank - 1]);
            }
            this.§3E§.setText(heroCurrentRank.toString());
            this.§;!=§ = TweenManager.§8!X§.§8m§(this.§9!%§.mClip,{"y":this.§0!!§},{"y":-150},2,TweenManager.§0D§);
            this.§;!=§.onComplete = this.§7!>§;
            this.§;!=§.play();
         }
      }
      
      private function §7!>§() : void
      {
         this.§;!=§ = null;
         this.§`f§ = null;
         if(this.§!S§.length > 0)
         {
            this.§^_§();
         }
      }
      
      private function §default§() : void
      {
         this.§!!Y§ = null;
         this.§`f§ = null;
      }
      
      private function §,v§(amt:int) : String
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
      
      private function §!$§(movieClip:§6#§, deltaTime:Number, hideWhenDone:Boolean = false) : void
      {
         var label:String = null;
         if(movieClip.§ O§ == true)
         {
            label = movieClip.§4W§(deltaTime);
            if(label == "End")
            {
               movieClip.§ O§ = false;
               if(hideWhenDone)
               {
                  movieClip.setVisibility(false);
               }
            }
         }
      }
      
      private function §]a§() : void
      {
         var scoreObject:FriendListItemVO = null;
         var pic:ProfilePicture = null;
         for each(scoreObject in this.§%q§.data)
         {
            if(scoreObject is UserLevelScoreVO)
            {
               pic = new ProfilePicture(scoreObject.userId,"",false,§>Y§.NORMAL);
               pic.dispose();
            }
         }
      }
   }
}
