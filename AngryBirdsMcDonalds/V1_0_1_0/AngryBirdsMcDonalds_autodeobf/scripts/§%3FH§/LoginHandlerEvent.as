package §?H§
{
   import flash.events.Event;
   
   public class LoginHandlerEvent extends Event
   {
      
      public static const ERROR:String = "LoginHandlerEvent.error";
      
      public static const §#[§:String = "LoginHandlerEvent.login_start";
      
      public static const §2t§:String = "LoginHandlerEvent.login_complete";
      
      public static const §>!9§:String = "LoginHandlerEvent.register_start";
      
      public static const §'!;§:String = "LoginHandlerEvent.register_complete";
       
      
      private var §+p§:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         super(param1);
      }
      
      public function get §5z§() : String
      {
         return this.§+p§;
      }
      
      public function set §5z§(param1:String) : void
      {
         this.§+p§ = param1;
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
