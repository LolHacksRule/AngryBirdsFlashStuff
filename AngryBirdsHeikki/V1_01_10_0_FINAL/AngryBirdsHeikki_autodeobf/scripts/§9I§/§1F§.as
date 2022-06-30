package §9I§
{
   import §'!N§.§[!%§;
   import §5!1§.§"!X§;
   import §5!1§.§&[§;
   import §8P§.§&-§;
   import §<u§.§]!Q§;
   
   public class §1F§
   {
      
      public static const NICKNAME_LENGTH:String = "NICKNAME_LENGTH";
      
      public static const PASSWORD_LENGTH:String = "PASSWORD_LENGTH";
      
      public static const PASSWORDS_DONT_MATCH:String = "PASSWORDS_DONT_MATCH";
      
      public static const INVALID_EMAIL:String = "INVALID_EMAIL";
      
      public static const PASSWORD_MISSING:String = "PASSWORD_MISSING";
      
      public static const CONNECTION_ERROR_RETRY:String = "CONNECTION_ERROR_RETRY";
      
      public static const FORGOT_PASSWORD_EMAIL_SENT:String = "FORGOT_PASSWORD_EMAIL_SENT";
      
      public static const PLAYER_ID_USED:String = "PLAYER_ID_USED";
      
      public static const PLAYER_REQUIRED:String = "PLAYER_REQUIRED";
      
      public static const PLAYER_INVALID_LOGIN:String = "PLAYER_INVALID_LOGIN";
      
      public static const PLAYER_BANNED:String = "PLAYER_BANNED";
      
      public static const IP_BANNED:String = "IP_BANNED";
      
      public static const FIELD_NOT_VALID:String = "FIELD_NOT_VALID";
      
      public static const FIELD_OBLIGATORY:String = "FIELD_OBLIGATORY";
      
      public static const FIELD_LENGTH:String = "FIELD_LENGTH";
       
      
      private var §^,§:§&[§;
      
      private var §-U§:Number;
      
      private var §%,§:Number;
      
      private var §`G§:Boolean = false;
      
      private var §>K§:§]!Q§;
      
      public function §1F§(param1:§]!Q§, param2:Number = 0)
      {
         super();
         this.§>K§ = param1;
         this.§-U§ = this.§>K§.getItemByName("Container_ErrorPane").y;
         this.§%,§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§`G§)
         {
            if(this.§^,§)
            {
               this.§^,§.stop();
            }
            (this.§>K§.getItemByName("TextField_ErrorMessage") as §[!%§).setText(§]0§.getText(param1));
            this.§^,§ = §"!X§.§ s§.§%!;§(this.§>K§.getItemByName("Container_ErrorPane"),{"y":this.§%,§},{"y":this.§-U§},0.25,§"!X§.§@4§);
            this.§^,§.play();
            this.§`G§ = true;
         }
         this.§>K§.container.setObjectToFront(this.§>K§.getItemByName("Container_ErrorPane") as §&-§);
      }
      
      public function hide() : void
      {
         if(this.§`G§)
         {
            if(this.§^,§)
            {
               this.§^,§.stop();
            }
            (this.§>K§.getItemByName("TextField_ErrorMessage") as §[!%§).setText("");
            this.§^,§ = §"!X§.§ s§.§%!;§(this.§>K§.getItemByName("Container_ErrorPane"),{"y":this.§-U§},{"y":0},0.25,§"!X§.§@4§);
            this.§^,§.play();
            this.§`G§ = false;
         }
      }
   }
}
