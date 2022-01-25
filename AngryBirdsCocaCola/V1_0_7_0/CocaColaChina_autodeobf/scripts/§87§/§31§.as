package §87§
{
   import §!E§.§,!B§;
   import §%!G§.§ !G§;
   import §[!=§.§!!K§;
   import §[!=§.§3!2§;
   
   public class §31§
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
       
      
      private var § !X§:§3!2§;
      
      private var §&S§:Number;
      
      private var §%!M§:Number;
      
      private var §!e§:Boolean = false;
      
      private var §!!#§:§ !G§;
      
      public function §31§(param1:§ !G§, param2:Number = 0)
      {
         super();
         this.§!!#§ = param1;
         this.§&S§ = this.§!!#§.getItemByName("Container_ErrorPane").y;
         this.§%!M§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(this.§ !X§)
         {
            this.§ !X§.stop();
         }
         (this.§!!#§.getItemByName("TextField_ErrorMessage") as §,!B§).setText(§]g§.getText(param1));
         this.§ !X§ = §!!K§.§'!C§.§'!H§(this.§!!#§.getItemByName("Container_ErrorPane"),{"y":this.§%!M§},{"y":this.§&S§},0.25,§!!K§.§<!G§);
         this.§ !X§.play();
         this.§!e§ = true;
         this.§!!#§.container.setObjectToFront(this.§!!#§.getItemByName("Container_ErrorPane"));
      }
      
      public function hide() : void
      {
         if(this.§!e§ && this.§ !X§.isCompleted)
         {
            if(this.§ !X§)
            {
               this.§ !X§.stop();
            }
            (this.§!!#§.getItemByName("TextField_ErrorMessage") as §,!B§).setText("");
            this.§ !X§ = §!!K§.§'!C§.§'!H§(this.§!!#§.getItemByName("Container_ErrorPane"),{"y":this.§&S§},{"y":0},0.25,§!!K§.§<!G§);
            this.§ !X§.play();
            this.§!e§ = false;
         }
      }
   }
}
