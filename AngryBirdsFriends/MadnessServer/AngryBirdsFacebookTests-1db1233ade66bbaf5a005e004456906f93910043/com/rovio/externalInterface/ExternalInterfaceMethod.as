package com.rovio.externalInterface
{
   import com.rovio.factory.Log;
   import flash.external.ExternalInterface;
   
   public class ExternalInterfaceMethod
   {
       
      
      public var externalMethodName:String = "";
      
      private var callbacks:Array = null;
      
      public function ExternalInterfaceMethod(methodName:String)
      {
         super();
         this.externalMethodName = methodName;
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.externalMethodName,this.methodListener);
         }
      }
      
      public function methodListener(... args) : *
      {
         var logStr:* = null;
         var i:Number = NaN;
         var f:Function = null;
         logStr = "call through externalInterface! " + this.externalMethodName + "(";
         for(i = 0; i < args.length; i++)
         {
            logStr += args[i] + ",";
         }
         logStr += ")";
         Log.log(logStr);
         var returnValue:* = null;
         if(this.callbacks != null)
         {
            for each(f in this.callbacks)
            {
               returnValue = f.apply(null,args);
            }
         }
         return returnValue;
      }
      
      public function addCallback(callback:Function) : void
      {
         if(this.callbacks == null)
         {
            this.callbacks = new Array();
         }
         if(this.callbacks.indexOf(callback) == -1)
         {
            this.callbacks.push(callback);
         }
      }
      
      public function removeCallback(callback:Function) : void
      {
         if(this.callbacks && this.callbacks.indexOf(callback) != -1)
         {
            this.callbacks.splice(this.callbacks.indexOf(callback),1);
         }
      }
      
      public function get callbackCount() : int
      {
         if(!this.callbacks)
         {
            return 0;
         }
         return this.callbacks.length;
      }
      
      public function dispose() : void
      {
         ExternalInterface.addCallback(this.externalMethodName,null);
      }
   }
}
