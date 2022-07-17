package com.rovio.externalInterface
{
   import com.rovio.factory.Log;
   import flash.external.ExternalInterface;
   
   public class ExternalInterfaceHandler
   {
      
      private static var externalMethods:Array = new Array();
       
      
      public function ExternalInterfaceHandler()
      {
         super();
      }
      
      public static function registerMethod(param1:String, param2:Function) : void
      {
         var _loc3_:ExternalInterfaceMethod = null;
         if(ExternalInterface.available)
         {
            if(externalMethods == null)
            {
               externalMethods = new Array();
            }
            _loc3_ = new ExternalInterfaceMethod(param1);
            _loc3_.addCallback(param2);
         }
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         var _loc3_:ExternalInterfaceMethod = null;
         if(externalMethods != null)
         {
            for each(_loc3_ in externalMethods)
            {
               if(_loc3_.externalMethodName == param1)
               {
                  _loc3_.addCallback(param2);
                  return;
               }
            }
         }
      }
      
      public static function performCall(param1:String, ... rest) : *
      {
         var obj:Object = null;
         var call:String = param1;
         var params:Array = rest;
         var debugStr:String = call + "(";
         for each(obj in params)
         {
            debugStr += obj.toString() + ", ";
         }
         debugStr += ");";
         Log.log("ExternalInterface call: " + debugStr);
         if(ExternalInterface.available)
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
