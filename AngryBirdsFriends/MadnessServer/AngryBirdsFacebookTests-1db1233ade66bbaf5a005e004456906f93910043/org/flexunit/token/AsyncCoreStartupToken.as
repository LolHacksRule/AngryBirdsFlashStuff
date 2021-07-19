package org.flexunit.token
{
   import org.flexunit.runner.IRunner;
   
   public class AsyncCoreStartupToken
   {
       
      
      private var methodsEntries:Array;
      
      private var _runner:IRunner;
      
      public function AsyncCoreStartupToken()
      {
         super();
      }
      
      public function get runner() : IRunner
      {
         return this._runner;
      }
      
      public function set runner(value:IRunner) : void
      {
         this._runner = value;
      }
      
      public function addNotificationMethod(method:Function) : AsyncCoreStartupToken
      {
         if(this.methodsEntries == null)
         {
            this.methodsEntries = [];
         }
         this.methodsEntries.push(method);
         return this;
      }
      
      public function sendReady() : void
      {
         var i:int = 0;
         if(this.methodsEntries)
         {
            for(i = 0; i < this.methodsEntries.length; i++)
            {
               this.methodsEntries[i](this.runner);
            }
         }
      }
   }
}
