package § v§
{
   import flash.events.Event;
   
   public class LoginHandlerEvent extends Event
   {
      
      public static const ERROR:String = "LoginHandlerEvent.error";
      
      public static const §4!>§:String = "LoginHandlerEvent.login_start";
      
      public static const §`Y§:String = "LoginHandlerEvent.login_complete";
      
      public static const §;!1§:String = "LoginHandlerEvent.register_start";
      
      public static const § !H§:String = "LoginHandlerEvent.register_complete";
       
      
      private var §55§:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         super(param1);
      }
      
      public function get §7!F§() : String
      {
         return this.§55§;
      }
      
      public function set §7!F§(param1:String) : void
      {
         this.§55§ = param1;
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
