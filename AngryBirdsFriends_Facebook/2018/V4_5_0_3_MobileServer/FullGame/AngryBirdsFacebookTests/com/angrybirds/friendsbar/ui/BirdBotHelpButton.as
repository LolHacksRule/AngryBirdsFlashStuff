package com.angrybirds.friendsbar.ui
{
   import com.angrybirds.popups.BirdBotTutorialPopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.rovio.assets.AssetCache;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.popup.PopupPriorityType;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class BirdBotHelpButton
   {
       
      
      public var mAssetHolder:Sprite;
      
      private var mBirdbotHelpButton:SimpleButton;
      
      public function BirdBotHelpButton()
      {
         super();
         this.mAssetHolder = new Sprite();
         this.mBirdbotHelpButton = new AssetCache.getAssetFromCache("com.angrybirds.friendsbar.ButtonBirdbotInfo")();
         this.mAssetHolder.addChild(this.mBirdbotHelpButton);
         this.mAssetHolder.addEventListener(MouseEvent.CLICK,this.onClick,false,0,true);
      }
      
      private function onClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         AngryBirdsBase.singleton.popupManager.openPopup(new BirdBotTutorialPopup(PopupLayerIndexFacebook.NORMAL,PopupPriorityType.DEFAULT));
      }
      
      public function get birdbotHelpButton() : SimpleButton
      {
         return this.mBirdbotHelpButton;
      }
   }
}
