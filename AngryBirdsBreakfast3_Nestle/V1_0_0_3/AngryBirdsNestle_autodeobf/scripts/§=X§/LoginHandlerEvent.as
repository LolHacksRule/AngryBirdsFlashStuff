package §=X§
{
   import flash.events.Event;
   
   public class LoginHandlerEvent extends Event
   {
      
      public static const ERROR:String = "LoginHandlerEvent.error";
      
      public static const §?!`§:String = "LoginHandlerEvent.login_start";
      
      public static const §%T§:String = "LoginHandlerEvent.login_complete";
      
      public static const § !v§:String = "LoginHandlerEvent.register_start";
      
      public static const § !8§:String = "LoginHandlerEvent.register_complete";
      
      public static const §[!?§:String = "LogoutEvent.OnLogoutComplete";
       
      
      private var §?[§:String;
      
      private var §[!,§:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         super(param1);
      }
      
      public function get §?R§() : String
      {
         return this.§?[§;
      }
      
      public function set §?R§(param1:String) : void
      {
         this.§?[§ = param1;
      }
      
      public function get field() : String
      {
         return this.§[!,§;
      }
      
      public function set field(param1:String) : void
      {
         this.§[!,§ = param1;
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
