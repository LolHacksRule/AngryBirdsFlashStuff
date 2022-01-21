package §`!@§
{
   import § e§.§&!&§;
   import §"f§.§%1§;
   import §"f§.§@4§;
   import §0;§.§3=§;
   import §6@§.§'!F§;
   
   public class §#e§
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
       
      
      private var §`!8§:§@4§;
      
      private var §8!U§:Number;
      
      private var §>!K§:Number;
      
      private var §3H§:Boolean = false;
      
      private var §"]§:§3=§;
      
      public function §#e§(param1:§3=§, param2:Number = -30)
      {
         super();
         this.§"]§ = param1;
         this.§8!U§ = this.§"]§.getItemByName("Container_ErrorPane").y;
         this.§>!K§ = param2;
      }
      
      public function show(param1:String) : void
      {
         if(!this.§3H§)
         {
            if(this.§`!8§)
            {
               this.§`!8§.stop();
            }
            §&!&§.§+j§.§,^§(§ 4§.§6q§.§9!B§().mUIView,"Error_Messages","TextField_ErrorMessage",param1);
            this.§`!8§ = §%1§.§+j§.§78§(this.§"]§.getItemByName("Container_ErrorPane"),{"y":this.§>!K§},{"y":this.§8!U§},0.25,§%1§.§&!P§);
            this.§`!8§.play();
            this.§3H§ = true;
         }
         this.§"]§.container.setObjectToFront(this.§"]§.getItemByName("Container_ErrorPane") as §'!F§);
      }
      
      public function hide() : void
      {
         if(this.§3H§)
         {
            if(this.§`!8§)
            {
               this.§`!8§.stop();
            }
            this.§`!8§ = §%1§.§+j§.§78§(this.§"]§.getItemByName("Container_ErrorPane"),{"y":this.§8!U§},{"y":0},0.25,§%1§.§&!P§);
            this.§`!8§.play();
            this.§3H§ = false;
         }
      }
   }
}
