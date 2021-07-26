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
      
      public function set loginInfoChanged(value:Boolean) : void
      {
         this.mLoginInfoChanged = value;
      }
      
      public function get authenticationToken() : String
      {
         return this.mAuthenticationToken;
      }
      
      public function set authenticationToken(value:String) : void
      {
         this.mAuthenticationToken = value;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(value:String) : void
      {
         this.mName = value;
      }
      
      public function get email() : String
      {
         return this.mEmail;
      }
      
      public function set email(value:String) : void
      {
         this.mEmail = value;
      }
      
      public function get password() : String
      {
         return this.mPassword;
      }
      
      public function set password(value:String) : void
      {
         this.mPassword = value;
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
      
      public function set lastUpdateTime(value:uint) : void
      {
         this.mLastUpdateTime = value;
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
