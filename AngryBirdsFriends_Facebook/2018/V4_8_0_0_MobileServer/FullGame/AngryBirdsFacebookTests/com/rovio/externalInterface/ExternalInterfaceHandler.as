package com.rovio.externalInterface
{
   import com.rovio.factory.Log;
   import flash.external.ExternalInterface;
   
   public class ExternalInterfaceHandler
   {
      
      public static var EXTERNAL_INTERFACES_ENABLED:Boolean = true;
      
      private static var externalMethods:Object = {};
       
      
      public function ExternalInterfaceHandler()
      {
         super();
      }
      
      public static function addCallback(externalMethod:String, callback:Function) : void
      {
         try
         {
            if(!externalMethods[externalMethod])
            {
               externalMethods[externalMethod] = new ExternalInterfaceMethod(externalMethod);
            }
            (externalMethods[externalMethod] as ExternalInterfaceMethod).addCallback(callback);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function removeCallback(externalMethod:String, callback:Function) : void
      {
         var method:ExternalInterfaceMethod = externalMethods[externalMethod] as ExternalInterfaceMethod;
         if(method)
         {
            method.removeCallback(callback);
            if(method.callbackCount == 0)
            {
               method.dispose();
               delete externalMethods[externalMethod];
            }
         }
      }
      
      public static function performCall(call:String, ... params) : *
      {
         var logStr:String = "ExternalInterface call: " + call + "(" + params.join(", ") + ");";
         if(logStr.length > 300)
         {
            logStr = logStr.substr(0,300) + "[...]";
         }
         Log.log(logStr);
         if(ExternalInterface.available && EXTERNAL_INTERFACES_ENABLED)
         {
            try
            {
               params.unshift(call);
               return ExternalInterface.call.apply(null,params);
            }
            catch(e:Error)
            {
               Log.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
