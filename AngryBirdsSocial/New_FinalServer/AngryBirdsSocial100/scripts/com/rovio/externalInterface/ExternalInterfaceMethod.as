package com.rovio.externalInterface
{
   import com.rovio.factory.Log;
   import flash.external.ExternalInterface;
   
   public class ExternalInterfaceMethod
   {
       
      
      public var externalMethodName:String = "";
      
      private var callbacks:Array = null;
      
      public function ExternalInterfaceMethod(param1:String)
      {
         super();
         this.externalMethodName = param1;
         ExternalInterface.addCallback(this.externalMethodName,this.methodListener);
      }
      
      public function methodListener(... rest) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         _loc2_ = "call through externalInterface! " + this.externalMethodName + "(";
         _loc3_ = 0;
         while(_loc3_ < rest.length)
         {
            _loc2_ += rest[_loc3_] + ",";
            _loc3_++;
         }
         _loc2_ += ")";
         Log.log(_loc2_);
         if(this.callbacks != null)
         {
            for each(_loc4_ in this.callbacks)
            {
               _loc4_(rest);
            }
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.callbacks == null)
         {
            this.callbacks = new Array();
         }
         this.callbacks.push(param1);
      }
   }
}
