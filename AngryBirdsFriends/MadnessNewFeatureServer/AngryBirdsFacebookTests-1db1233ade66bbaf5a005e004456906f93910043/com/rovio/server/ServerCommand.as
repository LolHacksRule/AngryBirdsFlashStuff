package com.rovio.server
{
   import com.rovio.factory.Log;
   
   public class ServerCommand
   {
       
      
      private var mCommand:String;
      
      private var mCallbackFunctions:Vector.<Function>;
      
      private var mActiveCommand:Boolean;
      
      public function ServerCommand(cmd:String, func:Function, active:Boolean = true)
      {
         super();
         this.mCommand = cmd;
         this.mActiveCommand = active;
         if(func != null)
         {
            Log.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(func);
         }
      }
      
      public function getCommand() : String
      {
         return this.mCommand;
      }
      
      public function setIsActive(b:Boolean) : void
      {
         this.mActiveCommand = b;
      }
      
      public function isActive() : Boolean
      {
         return this.mActiveCommand;
      }
      
      public function addCallback(fnc:Function) : void
      {
         if(this.mCallbackFunctions == null)
         {
            this.mCallbackFunctions = new Vector.<Function>();
         }
         if(this.mCallbackFunctions.indexOf(fnc) == -1)
         {
            this.mCallbackFunctions.push(fnc);
         }
      }
      
      public function removeCallback(fnc:Function) : void
      {
         if(this.mCallbackFunctions.indexOf(fnc) > -1)
         {
            this.mCallbackFunctions.splice(this.mCallbackFunctions.indexOf(fnc),1);
         }
      }
      
      public function getCallbackFunctions() : Vector.<Function>
      {
         return this.mCallbackFunctions;
      }
   }
}
