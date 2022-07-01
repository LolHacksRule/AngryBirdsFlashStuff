package §]K§
{
   import §-!F§.§[!Q§;
   import §3!!§.§5" §;
   import §=3§.§]!X§;
   import §=3§.§`!F§;
   import flash.events.EventDispatcher;
   
   public class §>!I§ extends EventDispatcher
   {
      
      private static const §<!L§:Number = 0.5;
      
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
       
      
      private var §;a§:§]!X§;
      
      private var §>U§:Number;
      
      private var §+y§:Number;
      
      private var §'!o§:Boolean = false;
      
      private var §#t§:§5" §;
      
      public function §>!I§(param1:§5" §, param2:Number)
      {
         super();
         this.§#t§ = param1;
         this.§>U§ = this.§#t§.getItemByName("Container_ErrorPane").y;
         this.§+y§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§'!o§)
         {
            if(this.§;a§)
            {
               this.§;a§.stop();
            }
            §[!Q§.§=J§.§]-§(this.§#t§,"Error_Messages","TextField_ErrorMessage",param1);
            this.§;a§ = §`!F§.§=J§.§-r§(this.§#t§.getItemByName("Container_ErrorPane"),{"y":this.§+y§},{"y":this.§>U§},§<!L§ * 1.5,§`!F§.§%!3§);
            this.§;a§.play();
            this.§'!o§ = true;
         }
      }
      
      public function hide() : void
      {
         if(this.§'!o§)
         {
            if(this.§;a§)
            {
               this.§;a§.stop();
            }
            this.§;a§ = §`!F§.§=J§.§-r§(this.§#t§.getItemByName("Container_ErrorPane"),{"y":this.§>U§},null,§<!L§,§`!F§.§"l§);
            this.§;a§.play();
            this.§;a§.onComplete = this.§ _§;
            this.§'!o§ = false;
         }
      }
      
      private function § _§() : void
      {
         dispatchEvent(new §+!o§(§+!o§.§1!=§));
      }
      
      public function dispose() : void
      {
         if(this.§;a§)
         {
            this.§;a§.stop();
            this.§;a§ = null;
         }
         this.§#t§ = null;
      }
   }
}
