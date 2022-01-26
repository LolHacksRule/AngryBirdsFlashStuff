package §_-VH§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §_-2K§
   {
       
      
      private var §_-fd§:SoundChannel;
      
      private var §_-X3§:Function;
      
      private var §_-mM§:Number;
      
      public function §_-2K§(param1:SoundChannel, param2:Function = null)
      {
         super();
         this.§_-fd§ = param1;
         this.§_-X3§ = param2;
         this.§_-fd§.addEventListener(Event.SOUND_COMPLETE,this.§_-l9§);
         this.§_-mM§ = param1.soundTransform.volume;
      }
      
      private function §_-l9§(param1:Event) : void
      {
         this.§_-fd§.removeEventListener(Event.SOUND_COMPLETE,this.§_-l9§);
         if(this.§_-X3§ != null)
         {
            this.§_-X3§.call(null,this);
            this.§_-X3§ = null;
         }
      }
      
      public function §_-pZ§() : void
      {
         this.§_-l9§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§_-fd§)
         {
            this.§_-fd§.stop();
         }
      }
      
      public function §_-Md§() : void
      {
         this.§_-fd§.removeEventListener(Event.SOUND_COMPLETE,this.§_-l9§);
         this.§_-fd§ = null;
      }
      
      public function §_-yV§() : void
      {
         if(this.§_-fd§)
         {
            this.§_-fd§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §_-PD§() : void
      {
         if(this.§_-fd§)
         {
            this.§_-fd§.soundTransform = new SoundTransform(this.§_-mM§);
         }
      }
   }
}
