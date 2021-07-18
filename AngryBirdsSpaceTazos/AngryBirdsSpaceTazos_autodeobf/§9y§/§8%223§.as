package §9y§
{
   import § !Y§.§&$§;
   import §77§.§ ",§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import flash.events.EventDispatcher;
   
   public class §8"3§ extends EventDispatcher
   {
      
      private static const §4!#§:Number = 0.5;
      
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
      
      public static const PLAYER_ID_USED:String = "PLAYER_ID_USED";
      
      public static const PLAYER_REQUIRED:String = "PLAYER_REQUIRED";
      
      public static const PLAYER_INVALID_LOGIN:String = "PLAYER_INVALID_LOGIN";
      
      public static const PLAYER_NOT_VERIFIED:String = "PLAYER_NOT_VERIFIED";
      
      public static const PLAYER_BANNED:String = "PLAYER_BANNED";
      
      public static const IP_BANNED:String = "IP_BANNED";
      
      public static const FIELD_NOT_VALID:String = "FIELD_NOT_VALID";
      
      public static const FIELD_OBLIGATORY:String = "FIELD_OBLIGATORY";
      
      public static const FIELD_LENGTH:String = "FIELD_LENGTH";
      
      public static const CODE_NOT_EXIST:String = "CODE_NOT_EXIST";
      
      public static const CODE_USED:String = "CODE_USED";
       
      
      private var §9"D§:§5!9§;
      
      private var §=H§:Number;
      
      private var §!!1§:Number;
      
      private var §5!_§:Boolean = false;
      
      private var §[S§:§ ",§;
      
      public function §8"3§(param1:§ ",§, param2:Number)
      {
         super();
         this.§[S§ = param1;
         this.§=H§ = this.§[S§.getItemByName("Container_ErrorPane").y;
         this.§!!1§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§5!_§)
         {
            if(this.§9"D§)
            {
               this.§9"D§.stop();
            }
            §&$§.§[!1§.§0!z§(this.§[S§,"Error_Messages","TextField_ErrorMessage",param1);
            this.§9"D§ = §!D§.§[!1§.§1"<§(this.§[S§.getItemByName("Container_ErrorPane"),{"y":this.§!!1§},{"y":this.§=H§},§4!#§ * 1.5,§!D§.§3K§);
            this.§9"D§.play();
            this.§5!_§ = true;
         }
      }
      
      public function hide() : void
      {
         if(this.§5!_§)
         {
            if(this.§9"D§)
            {
               this.§9"D§.stop();
            }
            this.§9"D§ = §!D§.§[!1§.§1"<§(this.§[S§.getItemByName("Container_ErrorPane"),{"y":this.§=H§},null,§4!#§,§!D§.§ "#§);
            this.§9"D§.play();
            this.§9"D§.onComplete = this.§2">§;
            this.§5!_§ = false;
         }
      }
      
      private function §2">§() : void
      {
         dispatchEvent(new §3!D§(§3!D§.§7!I§));
      }
      
      public function dispose() : void
      {
         if(this.§9"D§)
         {
            this.§9"D§.stop();
            this.§9"D§ = null;
         }
         this.§[S§ = null;
      }
   }
}
