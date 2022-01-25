package §9L§
{
   import §68§.§9v§;
   import §7H§.§'!Y§;
   import §7H§.§8Q§;
   import §^6§.§;l§;
   
   public class §7!M§
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
       
      
      private var §5!@§:§'!Y§;
      
      private var § y§:Number;
      
      private var §@!X§:Number;
      
      private var §^0§:Boolean = false;
      
      private var §'B§:§;l§;
      
      public function §7!M§(param1:§;l§, param2:Number = 0)
      {
         super();
         this.§'B§ = param1;
         this.§ y§ = this.§'B§.getItemByName("Container_ErrorPane").y;
         this.§@!X§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(this.§5!@§)
         {
            this.§5!@§.stop();
         }
         (this.§'B§.getItemByName("TextField_ErrorMessage") as §9v§).setText(§3!A§.getText(param1));
         this.§5!@§ = §8Q§.§]!D§.§^w§(this.§'B§.getItemByName("Container_ErrorPane"),{"y":this.§@!X§},{"y":this.§ y§},0.25,§8Q§.§;!'§);
         this.§5!@§.play();
         this.§^0§ = true;
         this.§'B§.container.setObjectToFront(this.§'B§.getItemByName("Container_ErrorPane"));
      }
      
      public function hide() : void
      {
         if(this.§^0§ && this.§5!@§.isCompleted)
         {
            if(this.§5!@§)
            {
               this.§5!@§.stop();
            }
            (this.§'B§.getItemByName("TextField_ErrorMessage") as §9v§).setText("");
            this.§5!@§ = §8Q§.§]!D§.§^w§(this.§'B§.getItemByName("Container_ErrorPane"),{"y":this.§ y§},{"y":0},0.25,§8Q§.§;!'§);
            this.§5!@§.play();
            this.§^0§ = false;
         }
      }
   }
}
