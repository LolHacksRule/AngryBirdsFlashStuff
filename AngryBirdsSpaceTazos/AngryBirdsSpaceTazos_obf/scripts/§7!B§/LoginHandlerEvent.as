package §7!B§
{
   import flash.events.Event;
   
   public class LoginHandlerEvent extends Event
   {
      
      public static const ERROR:String = "LoginHandlerEvent.error";
      
      public static const §?q§:String = "LoginHandlerEvent.login_start";
      
      public static const §!"8§:String = "LoginHandlerEvent.login_complete";
      
      public static const §5!l§:String = "LoginHandlerEvent.register_start";
      
      public static const §4!Q§:String = "LoginHandlerEvent.register_complete";
      
      public static const §%&§:String = "LogoutEvent.OnLogoutComplete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            ERROR = "LoginHandlerEvent.error";
            loop0:
            while(true)
            {
               §?q§ = "LoginHandlerEvent.login_start";
               addr97:
               while(true)
               {
                  §!"8§ = "LoginHandlerEvent.login_complete";
                  while(true)
                  {
                     §5!l§ = "LoginHandlerEvent.register_start";
                     while(_loc1_)
                     {
                        continue loop0;
                        if(_loc1_ || _loc1_)
                        {
                           return;
                           addr56:
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §4!Q§ = "LoginHandlerEvent.register_complete";
            while(_loc1_)
            {
               §%&§ = "LogoutEvent.OnLogoutComplete";
               if(!(_loc1_ || LoginHandlerEvent))
               {
                  continue;
               }
               §§goto(addr39);
            }
            §§goto(addr97);
         }
         §§goto(addr56);
      }
      
      private var §;!l§:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super(param1);
         }
      }
      
      public function get §#5§() : String
      {
         return this.§;!l§;
      }
      
      public function set §#5§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;!l§ = param1;
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
