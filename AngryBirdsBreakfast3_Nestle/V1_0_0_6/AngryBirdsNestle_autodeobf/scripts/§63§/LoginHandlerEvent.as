package §63§
{
   import flash.events.Event;
   
   public class LoginHandlerEvent extends Event
   {
      
      public static const ERROR:String = "LoginHandlerEvent.error";
      
      public static const §%"-§:String = "LoginHandlerEvent.login_start";
      
      public static const §@!v§:String = "LoginHandlerEvent.login_complete";
      
      public static const §,!0§:String = "LoginHandlerEvent.register_start";
      
      public static const §9!Y§:String = "LoginHandlerEvent.register_complete";
      
      public static const §#F§:String = "LogoutEvent.OnLogoutComplete";
       
      
      private var §<t§:String;
      
      private var §'"%§:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         super(param1);
      }
      
      public function get §;>§() : String
      {
         return this.§<t§;
      }
      
      public function set §;>§(param1:String) : void
      {
         this.§<t§ = param1;
      }
      
      public function get field() : String
      {
         return this.§'"%§;
      }
      
      public function set field(param1:String) : void
      {
         this.§'"%§ = param1;
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
