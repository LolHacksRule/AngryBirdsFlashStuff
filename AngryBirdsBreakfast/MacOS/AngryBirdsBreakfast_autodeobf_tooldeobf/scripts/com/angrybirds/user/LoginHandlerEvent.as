package com.angrybirds.user
{
   import flash.events.Event;
   
   public class LoginHandlerEvent extends Event
   {
      
      public static const ERROR:String = "LoginHandlerEvent.error";
      
      public static const LOGIN_START:String = "LoginHandlerEvent.login_start";
      
      public static const LOGIN_COMPLETE:String = "LoginHandlerEvent.login_complete";
      
      public static const REGISTER_START:String = "LoginHandlerEvent.register_start";
      
      public static const REGISTER_COMPLETE:String = "LoginHandlerEvent.register_complete";
      
      public static const LOGOUT_COMPLETE:String = "LogoutEvent.OnLogoutComplete";
       
      
      private var mErrorName:String;
      
      public function LoginHandlerEvent(param1:String)
      {
         super(param1);
      }
      
      public function get errorName() : String
      {
         return this.mErrorName;
      }
      
      public function set errorName(param1:String) : void
      {
         this.mErrorName = param1;
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
