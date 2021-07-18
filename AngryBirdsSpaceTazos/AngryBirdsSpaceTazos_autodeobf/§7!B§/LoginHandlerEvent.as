package §7!B§
{
   import flash.events.Event;
   
   public class LoginHandlerEvent extends Event
   {
      
      public static const ERROR:String = "LoginHandlerEvent.error";
      
      public static const §?q§:String = "LoginHandlerEvent.login_start";
      
      public static const §!"8§:String = "LoginHandlerEvent.login_complete";
      
      public static const §5!l§:String = "LoginHandlerEvent.register_start";
      
      public static const §4!Q§:String = "LoginHandlerEvent.register_complete";
      
      public static const §%&§:String = "LogoutEvent.OnLogoutComplete";
       
      
      private var §;!l§:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         super(param1);
      }
      
      public function get §#5§() : String
      {
         return this.§;!l§;
      }
      
      public function set §#5§(param1:String) : void
      {
         this.§;!l§ = param1;
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
