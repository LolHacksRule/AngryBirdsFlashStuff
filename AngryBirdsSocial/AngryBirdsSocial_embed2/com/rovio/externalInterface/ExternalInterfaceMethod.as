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
         ExternalInterface.addCallback(this.externalMethodName,this.methodListener);
      }
      
      public function methodListener(... args) : void
      {
         var logStr:String = null;
         var i:Number = NaN;
         var f:Function = null;
         logStr = "call through externalInterface! " + this.externalMethodName + "(";
         for(i = 0; i < args.length; i++)
         {
            logStr += args[i] + ",";
         }
         logStr += ")";
         Log.log(logStr);
         if(this.callbacks != null)
         {
            for each(f in this.callbacks)
            {
               f(args);
            }
         }
      }
      
      public function addCallback(callback:Function) : void
      {
         if(this.callbacks == null)
         {
            this.callbacks = new Array();
         }
         this.callbacks.push(callback);
      }
   }
}
