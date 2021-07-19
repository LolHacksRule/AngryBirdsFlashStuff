package org.flexunit.token
{
   public interface IAsyncTestToken
   {
       
      
      function get parentToken() : IAsyncTestToken;
      
      function set parentToken(param1:IAsyncTestToken) : void;
      
      function addNotificationMethod(param1:Function, param2:String = null) : IAsyncTestToken;
      
      function sendResult(param1:Error = null) : void;
   }
}
