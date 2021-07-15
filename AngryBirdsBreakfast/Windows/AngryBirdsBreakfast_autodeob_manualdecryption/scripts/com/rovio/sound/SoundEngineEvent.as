package com.rovio.sound
{
   import flash.events.Event;
   
   public class SoundEngineEvent extends Event
   {
      
      public static const STREAM_START:String = "stream_start";
      
      public static const STREAM_DATA_COMPLETE:String = "stream_data_complete";
      
      public static const CHANNEL_STOP_ALL:String = "all_channels_stop";
      
      public static const CHANNEL_STOP:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
       
      
      public var soundId:String;
      
      public var channelId:String;
      
      public function SoundEngineEvent(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.soundId = param2;
         this.channelId = param3;
      }
   }
}
