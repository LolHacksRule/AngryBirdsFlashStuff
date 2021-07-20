package §]B§
{
   import § 3§.FacebookUserProgress;
   import §!!0§.SoundEngine;
   import §"!i§.FriendListItemVO;
   import §"!i§.UserLevelScoreVO;
   import §#_§.CachedFacebookFriends;
   import §#_§.CustomAvatarCache;
   import §0!Q§.UIComponentRovio;
   import §6a§.§=D§;
   import §6a§.UIContainerRovio;
   import §6a§.UITextFieldRovio;
   import §6v§.§5!D§;
   import §6v§.§;!G§;
   import §6v§.ProfilePicture;
   import §=!5§.§`X§;
   import §>!_§.LevelManager;
   import §?!O§.§?W§;
   import §?!O§.TweenManager;
   import §?!Y§.§`S§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class VersusComponent
   {
       
      
      private var §`=§:§`X§;
      
      private var §`!+§:CachedFacebookFriends;
      
      private var §#!O§:§?W§;
      
      private var §'`§:§?W§;
      
      private var §#F§:Number;
      
      private var §50§:Number;
      
      private var § D§:ProfilePicture;
      
      private var §8! §:§;!G§;
      
      private var §3U§:Boolean = false;
      
      private var §[!C§:Boolean;
      
      private var §!?§:UserLevelScoreVO;
      
      private var §]1§:int;
      
      private var §3D§:UserLevelScoreVO;
      
      private var §[a§:int = -1;
      
      private var §;O§:Array;
      
      private var §9P§:String;
      
      private var §5!9§:UserLevelScoreVO;
      
      private var §+!b§:UIContainerRovio;
      
      private var §use §:UIContainerRovio;
      
      private var §8+§:UIComponentRovio;
      
      private var §'F§:§=D§;
      
      private var § !a§:§=D§;
      
      private var §;!S§:§=D§;
      
      private var §'%§:§=D§;
      
      private var §&N§:§=D§;
      
      private var §&]§:§=D§;
      
      private var §[u§:UITextFieldRovio;
      
      private var §^S§:UITextFieldRovio;
      
      private var § for§:UITextFieldRovio;
      
      private var §`!`§:UITextFieldRovio;
      
      private var §^!#§:UITextFieldRovio;
      
      private var §47§:UITextFieldRovio;
      
      public function VersusComponent(uiView:§`X§)
      {
         this.§;O§ = [];
         super();
         this.§`=§ = uiView;
         this.§@!3§();
         this.§#F§ = this.§use §.x;
         this.§50§ = this.§8+§.y;
      }
      
      private function §@!3§() : void
      {
         this.§use § = this.§`=§.getItemByName("Container_VsHero") as UIContainerRovio;
         this.§8+§ = this.§`=§.getItemByName("Container_VsEnemy") as UIContainerRovio;
         this.§+!b§ = this.§`=§.getItemByName("Container_Vs") as UIContainerRovio;
         this.§'F§ = this.§`=§.getItemByName("MovieClip_VsAnimation") as §=D§;
         this.§ !a§ = this.§`=§.getItemByName("MovieClip_Boom") as §=D§;
         this.§;!S§ = this.§`=§.getItemByName("MovieClip_VsProfilePicHero") as §=D§;
         this.§'%§ = this.§`=§.getItemByName("MovieClip_VsProfilePicEnemy") as §=D§;
         this.§&N§ = this.§`=§.getItemByName("MovieClip_CrownHero") as §=D§;
         this.§&]§ = this.§`=§.getItemByName("MovieClip_CrownEnemy") as §=D§;
         this.§[u§ = this.§`=§.getItemByName("TextField_VsScore") as UITextFieldRovio;
         this.§^S§ = this.§`=§.getItemByName("TextField_VsScoreEnemy") as UITextFieldRovio;
         this.§ for§ = this.§`=§.getItemByName("TextField_NameHero") as UITextFieldRovio;
         this.§`!`§ = this.§`=§.getItemByName("TextField_NameEnemy") as UITextFieldRovio;
         this.§^!#§ = this.§`=§.getItemByName("TextField_VsPositionHero") as UITextFieldRovio;
         this.§47§ = this.§`=§.getItemByName("TextField_VsPositionEnemy") as UITextFieldRovio;
      }
      
      public function activate() : void
      {
         if(this.§#!O§)
         {
            this.§#!O§.play();
         }
         if(this.§'`§)
         {
            this.§'`§.play();
         }
         var playerNameMask:MovieClip = this.§`=§.getItemByName("PlayerNameMask").mClip;
         var playerUsername:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).userName;
         this.§+$§(playerUsername,this.§ for§,playerNameMask);
         if(this.§5!9§)
         {
            this.§+$§(this.§5!9§.userName,this.§`!`§,this.§`=§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         if(this.§#!O§)
         {
            this.§#!O§.pause();
            this.§#!O§.§1!,§ = false;
         }
         if(this.§'`§)
         {
            this.§'`§.pause();
            this.§'`§.§1!,§ = false;
         }
      }
      
      public function levelStarted(levelScores:CachedFacebookFriends, levelId:String) : void
      {
         this.§9P§ = levelId;
         this.§"1§();
         this.§1!a§();
         this.§8+§.setVisibility(true);
         this.§+!b§.setVisibility(false);
         this.§`!+§ = levelScores;
         this.§3U§ = false;
         this.§3D§ = null;
         this.§[a§ = -1;
         this.§;O§ = [];
         this.§'F§.setVisibility(true);
         this.§'F§.§`c§("Start");
         this.§'F§.§?§ = true;
         this.§]1§ = -1;
         this.§use §.x = this.§#F§;
         this.§8+§.y = this.§50§;
         this.§'`§ = null;
         this.§#!O§ = null;
         this.§-c§();
      }
      
      private function initialize() : void
      {
         var playerRank:int = 0;
         this.dynamic();
         var playerNameMask:MovieClip = this.§`=§.getItemByName("PlayerNameMask").mClip;
         var username:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).userName;
         username = this.§+$§(username,this.§ for§,playerNameMask);
         this.§3D§ = null;
         var currentHighScore:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§9P§);
         this.§!?§ = this.§`!+§.§>!'§();
         if(this.§!?§)
         {
            this.§-V§(this.§!?§);
            playerRank = this.§!?§.rank + 1;
            this.§8+§.setVisibility(true);
            this.§'F§.setVisibility(true);
         }
         else
         {
            playerRank = 1;
            this.§8+§.setVisibility(false);
            this.§'F§.setVisibility(false);
            this.§use §.x = this.§8+§.x;
         }
         this.§^!#§.setText(playerRank.toString());
         if(currentHighScore > 0)
         {
            (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§!!F§(LevelManager.§1m§,playerRank);
         }
         var currentEagle:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(this.§9P§);
         this.§&N§.setVisibility(playerRank <= 3 && (currentHighScore > 0 || currentEagle > 0));
         if(playerRank > 0 && playerRank <= 3 && (currentHighScore > 0 || currentEagle > 0))
         {
            this.§&N§.§`c§(["Gold","Silver","Bronze"][playerRank - 1]);
         }
         else
         {
            this.§&N§.§=L§(1);
         }
         this.§+!b§.setVisibility(true);
         this.§3U§ = true;
      }
      
      public function run(deltaTime:Number) : Boolean
      {
         if(this.§`!+§.§#]§ || §`S§.§[o§.objects.mSardineCanAdded || this.§[!C§)
         {
            this.§+!b§.setVisibility(false);
            return true;
         }
         if(!this.§3U§)
         {
            this.initialize();
         }
         this.updateAnimations(deltaTime);
         return this.§3D§ == null;
      }
      
      public function updateCurrentScore(scoreVisible:int, score:int, highscore:int) : void
      {
         var nextToBeatIndex:int = 0;
         if(this.§]1§ == scoreVisible)
         {
            return;
         }
         this.§]1§ = scoreVisible;
         this.§[u§.setText(this.§3!>§(this.§]1§));
         if(!this.§!?§)
         {
            return;
         }
         if(this.§`!+§.§#]§ || §`S§.§[o§.objects.mSardineCanAdded || this.§[!C§)
         {
            return;
         }
         while(this.§!?§ && this.§]1§ > this.§!?§.levelScore)
         {
            this.§;O§.unshift(this.§!?§);
            nextToBeatIndex = this.§`!+§.data.indexOf(this.§!?§) - 1;
            if(nextToBeatIndex >= 0)
            {
               this.§!?§ = this.§`!+§.data[nextToBeatIndex];
            }
            else
            {
               this.§!?§ = null;
            }
         }
         while(this.§;O§.length > 5)
         {
            this.§;O§.pop();
         }
         if(this.§;O§.length > 0 && !this.§3D§)
         {
            this.§`!Y§();
         }
      }
      
      private function §-V§(enemyUser:UserLevelScoreVO) : void
      {
         this.§&]§.setVisibility(enemyUser.rank <= 3);
         if(enemyUser.rank > 0 && enemyUser.rank <= 3)
         {
            this.§&]§.§`c§(["Gold","Silver","Bronze"][enemyUser.rank - 1]);
         }
         this.§47§.setText(enemyUser.rank.toString());
         this.§^S§.setText(this.§3!>§(enemyUser.levelScore));
         this.§7`§(enemyUser);
      }
      
      private function updateAnimations(deltaTime:Number) : void
      {
         var movieClip:§=D§ = null;
         for each(movieClip in [this.§'F§,this.§ !a§,this.§'F§])
         {
            this.§-!5§(movieClip,deltaTime,true);
         }
      }
      
      private function §7`§(enemyUser:UserLevelScoreVO) : void
      {
         var avatarString:String = CustomAvatarCache.§9!B§(enemyUser.userId);
         var userID:String = enemyUser.userId;
         this.§5!9§ = enemyUser;
         this.§"1§();
         this.§ D§ = new §;!G§(userID,"",false,§5!D§.NORMAL);
         this.§9!K§(this.§'%§,this.§ D§);
         this.§+$§(enemyUser.userName,this.§`!`§,this.§`=§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §+$§(username:String, nameTextField:UITextFieldRovio, maskClip:MovieClip) : String
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
      
      private function §9!K§(holder:§=D§, newMovieClip:MovieClip) : void
      {
         while(holder.mClip.numChildren > 0)
         {
            holder.mClip.removeChildAt(0);
         }
         holder.mClip.addChild(newMovieClip);
      }
      
      private function §-c§() : void
      {
         var avatarString:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).avatarString;
         var userID:String = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID;
         this.§1!a§();
         this.§8! § = new §;!G§(userID,"",false,§5!D§.NORMAL);
         this.§9!K§(this.§;!S§,this.§8! §);
      }
      
      private function § !f§(e:Event) : void
      {
         this.§-c§();
      }
      
      private function §"1§() : void
      {
         if(this.§ D§)
         {
            this.§ D§.dispose();
            this.§ D§ = null;
         }
      }
      
      private function §1!a§() : void
      {
         if(this.§8! §)
         {
            this.§8! §.dispose();
            this.§8! § = null;
         }
      }
      
      public function set §"!A§(value:Boolean) : void
      {
         this.§[!C§ = value;
         this.§+!b§.setVisibility(!this.§[!C§);
      }
      
      private function §`!Y§() : void
      {
         this.§3D§ = this.§;O§.pop();
         this.§'`§ = TweenManager.§7!E§.§5§(this.§use §.mClip,{"x":this.§#F§ + 15},{"x":this.§#F§},0.5,TweenManager.§&=§);
         this.§'`§.onComplete = this.§7!§;
         this.§'`§.play();
         SoundEngine.§-!h§("NextToBeat_Sound","ChannelPowerups");
      }
      
      private function §7!§() : void
      {
         var heroCurrentRank:int = 0;
         this.§'`§ = null;
         this.§ !a§.§`c§("Start");
         this.§ !a§.§?§ = true;
         this.§ !a§.setVisibility(true);
         var nextToBeat:UserLevelScoreVO = this.§;O§.length > 0 ? this.§;O§[this.§;O§.length - 1] : this.§!?§;
         if(this.§3D§.rank == 1 || nextToBeat == null)
         {
            this.§8+§.setVisibility(false);
            this.§'`§ = TweenManager.§7!E§.§5§(this.§use §.mClip,{"x":this.§8+§.mClip.x},null,0.5);
            this.§'`§.onComplete = this.§ ]§;
            this.§'`§.play();
            this.§&N§.§`c§("Gold");
            this.§^!#§.setText("1");
            this.§&N§.setVisibility(true);
         }
         else
         {
            this.§'`§ = TweenManager.§7!E§.§5§(this.§use §.mClip,{"x":this.§#F§},null,0.5);
            this.§'`§.onComplete = null;
            this.§'`§.play();
            this.§-V§(nextToBeat);
            heroCurrentRank = nextToBeat.rank + 1;
            this.§&N§.setVisibility(heroCurrentRank <= 3);
            if(heroCurrentRank > 0 && heroCurrentRank <= 3)
            {
               this.§&N§.§`c§(["Gold","Silver","Bronze"][heroCurrentRank - 1]);
            }
            this.§^!#§.setText(heroCurrentRank.toString());
            this.§#!O§ = TweenManager.§7!E§.§5§(this.§8+§.mClip,{"y":this.§50§},{"y":-150},2,TweenManager.§&=§);
            this.§#!O§.onComplete = this.§5[§;
            this.§#!O§.play();
         }
      }
      
      private function §5[§() : void
      {
         this.§#!O§ = null;
         this.§3D§ = null;
         if(this.§;O§.length > 0)
         {
            this.§`!Y§();
         }
      }
      
      private function § ]§() : void
      {
         this.§'`§ = null;
         this.§3D§ = null;
      }
      
      private function §3!>§(amt:int) : String
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
      
      private function §-!5§(movieClip:§=D§, deltaTime:Number, hideWhenDone:Boolean = false) : void
      {
         var label:String = null;
         if(movieClip.§?§ == true)
         {
            label = movieClip.§+h§(deltaTime);
            if(label == "End")
            {
               movieClip.§?§ = false;
               if(hideWhenDone)
               {
                  movieClip.setVisibility(false);
               }
            }
         }
      }
      
      private function dynamic() : void
      {
         var scoreObject:FriendListItemVO = null;
         var pic:ProfilePicture = null;
         for each(scoreObject in this.§`!+§.data)
         {
            if(scoreObject is UserLevelScoreVO)
            {
               pic = new ProfilePicture(scoreObject.userId,"",false,§5!D§.NORMAL);
               pic.dispose();
            }
         }
      }
   }
}
