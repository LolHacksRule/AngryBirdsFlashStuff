package §!"§
{
   import flash.events.Event;
   
   public class LoginHandlerEvent extends Event
   {
      
      public static const ERROR:String = "LoginHandlerEvent.error";
      
      public static const §,_§:String = "LoginHandlerEvent.login_start";
      
      public static const § %§:String = "LoginHandlerEvent.login_complete";
      
      public static const §7&§:String = "LoginHandlerEvent.register_start";
      
      public static const §["6§:String = "LoginHandlerEvent.register_complete";
      
      public static const §%V§:String = "LogoutEvent.OnLogoutComplete";
       
      
      private var §=!K§:String;
      
      private var §6!W§:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         super(param1);
      }
      
      public function get §@I§() : String
      {
         return this.§=!K§;
      }
      
      public function set §@I§(param1:String) : void
      {
         this.§=!K§ = param1;
      }
      
      public function get field() : String
      {
         return this.§6!W§;
      }
      
      public function set field(param1:String) : void
      {
         this.§6!W§ = param1;
      }
      
      override public function clone() : Event
      {
         return new LoginHandlerEvent(this.type);
      }
      
      override public function toString() : String
      {
         return formatToString("LoginHandlerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
