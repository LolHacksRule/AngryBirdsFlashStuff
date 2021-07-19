package com.angrybirds.tournament
{
   import com.angrybirds.data.VirtualCurrencyModel;
   import com.angrybirds.shoppopup.serveractions.ShopListing;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.utils.analytics.INavigable;
   import flash.display.MovieClip;
   
   public class NextLevelButton extends UnlockableLevelButton
   {
       
      
      private var mUnlocksInClip:MovieClip;
      
      private var mUnlockCostClip:MovieClip;
      
      public function NextLevelButton(parentView:INavigable, button:UIButtonRovio, tournamentModel:TournamentModel, shopListing:ShopListing, vcModel:VirtualCurrencyModel)
      {
         this.mUnlocksInClip = button.mClip.unlocksIn;
         this.mUnlockCostClip = this.mUnlocksInClip.unlockCost;
         super(parentView,button,tournamentModel,shopListing,vcModel);
      }
      
      override protected function showTimeUntilUnlocked(prettyTime:String) : void
      {
         this.mUnlocksInClip.Textfield_UnlocksIn.text = prettyTime;
      }
      
      override protected function showPrice(price:int) : void
      {
         this.mUnlockCostClip.text.text = price.toString();
      }
      
      override protected function setPurchasable(value:Boolean) : void
      {
         this.mUnlockCostClip.visible = value;
      }
      
      override protected function setLocked(value:Boolean) : void
      {
         this.mUnlocksInClip.visible = value;
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
