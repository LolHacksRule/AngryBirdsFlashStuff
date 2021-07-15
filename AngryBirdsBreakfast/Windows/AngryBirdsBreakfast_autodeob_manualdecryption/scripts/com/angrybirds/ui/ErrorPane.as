package com.angrybirds.ui
{
   import com.rovio.utils.DynamicLanguage;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.tween.TweenManager;
   import com.rovio.tween.ISimpleTween;
   import flash.events.EventDispatcher;
   
   public class ErrorPane extends EventDispatcher
   {
      
      private static const PANEL_SLIDE_TIME:Number = 0.5;
      
      public static const NICKNAME_LENGTH:String = "NICKNAME_LENGTH";
      
      public static const FIRSTNAME_LENGTH:String = "FIRSTNAME_LENGTH";
      
      public static const LASTNAME_LENGTH:String = "LASTNAME_LENGTH";
      
      public static const PASSWORD_LENGTH:String = "PASSWORD_LENGTH";
      
      public static const PASSWORDS_DONT_MATCH:String = "PASSWORDS_DONT_MATCH";
      
      public static const INVALID_EMAIL:String = "INVALID_EMAIL";
      
      public static const PASSWORD_MISSING:String = "PASSWORD_MISSING";
      
      public static const CONNECTION_ERROR_RETRY:String = "CONNECTION_ERROR_RETRY";
      
      public static const FORGOT_PASSWORD_EMAIL_SENT:String = "FORGOT_PASSWORD_EMAIL_SENT";
      
      public static const INVALID_AGE:String = "INVALID_AGE";
      
      public static const AGE_UNDER_13:String = "AGE_UNDER_13";
      
      public static const LEVEL_LOCKED:String = "LEVEL_LOCKED";
      
      public static const ENTER_CODE:String = "ENTER_CODE";
      
      public static const BIRTHDATE_LENGTH:String = "BIRTHDATE_LENGTH";
      
      public static const BIRTHDATE_INVALID:String = "BIRTHDATE_INVALID";
      
      public static const GENERAL_REGISTRATION_ERROR:String = "GENERAL_REGISTRATION_ERROR";
      
      public static const ZIPCODE_LENGTH:String = "ZIPCODE_LENGTH";
      
      public static const MONTH_INVALID:String = "MONTH_INVALID";
      
      public static const DAY_INVALID:String = "DAY_INVALID";
      
      public static const YEAR_INVALID:String = "YEAR_INVALID";
      
      public static const ONLY_NUMBERS_ALLOWED:String = "ONLY_NUMBERS_ALLOWED";
      
      public static const ONLY_LETTERS_AND_NUMBERS_ALLOWED:String = "ONLY_LETTERS_AND_NUMBERS_ALLOWED";
      
      public static const ONLY_LETTERS_ALLOWED:String = "ONLY_LETTERS_ALLOWED";
      
      public static const ONLY_NAME_CHARS_ALLOWED:String = "ONLY_NAME_CHARS_ALLOWED";
      
      public static const ONLY_NICKNAME_CHARS_ALLOWED:String = "ONLY_NICKNAME_CHARS_ALLOWED";
      
      public static const MAKE_SURE_EMAIL_IS_VALID:String = "MAKE_SURE_EMAIL_IS_VALID";
      
      public static const NICKNAME_MISSING:String = "NICKNAME_MISSING";
      
      public static const PLAYER_ID_USED:String = "PLAYER_ID_USED";
      
      public static const PLAYER_REQUIRED:String = "PLAYER_REQUIRED";
      
      public static const PLAYER_INVALID_LOGIN:String = "PLAYER_INVALID_LOGIN";
      
      public static const PLAYER_BANNED:String = "PLAYER_BANNED";
      
      public static const IP_BANNED:String = "IP_BANNED";
      
      public static const FIELD_NOT_VALID:String = "FIELD_NOT_VALID";
      
      public static const FIELD_OBLIGATORY:String = "FIELD_OBLIGATORY";
      
      public static const FIELD_LENGTH:String = "FIELD_LENGTH";
      
      public static const TOO_MANY_CODES:String = "TOO_MANY_CODES";
      
      public static const CODE_NOT_EXIST:String = "CODE_NOT_EXIST";
      
      public static const CODE_USED:String = "CODE_USED";
       
      
      private var mErrorMessageTween:ISimpleTween;
      
      private var mFromTargetY:Number;
      
      private var mToTargetY:Number;
      
      private var mVisible:Boolean = false;
      
      private var mContainer:UIContainerRovio;
      
      public function ErrorPane(param1:UIContainerRovio, param2:Number)
      {
         super();
         this.mContainer = param1;
         this.mFromTargetY = this.mContainer.getItemByName("Container_ErrorPane").y;
         this.mToTargetY = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.mVisible)
         {
            if(this.mErrorMessageTween)
            {
               this.mErrorMessageTween.stop();
            }
            DynamicLanguage.instance.setManualTextToTextField(this.mContainer,"Error_Messages","TextField_ErrorMessage",param1);
            this.mErrorMessageTween = TweenManager.instance.createTween(this.mContainer.getItemByName("Container_ErrorPane"),{"y":this.mToTargetY},{"y":this.mFromTargetY},PANEL_SLIDE_TIME * 1.5,TweenManager.EASING_BOUNCE_OUT);
            this.mErrorMessageTween.play();
            this.mVisible = true;
         }
      }
      
      public function hide() : void
      {
         if(this.mVisible)
         {
            if(this.mErrorMessageTween)
            {
               this.mErrorMessageTween.stop();
            }
            this.mErrorMessageTween = TweenManager.instance.createTween(this.mContainer.getItemByName("Container_ErrorPane"),{"y":this.mFromTargetY},null,PANEL_SLIDE_TIME,TweenManager.EASING_CIRCULAR_IN);
            this.mErrorMessageTween.play();
            this.mErrorMessageTween.onComplete = this.onHideComplete;
            this.mVisible = false;
         }
      }
      
      private function onHideComplete() : void
      {
         dispatchEvent(new onRemove(onRemove.ON_HIDE_COMPLETE));
      }
      
      public function dispose() : void
      {
         if(this.mErrorMessageTween)
         {
            this.mErrorMessageTween.stop();
            this.mErrorMessageTween = null;
         }
         this.mContainer = null;
      }
   }
}
