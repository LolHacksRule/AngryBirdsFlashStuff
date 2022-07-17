package com.rovio.model
{
   import flash.utils.getTimer;
   
   public class UserModel
   {
       
      
      private var mName:String;
      
      private var mEmail:String;
      
      private var mPassword:String;
      
      private var mAuthenticationToken:String;
      
      private var mSessionLength:uint;
      
      private var mLastUpdateTime:uint;
      
      private var mSessionStartTime:uint;
      
      private var mLoginInfoChanged:Boolean = false;
      
      public function UserModel()
      {
         super();
         this.mSessionStartTime = getTimer();
      }
      
      public function get loginInfoChanged() : Boolean
      {
         return this.mLoginInfoChanged;
      }
      
      public function set loginInfoChanged(param1:Boolean) : void
      {
         this.mLoginInfoChanged = param1;
      }
      
      public function get authenticationToken() : String
      {
         return this.mAuthenticationToken;
      }
      
      public function set authenticationToken(param1:String) : void
      {
         this.mAuthenticationToken = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get email() : String
      {
         return this.mEmail;
      }
      
      public function set email(param1:String) : void
      {
         this.mEmail = param1;
      }
      
      public function get password() : String
      {
         return this.mPassword;
      }
      
      public function set password(param1:String) : void
      {
         this.mPassword = param1;
      }
      
      public function get sessionLength() : uint
      {
         this.mSessionLength = getTimer() - this.mSessionStartTime;
         return this.mSessionLength;
      }
      
      public function get lastUpdateTime() : uint
      {
         return this.mLastUpdateTime;
      }
      
      public function set lastUpdateTime(param1:uint) : void
      {
         this.mLastUpdateTime = param1;
      }
      
      public function get loggedIn() : Boolean
      {
         if(this.authenticationToken != null && this.authenticationToken.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
