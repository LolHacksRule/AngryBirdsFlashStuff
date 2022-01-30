package §,!9§
{
   import §><§.§0!M§;
   import §><§.§4!N§;
   import §@#§.§9!'§;
   import §`6§.§!!]§;
   import flash.events.EventDispatcher;
   
   public class §>"$§ extends EventDispatcher
   {
      
      private static const §@r§:Number = 0.5;
      
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
       
      
      private var §'?§:§4!N§;
      
      private var §7G§:Number;
      
      private var §4!&§:Number;
      
      private var §@"1§:Boolean = false;
      
      private var §0+§:§9!'§;
      
      public function §>"$§(param1:§9!'§, param2:Number)
      {
         super();
         this.§0+§ = param1;
         this.§7G§ = this.§0+§.getItemByName("Container_ErrorPane").y;
         this.§4!&§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§@"1§)
         {
            if(this.§'?§)
            {
               this.§'?§.stop();
            }
            §!!]§.§?!+§.§1!]§(this.§0+§,"Error_Messages","TextField_ErrorMessage",param1);
            this.§'?§ = §0!M§.§?!+§.§3d§(this.§0+§.getItemByName("Container_ErrorPane"),{"y":this.§4!&§},{"y":this.§7G§},§@r§ * 1.5,§0!M§.§"!&§);
            this.§'?§.play();
            this.§@"1§ = true;
         }
      }
      
      public function hide() : void
      {
         if(this.§@"1§)
         {
            if(this.§'?§)
            {
               this.§'?§.stop();
            }
            this.§'?§ = §0!M§.§?!+§.§3d§(this.§0+§.getItemByName("Container_ErrorPane"),{"y":this.§7G§},null,§@r§,§0!M§.§=!a§);
            this.§'?§.play();
            this.§'?§.onComplete = this.§"!@§;
            this.§@"1§ = false;
         }
      }
      
      private function §"!@§() : void
      {
         dispatchEvent(new §+l§(§+l§.§,!q§));
      }
      
      public function dispose() : void
      {
         if(this.§'?§)
         {
            this.§'?§.stop();
            this.§'?§ = null;
         }
         this.§0+§ = null;
      }
   }
}
