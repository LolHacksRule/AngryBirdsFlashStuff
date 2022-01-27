package §!"4§
{
   import flash.events.Event;
   
   public class LoginHandlerEvent extends Event
   {
      
      public static const ERROR:String = "LoginHandlerEvent.error";
      
      public static const §&!7§:String = "LoginHandlerEvent.login_start";
      
      public static const §=!,§:String = "LoginHandlerEvent.login_complete";
      
      public static const §<"%§:String = "LoginHandlerEvent.register_start";
      
      public static const §7t§:String = "LoginHandlerEvent.register_complete";
      
      public static const §-s§:String = "LogoutEvent.OnLogoutComplete";
       
      
      private var §[>§:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         super(param1);
      }
      
      public function get §7!8§() : String
      {
         return this.§[>§;
      }
      
      public function set §7!8§(param1:String) : void
      {
         this.§[>§ = param1;
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
