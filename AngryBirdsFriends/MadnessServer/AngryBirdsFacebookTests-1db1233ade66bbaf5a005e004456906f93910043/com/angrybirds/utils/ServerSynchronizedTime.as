package com.angrybirds.utils
{
   import flash.utils.getTimer;
   
   public class ServerSynchronizedTime
   {
       
      
      private var mServerTimeStamp:Number;
      
      private var mVMTimeOnRequest:Number;
      
      public function ServerSynchronizedTime(serverInitTimeStamp:Number)
      {
         super();
         this.serverTimeStamp = serverInitTimeStamp;
      }
      
      private function set serverTimeStamp(timeStamp:Number) : void
      {
         this.mVMTimeOnRequest = getTimer();
         this.mServerTimeStamp = timeStamp;
      }
      
      public function get synchronizedTimeStamp() : Number
      {
         var timeElapsed:Number = getTimer() - this.mVMTimeOnRequest;
         return this.mServerTimeStamp + timeElapsed;
      }
   }
}
