package §6"6§
{
   import flash.events.Event;
   
   public class LoginHandlerEvent extends Event
   {
      
      public static const ERROR:String = "LoginHandlerEvent.error";
      
      public static const §9!U§:String = "LoginHandlerEvent.login_start";
      
      public static const §8"1§:String = "LoginHandlerEvent.login_complete";
      
      public static const §8,§:String = "LoginHandlerEvent.register_start";
      
      public static const §%&§:String = "LoginHandlerEvent.register_complete";
      
      public static const §@!;§:String = "LogoutEvent.OnLogoutComplete";
       
      
      private var §[!j§:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         super(param1);
      }
      
      public function get §5"F§() : String
      {
         return this.§[!j§;
      }
      
      public function set §5"F§(param1:String) : void
      {
         this.§[!j§ = param1;
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
