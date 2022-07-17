package com.rovio.externalInterface
{
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
         var _loc2_:Function = null;
         if(this.callbacks != null)
         {
            for each(_loc2_ in this.callbacks)
            {
               _loc2_(rest);
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
