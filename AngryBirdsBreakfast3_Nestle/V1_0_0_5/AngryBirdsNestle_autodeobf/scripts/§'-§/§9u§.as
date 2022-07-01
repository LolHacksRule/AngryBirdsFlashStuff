package §'-§
{
   import §2W§.§+!d§;
   import §6t§.§3`§;
   import §6t§.§<!'§;
   import §[!F§.§3j§;
   import flash.events.EventDispatcher;
   
   public class §9u§ extends EventDispatcher
   {
      
      private static const §;!6§:Number = 0.5;
      
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
       
      
      private var §6%§:§<!'§;
      
      private var §^u§:Number;
      
      private var §#d§:Number;
      
      private var §5""§:Boolean = false;
      
      private var §[!<§:§3j§;
      
      public function §9u§(param1:§3j§, param2:Number)
      {
         super();
         this.§[!<§ = param1;
         this.§^u§ = this.§[!<§.getItemByName("Container_ErrorPane").y;
         this.§#d§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§5""§)
         {
            if(this.§6%§)
            {
               this.§6%§.stop();
            }
            §+!d§.§<"5§.§ 9§(this.§[!<§,"Error_Messages","TextField_ErrorMessage",param1);
            this.§6%§ = §3`§.§<"5§.§^g§(this.§[!<§.getItemByName("Container_ErrorPane"),{"y":this.§#d§},{"y":this.§^u§},§;!6§ * 1.5,§3`§.§8!"§);
            this.§6%§.play();
            this.§5""§ = true;
         }
      }
      
      public function hide() : void
      {
         if(this.§5""§)
         {
            if(this.§6%§)
            {
               this.§6%§.stop();
            }
            this.§6%§ = §3`§.§<"5§.§^g§(this.§[!<§.getItemByName("Container_ErrorPane"),{"y":this.§^u§},null,§;!6§,§3`§.§!"-§);
            this.§6%§.play();
            this.§6%§.onComplete = this.§2",§;
            this.§5""§ = false;
         }
      }
      
      private function §2",§() : void
      {
         dispatchEvent(new §"x§(§"x§.§+e§));
      }
      
      public function dispose() : void
      {
         if(this.§6%§)
         {
            this.§6%§.stop();
            this.§6%§ = null;
         }
         this.§[!<§ = null;
      }
   }
}
