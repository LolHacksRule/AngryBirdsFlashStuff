package com.angrybirds.popups
{
   import com.angrybirds.AngryBirdsEngine;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   
   public class ErrorPopup extends AbstractPopup
   {
      
      public static const ID:String = "ErrorPopup";
      
      public static const ERROR_GENERAL:String = "generalError";
      
      private static const TITLE_GENERAL:String = "Oops! Pigs did it again!";
      
      private static const IMAGE_GENERAL:String = "invalidAccesstoken";
      
      private static const TEXT_GENERAL:String = "Please, refresh your browser.";
      
      private static const TEXT2_GENERAL:String = "The pigs are causing some havoc in our server rooms.";
      
      public static const ERROR_THIRD_PARTY_COOKIES_DISABLED:String = "thirdPartyCookiesDisabled";
      
      private static const TITLE_THIRD_PARTY_COOKIES:String = "Cookie problem";
      
      private static const TEXT2_THIRD_PARTY_COOKIES:String = "This error was caused by:\rThe third party cookies are disabled from your browser.";
      
      public static const ERROR_INVALID_ACCESSTOKEN:String = "invalidAccesstoken";
      
      private static const TEXT2_INVALID_ACCESSTOKEN:String = "This error was caused by:\rInvalid access token.";
      
      public static const ERROR_PRODUCT_NOT_FOUND:String = "productWasNotFound";
      
      private static const TITLE_PRODUCT_NOT_FOUND:String = "Product unavailable";
      
      private static const TEXT2_PRODUCT_NOT_FOUND:String = "This error was caused by:\rThe product was not found from the server.";
      
      public static const ERROR_REWARD_ALREADY_CLAIMED:String = "rewardAlreadyClaimed";
      
      private static const TITLE_REWARD_ALREADY_CLAIMED:String = "Reward cannot be claimed";
      
      private static const TEXT2_REWARD_ALREADY_CLAIMED:String = "This error was caused by:\rThis reward has already been claimed.";
      
      private static var mErrorType:String;
      
      private static var mInfoText:String;
       
      
      public function ErrorPopup(layerIndex:int, priority:int, errorType:String = "generalError", infoText:String = null)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_Error[0],ID);
         mErrorType = errorType;
         mInfoText = infoText;
      }
      
      override protected function init() : void
      {
         super.init();
         var title:String = TITLE_GENERAL;
         var text:String = TEXT_GENERAL;
         var text2:String = TEXT2_GENERAL;
         var imageName:String = IMAGE_GENERAL;
         switch(mErrorType)
         {
            case ERROR_THIRD_PARTY_COOKIES_DISABLED:
               title = TITLE_THIRD_PARTY_COOKIES;
               text2 = TEXT2_THIRD_PARTY_COOKIES;
               break;
            case ERROR_INVALID_ACCESSTOKEN:
               text2 = TEXT2_INVALID_ACCESSTOKEN;
               break;
            case ERROR_PRODUCT_NOT_FOUND:
               title = TITLE_PRODUCT_NOT_FOUND;
               text2 = TEXT2_PRODUCT_NOT_FOUND;
               break;
            case ERROR_REWARD_ALREADY_CLAIMED:
               title = TITLE_REWARD_ALREADY_CLAIMED;
               text2 = TEXT2_REWARD_ALREADY_CLAIMED;
         }
         mContainer.getItemByName("ErrorImage").mClip.gotoAndStop(imageName);
         (mContainer.getItemByName("ErrorTitle") as UITextFieldRovio).setText(title);
         (mContainer.getItemByName("ErrorText") as UITextFieldRovio).setText(text);
         if(!mInfoText)
         {
            (mContainer.getItemByName("ErrorText2") as UITextFieldRovio).setText(text2);
         }
         else
         {
            (mContainer.getItemByName("ErrorText2") as UITextFieldRovio).setText(mInfoText);
         }
         AngryBirdsEngine.pause();
         AngryBirdsBase.singleton.exitFullScreen();
      }
   }
}
