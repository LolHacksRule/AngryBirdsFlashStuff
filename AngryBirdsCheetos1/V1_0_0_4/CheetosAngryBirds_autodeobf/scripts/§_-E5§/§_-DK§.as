package §_-E5§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §_-DK§
   {
       
      
      private var §_-ha§:SoundChannel;
      
      private var §_-Jg§:Function;
      
      private var §_-kR§:Number;
      
      public function §_-DK§(param1:SoundChannel, param2:Function = null)
      {
         super();
         this.§_-ha§ = param1;
         this.§_-Jg§ = param2;
         this.§_-ha§.addEventListener(Event.SOUND_COMPLETE,this.§_-o1§);
         this.§_-kR§ = param1.soundTransform.volume;
      }
      
      private function §_-o1§(param1:Event) : void
      {
         this.§_-ha§.removeEventListener(Event.SOUND_COMPLETE,this.§_-o1§);
         if(this.§_-Jg§ != null)
         {
            this.§_-Jg§.call(null,this);
            this.§_-Jg§ = null;
         }
      }
      
      public function §_-6c§() : void
      {
         this.§_-o1§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§_-ha§)
         {
            this.§_-ha§.stop();
         }
      }
      
      public function §_-v§() : void
      {
         this.§_-ha§.removeEventListener(Event.SOUND_COMPLETE,this.§_-o1§);
         this.§_-ha§ = null;
      }
      
      public function §_-qc§() : void
      {
         if(this.§_-ha§)
         {
            this.§_-ha§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §_-ij§() : void
      {
         if(this.§_-ha§)
         {
            this.§_-ha§.soundTransform = new SoundTransform(this.§_-kR§);
         }
      }
   }
}
