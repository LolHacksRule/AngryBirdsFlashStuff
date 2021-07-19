package com.rovio.server
{
   import com.rovio.factory.Log;
   
   public class ServerCommand
   {
       
      
      private var mCommand:String;
      
      private var mCallbackFunctions:Vector.<Function>;
      
      private var mActiveCommand:Boolean;
      
      public function ServerCommand(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.mCommand = param1;
         this.mActiveCommand = param3;
         if(param2 != null)
         {
            Log.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function getCommand() : String
      {
         return this.mCommand;
      }
      
      public function setIsActive(param1:Boolean) : void
      {
         this.mActiveCommand = param1;
      }
      
      public function isActive() : Boolean
      {
         return this.mActiveCommand;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.mCallbackFunctions == null)
         {
            this.mCallbackFunctions = new Vector.<Function>();
         }
         if(this.mCallbackFunctions.indexOf(param1) == -1)
         {
            this.mCallbackFunctions.push(param1);
         }
      }
      
      public function removeCallback(param1:Function) : void
      {
         if(this.mCallbackFunctions.indexOf(param1) > -1)
         {
            this.mCallbackFunctions.splice(this.mCallbackFunctions.indexOf(param1),1);
         }
      }
      
      public function getCallbackFunctions() : Vector.<Function>
      {
         return this.mCallbackFunctions;
      }
   }
}
