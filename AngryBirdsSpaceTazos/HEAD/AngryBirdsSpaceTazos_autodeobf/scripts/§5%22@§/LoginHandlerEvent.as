package §5"@§
{
   import flash.events.Event;
   
   public class LoginHandlerEvent extends Event
   {
      
      public static const ERROR:String = "LoginHandlerEvent.error";
      
      public static const §5!I§:String = "LoginHandlerEvent.login_start";
      
      public static const §["4§:String = "LoginHandlerEvent.login_complete";
      
      public static const §3!K§:String = "LoginHandlerEvent.register_start";
      
      public static const §,!!§:String = "LoginHandlerEvent.register_complete";
      
      public static const §[!G§:String = "LogoutEvent.OnLogoutComplete";
       
      
      private var §61§:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         super(param1);
      }
      
      public function get §+%§() : String
      {
         return this.§61§;
      }
      
      public function set §+%§(param1:String) : void
      {
         this.§61§ = param1;
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
