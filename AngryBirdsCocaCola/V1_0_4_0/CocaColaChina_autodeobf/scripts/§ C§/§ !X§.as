package § C§
{
   import §'P§.§5!_§;
   import §[!=§.§!!K§;
   import §[!=§.§3!2§;
   
   public class § !X§
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
       
      
      private var §&S§:§3!2§;
      
      private var §%!M§:Number;
      
      private var §?z§:Number;
      
      private var §;!3§:Boolean = false;
      
      private var §&!Q§:§^R§;
      
      public function § !X§(param1:§^R§, param2:Number = 0)
      {
         super();
         this.§&!Q§ = param1;
         this.§%!M§ = this.§&!Q§.getItemByName("Container_ErrorPane").y;
         this.§?z§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(this.§&S§)
         {
            this.§&S§.stop();
         }
         (this.§&!Q§.getItemByName("TextField_ErrorMessage") as §5!_§).setText(§?!X§.getText(param1));
         this.§&S§ = §!!K§.§@!c§.§'!H§(this.§&!Q§.getItemByName("Container_ErrorPane"),{"y":this.§?z§},{"y":this.§%!M§},0.25,§!!K§.§<!G§);
         this.§&S§.play();
         this.§;!3§ = true;
         this.§&!Q§.container.setObjectToFront(this.§&!Q§.getItemByName("Container_ErrorPane"));
      }
      
      public function hide() : void
      {
         if(this.§;!3§ && this.§&S§.isCompleted)
         {
            if(this.§&S§)
            {
               this.§&S§.stop();
            }
            (this.§&!Q§.getItemByName("TextField_ErrorMessage") as §5!_§).setText("");
            this.§&S§ = §!!K§.§@!c§.§'!H§(this.§&!Q§.getItemByName("Container_ErrorPane"),{"y":this.§%!M§},{"y":0},0.25,§!!K§.§<!G§);
            this.§&S§.play();
            this.§;!3§ = false;
         }
      }
   }
}
