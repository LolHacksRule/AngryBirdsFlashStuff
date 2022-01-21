package §<Z§
{
   import §3!R§.§0!R§;
   import §3g§.§"!n§;
   import §?I§.§`E§;
   import §`!"§.§2,§;
   import §`!"§.§;i§;
   
   public class §1!X§
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
       
      
      private var §5!o§:§2,§;
      
      private var §3!T§:Number;
      
      private var §<!_§:Number;
      
      private var §#!+§:Boolean = false;
      
      private var §<D§:§"!n§;
      
      public function §1!X§(param1:§"!n§, param2:Number = -30)
      {
         super();
         this.§<D§ = param1;
         this.§3!T§ = this.§<D§.getItemByName("Container_ErrorPane").y;
         this.§<!_§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§#!+§)
         {
            if(this.§5!o§)
            {
               this.§5!o§.stop();
            }
            §`E§.§@!7§.§2l§(§2!M§.§7!F§.§,y§().mUIView,"Error_Messages","TextField_ErrorMessage",param1);
            this.§5!o§ = §;i§.§@!7§.§@!6§(this.§<D§.getItemByName("Container_ErrorPane"),{"y":this.§<!_§},{"y":this.§3!T§},0.25,§;i§.§3C§);
            this.§5!o§.play();
            this.§#!+§ = true;
         }
         this.§<D§.container.setObjectToFront(this.§<D§.getItemByName("Container_ErrorPane") as §0!R§);
      }
      
      public function hide() : void
      {
         if(this.§#!+§)
         {
            if(this.§5!o§)
            {
               this.§5!o§.stop();
            }
            this.§5!o§ = §;i§.§@!7§.§@!6§(this.§<D§.getItemByName("Container_ErrorPane"),{"y":this.§3!T§},{"y":0},0.25,§;i§.§3C§);
            this.§5!o§.play();
            this.§#!+§ = false;
         }
      }
   }
}
