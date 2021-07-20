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
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback(this.externalMethodName,this.methodListener);
         }
      }
      
      public function methodListener(... rest) : *
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         _loc3_ = "call through externalInterface! " + this.externalMethodName + "(";
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_] + ",";
            _loc4_++;
         }
         _loc3_ += ")";
         Log.log(_loc3_);
         var _loc2_:* = null;
         if(this.callbacks != null)
         {
            for each(_loc5_ in this.callbacks)
            {
               _loc2_ = _loc5_.apply(null,rest);
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.callbacks == null)
         {
            this.callbacks = new Array();
         }
         if(this.callbacks.indexOf(param1) == -1)
         {
            this.callbacks.push(param1);
         }
      }
      
      public function removeCallback(param1:Function) : void
      {
         if(this.callbacks && this.callbacks.indexOf(param1) != -1)
         {
            this.callbacks.splice(this.callbacks.indexOf(param1),1);
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
