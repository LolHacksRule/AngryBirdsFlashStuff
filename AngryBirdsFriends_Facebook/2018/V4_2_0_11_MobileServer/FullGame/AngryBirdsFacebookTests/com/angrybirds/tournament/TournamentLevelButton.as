package com.angrybirds.tournament
{
   import com.angrybirds.data.VirtualCurrencyModel;
   import com.angrybirds.shoppopup.serveractions.ShopListing;
   import com.rovio.assets.AssetCache;
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
       
      
      private var mLevelNumber:int;
      
      private var mBrand:String;
      
      private var mUserProgress:FacebookUserProgress;
      
      private var mIsPurchasable:Boolean;
      
      private var mIsFirstLevelToBeUnlocked:Boolean;
      
      public function TournamentLevelButton(levelNumber:int, levelObject:Object, parentView:INavigable, button:UIButtonRovio, tournamentModel:TournamentModel, shopListing:ShopListing, vcModel:VirtualCurrencyModel, userProgress:FacebookUserProgress)
      {
         super(parentView,button,tournamentModel,shopListing,vcModel);
         this.mLevelNumber = levelNumber;
         mLevelObject = levelObject;
         this.mUserProgress = userProgress;
         button.setVisibility(true);
         this.mIsFirstLevelToBeUnlocked = this.isFirstLevelToBeUnlocked;
         activate(this.levelName);
      }
      
      public function get levelName() : String
      {
         return mLevelObject.levelId;
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
         var levelScore:int = this.mUserProgress.getTournamentScoreForLevel(this.levelName);
         mButton.mClip.Textfield_LevelScore.text.text = AddCommasToAmount.addCommasToAmount(levelScore);
         var numStars:Number = this.mUserProgress.getStarsForLevel(this.levelName,levelScore);
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
   }
}
