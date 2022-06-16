package com.angrybirds.popups
{
   import com.angrybirds.AngryBirdsEngine;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.PopupPriorityType;
   
   public class ErrorPopup extends AbstractPopup
   {
      
      public static const ID:String = "ErrorPopup";
      
      public static const ERROR_GENERAL:String = "generalError";
      
      private static const TITLE_GENERAL:String = "Oops! Something went wrong!";
      
      private static const IMAGE_GENERAL:String = "invalidAccesstoken";
      
      private static const TEXT_GENERAL:String = "Please, refresh your browser.";
      
      public static const ERROR_THIRD_PARTY_COOKIES_DISABLED:String = "thirdPartyCookiesDisabled";
      
      private static const TITLE_THIRD_PARTY_COOKIES:String = "Cookie problem";
      
      private static const MORE_INFO_THIRD_PARTY_COOKIES:String = "This error was caused by:\rThe third party cookies are disabled from your browser.";
      
      private static const IMAGE_THIRD_PARTY_COOKIES:String = "thirdPartyCookiesDisabled";
      
      public static const ERROR_INVALID_ACCESSTOKEN:String = "invalidAccesstoken";
      
      private static const MORE_INFO_INVALID_ACCESSTOKEN:String = "This error was caused by:\rInvalid or expired access token.";
      
      public static const ERROR_PRODUCT_NOT_FOUND:String = "productWasNotFound";
      
      private static const TITLE_PRODUCT_NOT_FOUND:String = "Product unavailable";
      
      private static const MORE_INFO_PRODUCT_NOT_FOUND:String = "This error was caused by:\rThe product was not found from the server.";
      
      private static const IMAGE_PRODUCT_NOT_FOUND:String = "generalError";
      
      public static const ERROR_REWARD_ALREADY_CLAIMED:String = "rewardAlreadyClaimed";
      
      private static const TITLE_REWARD_ALREADY_CLAIMED:String = "Reward cannot be claimed";
      
      private static const MORE_INFO_REWARD_ALREADY_CLAIMED:String = "This error was caused by:\rThis reward has already been claimed.";
      
      private static var mErrorType:String;
      
      private static var mInfoText:String;
       
      
      public function ErrorPopup(errorType:String = "generalError", infoText:String = null)
      {
         super(PopupLayerIndexFacebook.ERROR,PopupPriorityType.TOP,ViewXMLLibrary.mLibrary.Views.PopupView_Error[0],ID);
         mErrorType = errorType;
         mInfoText = infoText;
      }
      
      override protected function init() : void
      {
         super.init();
         var title:String = TITLE_GENERAL;
         var text:String = TEXT_GENERAL;
         var moreInfoText:String = null;
         var imageName:String = IMAGE_GENERAL;
         switch(mErrorType)
         {
            case ERROR_THIRD_PARTY_COOKIES_DISABLED:
               title = TITLE_THIRD_PARTY_COOKIES;
               moreInfoText = MORE_INFO_THIRD_PARTY_COOKIES;
               imageName = IMAGE_THIRD_PARTY_COOKIES;
               break;
            case ERROR_INVALID_ACCESSTOKEN:
               moreInfoText = MORE_INFO_INVALID_ACCESSTOKEN;
               break;
            case ERROR_PRODUCT_NOT_FOUND:
               title = TITLE_PRODUCT_NOT_FOUND;
               moreInfoText = MORE_INFO_PRODUCT_NOT_FOUND;
               imageName = IMAGE_PRODUCT_NOT_FOUND;
               break;
            case ERROR_REWARD_ALREADY_CLAIMED:
               title = TITLE_REWARD_ALREADY_CLAIMED;
               moreInfoText = MORE_INFO_REWARD_ALREADY_CLAIMED;
         }
         mContainer.getItemByName("ErrorImage").mClip.gotoAndStop(imageName);
         (mContainer.getItemByName("ErrorTitle") as UITextFieldRovio).setText(title);
         (mContainer.getItemByName("ErrorText") as UITextFieldRovio).setText(text);
         mContainer.getItemByName("ErrorTextMoreInfo").visible = false;
         if(!mInfoText)
         {
            if(moreInfoText)
            {
               (mContainer.getItemByName("ErrorTextMoreInfo") as UITextFieldRovio).setText(moreInfoText);
               mContainer.getItemByName("Button_MoreInfo").visible = true;
            }
            else
            {
               mContainer.getItemByName("Button_MoreInfo").visible = false;
            }
         }
         else
         {
            (mContainer.getItemByName("ErrorTextMoreInfo") as UITextFieldRovio).setText(mInfoText);
            mContainer.getItemByName("Button_MoreInfo").visible = true;
         }
         AngryBirdsEngine.pause();
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "MORE_INFO":
               mContainer.getItemByName("ErrorImage").visible = false;
               mContainer.getItemByName("ErrorText").visible = false;
               mContainer.getItemByName("Button_MoreInfo").visible = false;
               mContainer.getItemByName("ErrorTextMoreInfo").visible = true;
               break;
            default:
               super.onUIInteraction(eventIndex,eventName,component);
         }
      }
   }
}
