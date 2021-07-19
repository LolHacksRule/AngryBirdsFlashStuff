package com.rovio.sound
{
   public class PausedSound
   {
       
      
      private var mID:String;
      
      private var mLoop:int;
      
      private var mVolume:Number;
      
      private var mStartTime:Number;
      
      public function PausedSound(id:String, loop:int, volume:Number, startTime:Number)
      {
         super();
         this.mID = id;
         this.mLoop = loop;
         this.mVolume = volume;
         this.mStartTime = startTime;
      }
      
      public function get iD() : String
      {
         return this.mID;
      }
      
      public function get loop() : int
      {
         return this.mLoop;
      }
      
      public function get volume() : Number
      {
         return this.mVolume;
      }
      
      public function get startTime() : Number
      {
         return this.mStartTime;
      }
   }
}
