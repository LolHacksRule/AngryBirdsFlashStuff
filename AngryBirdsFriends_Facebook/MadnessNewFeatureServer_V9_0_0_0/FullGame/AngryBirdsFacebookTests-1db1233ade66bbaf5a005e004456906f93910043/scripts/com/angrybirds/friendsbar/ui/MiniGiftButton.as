package com.angrybirds.friendsbar.ui
{
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   
   public class MiniGiftButton
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var mMiniGiftButton:SimpleButton;
      
      private var mCheckMarkAnimation:MovieClip;
      
      public function MiniGiftButton()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.mMiniGiftButton = new AssetCache.getAssetFromCache("com.angrybirds.friendsbar.ButtonMiniGift_Plates")();
         this.mAssetHolder.addChild(this.mMiniGiftButton);
      }
      
      public function get miniGiftButton() : SimpleButton
      {
         return this.mMiniGiftButton;
      }
      
      public function setCanSendGift(canSend:Boolean, playTransition:Boolean) : void
      {
         if(canSend == false)
         {
            this.mMiniGiftButton.visible = false;
            if(playTransition)
            {
               this.mCheckMarkAnimation = new AssetCache.getAssetFromCache("com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation")();
               this.mAssetHolder.addChild(this.mCheckMarkAnimation);
               this.mCheckMarkAnimation.addFrameScript(this.mCheckMarkAnimation.totalFrames - 1,this.disposeCheckMark);
               this.mCheckMarkAnimation.play();
            }
         }
         else
         {
            this.mMiniGiftButton.visible = true;
            this.disposeCheckMark();
         }
      }
      
      private function disposeCheckMark() : void
      {
         if(this.mCheckMarkAnimation)
         {
            this.mCheckMarkAnimation.stop();
            if(this.mAssetHolder.contains(this.mCheckMarkAnimation))
            {
               this.mAssetHolder.removeChild(this.mCheckMarkAnimation);
            }
            this.mCheckMarkAnimation = null;
         }
      }
   }
}
