package §;<§
{
   import §#!&§.§1![§;
   import §6-§.§"H§;
   import §6-§.§%1§;
   import §7!X§.§7g§;
   import §var§.§;!&§;
   
   public class §%K§
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
       
      
      private var §&#§:§%1§;
      
      private var §&!7§:Number;
      
      private var §7!B§:Number;
      
      private var §8!N§:Boolean = false;
      
      private var § !D§:§7g§;
      
      public function §%K§(param1:§7g§, param2:Number = 0)
      {
         super();
         this.§ !D§ = param1;
         this.§&!7§ = this.§ !D§.getItemByName("Container_ErrorPane").y;
         this.§7!B§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§8!N§)
         {
            if(this.§&#§)
            {
               this.§&#§.stop();
            }
            (this.§ !D§.getItemByName("TextField_ErrorMessage") as §1![§).setText(§1y§.getText(param1));
            this.§&#§ = §"H§.§'![§.§8Y§(this.§ !D§.getItemByName("Container_ErrorPane"),{"y":this.§7!B§},{"y":this.§&!7§},0.25,§"H§.§!u§);
            this.§&#§.play();
            this.§8!N§ = true;
         }
         this.§ !D§.container.setObjectToFront(this.§ !D§.getItemByName("Container_ErrorPane") as §;!&§);
      }
      
      public function hide() : void
      {
         if(this.§8!N§)
         {
            if(this.§&#§)
            {
               this.§&#§.stop();
            }
            (this.§ !D§.getItemByName("TextField_ErrorMessage") as §1![§).setText("");
            this.§&#§ = §"H§.§'![§.§8Y§(this.§ !D§.getItemByName("Container_ErrorPane"),{"y":this.§&!7§},{"y":0},0.25,§"H§.§!u§);
            this.§&#§.play();
            this.§8!N§ = false;
         }
      }
   }
}
