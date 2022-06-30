package §1!a§
{
   import § !Y§.§if§;
   import §93§.§"6§;
   import §=!c§.§#=§;
   import §>!_§.§2V§;
   import §>!_§.§9!+§;
   
   public class §`r§
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
       
      
      private var §!!§:§2V§;
      
      private var §2w§:Number;
      
      private var §'§:Number;
      
      private var §"!W§:Boolean = false;
      
      private var §%a§:§if§;
      
      public function §`r§(param1:§if§, param2:Number = 0)
      {
         super();
         this.§%a§ = param1;
         this.§2w§ = this.§%a§.getItemByName("Container_ErrorPane").y;
         this.§'§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§"!W§)
         {
            if(this.§!!§)
            {
               this.§!!§.stop();
            }
            (this.§%a§.getItemByName("TextField_ErrorMessage") as §#=§).setText(§0Q§.getText(param1));
            this.§!!§ = §9!+§.§;!F§.§`!'§(this.§%a§.getItemByName("Container_ErrorPane"),{"y":this.§'§},{"y":this.§2w§},0.25,§9!+§.§#! §);
            this.§!!§.play();
            this.§"!W§ = true;
         }
         this.§%a§.container.setObjectToFront(this.§%a§.getItemByName("Container_ErrorPane") as §"6§);
      }
      
      public function hide() : void
      {
         if(this.§"!W§)
         {
            if(this.§!!§)
            {
               this.§!!§.stop();
            }
            (this.§%a§.getItemByName("TextField_ErrorMessage") as §#=§).setText("");
            this.§!!§ = §9!+§.§;!F§.§`!'§(this.§%a§.getItemByName("Container_ErrorPane"),{"y":this.§2w§},{"y":0},0.25,§9!+§.§#! §);
            this.§!!§.play();
            this.§"!W§ = false;
         }
      }
   }
}
