package §"q§
{
   import flash.events.Event;
   
   public class LoginHandlerEvent extends Event
   {
      
      public static const ERROR:String = "LoginHandlerEvent.error";
      
      public static const §@A§:String = "LoginHandlerEvent.login_start";
      
      public static const §=!5§:String = "LoginHandlerEvent.login_complete";
      
      public static const §7!A§:String = "LoginHandlerEvent.register_start";
      
      public static const §<9§:String = "LoginHandlerEvent.register_complete";
      
      public static const §+!3§:String = "LogoutEvent.OnLogoutComplete";
       
      
      private var §`X§:String;
      
      private var §,R§:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         super(param1);
      }
      
      public function get §;P§() : String
      {
         return this.§`X§;
      }
      
      public function set §;P§(param1:String) : void
      {
         this.§`X§ = param1;
      }
      
      public function get field() : String
      {
         return this.§,R§;
      }
      
      public function set field(param1:String) : void
      {
         this.§,R§ = param1;
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
