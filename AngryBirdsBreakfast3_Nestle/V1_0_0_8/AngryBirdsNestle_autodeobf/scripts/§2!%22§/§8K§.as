package §2!"§
{
   import §%f§.§[@§;
   import §53§.§6!u§;
   import §53§.§["$§;
   import §;"+§.§^!i§;
   import flash.events.EventDispatcher;
   
   public class §8K§ extends EventDispatcher
   {
      
      private static const §"k§:Number = 0.5;
      
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
       
      
      private var §@!n§:§["$§;
      
      private var §5#§:Number;
      
      private var §,O§:Number;
      
      private var §9!Y§:Boolean = false;
      
      private var §@!U§:§^!i§;
      
      public function §8K§(param1:§^!i§, param2:Number)
      {
         super();
         this.§@!U§ = param1;
         this.§5#§ = this.§@!U§.getItemByName("Container_ErrorPane").y;
         this.§,O§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§9!Y§)
         {
            if(this.§@!n§)
            {
               this.§@!n§.stop();
            }
            §[@§.§"e§.§8!J§(this.§@!U§,"Error_Messages","TextField_ErrorMessage",param1);
            this.§@!n§ = §6!u§.§"e§.§0!O§(this.§@!U§.getItemByName("Container_ErrorPane"),{"y":this.§,O§},{"y":this.§5#§},§"k§ * 1.5,§6!u§.§1!6§);
            this.§@!n§.play();
            this.§9!Y§ = true;
         }
      }
      
      public function hide() : void
      {
         if(this.§9!Y§)
         {
            if(this.§@!n§)
            {
               this.§@!n§.stop();
            }
            this.§@!n§ = §6!u§.§"e§.§0!O§(this.§@!U§.getItemByName("Container_ErrorPane"),{"y":this.§5#§},null,§"k§,§6!u§.§0C§);
            this.§@!n§.play();
            this.§@!n§.onComplete = this.§%!h§;
            this.§9!Y§ = false;
         }
      }
      
      private function §%!h§() : void
      {
         dispatchEvent(new §+^§(§+^§.§1!b§));
      }
      
      public function dispose() : void
      {
         if(this.§@!n§)
         {
            this.§@!n§.stop();
            this.§@!n§ = null;
         }
         this.§@!U§ = null;
      }
   }
}
