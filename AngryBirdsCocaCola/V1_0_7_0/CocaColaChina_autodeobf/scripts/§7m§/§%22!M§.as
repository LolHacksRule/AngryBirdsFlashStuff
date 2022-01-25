package §7m§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §"!M§
   {
       
      
      private var §%'§:SoundChannel;
      
      private var §?!B§:Function;
      
      private var §2`§:Function;
      
      private var §78§:Number;
      
      public function §"!M§(param1:SoundChannel, param2:Function = null, param3:Function = null)
      {
         super();
         this.§%'§ = param1;
         this.§?!B§ = param2;
         this.§2`§ = param3;
         this.§%'§.addEventListener(Event.SOUND_COMPLETE,this.§]!&§);
         this.§78§ = param1.soundTransform.volume;
      }
      
      private function §]!&§(param1:Event) : void
      {
         this.§%'§.removeEventListener(Event.SOUND_COMPLETE,this.§]!&§);
         if(this.§2`§ != null)
         {
            this.§2`§.call();
            this.§2`§ = null;
         }
         if(this.§?!B§ != null)
         {
            this.§?!B§.call(null,this);
            this.§?!B§ = null;
         }
      }
      
      public function §3!S§() : void
      {
         this.§]!&§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§%'§)
         {
            this.§%'§.stop();
         }
      }
      
      public function §[!1§() : void
      {
         this.§%'§.removeEventListener(Event.SOUND_COMPLETE,this.§]!&§);
         this.§%'§ = null;
      }
      
      public function §;!!§() : void
      {
         if(this.§%'§)
         {
            this.§%'§.soundTransform = new SoundTransform(0);
         }
      }
      
      public function §`[§() : void
      {
         if(this.§%'§)
         {
            this.§%'§.soundTransform = new SoundTransform(this.§78§);
         }
      }
   }
}
