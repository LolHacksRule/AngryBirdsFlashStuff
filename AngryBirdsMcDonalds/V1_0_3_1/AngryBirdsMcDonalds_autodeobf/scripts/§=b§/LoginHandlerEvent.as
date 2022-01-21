package §=b§
{
   import flash.events.Event;
   
   public class LoginHandlerEvent extends Event
   {
      
      public static const ERROR:String = "LoginHandlerEvent.error";
      
      public static const §`y§:String = "LoginHandlerEvent.login_start";
      
      public static const §>!F§:String = "LoginHandlerEvent.login_complete";
      
      public static const §if§:String = "LoginHandlerEvent.register_start";
      
      public static const §,![§:String = "LoginHandlerEvent.register_complete";
       
      
      private var §[!S§:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         super(param1);
      }
      
      public function get §`!L§() : String
      {
         return this.§[!S§;
      }
      
      public function set §`!L§(param1:String) : void
      {
         this.§[!S§ = param1;
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
