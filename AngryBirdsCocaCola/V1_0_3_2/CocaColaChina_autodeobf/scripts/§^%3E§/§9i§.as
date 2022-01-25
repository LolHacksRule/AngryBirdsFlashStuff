package §^>§
{
   import §'b§.§6!-§;
   import §3!`§.§8h§;
   import §3!`§.§]&§;
   import §>!8§.§4!0§;
   
   public class §9i§
   {
      
      public static const NICKNAME_LENGTH:String = "NICKNAME_LENGTH";
      
      public static const PASSWORD_LENGTH:String = "PASSWORD_LENGTH";
      
      public static const PASSWORDS_DONT_MATCH:String = "PASSWORDS_DONT_MATCH";
      
      public static const INVALID_EMAIL:String = "INVALID_EMAIL";
      
      public static const PASSWORD_MISSING:String = "PASSWORD_MISSING";
      
      public static const CONNECTION_ERROR_RETRY:String = "CONNECTION_ERROR_RETRY";
      
      public static const PLAYER_ID_USED:String = "PLAYER_ID_USED";
      
      public static const PLAYER_REQUIRED:String = "PLAYER_REQUIRED";
      
      public static const PLAYER_INVALID_LOGIN:String = "PLAYER_INVALID_LOGIN";
      
      public static const PLAYER_BANNED:String = "PLAYER_BANNED";
      
      public static const IP_BANNED:String = "IP_BANNED";
      
      public static const FIELD_NOT_VALID:String = "FIELD_NOT_VALID";
      
      public static const FIELD_OBLIGATORY:String = "FIELD_OBLIGATORY";
      
      public static const FIELD_LENGTH:String = "FIELD_LENGTH";
      
      public static const INVALID_CHARACTER:String = "INVALID_CHARACTER";
       
      
      private var §#Z§:§]&§;
      
      private var §!<§:Number;
      
      private var §#6§:Number;
      
      private var §7!@§:Boolean = false;
      
      private var §0D§:§4!0§;
      
      public function §9i§(param1:§4!0§, param2:Number = 0)
      {
         super();
         this.§0D§ = param1;
         this.§!<§ = this.§0D§.getItemByName("Container_ErrorPane").y;
         this.§#6§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(this.§#Z§)
         {
            this.§#Z§.stop();
         }
         (this.§0D§.getItemByName("TextField_ErrorMessage") as §6!-§).setText(§`!@§.getText(param1));
         this.§#Z§ = §8h§.§`G§.§[O§(this.§0D§.getItemByName("Container_ErrorPane"),{"y":this.§#6§},{"y":this.§!<§},0.25,§8h§.§3!E§);
         this.§#Z§.play();
         this.§7!@§ = true;
         this.§0D§.container.setObjectToFront(this.§0D§.getItemByName("Container_ErrorPane"));
      }
      
      public function hide() : void
      {
         if(this.§7!@§ && this.§#Z§.isCompleted)
         {
            if(this.§#Z§)
            {
               this.§#Z§.stop();
            }
            (this.§0D§.getItemByName("TextField_ErrorMessage") as §6!-§).setText("");
            this.§#Z§ = §8h§.§`G§.§[O§(this.§0D§.getItemByName("Container_ErrorPane"),{"y":this.§!<§},{"y":0},0.25,§8h§.§3!E§);
            this.§#Z§.play();
            this.§7!@§ = false;
         }
      }
   }
}
