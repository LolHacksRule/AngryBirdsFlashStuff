package com.rovio.sound
{
   public class ThemeMusicObject
   {
       
      
      public var songId:String;
      
      public var channelId:String;
      
      public var volume:Number;
      
      public var repeatCount:int;
      
      public var streamingURL:String;
      
      public var buffer:int;
      
      public function ThemeMusicObject(songId:String, channelId:String, volume:Number = -1, repeatCount:int = 1, streamingURL:String = "", buffer:int = 3000)
      {
         super();
         this.songId = songId;
         this.channelId = channelId;
         this.volume = volume;
         this.repeatCount = repeatCount;
         this.streamingURL = streamingURL;
         this.buffer = buffer;
      }
   }
}
