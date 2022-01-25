package §^>§
{
   import §4Y§.§%n§;
   import §@!0§.§%"!§;
   import §@!0§.§^!T§;
   import §`!s§.§^2§;
   import flash.events.EventDispatcher;
   
   public class §2"&§ extends EventDispatcher
   {
      
      private static const §<!7§:Number = 0.5;
      
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
       
      
      private var §2!d§:§^!T§;
      
      private var §@@§:Number;
      
      private var §2"2§:Number;
      
      private var §;!t§:Boolean = false;
      
      private var §;"#§:§%n§;
      
      public function §2"&§(param1:§%n§, param2:Number)
      {
         super();
         this.§;"#§ = param1;
         this.§@@§ = this.§;"#§.getItemByName("Container_ErrorPane").y;
         this.§2"2§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§;!t§)
         {
            if(this.§2!d§)
            {
               this.§2!d§.stop();
            }
            §^2§.§&!;§.§%!'§(this.§;"#§,"Error_Messages","TextField_ErrorMessage",param1);
            this.§2!d§ = §%"!§.§&!;§.§"!]§(this.§;"#§.getItemByName("Container_ErrorPane"),{"y":this.§2"2§},{"y":this.§@@§},§<!7§ * 1.5,§%"!§.§?!7§);
            this.§2!d§.play();
            this.§;!t§ = true;
         }
      }
      
      public function hide() : void
      {
         if(this.§;!t§)
         {
            if(this.§2!d§)
            {
               this.§2!d§.stop();
            }
            this.§2!d§ = §%"!§.§&!;§.§"!]§(this.§;"#§.getItemByName("Container_ErrorPane"),{"y":this.§@@§},null,§<!7§,§%"!§.§+!H§);
            this.§2!d§.play();
            this.§2!d§.onComplete = this.§<g§;
            this.§;!t§ = false;
         }
      }
      
      private function §<g§() : void
      {
         dispatchEvent(new §<!j§(§<!j§.§89§));
      }
      
      public function dispose() : void
      {
         if(this.§2!d§)
         {
            this.§2!d§.stop();
            this.§2!d§ = null;
         }
         this.§;"#§ = null;
      }
   }
}
