package §0$§
{
   import flash.events.Event;
   
   public class LoginHandlerEvent extends Event
   {
      
      public static const ERROR:String = "LoginHandlerEvent.error";
      
      public static const §9!G§:String = "LoginHandlerEvent.login_start";
      
      public static const §16§:String = "LoginHandlerEvent.login_complete";
      
      public static const §;!`§:String = "LoginHandlerEvent.register_start";
      
      public static const §?f§:String = "LoginHandlerEvent.register_complete";
       
      
      private var §0! §:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         super(param1);
      }
      
      public function get §15§() : String
      {
         return this.§0! §;
      }
      
      public function set §15§(param1:String) : void
      {
         this.§0! § = param1;
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
