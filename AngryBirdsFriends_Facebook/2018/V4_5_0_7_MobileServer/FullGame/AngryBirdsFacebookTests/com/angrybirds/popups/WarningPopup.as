package com.angrybirds.popups
{
   import com.angrybirds.AngryBirdsEngine;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class WarningPopup extends AbstractPopup
   {
      
      public static const ID:String = "WarningPopup";
      
      public static const DEFAULT_TITLE_TEXT:String = "Oops!";
      
      public static const DEFAULT_WARNING_TEXT:String = "The pigs are messing with our servers!\r\rIf this happens again please reload the game.";
      
      public static const DEFAULT_ERRROR_IMAGE:String = "0";
       
      
      private var mText:String = "";
      
      private var mTitle:String = "";
      
      private var mErrorImageLabel:String;
      
      private var mAllowResume:Boolean = true;
      
      public function WarningPopup(layerIndex:int, priority:int, text:String = "The pigs are messing with our servers!\r\rIf this happens again please reload the game.", title:String = "Oops!", errorImageLabel:String = "0", allowResume:Boolean = true)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_Warning[0],ID);
         this.mText = text;
         this.mTitle = title;
         this.mErrorImageLabel = errorImageLabel;
         this.mAllowResume = allowResume;
      }
      
      override protected function init() : void
      {
         super.init();
         var view:MovieClip = mContainer.mClip;
         view.btnReload.addEventListener(MouseEvent.CLICK,this.onOkClick);
         (mContainer.getItemByName("Textfield_Warning_Text") as UITextFieldRovio).setText(this.mText);
         (mContainer.getItemByName("Textfield_Warning_Title") as UITextFieldRovio).setText(this.mTitle);
         mContainer.getItemByName("MovieClip_WarningBox_Image").mClip.gotoAndStop(this.mErrorImageLabel);
         AngryBirdsEngine.pause();
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      private function onOkClick(e:MouseEvent) : void
      {
         if(this.mAllowResume)
         {
            AngryBirdsEngine.resume();
         }
         close();
      }
   }
}
