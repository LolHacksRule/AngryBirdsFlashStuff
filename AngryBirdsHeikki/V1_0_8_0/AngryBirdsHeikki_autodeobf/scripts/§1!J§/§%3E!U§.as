package §1!J§
{
   import §#!+§.§"$§;
   import §-!V§.§+V§;
   import §2!D§.§&9§;
   import §2!D§.§'!7§;
   import §;!0§.§-!'§;
   
   public class §>!U§
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
       
      
      private var §7-§:§&9§;
      
      private var §6!@§:Number;
      
      private var §^!O§:Number;
      
      private var §?m§:Boolean = false;
      
      private var §8T§:§"$§;
      
      public function §>!U§(param1:§"$§, param2:Number = 0)
      {
         super();
         this.§8T§ = param1;
         this.§6!@§ = this.§8T§.getItemByName("Container_ErrorPane").y;
         this.§^!O§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§?m§)
         {
            if(this.§7-§)
            {
               this.§7-§.stop();
            }
            (this.§8T§.getItemByName("TextField_ErrorMessage") as §+V§).setText(§+7§.getText(param1));
            this.§7-§ = §'!7§.§=,§.§5Z§(this.§8T§.getItemByName("Container_ErrorPane"),{"y":this.§^!O§},{"y":this.§6!@§},0.25,§'!7§.§+d§);
            this.§7-§.play();
            this.§?m§ = true;
         }
         this.§8T§.container.setObjectToFront(this.§8T§.getItemByName("Container_ErrorPane") as §-!'§);
      }
      
      public function hide() : void
      {
         if(this.§?m§)
         {
            if(this.§7-§)
            {
               this.§7-§.stop();
            }
            (this.§8T§.getItemByName("TextField_ErrorMessage") as §+V§).setText("");
            this.§7-§ = §'!7§.§=,§.§5Z§(this.§8T§.getItemByName("Container_ErrorPane"),{"y":this.§6!@§},{"y":0},0.25,§'!7§.§+d§);
            this.§7-§.play();
            this.§?m§ = false;
         }
      }
   }
}
