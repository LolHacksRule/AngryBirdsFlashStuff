package com.rovio.externalInterface
{
   import com.rovio.factory.Log;
   import flash.external.ExternalInterface;
   
   public class ExternalInterfaceHandler
   {
      
      public static var EXTERNAL_INTERFACES_ENABLED:Boolean = true;
      
      private static var externalMethods:Array = new Array();
       
      
      public function ExternalInterfaceHandler()
      {
         super();
      }
      
      public static function registerMethod(externalMethod:String, callback:Function) : void
      {
         var method:ExternalInterfaceMethod = null;
         if(ExternalInterface.available && EXTERNAL_INTERFACES_ENABLED)
         {
            if(externalMethods == null)
            {
               externalMethods = new Array();
            }
            method = new ExternalInterfaceMethod(externalMethod);
            method.addCallback(callback);
         }
      }
      
      public static function addCallback(externalMethod:String, callback:Function) : void
      {
         var method:ExternalInterfaceMethod = null;
         if(externalMethods != null && EXTERNAL_INTERFACES_ENABLED)
         {
            for each(method in externalMethods)
            {
               if(method.externalMethodName == externalMethod)
               {
                  method.addCallback(callback);
                  return;
               }
            }
         }
      }
      
      public static function performCall(call:String, ... params) : *
      {
         var obj:Object = null;
         var debugStr:String = call + "(";
         for each(obj in params)
         {
            debugStr += obj.toString() + ", ";
         }
         debugStr += ");";
         Log.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available && EXTERNAL_INTERFACES_ENABLED)
         {
            try
            {
               return ExternalInterface.call(call,params);
            }
            catch(e:Error)
            {
               Log.log("ExternalInterface call failed!\nCall was:" + call + "\nError data:" + e.toString());
            }
         }
      }
   }
}
