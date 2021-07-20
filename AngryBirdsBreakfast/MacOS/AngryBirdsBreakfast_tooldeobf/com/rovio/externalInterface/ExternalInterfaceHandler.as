package com.rovio.externalInterface
{
   import each.Log;
   import flash.external.ExternalInterface;
   
   public class ExternalInterfaceHandler
   {
      
      public static var EXTERNAL_INTERFACES_ENABLED:Boolean = true;
      
      private static var externalMethods:Object = {};
       
      
      public function ExternalInterfaceHandler()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         try
         {
            if(!externalMethods[param1])
            {
               externalMethods[param1] = new ExternalInterfaceMethod(param1);
            }
            (externalMethods[param1] as ExternalInterfaceMethod).addCallback(param2);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function removeCallback(param1:String, param2:Function) : void
      {
         var _loc3_:ExternalInterfaceMethod = externalMethods[param1] as ExternalInterfaceMethod;
         if(_loc3_)
         {
            _loc3_.removeCallback(param2);
            if(_loc3_.callbackCount == 0)
            {
               _loc3_.dispose();
               delete externalMethods[param1];
            }
         }
      }
      
      public static function performCall(param1:String, ... rest) : *
      {
         var call:String = param1;
         var params:Array = rest;
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
