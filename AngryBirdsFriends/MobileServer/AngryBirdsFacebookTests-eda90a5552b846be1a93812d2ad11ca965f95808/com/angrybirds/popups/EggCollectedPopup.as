package com.angrybirds.popups
{
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class EggCollectedPopup extends AbstractPopup
   {
      
      public static const ID:String = "EggCollectedPopup";
      
      private static var mEggId:String;
       
      
      private var mView:MovieClip;
      
      public function EggCollectedPopup(layerIndex:int, priority:int, eggId:String)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_EggFound[0],ID);
         mEggId = eggId;
      }
      
      override protected function init() : void
      {
         this.mView = mContainer.mClip;
         if(mEggId.indexOf("300") != -1)
         {
            this.mView.spin.visible = false;
         }
         else
         {
            this.mView.spin.visible = true;
         }
         this.mView.EasterEgg.gotoAndStop(mEggId);
         SoundEngine.playSound("goldenegg",SoundEngine.UI_CHANNEL);
         this.mView.gotoAndPlay(1);
         this.mView.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(e:Event) : void
      {
         if(this.mView.currentFrame == this.mView.totalFrames)
         {
            this.mView.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            this.mView.stop();
            close();
         }
      }
   }
}
