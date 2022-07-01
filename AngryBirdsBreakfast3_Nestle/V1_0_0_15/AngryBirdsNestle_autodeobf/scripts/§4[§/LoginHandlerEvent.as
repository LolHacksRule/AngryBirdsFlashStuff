package §4[§
{
   import flash.events.Event;
   
   public class LoginHandlerEvent extends Event
   {
      
      public static const ERROR:String = "LoginHandlerEvent.error";
      
      public static const § ! §:String = "LoginHandlerEvent.login_start";
      
      public static const §8h§:String = "LoginHandlerEvent.login_complete";
      
      public static const § =§:String = "LoginHandlerEvent.register_start";
      
      public static const §`!B§:String = "LoginHandlerEvent.register_complete";
      
      public static const §]!2§:String = "LogoutEvent.OnLogoutComplete";
       
      
      private var §!@§:String;
      
      private var §'s§:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         super(param1);
      }
      
      public function get §1X§() : String
      {
         return this.§!@§;
      }
      
      public function set §1X§(param1:String) : void
      {
         this.§!@§ = param1;
      }
      
      public function get field() : String
      {
         return this.§'s§;
      }
      
      public function set field(param1:String) : void
      {
         this.§'s§ = param1;
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
