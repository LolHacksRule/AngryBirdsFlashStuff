package §_-cb§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §_-E1§
   {
       
      
      private var §_-kS§:SoundChannel;
      
      private var §_-dP§:Function;
      
      private var §_-8S§:Number;
      
      public function §_-E1§(param1:SoundChannel, param2:Function = null)
      {
         super();
         this.§_-kS§ = param1;
         this.§_-dP§ = param2;
         this.§_-kS§.addEventListener(Event.SOUND_COMPLETE,this.§_-1K§);
         this.§_-8S§ = param1.soundTransform.volume;
      }
      
      private function §_-1K§(param1:Event) : void
      {
         this.§_-kS§.removeEventListener(Event.SOUND_COMPLETE,this.§_-1K§);
         if(this.§_-dP§ != null)
         {
            this.§_-dP§.call(null,this);
            this.§_-dP§ = null;
         }
      }
      
      public function §_-8d§() : void
      {
         this.§_-1K§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§_-kS§)
         {
            this.§_-kS§.stop();
         }
      }
      
      public function §_-KX§() : void
      {
         this.§_-kS§.removeEventListener(Event.SOUND_COMPLETE,this.§_-1K§);
         this.§_-kS§ = null;
      }
      
      public function §_-zZ§() : void
      {
         if(this.§_-kS§)
         {
            this.§_-kS§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §_-X-§() : void
      {
         if(this.§_-kS§)
         {
            this.§_-kS§.soundTransform = new SoundTransform(this.§_-8S§);
         }
      }
   }
}
