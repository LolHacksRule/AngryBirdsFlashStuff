package §;!y§
{
   import §!!&§.§`!$§;
   import §-b§.§"!d§;
   import §-b§.§4`§;
   import §>P§.§]"4§;
   import flash.events.EventDispatcher;
   
   public class §4![§ extends EventDispatcher
   {
      
      private static const §^q§:Number = 0.5;
      
      public static const NICKNAME_LENGTH:String = "NICKNAME_LENGTH";
      
      public static const PASSWORD_LENGTH:String = "PASSWORD_LENGTH";
      
      public static const PASSWORDS_DONT_MATCH:String = "PASSWORDS_DONT_MATCH";
      
      public static const PASSWORD_MISSING:String = "PASSWORD_MISSING";
      
      public static const CONNECTION_ERROR_RETRY:String = "CONNECTION_ERROR_RETRY";
      
      public static const ENTER_CODE:String = "ENTER_CODE";
      
      public static const ONLY_LETTERS_AND_NUMBERS_ALLOWED:String = "ONLY_LETTERS_AND_NUMBERS_ALLOWED";
      
      public static const NICKNAME_MISSING:String = "NICKNAME_MISSING";
      
      public static const NOT_ALLOWED_TO_PUT_ONLY_NUMBERS_IN_NICKNAME:String = "NOT_ALLOWED_TO_PUT_ONLY_NUMBERS_IN_NICKNAME";
      
      public static const NICKNAME_INFO:String = "NICKNAME_INFO";
      
      public static const PLAYER_ID_USED:String = "PLAYER_ID_USED";
      
      public static const PLAYER_ID_USED_SUGGESTION:String = "PLAYER_ID_USED_SUGGESTION";
      
      public static const PLAYER_INVALID_LOGIN:String = "PLAYER_INVALID_LOGIN";
      
      public static const PLAYER_BANNED:String = "PLAYER_BANNED";
      
      public static const IP_BANNED:String = "IP_BANNED";
      
      public static const FIELD_NOT_VALID:String = "FIELD_NOT_VALID";
      
      public static const FIELD_OBLIGATORY:String = "FIELD_OBLIGATORY";
      
      public static const FIELD_LENGTH:String = "FIELD_LENGTH";
      
      public static const TOO_MANY_CODES:String = "TOO_MANY_CODES";
      
      public static const CODE_NOT_EXIST:String = "CODE_NOT_EXIST";
      
      public static const CODE_USED:String = "CODE_USED";
      
      public static const CODE_NOT_EXIST_TOO_MANY_WARNING:String = "CODE_NOT_EXIST_TOO_MANY_WARNING";
       
      
      private var §2[§:§4`§;
      
      private var §>!f§:Number;
      
      private var §?!Y§:Number;
      
      private var §[l§:Boolean = false;
      
      private var §-"1§:§]"4§;
      
      public function §4![§(param1:§]"4§, param2:Number)
      {
         super();
         this.§-"1§ = param1;
         this.§>!f§ = this.§-"1§.getItemByName("Container_ErrorPane").y;
         this.§?!Y§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§[l§)
         {
            if(this.§2[§)
            {
               this.§2[§.stop();
            }
            §`!$§.§>!P§.§%!p§(this.§-"1§,"Error_Messages","TextField_ErrorMessage",param1);
            this.§2[§ = §"!d§.§>!P§.§7R§(this.§-"1§.getItemByName("Container_ErrorPane"),{"y":this.§?!Y§},{"y":this.§>!f§},§^q§ * 1.5,§"!d§.§ !E§);
            this.§2[§.play();
            this.§[l§ = true;
         }
      }
      
      public function hide() : void
      {
         if(this.§[l§)
         {
            if(this.§2[§)
            {
               this.§2[§.stop();
            }
            this.§2[§ = §"!d§.§>!P§.§7R§(this.§-"1§.getItemByName("Container_ErrorPane"),{"y":this.§>!f§},null,§^q§,§"!d§.§,!y§);
            this.§2[§.play();
            this.§2[§.onComplete = this.§3!v§;
            this.§[l§ = false;
         }
      }
      
      private function §3!v§() : void
      {
         dispatchEvent(new §&o§(§&o§.§[!C§));
      }
      
      public function dispose() : void
      {
         if(this.§2[§)
         {
            this.§2[§.stop();
            this.§2[§ = null;
         }
         this.§-"1§ = null;
      }
   }
}
