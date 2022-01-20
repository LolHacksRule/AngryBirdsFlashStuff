package §&6§
{
   import §#!1§.§!!X§;
   import §4!A§.§#b§;
   import §4!A§.§7#§;
   import §7p§.§%g§;
   import §@-§.§-m§;
   
   public class §,!Y§
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
      
      public static const CODE_NOT_EXIST:String = "CODE_NOT_EXIST";
      
      public static const CODE_USED:String = "CODE_USED";
       
      
      private var §>!k§:§#b§;
      
      private var §&!`§:Number;
      
      private var §@a§:Number;
      
      private var §#1§:Boolean = false;
      
      private var §7Y§:§%g§;
      
      public function §,!Y§(param1:§%g§, param2:Number = -30)
      {
         super();
         this.§7Y§ = param1;
         this.§&!`§ = this.§7Y§.getItemByName("Container_ErrorPane").y;
         this.§@a§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§#1§)
         {
            if(this.§>!k§)
            {
               this.§>!k§.stop();
            }
            §!!X§.§5!!§.§1!"§(§3![§.§+w§.§`L§().mUIView,"Error_Messages","TextField_ErrorMessage",param1);
            this.§>!k§ = §7#§.§5!!§.§30§(this.§7Y§.getItemByName("Container_ErrorPane"),{"y":this.§@a§},{"y":this.§&!`§},0.25,§7#§.§4@§);
            this.§>!k§.play();
            this.§#1§ = true;
         }
         this.§7Y§.container.setObjectToFront(this.§7Y§.getItemByName("Container_ErrorPane") as §-m§);
      }
      
      public function hide() : void
      {
         if(this.§#1§)
         {
            if(this.§>!k§)
            {
               this.§>!k§.stop();
            }
            this.§>!k§ = §7#§.§5!!§.§30§(this.§7Y§.getItemByName("Container_ErrorPane"),{"y":this.§&!`§},{"y":0},0.25,§7#§.§4@§);
            this.§>!k§.play();
            this.§#1§ = false;
         }
      }
   }
}
