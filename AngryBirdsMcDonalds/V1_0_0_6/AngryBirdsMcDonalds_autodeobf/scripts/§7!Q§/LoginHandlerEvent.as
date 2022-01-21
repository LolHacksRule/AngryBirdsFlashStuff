package §7!Q§
{
   import flash.events.Event;
   
   public class LoginHandlerEvent extends Event
   {
      
      public static const ERROR:String = "LoginHandlerEvent.error";
      
      public static const §'!O§:String = "LoginHandlerEvent.login_start";
      
      public static const §=!J§:String = "LoginHandlerEvent.login_complete";
      
      public static const §<R§:String = "LoginHandlerEvent.register_start";
      
      public static const §^!%§:String = "LoginHandlerEvent.register_complete";
       
      
      private var §!!9§:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         super(param1);
      }
      
      public function get §]!a§() : String
      {
         return this.§!!9§;
      }
      
      public function set §]!a§(param1:String) : void
      {
         this.§!!9§ = param1;
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
