package §0!X§
{
   import §+!M§.§`q§;
   import §-!f§.§ else§;
   import §1!d§.§!![§;
   import §1!d§.§9m§;
   import §]!&§.§1E§;
   
   public class §&!4§
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
       
      
      private var §<!c§:§!![§;
      
      private var §>!O§:Number;
      
      private var §0L§:Number;
      
      private var §8g§:Boolean = false;
      
      private var §<8§:§ else§;
      
      public function §&!4§(param1:§ else§, param2:Number = 0)
      {
         super();
         this.§<8§ = param1;
         this.§>!O§ = this.§<8§.getItemByName("Container_ErrorPane").y;
         this.§0L§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§8g§)
         {
            if(this.§<!c§)
            {
               this.§<!c§.stop();
            }
            (this.§<8§.getItemByName("TextField_ErrorMessage") as §1E§).setText(§2&§.getText(param1));
            this.§<!c§ = §9m§.§?! §.§]C§(this.§<8§.getItemByName("Container_ErrorPane"),{"y":this.§0L§},{"y":this.§>!O§},0.25,§9m§.§4`§);
            this.§<!c§.play();
            this.§8g§ = true;
         }
         this.§<8§.container.setObjectToFront(this.§<8§.getItemByName("Container_ErrorPane") as §`q§);
      }
      
      public function hide() : void
      {
         if(this.§8g§)
         {
            if(this.§<!c§)
            {
               this.§<!c§.stop();
            }
            (this.§<8§.getItemByName("TextField_ErrorMessage") as §1E§).setText("");
            this.§<!c§ = §9m§.§?! §.§]C§(this.§<8§.getItemByName("Container_ErrorPane"),{"y":this.§>!O§},{"y":0},0.25,§9m§.§4`§);
            this.§<!c§.play();
            this.§8g§ = false;
         }
      }
   }
}
