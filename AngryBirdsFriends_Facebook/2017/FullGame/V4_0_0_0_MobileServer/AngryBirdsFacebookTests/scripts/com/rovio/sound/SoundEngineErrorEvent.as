package com.rovio.sound
{
   public class SoundEngineErrorEvent extends SoundEngineEvent
   {
      
      public static const STREAM_ERROR:String = "stream_error";
       
      
      public var error:String;
      
      public var errorID:int;
      
      public function SoundEngineErrorEvent(type:String, error:String = "", errorID:int = 0, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,"","",bubbles,cancelable);
         this.error = error;
         this.errorID = errorID;
      }
   }
}
