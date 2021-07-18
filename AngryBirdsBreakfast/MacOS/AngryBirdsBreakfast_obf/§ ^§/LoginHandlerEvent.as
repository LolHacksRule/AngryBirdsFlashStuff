package § ^§
{
   import flash.events.Event;
   
   public class LoginHandlerEvent extends Event
   {
      
      public static const ERROR:String = "LoginHandlerEvent.error";
      
      public static const §"!`§:String = "LoginHandlerEvent.login_start";
      
      public static const §"m§:String = "LoginHandlerEvent.login_complete";
      
      public static const §#!n§:String = "LoginHandlerEvent.register_start";
      
      public static const §3[§:String = "LoginHandlerEvent.register_complete";
      
      public static const § !V§:String = "LogoutEvent.OnLogoutComplete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            ERROR = "LoginHandlerEvent.error";
         }
         while(true)
         {
            §"!`§ = "LoginHandlerEvent.login_start";
            loop1:
            while(true)
            {
               §"m§ = "LoginHandlerEvent.login_complete";
               loop2:
               while(true)
               {
                  §#!n§ = "LoginHandlerEvent.register_start";
                  addr60:
                  while(_loc1_)
                  {
                     §3[§ = "LoginHandlerEvent.register_complete";
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      private var §,I§:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super(param1);
         }
      }
      
      public function get §3!N§() : String
      {
         return this.§,I§;
      }
      
      public function set §3!N§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§,I§ = param1;
         }
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
