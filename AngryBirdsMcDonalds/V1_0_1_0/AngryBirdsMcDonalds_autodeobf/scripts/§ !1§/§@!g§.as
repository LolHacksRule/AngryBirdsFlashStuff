package § !1§
{
   import §-1§.§3!%§;
   import §1!D§.§0S§;
   import §3l§.§&W§;
   import §3l§.§9m§;
   import §9!8§.§0!7§;
   
   public class §@!g§
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
       
      
      private var §3x§:§&W§;
      
      private var §91§:Number;
      
      private var §]!6§:Number;
      
      private var §&! §:Boolean = false;
      
      private var §+!H§:§0!7§;
      
      public function §@!g§(param1:§0!7§, param2:Number = -30)
      {
         super();
         this.§+!H§ = param1;
         this.§91§ = this.§+!H§.getItemByName("Container_ErrorPane").y;
         this.§]!6§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§&! §)
         {
            if(this.§3x§)
            {
               this.§3x§.stop();
            }
            §0S§.§>E§.§@B§(§;!4§.§?-§.§]!d§().mUIView,"Error_Messages","TextField_ErrorMessage",param1);
            this.§3x§ = §9m§.§>E§.§"0§(this.§+!H§.getItemByName("Container_ErrorPane"),{"y":this.§]!6§},{"y":this.§91§},0.25,§9m§.§+y§);
            this.§3x§.play();
            this.§&! § = true;
         }
         this.§+!H§.container.setObjectToFront(this.§+!H§.getItemByName("Container_ErrorPane") as §3!%§);
      }
      
      public function hide() : void
      {
         if(this.§&! §)
         {
            if(this.§3x§)
            {
               this.§3x§.stop();
            }
            this.§3x§ = §9m§.§>E§.§"0§(this.§+!H§.getItemByName("Container_ErrorPane"),{"y":this.§91§},{"y":0},0.25,§9m§.§+y§);
            this.§3x§.play();
            this.§&! § = false;
         }
      }
   }
}
