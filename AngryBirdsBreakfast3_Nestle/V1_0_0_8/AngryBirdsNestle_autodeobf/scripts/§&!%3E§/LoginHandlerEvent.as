package §&!>§
{
   import flash.events.Event;
   
   public class LoginHandlerEvent extends Event
   {
      
      public static const ERROR:String = "LoginHandlerEvent.error";
      
      public static const §,x§:String = "LoginHandlerEvent.login_start";
      
      public static const §`O§:String = "LoginHandlerEvent.login_complete";
      
      public static const §%!n§:String = "LoginHandlerEvent.register_start";
      
      public static const §%P§:String = "LoginHandlerEvent.register_complete";
      
      public static const §'!h§:String = "LogoutEvent.OnLogoutComplete";
       
      
      private var §=q§:String;
      
      private var §="+§:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         super(param1);
      }
      
      public function get §%!,§() : String
      {
         return this.§=q§;
      }
      
      public function set §%!,§(param1:String) : void
      {
         this.§=q§ = param1;
      }
      
      public function get field() : String
      {
         return this.§="+§;
      }
      
      public function set field(param1:String) : void
      {
         this.§="+§ = param1;
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
