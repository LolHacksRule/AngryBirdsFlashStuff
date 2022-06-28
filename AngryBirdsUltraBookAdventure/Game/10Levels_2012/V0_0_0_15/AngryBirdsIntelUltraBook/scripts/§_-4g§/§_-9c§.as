package §_-4g§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §_-9c§
   {
       
      
      private var §_-2P§:SoundChannel;
      
      private var §_-qH§:Function;
      
      private var §_-dn§:Function;
      
      private var §_-011§:Number;
      
      public function §_-9c§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         super();
         this.§_-2P§ = param1;
         this.§_-qH§ = param2;
         this.§_-dn§ = param3;
         this.§_-2P§.addEventListener(Event.SOUND_COMPLETE,this.§_-1O§);
         this.§_-011§ = param1.soundTransform.volume;
      }
      
      private function §_-1O§(param1:Event) : void
      {
         this.§_-2P§.removeEventListener(Event.SOUND_COMPLETE,this.§_-1O§);
         if(this.§_-dn§ != null)
         {
            this.§_-dn§.call();
            this.§_-dn§ = null;
         }
         if(this.§_-qH§ != null)
         {
            this.§_-qH§.call(null,this);
            this.§_-qH§ = null;
         }
      }
      
      public function §_-T5§() : void
      {
         this.§_-1O§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§_-2P§)
         {
            this.§_-2P§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.§_-2P§.removeEventListener(Event.SOUND_COMPLETE,this.§_-1O§);
         this.§_-2P§ = null;
      }
      
      public function §_-d7§() : void
      {
         if(this.§_-2P§)
         {
            this.§_-2P§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §_-XX§() : void
      {
         if(this.§_-2P§)
         {
            this.§_-2P§.soundTransform = new SoundTransform(this.§_-011§);
         }
      }
   }
}
