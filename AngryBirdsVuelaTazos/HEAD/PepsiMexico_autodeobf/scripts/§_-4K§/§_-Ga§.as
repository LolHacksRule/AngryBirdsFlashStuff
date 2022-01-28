package §_-4K§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §_-Ga§
   {
       
      
      private var §_-KV§:SoundChannel;
      
      private var §_-Nd§:Function;
      
      private var §_-gc§:Number;
      
      public function §_-Ga§(param1:SoundChannel, param2:Function = null)
      {
         super();
         this.§_-KV§ = param1;
         this.§_-Nd§ = param2;
         this.§_-KV§.addEventListener(Event.SOUND_COMPLETE,this.§_-b8§);
         this.§_-gc§ = param1.soundTransform.volume;
      }
      
      private function §_-b8§(param1:Event) : void
      {
         this.§_-KV§.removeEventListener(Event.SOUND_COMPLETE,this.§_-b8§);
         if(this.§_-Nd§ != null)
         {
            this.§_-Nd§.call(null,this);
            this.§_-Nd§ = null;
         }
      }
      
      public function §_-vI§() : void
      {
         this.§_-b8§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§_-KV§)
         {
            this.§_-KV§.stop();
         }
      }
      
      public function §_-7r§() : void
      {
         this.§_-KV§.removeEventListener(Event.SOUND_COMPLETE,this.§_-b8§);
         this.§_-KV§ = null;
      }
      
      public function §_-28§() : void
      {
         if(this.§_-KV§)
         {
            this.§_-KV§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §_-0h§() : void
      {
         if(this.§_-KV§)
         {
            this.§_-KV§.soundTransform = new SoundTransform(this.§_-gc§);
         }
      }
   }
}
