package com.angrybirds.tournament
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.VirtualCurrencyModel;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.angrybirds.shoppopup.serveractions.ShopListing;
   import com.rovio.assets.AssetCache;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.utils.AddCommasToAmount;
   import com.rovio.utils.analytics.INavigable;
   import data.user.FacebookUserProgress;
   import flash.display.MovieClip;
   
   public class TournamentLevelButton extends UnlockableLevelButton
   {
      
      private static const LEVEL_BUTTON_BG:String = "LevelButtonBG";
      
      private static const LEVEL_BUTTON_DARK_BG:String = "background";
      
      private static const BRANDED_BG_LINKAGE_PREFIX:String = "LEVEL_BUTTON_";
      
      private static const LEAGUE_TAB_ORIGINAL_SCALE:Number = 0.789;
      
      private static const TAB_TWEEN_TIME:Number = 0.2;
       
      
      private var mLevelNumber:int;
      
      private var mBrand:String;
      
      private var mUserProgress:FacebookUserProgress;
      
      private var mIsPurchasable:Boolean;
      
      private var mIsFirstLevelToBeUnlocked:Boolean;
      
      private var mLeagueEntered:Boolean;
      
      private var mTween:ISimpleTween;
      
      public function TournamentLevelButton(levelNumber:int, levelObject:Object, parentView:INavigable, button:UIButtonRovio, tournamentModel:TournamentModel, shopListing:ShopListing, vcModel:VirtualCurrencyModel, userProgress:FacebookUserProgress)
      {
         super(parentView,button,tournamentModel,shopListing,vcModel);
         this.mLevelNumber = levelNumber;
         mLevelObject = levelObject;
         this.mUserProgress = userProgress;
         this.mLeagueEntered = false;
         button.setVisibility(true);
         this.mIsFirstLevelToBeUnlocked = this.isFirstLevelToBeUnlocked;
         activate(this.levelName);
         this.setFriendsBarTab(false);
      }
      
      public function get levelName() : String
      {
         return mLevelObject.levelId;
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         if(this.mTween)
         {
            this.mTween.stop();
            this.mTween = null;
         }
      }
      
      override public function update() : void
      {
         super.update();
         if(!this.mIsFirstLevelToBeUnlocked && this.isFirstLevelToBeUnlocked)
         {
            this.mIsFirstLevelToBeUnlocked = this.isFirstLevelToBeUnlocked;
            this.setLocked(!mIsLevelOpen);
         }
      }
      
      public function setBrand(value:String) : void
      {
         this.mBrand = value;
         if(mIsLevelOpen)
         {
            this.setBrandedButton();
         }
      }
      
      private function setBrandedButton() : void
      {
         var cls:Class = null;
         var brandedButton:MovieClip = null;
         var buttonBGMovieClip:MovieClip = mButton.mClip[LEVEL_BUTTON_BG];
         if(buttonBGMovieClip)
         {
            cls = AssetCache.getAssetFromCache(BRANDED_BG_LINKAGE_PREFIX + this.mBrand,false);
            if(cls)
            {
               buttonBGMovieClip.removeChildren();
               mButton.mClip[LEVEL_BUTTON_DARK_BG].visible = false;
               brandedButton = new cls();
               buttonBGMovieClip.addChild(brandedButton);
            }
         }
      }
      
      override protected function setLocked(value:Boolean) : void
      {
         if(value)
         {
            this.setAsLocked();
         }
         else
         {
            this.setAsOpen();
         }
      }
      
      override protected function setPurchasable(value:Boolean) : void
      {
         this.mIsPurchasable = value;
         if(!mIsLevelOpen)
         {
            this.setAsLocked();
         }
      }
      
      private function get isFirstLevelToBeUnlocked() : Boolean
      {
         return this.mLevelNumber == 1 || mTournamentModel.isLevelOpen(mTournamentModel.levelIDs[this.mLevelNumber - 2]);
      }
      
      private function setAsOpen() : void
      {
         mButton.mClip.gotoAndStop("Open");
         mButton.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         mButton.mClip.background.visible = true;
         mButton.mClip.unlockCost.visible = false;
         var userRankForLevel:int = this.mUserProgress.getTournamentRankForLevel(this.levelName);
         if(userRankForLevel && userRankForLevel <= 3)
         {
            mButton.mClip.LevelSelection_Crown.gotoAndStop(userRankForLevel);
         }
         else
         {
            mButton.mClip.LevelSelection_Crown.gotoAndStop(4);
         }
         userRankForLevel = this.mUserProgress.getLeagueRankForLevel(this.levelName);
         this.mLeagueEntered = userRankForLevel > 0;
         mButton.mClip.LevelSelection_League.TextLeagueRanking.text = userRankForLevel + ".";
         if(userRankForLevel <= 10)
         {
            mButton.mClip.LevelSelection_League.gotoAndStop(1);
         }
         else if(userRankForLevel <= 20)
         {
            mButton.mClip.LevelSelection_League.gotoAndStop(2);
         }
         else
         {
            mButton.mClip.LevelSelection_League.gotoAndStop(3);
         }
         var levelScore:int = this.mUserProgress.getTournamentScoreForLevel(this.levelName);
         mButton.mClip.Textfield_LevelScore.text.text = AddCommasToAmount.addCommasToAmount(levelScore);
         var numStars:int = 0;
         if(levelScore <= 0)
         {
            numStars = 0;
         }
         else if(levelScore < mLevelObject.sl["ss"])
         {
            numStars = 1;
         }
         else if(levelScore < mLevelObject.sl["sg"])
         {
            numStars = 2;
         }
         else
         {
            numStars = 3;
         }
         mButton.mClip.MovieClip_Stars.gotoAndStop(numStars.toString() + "_stars");
         if(levelScore == 0)
         {
            mButton.mClip.MovieClip_Stars.visible = false;
            mButton.mClip.Textfield_LevelScore.visible = false;
            mButton.mClip.GiftboxMovieclip.visible = true;
         }
         else
         {
            mButton.mClip.MovieClip_Stars.visible = true;
            mButton.mClip.Textfield_LevelScore.visible = true;
            mButton.mClip.GiftboxMovieclip.visible = false;
         }
         if(this.mBrand)
         {
            this.setBrandedButton();
         }
      }
      
      private function setAsLocked() : void
      {
         mButton.mClip.gotoAndStop("Closed");
         if(this.mIsPurchasable && this.mIsFirstLevelToBeUnlocked)
         {
            mButton.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            mButton.mClip.unlockCost.visible = mButton.mClip.background.visible = true;
         }
         else
         {
            mButton.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
            mButton.mClip.unlockCost.visible = mButton.mClip.background.visible = false;
         }
      }
      
      override protected function showTimeUntilUnlocked(prettyTime:String) : void
      {
         mButton.mClip.Textfield_LockTime.text.text = prettyTime;
      }
      
      override protected function showPrice(price:int) : void
      {
         mButton.mClip.unlockCost.text.text = price.toString();
      }
      
      override protected function get buttonName() : String
      {
         return "UnlockNextLevel";
      }
      
      override protected function get sourceForTracking() : String
      {
         return "level_end";
      }
      
      public function setFriendsBarTab(useAnimation:Boolean) : void
      {
         if(mButton.mClip.MovieClip_Stars.visible == false)
         {
            (mButton.mClip.LevelSelection_League as MovieClip).visible = false;
            return;
         }
         if(!mIsLevelOpen)
         {
            return;
         }
         if((AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.selectedTab() == FriendsBar.TAB_LEAGUE)
         {
            if(useAnimation)
            {
               this.startButtonTabIconTween(!!this.mLeagueEntered ? mButton.mClip.LevelSelection_League : null,mButton.mClip.LevelSelection_Crown.currentFrame < 4 ? mButton.mClip.LevelSelection_Crown : null,LEAGUE_TAB_ORIGINAL_SCALE);
            }
            else
            {
               if(this.mTween)
               {
                  this.mTween.gotoEndAndStop();
               }
               mButton.mClip.LevelSelection_Crown.visible = false;
               mButton.mClip.LevelSelection_League.visible = this.mLeagueEntered;
               mButton.mClip.LevelSelection_League.scaleX = mButton.mClip.LevelSelection_League.scaleY = LEAGUE_TAB_ORIGINAL_SCALE;
            }
         }
         else if(useAnimation)
         {
            this.startButtonTabIconTween(mButton.mClip.LevelSelection_Crown.currentFrame < 4 ? mButton.mClip.LevelSelection_Crown : null,!!this.mLeagueEntered ? mButton.mClip.LevelSelection_League : null,1);
         }
         else
         {
            if(this.mTween)
            {
               this.mTween.gotoEndAndStop();
            }
            mButton.mClip.LevelSelection_Crown.visible = true;
            mButton.mClip.LevelSelection_Crown.scaleX = mButton.mClip.LevelSelection_Crown.scaleY = 1;
            mButton.mClip.LevelSelection_League.visible = false;
         }
      }
      
      private function startButtonTabIconTween(showObject:Object, hideObject:Object, scaleMax:Number) : void
      {
         if(this.mTween)
         {
            this.mTween.gotoEndAndStop();
         }
         if(hideObject)
         {
            this.mTween = TweenManager.instance.createTween(hideObject,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":scaleMax,
               "scaleY":scaleMax
            },TAB_TWEEN_TIME,TweenManager.EASING_SINE_OUT);
            this.mTween.onComplete = function():void
            {
               if(showObject)
               {
                  if(mTween)
                  {
                     mTween = TweenManager.instance.createTween(showObject,{
                        "scaleX":scaleMax,
                        "scaleY":scaleMax
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },TAB_TWEEN_TIME,TweenManager.EASING_SINE_IN);
                     mTween.onComplete = function():void
                     {
                        mTween = null;
                     };
                     showObject.scaleY = 0;
                     showObject.scaleX = 0;
                     showObject.visible = true;
                     mTween.play();
                  }
               }
               else
               {
                  mTween = null;
               }
            };
            this.mTween.play();
            hideObject.visible = true;
         }
         else
         {
            this.mTween = TweenManager.instance.createTween(showObject,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":0,
               "scaleY":0
            },TAB_TWEEN_TIME);
            this.mTween.onComplete = function():void
            {
               mTween = TweenManager.instance.createTween(showObject,{
                  "scaleX":scaleMax,
                  "scaleY":scaleMax
               },{
                  "scaleX":0,
                  "scaleY":0
               },TAB_TWEEN_TIME,TweenManager.EASING_SINE_IN);
               mTween.onComplete = function():void
               {
                  mTween = null;
               };
               showObject.scaleY = 0;
               showObject.scaleX = 0;
               showObject.visible = true;
               mTween.play();
            };
            this.mTween.play();
         }
      }
   }
}
