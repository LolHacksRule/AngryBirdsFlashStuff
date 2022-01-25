package §+n§
{
   import §%3§.§7b§;
   import §6a§.§'!9§;
   import §6a§.§;!a§;
   import §8!<§.§#u§;
   
   public class §;!+§
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
       
      
      private var §-j§:§'!9§;
      
      private var §6§:Number;
      
      private var §@6§:Number;
      
      private var §<B§:Boolean = false;
      
      private var §]o§:§7b§;
      
      public function §;!+§(param1:§7b§, param2:Number = 0)
      {
         super();
         this.§]o§ = param1;
         this.§6§ = this.§]o§.getItemByName("Container_ErrorPane").y;
         this.§@6§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(this.§-j§)
         {
            this.§-j§.stop();
         }
         (this.§]o§.getItemByName("TextField_ErrorMessage") as §#u§).setText(§<D§.getText(param1));
         this.§-j§ = §;!a§.§0%§.§,w§(this.§]o§.getItemByName("Container_ErrorPane"),{"y":this.§@6§},{"y":this.§6§},0.25,§;!a§.§5!L§);
         this.§-j§.play();
         this.§<B§ = true;
         this.§]o§.container.setObjectToFront(this.§]o§.getItemByName("Container_ErrorPane"));
      }
      
      public function hide() : void
      {
         if(this.§<B§ && this.§-j§.isCompleted)
         {
            if(this.§-j§)
            {
               this.§-j§.stop();
            }
            (this.§]o§.getItemByName("TextField_ErrorMessage") as §#u§).setText("");
            this.§-j§ = §;!a§.§0%§.§,w§(this.§]o§.getItemByName("Container_ErrorPane"),{"y":this.§6§},{"y":0},0.25,§;!a§.§5!L§);
            this.§-j§.play();
            this.§<B§ = false;
         }
      }
   }
}
