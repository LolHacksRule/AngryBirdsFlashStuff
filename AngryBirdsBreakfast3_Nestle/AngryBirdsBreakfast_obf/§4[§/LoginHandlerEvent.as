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
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            ERROR = "LoginHandlerEvent.error";
            loop0:
            while(true)
            {
               § ! § = "LoginHandlerEvent.login_start";
               addr82:
               while(true)
               {
                  §8h§ = "LoginHandlerEvent.login_complete";
                  continue loop0;
               }
            }
         }
         while(true)
         {
            § =§ = "LoginHandlerEvent.register_start";
            loop4:
            while(!_loc2_)
            {
               §`!B§ = "LoginHandlerEvent.register_complete";
               while(_loc1_)
               {
                  §]!2§ = "LogoutEvent.OnLogoutComplete";
                  if(!_loc2_)
                  {
                     if(_loc1_)
                     {
                        return;
                     }
                     continue loop4;
                  }
               }
               §§goto(addr60);
            }
            §§goto(addr82);
         }
      }
      
      private var §!@§:String;
      
      private var §'s§:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super(param1);
         }
      }
      
      public function get §1X§() : String
      {
         return this.§!@§;
      }
      
      public function set §1X§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§!@§ = param1;
         }
      }
      
      public function get field() : String
      {
         return this.§'s§;
      }
      
      public function set field(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'s§ = param1;
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
