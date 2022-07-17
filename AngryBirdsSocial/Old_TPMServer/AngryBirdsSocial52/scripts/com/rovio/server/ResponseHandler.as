package com.rovio.server
{
   import com.rovio.factory.Log;
   
   public class ResponseHandler
   {
       
      
      private var mCommandList:Vector.<ServerCommand>;
      
      public function ResponseHandler()
      {
         super();
         this.mCommandList = new Vector.<ServerCommand>();
      }
      
      public function handleResponse(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:ServerCommand = null;
         var _loc4_:Function = null;
         for(_loc2_ in param1)
         {
            Log.log("RESPONSE_KEY: " + _loc2_ + ", VALUE: " + param1[_loc2_]);
         }
         _loc3_ = this.getServerCommand(param1.C);
         if(param1.E)
         {
            this.handleErrorResponse(param1);
            return;
         }
         if(_loc3_.isActive())
         {
            for each(_loc4_ in _loc3_.getCallbackFunctions())
            {
               _loc4_.call(null,param1);
            }
         }
         else
         {
            Log.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function handleErrorResponse(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:ServerCommand = this.getServerCommand(param1.C);
         if(_loc2_.isActive())
         {
            for each(_loc3_ in _loc2_.getCallbackFunctions())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            Log.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function addCommand(param1:String, param2:Function) : void
      {
         var _loc3_:ServerCommand = new ServerCommand(param1,param2);
         this.mCommandList.push(_loc3_);
         Log.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function getCommandList() : Vector.<ServerCommand>
      {
         return this.mCommandList;
      }
      
      public function getServerCommand(param1:String) : ServerCommand
      {
         var _loc2_:ServerCommand = null;
         for each(_loc2_ in this.mCommandList)
         {
            if(_loc2_.getCommand() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
