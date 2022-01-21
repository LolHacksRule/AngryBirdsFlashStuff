package §7"§
{
   import §"%§.§+!&§;
   import §;!j§.§[!<§;
   import §=!F§.§"!2§;
   import §=!F§.§^!^§;
   import §@`§.§>!S§;
   
   public class §8!#§
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
       
      
      private var §[g§:§^!^§;
      
      private var §-!Q§:Number;
      
      private var §?L§:Number;
      
      private var §>!0§:Boolean = false;
      
      private var §]E§:§>!S§;
      
      public function §8!#§(param1:§>!S§, param2:Number = -30)
      {
         super();
         this.§]E§ = param1;
         this.§-!Q§ = this.§]E§.getItemByName("Container_ErrorPane").y;
         this.§?L§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§>!0§)
         {
            if(this.§[g§)
            {
               this.§[g§.stop();
            }
            §[!<§.§'!S§.§!W§(§'j§.§7!$§.§7z§().mUIView,"Error_Messages","TextField_ErrorMessage",param1);
            this.§[g§ = §"!2§.§'!S§.§-!S§(this.§]E§.getItemByName("Container_ErrorPane"),{"y":this.§?L§},{"y":this.§-!Q§},0.25,§"!2§.§+!^§);
            this.§[g§.play();
            this.§>!0§ = true;
         }
         this.§]E§.container.setObjectToFront(this.§]E§.getItemByName("Container_ErrorPane") as §+!&§);
      }
      
      public function hide() : void
      {
         if(this.§>!0§)
         {
            if(this.§[g§)
            {
               this.§[g§.stop();
            }
            this.§[g§ = §"!2§.§'!S§.§-!S§(this.§]E§.getItemByName("Container_ErrorPane"),{"y":this.§-!Q§},{"y":0},0.25,§"!2§.§+!^§);
            this.§[g§.play();
            this.§>!0§ = false;
         }
      }
   }
}
