package §[!5§
{
   import §2u§.§,6§;
   import §4!i§.§@"#§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import flash.events.EventDispatcher;
   
   public class §2p§ extends EventDispatcher
   {
      
      private static const §7"%§:Number = 0.5;
      
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
       
      
      private var §&g§:§]W§;
      
      private var § !+§:Number;
      
      private var §"N§:Number;
      
      private var §6Y§:Boolean = false;
      
      private var §29§:§,6§;
      
      public function §2p§(param1:§,6§, param2:Number)
      {
         super();
         this.§29§ = param1;
         this.§ !+§ = this.§29§.getItemByName("Container_ErrorPane").y;
         this.§"N§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§6Y§)
         {
            if(this.§&g§)
            {
               this.§&g§.stop();
            }
            §@"#§.§,2§.§"y§(this.§29§,"Error_Messages","TextField_ErrorMessage",param1);
            this.§&g§ = §0!o§.§,2§.§4!t§(this.§29§.getItemByName("Container_ErrorPane"),{"y":this.§"N§},{"y":this.§ !+§},§7"%§ * 1.5,§0!o§.§2+§);
            this.§&g§.play();
            this.§6Y§ = true;
         }
      }
      
      public function hide() : void
      {
         if(this.§6Y§)
         {
            if(this.§&g§)
            {
               this.§&g§.stop();
            }
            this.§&g§ = §0!o§.§,2§.§4!t§(this.§29§.getItemByName("Container_ErrorPane"),{"y":this.§ !+§},null,§7"%§,§0!o§.§1[§);
            this.§&g§.play();
            this.§&g§.onComplete = this.§!!y§;
            this.§6Y§ = false;
         }
      }
      
      private function §!!y§() : void
      {
         dispatchEvent(new §+!1§(§+!1§.§[!U§));
      }
      
      public function dispose() : void
      {
         if(this.§&g§)
         {
            this.§&g§.stop();
            this.§&g§ = null;
         }
         this.§29§ = null;
      }
   }
}
