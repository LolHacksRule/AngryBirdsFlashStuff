package §&e§
{
   import §'!n§.§[!I§;
   import §,!7§.§5!k§;
   import §9!U§.§15§;
   import §9!U§.§@F§;
   import flash.events.EventDispatcher;
   
   public class §<x§ extends EventDispatcher
   {
      
      private static const §0!&§:Number = 0.5;
      
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
      
      public static const VERIFICATION_EMAIL_RESEND:String = "VERIFICATION_EMAIL_RESEND";
      
      public static const VERIFICATION_EMAIL_RESEND_ERROR:String = "VERIFICATION_EMAIL_RESEND_ERROR";
      
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
      
      public static const PLAYER_ID_USED:String = "PLAYER_ID_USED";
      
      public static const PLAYER_REQUIRED:String = "PLAYER_REQUIRED";
      
      public static const PLAYER_INVALID_LOGIN:String = "PLAYER_INVALID_LOGIN";
      
      public static const PLAYER_NOT_VERIFIED:String = "PLAYER_NOT_VERIFIED";
      
      public static const PLAYER_BANNED:String = "PLAYER_BANNED";
      
      public static const IP_BANNED:String = "IP_BANNED";
      
      public static const FIELD_NOT_VALID:String = "FIELD_NOT_VALID";
      
      public static const FIELD_OBLIGATORY:String = "FIELD_OBLIGATORY";
      
      public static const FIELD_LENGTH:String = "FIELD_LENGTH";
      
      public static const TOO_MANY_CODES:String = "TOO_MANY_CODES";
      
      public static const CODE_NOT_EXIST:String = "CODE_NOT_EXIST";
      
      public static const CODE_USED:String = "CODE_USED";
       
      
      private var §1'§:§15§;
      
      private var §<!B§:Number;
      
      private var §4%§:Number;
      
      private var §7!+§:Boolean = false;
      
      private var § 1§:§5!k§;
      
      public function §<x§(param1:§5!k§, param2:Number)
      {
         super();
         this.§ 1§ = param1;
         this.§<!B§ = this.§ 1§.getItemByName("Container_ErrorPane").y;
         this.§4%§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§7!+§)
         {
            if(this.§1'§)
            {
               this.§1'§.stop();
            }
            §[!I§.§8!J§.§"!S§(this.§ 1§,"Error_Messages","TextField_ErrorMessage",param1);
            this.§1'§ = §@F§.§8!J§.§&6§(this.§ 1§.getItemByName("Container_ErrorPane"),{"y":this.§4%§},{"y":this.§<!B§},§0!&§ * 1.5,§@F§.§%!#§);
            this.§1'§.play();
            this.§7!+§ = true;
         }
      }
      
      public function hide() : void
      {
         if(this.§7!+§)
         {
            if(this.§1'§)
            {
               this.§1'§.stop();
            }
            this.§1'§ = §@F§.§8!J§.§&6§(this.§ 1§.getItemByName("Container_ErrorPane"),{"y":this.§<!B§},null,§0!&§,§@F§.§'_§);
            this.§1'§.play();
            this.§1'§.onComplete = this.§@"4§;
            this.§7!+§ = false;
         }
      }
      
      private function §@"4§() : void
      {
         dispatchEvent(new §?5§(§?5§.§,W§));
      }
      
      public function dispose() : void
      {
         if(this.§1'§)
         {
            this.§1'§.stop();
            this.§1'§ = null;
         }
         this.§ 1§ = null;
      }
   }
}
