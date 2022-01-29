package com.angrybirds.ui
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.FriendListItemVO;
   import com.angrybirds.data.LeagueLevelScoreVO;
   import com.angrybirds.data.LeagueScoreVO;
   import com.angrybirds.data.UserLevelScoreVO;
   import com.angrybirds.friendsbar.data.CachedFacebookFriends;
   import com.angrybirds.friendsbar.data.CustomAvatarCache;
   import com.angrybirds.friendsbar.ui.profile.CroppedProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.FacebookProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.LeagueProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.ProfilePicture;
   import com.angrybirds.league.LeagueModel;
   import com.angrybirds.league.events.LeagueEvent;
   import com.rovio.sound.SoundEngine;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import data.user.FacebookUserProgress;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class VersusComponent
   {
      
      private static var MAX_BEATEN_USERS_TO_QUEUE:int = 3;
       
      
      private var mUIView:UIContainerRovio;
      
      private var mLevelScores:CachedFacebookFriends;
      
      private var mVsEnemyTween:ISimpleTween;
      
      private var mVsHeroTween:ISimpleTween;
      
      private var mNewAvatarEnemyHQ:ProfilePicture;
      
      private var mNewAvatarHeroHQ:ProfilePicture;
      
      private var mInitialized:Boolean = false;
      
      private var mRunning:Boolean;
      
      private var mIsMightyEagleUsed:Boolean;
      
      private var mNextToBeat:UserLevelScoreVO;
      
      private var mUserScore:int;
      
      private var mUserCurrentlyBlowingUp:UserLevelScoreVO;
      
      private var mLastScoreBeaten:int = -1;
      
      private var mUsersBeaten:Array;
      
      private var mLevelId:String;
      
      private var mCurrentEnemyUserVO:UserLevelScoreVO;
      
      private var mUserLeagueLevelScoreVO:LeagueScoreVO;
      
      protected var mVsContainer:UIContainerRovio;
      
      protected var mHeroContainer:UIContainerRovio;
      
      protected var mEnemyContainer:UIComponentRovio;
      
      protected var mVsAnimation:UIMovieClipRovio;
      
      protected var mBoomAnimation:UIMovieClipRovio;
      
      protected var mHeroProfileHolder:UIMovieClipRovio;
      
      protected var mEnemyProfileHolder:UIMovieClipRovio;
      
      protected var mHeroCrown:UIMovieClipRovio;
      
      protected var mEnemyCrown:UIMovieClipRovio;
      
      protected var mTxtHeroScore:UITextFieldRovio;
      
      protected var mTxtEnemyScore:UITextFieldRovio;
      
      protected var mTxtHeroName:UITextFieldRovio;
      
      protected var mTxtEnemyName:UITextFieldRovio;
      
      protected var mTxtHeroRank:UITextFieldRovio;
      
      protected var mTxtEnemyRank:UITextFieldRovio;
      
      protected var mAnimations:Array;
      
      private const HERO_ORIGINAL_X:int = -158;
      
      private const ENEMY_ORIGINAL_Y:int = -41;
      
      private var mIsLeagueScore:Boolean = false;
      
      public function VersusComponent(uiView:UIContainerRovio)
      {
         this.mUsersBeaten = [];
         this.mAnimations = [];
         super();
         this.mUIView = uiView;
         this.cacheReferences();
      }
      
      protected static function get userProgress() : FacebookUserProgress
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress;
      }
      
      private function cacheReferences() : void
      {
         this.mHeroContainer = this.mUIView.getItemByName("Container_VsHero") as UIContainerRovio;
         this.mEnemyContainer = this.mUIView.getItemByName("Container_VsEnemy") as UIContainerRovio;
         this.mVsContainer = this.mUIView.getItemByName("Container_Vs") as UIContainerRovio;
         this.mVsAnimation = this.mUIView.getItemByName("MovieClip_VsAnimation") as UIMovieClipRovio;
         this.mBoomAnimation = this.mUIView.getItemByName("MovieClip_Boom") as UIMovieClipRovio;
         this.mHeroProfileHolder = this.mUIView.getItemByName("MovieClip_VsProfilePicHero") as UIMovieClipRovio;
         this.mEnemyProfileHolder = this.mUIView.getItemByName("MovieClip_VsProfilePicEnemy") as UIMovieClipRovio;
         this.mHeroCrown = this.mUIView.getItemByName("MovieClip_CrownHero") as UIMovieClipRovio;
         this.mEnemyCrown = this.mUIView.getItemByName("MovieClip_CrownEnemy") as UIMovieClipRovio;
         this.mTxtHeroScore = this.mUIView.getItemByName("TextField_VsScore") as UITextFieldRovio;
         this.mTxtEnemyScore = this.mUIView.getItemByName("TextField_VsScoreEnemy") as UITextFieldRovio;
         this.mTxtHeroName = this.mUIView.getItemByName("TextField_NameHero") as UITextFieldRovio;
         this.mTxtEnemyName = this.mUIView.getItemByName("TextField_NameEnemy") as UITextFieldRovio;
         this.mTxtHeroRank = this.mUIView.getItemByName("TextField_VsPositionHero") as UITextFieldRovio;
         this.mTxtEnemyRank = this.mUIView.getItemByName("TextField_VsPositionEnemy") as UITextFieldRovio;
         this.mAnimations = [this.mVsAnimation,this.mBoomAnimation,this.mVsAnimation];
      }
      
      public function activate() : void
      {
         if(this.mVsEnemyTween)
         {
            this.mVsEnemyTween.play();
         }
         if(this.mVsHeroTween)
         {
            this.mVsHeroTween.play();
         }
         this.updateUsername();
         if(this.mCurrentEnemyUserVO)
         {
            this.prettifyUserName(this.mCurrentEnemyUserVO.userName,this.mTxtEnemyName,this.mUIView.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         if(this.mVsEnemyTween)
         {
            this.mVsEnemyTween.pause();
            this.mVsEnemyTween.automaticCleanup = false;
         }
         if(this.mVsHeroTween)
         {
            this.mVsHeroTween.pause();
            this.mVsHeroTween.automaticCleanup = false;
         }
      }
      
      public function levelStarted(levelScores:CachedFacebookFriends, levelId:String, isLeagueScore:Boolean = false) : void
      {
         this.mLevelId = levelId;
         this.removeEnemyProfilePicture();
         this.removeHeroProfilePicture();
         this.mEnemyContainer.setVisibility(true);
         this.mVsContainer.setVisibility(false);
         this.mLevelScores = levelScores;
         this.mInitialized = false;
         this.mUserCurrentlyBlowingUp = null;
         this.mLastScoreBeaten = -1;
         this.mUsersBeaten = [];
         this.mVsAnimation.setVisibility(true);
         this.mVsAnimation.StopAtLabel("Start");
         this.mVsAnimation.isPlaying = true;
         if(!this.mRunning)
         {
            this.mUserScore = -1;
         }
         this.mHeroContainer.x = this.HERO_ORIGINAL_X;
         this.mEnemyContainer.y = this.ENEMY_ORIGINAL_Y;
         if(this.mVsHeroTween)
         {
            this.mVsHeroTween.stop();
            this.mVsHeroTween = null;
         }
         if(this.mVsEnemyTween)
         {
            this.mVsEnemyTween.stop();
            this.mVsEnemyTween = null;
         }
         this.mEnemyContainer.mClip.VersusComponent_Background.gotoAndStop((AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.selectedTab());
         this.mHeroContainer.mClip.VersusComponent_Background.gotoAndStop((AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.selectedTab());
         this.mIsLeagueScore = isLeagueScore;
         LeagueModel.instance.removeEventListener(LeagueEvent.PLAYER_PROFILE_DATA_UPDATED,this.onPlayerProfileUpdated);
         this.updateProfilePicHero();
      }
      
      private function initialize() : void
      {
         var playerRank:int = 0;
         var nextToBeatIndex:int = 0;
         this.cacheProfilePicturesForThisLevel();
         this.updateUsername();
         if(this.mVsHeroTween)
         {
            this.mVsHeroTween.stop();
            this.mVsHeroTween = null;
         }
         if(this.mVsEnemyTween)
         {
            this.mVsEnemyTween.stop();
            this.mVsEnemyTween = null;
         }
         this.mHeroContainer.x = this.HERO_ORIGINAL_X;
         this.mUserCurrentlyBlowingUp = null;
         var currentHighScore:int = !!this.mRunning ? int(this.mUserScore) : int(userProgress.getScoreForLevel(this.mLevelId));
         currentHighScore = userProgress.getScoreForLevel(this.mLevelId);
         this.mNextToBeat = this.mLevelScores.getNextToBeat();
         if(this.mRunning)
         {
            while(this.mNextToBeat && this.mUserScore > this.mNextToBeat.levelScore)
            {
               nextToBeatIndex = this.mLevelScores.data.indexOf(this.mNextToBeat) - 1;
               if(nextToBeatIndex >= 0)
               {
                  this.mNextToBeat = this.mLevelScores.data[nextToBeatIndex];
               }
               else
               {
                  this.mNextToBeat = null;
               }
            }
         }
         if(this.mNextToBeat)
         {
            this.updateEnemyVisuals(this.mNextToBeat);
            playerRank = this.mNextToBeat.rank + 1;
            this.mEnemyContainer.setVisibility(true);
            this.mVsAnimation.setVisibility(true);
         }
         else
         {
            playerRank = 1;
            this.mEnemyContainer.setVisibility(false);
            this.mVsAnimation.setVisibility(false);
            this.mHeroContainer.x = this.mEnemyContainer.x;
         }
         this.mTxtHeroRank.setText(playerRank.toString());
         if(currentHighScore > 0)
         {
            userProgress.setRankForLevel(this.mLevelId,playerRank);
         }
         var currentEagle:int = userProgress.getEagleScoreForLevel(this.mLevelId);
         this.mHeroCrown.setVisibility(playerRank <= 3 && (currentHighScore > 0 || currentEagle > 0) && !this.mIsLeagueScore);
         if(playerRank > 0 && playerRank <= 3 && (currentHighScore > 0 || currentEagle > 0))
         {
            this.mHeroCrown.StopAtLabel(["Gold","Silver","Bronze"][playerRank - 1]);
         }
         else
         {
            this.mHeroCrown.StopAt(1);
         }
         this.mVsContainer.setVisibility(true);
         LeagueModel.instance.addEventListener(LeagueEvent.PLAYER_PROFILE_DATA_UPDATED,this.onPlayerProfileUpdated);
         this.mInitialized = true;
      }
      
      public function run(deltaTime:Number) : Boolean
      {
         if(this.mLevelScores.isLoading || this.mIsMightyEagleUsed)
         {
            this.mVsContainer.setVisibility(false);
            return true;
         }
         if(!this.mInitialized)
         {
            this.initialize();
            if(!this.mRunning)
            {
               this.mRunning = true;
            }
         }
         this.updateAnimations(deltaTime);
         return this.mUserCurrentlyBlowingUp == null;
      }
      
      public function updateCurrentScore(scoreVisible:int, score:int, highscore:int) : void
      {
         var nextToBeatIndex:int = 0;
         if(this.mUserScore == scoreVisible)
         {
            return;
         }
         this.mUserScore = scoreVisible;
         this.mTxtHeroScore.setText(this.commaFormatedScore(this.mUserScore));
         if(!this.mNextToBeat)
         {
            return;
         }
         if(this.mLevelScores.isLoading || this.mIsMightyEagleUsed)
         {
            return;
         }
         while(this.mNextToBeat && this.mUserScore > this.mNextToBeat.levelScore)
         {
            this.mUsersBeaten.unshift(this.mNextToBeat);
            nextToBeatIndex = this.mLevelScores.data.indexOf(this.mNextToBeat) - 1;
            if(nextToBeatIndex >= 0)
            {
               this.mNextToBeat = this.mLevelScores.data[nextToBeatIndex];
            }
            else
            {
               this.mNextToBeat = null;
            }
         }
         while(this.mUsersBeaten.length > MAX_BEATEN_USERS_TO_QUEUE)
         {
            this.mUsersBeaten.pop();
         }
         if(this.mUsersBeaten.length > 0 && !this.mUserCurrentlyBlowingUp)
         {
            this.nudgeNextToBeat();
         }
      }
      
      private function updateEnemyVisuals(enemyUser:UserLevelScoreVO) : void
      {
         this.mEnemyCrown.setVisibility(enemyUser.rank <= 3 && !this.mIsLeagueScore);
         if(enemyUser.rank > 0 && enemyUser.rank <= 3)
         {
            this.mEnemyCrown.StopAtLabel(["Gold","Silver","Bronze"][enemyUser.rank - 1]);
         }
         this.mTxtEnemyRank.setText(enemyUser.rank.toString());
         this.mTxtEnemyScore.setText(this.commaFormatedScore(enemyUser.levelScore));
         this.updateProfilePicEnemy(enemyUser);
      }
      
      private function updateAnimations(deltaTime:Number) : void
      {
         var movieClip:UIMovieClipRovio = null;
         for each(movieClip in this.mAnimations)
         {
            this.advanceMovieClip(movieClip,deltaTime,true);
         }
      }
      
      private function updateProfilePicEnemy(enemyUser:UserLevelScoreVO) : void
      {
         var avatarString:String = CustomAvatarCache.getFromCache(enemyUser.userId);
         var userID:String = enemyUser.userId;
         this.mCurrentEnemyUserVO = enemyUser;
         this.removeEnemyProfilePicture();
         var profilePicture:String = enemyUser is LeagueLevelScoreVO ? (enemyUser as LeagueLevelScoreVO).profilePicture : null;
         if(profilePicture)
         {
            this.mNewAvatarEnemyHQ = new LeagueProfilePicture(enemyUser.userId,profilePicture,avatarString,false,FacebookProfilePicture.NORMAL,FacebookProfilePicture.SMALL);
         }
         else
         {
            this.mNewAvatarEnemyHQ = new CroppedProfilePicture(userID,"",false,FacebookProfilePicture.NORMAL,false,(enemyUser as FriendListItemVO).profileImageURL);
         }
         this.removeOldAndAddNewMovieClip(this.mEnemyProfileHolder,this.mNewAvatarEnemyHQ);
         this.prettifyUserName(enemyUser.userName,this.mTxtEnemyName,this.mUIView.getItemByName("EnemyNameMask").mClip);
      }
      
      private function prettifyUserName(username:String, nameTextField:UITextFieldRovio, maskClip:MovieClip) : String
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
      
      private function removeOldAndAddNewMovieClip(holder:UIMovieClipRovio, newMovieClip:MovieClip) : void
      {
         while(holder.mClip.numChildren > 0)
         {
            holder.mClip.removeChildAt(0);
         }
         holder.mClip.addChild(newMovieClip);
      }
      
      private function updateProfilePicHero() : void
      {
         var playerObj:Object = null;
         var avatarString:String = userProgress.avatarString;
         var userID:String = userProgress.userID;
         if(this.mIsLeagueScore)
         {
            this.mUserLeagueLevelScoreVO = this.mLevelScores.data[this.mLevelScores.userIndex] as LeagueScoreVO;
            if(!this.mUserLeagueLevelScoreVO)
            {
               playerObj = LeagueModel.instance.getPlayerProfileForLeague();
               playerObj.ir = playerObj.i;
               playerObj.uid = userID;
               if(playerObj.ir)
               {
                  this.mUserLeagueLevelScoreVO = LeagueScoreVO.fromServerObject(playerObj);
               }
            }
         }
         this.removeHeroProfilePicture();
         var profilePicture:String = this.mUserLeagueLevelScoreVO is LeagueScoreVO ? (this.mUserLeagueLevelScoreVO as LeagueScoreVO).profilePicture : null;
         if(profilePicture && this.mIsLeagueScore)
         {
            this.mNewAvatarHeroHQ = new LeagueProfilePicture(userID,profilePicture,"",false,FacebookProfilePicture.NORMAL,FacebookProfilePicture.SMALL);
         }
         else
         {
            this.mNewAvatarHeroHQ = new CroppedProfilePicture(userID,"",false,FacebookProfilePicture.NORMAL);
         }
         this.removeOldAndAddNewMovieClip(this.mHeroProfileHolder,this.mNewAvatarHeroHQ);
      }
      
      private function removeEnemyProfilePicture() : void
      {
         if(this.mNewAvatarEnemyHQ)
         {
            this.mNewAvatarEnemyHQ.dispose();
            this.mNewAvatarEnemyHQ = null;
         }
      }
      
      private function removeHeroProfilePicture() : void
      {
         if(this.mNewAvatarHeroHQ)
         {
            this.mNewAvatarHeroHQ.dispose();
            this.mNewAvatarHeroHQ = null;
         }
      }
      
      public function set isMightyEagleBeingUsed(value:Boolean) : void
      {
         this.mIsMightyEagleUsed = value;
         this.mVsContainer.setVisibility(!this.mIsMightyEagleUsed);
      }
      
      private function nudgeNextToBeat() : void
      {
         this.mUserCurrentlyBlowingUp = this.mUsersBeaten.pop();
         this.mVsHeroTween = TweenManager.instance.createTween(this.mHeroContainer.mClip,{"x":this.HERO_ORIGINAL_X + 15},{"x":this.HERO_ORIGINAL_X},0.5,TweenManager.EASING_BOUNCE_OUT);
         this.mVsHeroTween.onComplete = this.blowUpNextTobeat;
         this.mVsHeroTween.play();
         SoundEngine.playSound("ui_ingame_scorebox_gain_position","ChannelPowerups");
      }
      
      private function blowUpNextTobeat() : void
      {
         var heroCurrentRank:int = 0;
         if(!this.mUserCurrentlyBlowingUp)
         {
            return;
         }
         this.mVsHeroTween = null;
         this.mBoomAnimation.StopAtLabel("Start");
         this.mBoomAnimation.isPlaying = true;
         this.mBoomAnimation.setVisibility(true);
         var nextToBeat:UserLevelScoreVO = this.mUsersBeaten.length > 0 ? this.mUsersBeaten[this.mUsersBeaten.length - 1] : this.mNextToBeat;
         if(this.mUserCurrentlyBlowingUp.rank == 1 || nextToBeat == null)
         {
            this.mEnemyContainer.setVisibility(false);
            this.mVsHeroTween = TweenManager.instance.createTween(this.mHeroContainer.mClip,{"x":this.mEnemyContainer.mClip.x},null,0.5);
            this.mVsHeroTween.onComplete = this.nudgeBecomeKingComplete;
            this.mVsHeroTween.play();
            this.mHeroCrown.StopAtLabel("Gold");
            this.mTxtHeroRank.setText("1");
            this.mHeroCrown.setVisibility(!this.mIsLeagueScore);
         }
         else
         {
            this.mVsHeroTween = TweenManager.instance.createTween(this.mHeroContainer.mClip,{"x":this.HERO_ORIGINAL_X},{"x":this.HERO_ORIGINAL_X + 15},0.5);
            this.mVsHeroTween.onComplete = null;
            this.mVsHeroTween.play();
            this.updateEnemyVisuals(nextToBeat);
            heroCurrentRank = nextToBeat.rank + 1;
            this.mHeroCrown.setVisibility(heroCurrentRank <= 3 && !this.mIsLeagueScore);
            if(heroCurrentRank > 0 && heroCurrentRank <= 3)
            {
               this.mHeroCrown.StopAtLabel(["Gold","Silver","Bronze"][heroCurrentRank - 1]);
            }
            this.mTxtHeroRank.setText(heroCurrentRank.toString());
            this.mVsEnemyTween = TweenManager.instance.createTween(this.mEnemyContainer.mClip,{"y":this.ENEMY_ORIGINAL_Y},{"y":-150},2,TweenManager.EASING_BOUNCE_OUT);
            this.mVsEnemyTween.onComplete = this.nudgeNextToBeatComplete;
            this.mVsEnemyTween.play();
         }
      }
      
      private function nudgeNextToBeatComplete() : void
      {
         this.mVsEnemyTween = null;
         this.mUserCurrentlyBlowingUp = null;
         if(this.mUsersBeaten.length > 0)
         {
            this.nudgeNextToBeat();
         }
      }
      
      private function nudgeBecomeKingComplete() : void
      {
         this.mVsHeroTween = null;
         this.mUserCurrentlyBlowingUp = null;
      }
      
      private function commaFormatedScore(amt:int) : String
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
      
      private function advanceMovieClip(movieClip:UIMovieClipRovio, deltaTime:Number, hideWhenDone:Boolean = false) : void
      {
         var label:String = null;
         if(movieClip.isPlaying)
         {
            label = movieClip.playByTime(deltaTime);
            if(label == "End")
            {
               movieClip.isPlaying = false;
               if(hideWhenDone)
               {
                  movieClip.setVisibility(false);
               }
            }
         }
      }
      
      private function cacheProfilePicturesForThisLevel() : void
      {
         var scoreObject:FriendListItemVO = null;
         var pic:ProfilePicture = null;
         for each(scoreObject in this.mLevelScores.data)
         {
            if(scoreObject is UserLevelScoreVO)
            {
               pic = new ProfilePicture(scoreObject.userId,"",false,FacebookProfilePicture.NORMAL,scoreObject.profileImageURL);
               pic.dispose();
            }
         }
      }
      
      private function updateUsername() : void
      {
         var playerNameMask:MovieClip = this.mUIView.getItemByName("PlayerNameMask").mClip;
         var username:String = userProgress.userName;
         if(this.mIsLeagueScore)
         {
            username = !!LeagueModel.instance.getPlayerProfileForLeague().ni ? LeagueModel.instance.getPlayerProfileForLeague().ni : username;
         }
         username = this.prettifyUserName(username,this.mTxtHeroName,playerNameMask);
      }
      
      protected function onPlayerProfileUpdated(event:Event) : void
      {
         this.updateProfilePicHero();
         this.updateUsername();
      }
   }
}
