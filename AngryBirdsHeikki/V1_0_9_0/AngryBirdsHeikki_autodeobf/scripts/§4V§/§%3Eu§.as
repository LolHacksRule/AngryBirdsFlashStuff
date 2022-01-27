package §4V§
{
   import §#Q§.§8Y§;
   import §1Q§.§6'§;
   import §8!-§.§1R§;
   import §8!-§.§2!B§;
   import §@!]§.§%!S§;
   
   public class §>u§
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
       
      
      private var §]!§:§1R§;
      
      private var §"K§:Number;
      
      private var §5!9§:Number;
      
      private var §^"§:Boolean = false;
      
      private var §7O§:§8Y§;
      
      public function §>u§(param1:§8Y§, param2:Number = 0)
      {
         super();
         this.§7O§ = param1;
         this.§"K§ = this.§7O§.getItemByName("Container_ErrorPane").y;
         this.§5!9§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§^"§)
         {
            if(this.§]!§)
            {
               this.§]!§.stop();
            }
            (this.§7O§.getItemByName("TextField_ErrorMessage") as §%!S§).setText(§ 3§.getText(param1));
            this.§]!§ = §2!B§.§,!U§.§%!K§(this.§7O§.getItemByName("Container_ErrorPane"),{"y":this.§5!9§},{"y":this.§"K§},0.25,§2!B§.§8!@§);
            this.§]!§.play();
            this.§^"§ = true;
         }
         this.§7O§.container.setObjectToFront(this.§7O§.getItemByName("Container_ErrorPane") as §6'§);
      }
      
      public function hide() : void
      {
         if(this.§^"§)
         {
            if(this.§]!§)
            {
               this.§]!§.stop();
            }
            (this.§7O§.getItemByName("TextField_ErrorMessage") as §%!S§).setText("");
            this.§]!§ = §2!B§.§,!U§.§%!K§(this.§7O§.getItemByName("Container_ErrorPane"),{"y":this.§"K§},{"y":0},0.25,§2!B§.§8!@§);
            this.§]!§.play();
            this.§^"§ = false;
         }
      }
   }
}
