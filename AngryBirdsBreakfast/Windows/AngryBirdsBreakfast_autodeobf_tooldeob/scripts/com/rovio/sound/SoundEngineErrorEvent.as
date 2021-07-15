package com.rovio.sound
{
   public class SoundEngineErrorEvent extends SoundEngineEvent
   {
      
      public static const STREAM_ERROR:String = "stream_error";
       
      
      public var error:String;
      
      public var errorID:int;
      
      public function SoundEngineErrorEvent(param1:String, param2:String = "", param3:int = 0, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,"","",param4,param5);
         this.error = param2;
         this.errorID = param3;
      }
   }
}
