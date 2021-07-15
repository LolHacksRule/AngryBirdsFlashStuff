package § ^§
{
   import flash.events.Event;
   
   public class LoginHandlerEvent extends Event
   {
      
      public static const ERROR:String = "LoginHandlerEvent.error";
      
      public static const §"!`§:String = "LoginHandlerEvent.login_start";
      
      public static const §"m§:String = "LoginHandlerEvent.login_complete";
      
      public static const §#!n§:String = "LoginHandlerEvent.register_start";
      
      public static const §3[§:String = "LoginHandlerEvent.register_complete";
      
      public static const § !V§:String = "LogoutEvent.OnLogoutComplete";
       
      
      private var §,I§:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         super(param1);
      }
      
      public function get §3!N§() : String
      {
         return this.§,I§;
      }
      
      public function set §3!N§(param1:String) : void
      {
         this.§,I§ = param1;
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
