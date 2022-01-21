package §<! §
{
   import §#!q§.§`q§;
   import §+$§.§5"§;
   import §3<§.§-2§;
   import §^m§.§0!-§;
   import §^m§.§=!a§;
   
   public class §#!b§
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
       
      
      private var §3c§:§0!-§;
      
      private var §10§:Number;
      
      private var §6V§:Number;
      
      private var §+&§:Boolean = false;
      
      private var §9K§:§-2§;
      
      public function §#!b§(param1:§-2§, param2:Number = -30)
      {
         super();
         this.§9K§ = param1;
         this.§10§ = this.§9K§.getItemByName("Container_ErrorPane").y;
         this.§6V§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§+&§)
         {
            if(this.§3c§)
            {
               this.§3c§.stop();
            }
            §`q§.§9$§.§]!l§(§9!_§.§@r§.§#!k§().mUIView,"Error_Messages","TextField_ErrorMessage",param1);
            this.§3c§ = §=!a§.§9$§.§9!H§(this.§9K§.getItemByName("Container_ErrorPane"),{"y":this.§6V§},{"y":this.§10§},0.25,§=!a§.§%!R§);
            this.§3c§.play();
            this.§+&§ = true;
         }
         this.§9K§.container.setObjectToFront(this.§9K§.getItemByName("Container_ErrorPane") as §5"§);
      }
      
      public function hide() : void
      {
         if(this.§+&§)
         {
            if(this.§3c§)
            {
               this.§3c§.stop();
            }
            this.§3c§ = §=!a§.§9$§.§9!H§(this.§9K§.getItemByName("Container_ErrorPane"),{"y":this.§10§},{"y":0},0.25,§=!a§.§%!R§);
            this.§3c§.play();
            this.§+&§ = false;
         }
      }
   }
}
