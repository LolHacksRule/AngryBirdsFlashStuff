package org.flexunit.token
{
   public dynamic class AsyncTestToken implements IAsyncTestToken
   {
       
      
      private var notificationMethod:Function;
      
      private var debugClassName:String;
      
      private var _token:IAsyncTestToken;
      
      public function AsyncTestToken(debugClassName:String = null)
      {
         super();
         this.debugClassName = debugClassName;
      }
      
      public function get parentToken() : IAsyncTestToken
      {
         return this._token;
      }
      
      public function set parentToken(value:IAsyncTestToken) : void
      {
         this._token = value;
      }
      
      public function addNotificationMethod(method:Function, debugClassName:String = null) : IAsyncTestToken
      {
         this.notificationMethod = method;
         return this;
      }
      
      private function createChildResult(error:Error) : ChildResult
      {
         return new ChildResult(this,error);
      }
      
      public function sendResult(error:Error = null) : void
      {
         if(this.notificationMethod != null)
         {
            this.notificationMethod(this.createChildResult(error));
         }
      }
      
      public function toString() : String
      {
         var output:String = "";
         if(this.debugClassName)
         {
            output += this.debugClassName + ": ";
         }
         return output + (String(this.notificationMethod != null ? 1 : 0) + " listeners");
      }
   }
}

class MethodEntry
{
    
   
   public var method:Function;
   
   public var className:String;
   
   function MethodEntry(method:Function, className:String = "")
   {
      super();
      this.method = method;
      this.className = className;
   }
}
