package §-!G§
{
   import flash.events.Event;
   
   public class LoginHandlerEvent extends Event
   {
      
      public static const ERROR:String = "LoginHandlerEvent.error";
      
      public static const §"C§:String = "LoginHandlerEvent.login_start";
      
      public static const §6!$§:String = "LoginHandlerEvent.login_complete";
      
      public static const §7!c§:String = "LoginHandlerEvent.register_start";
      
      public static const §9!>§:String = "LoginHandlerEvent.register_complete";
      
      public static const §6"+§:String = "LogoutEvent.OnLogoutComplete";
       
      
      private var §%!8§:String;
      
      private var §4g§:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         super(param1);
      }
      
      public function get §@!;§() : String
      {
         return this.§%!8§;
      }
      
      public function set §@!;§(param1:String) : void
      {
         this.§%!8§ = param1;
      }
      
      public function get field() : String
      {
         return this.§4g§;
      }
      
      public function set field(param1:String) : void
      {
         this.§4g§ = param1;
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
