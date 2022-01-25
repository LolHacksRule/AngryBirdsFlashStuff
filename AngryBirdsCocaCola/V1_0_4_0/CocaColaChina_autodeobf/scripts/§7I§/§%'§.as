package §7I§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §%'§
   {
       
      
      private var §?!B§:SoundChannel;
      
      private var §2`§:Function;
      
      private var §78§:Number;
      
      public function §%'§(param1:SoundChannel, param2:Function = null)
      {
         super();
         this.§?!B§ = param1;
         this.§2`§ = param2;
         this.§?!B§.addEventListener(Event.SOUND_COMPLETE,this.§]!&§);
         this.§78§ = param1.soundTransform.volume;
      }
      
      private function §]!&§(param1:Event) : void
      {
         this.§?!B§.removeEventListener(Event.SOUND_COMPLETE,this.§]!&§);
         if(this.§2`§ != null)
         {
            this.§2`§.call(null,this);
            this.§2`§ = null;
         }
      }
      
      public function §3!S§() : void
      {
         this.§]!&§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§?!B§)
         {
            this.§?!B§.stop();
         }
      }
      
      public function §[!1§() : void
      {
         this.§?!B§.removeEventListener(Event.SOUND_COMPLETE,this.§]!&§);
         this.§?!B§ = null;
      }
      
      public function §;!!§() : void
      {
         if(this.§?!B§)
         {
            this.§?!B§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §`[§() : void
      {
         if(this.§?!B§)
         {
            this.§?!B§.soundTransform = new SoundTransform(this.§78§);
         }
      }
   }
}
