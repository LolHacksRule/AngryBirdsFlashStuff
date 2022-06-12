package §6`§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §4!m§ extends EventDispatcher
   {
       
      
      private var §>c§:SoundChannel;
      
      private var §#`§:String;
      
      private var §7!j§:Number;
      
      private var §2_§:Boolean;
      
      public function §4!m§(param1:SoundChannel, param2:String)
      {
         super();
         this.§>c§ = param1;
         this.§#`§ = param2;
         this.§>c§.addEventListener(Event.SOUND_COMPLETE,this.§&q§);
         this.§7!j§ = param1.soundTransform.volume;
         this.§2_§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§7!j§ = param1;
         if(!this.§2_§)
         {
            this.§[!0§(this.§7!j§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§7!j§;
      }
      
      public function get id() : String
      {
         return this.§#`§;
      }
      
      public function get position() : Number
      {
         return this.§>c§.position;
      }
      
      private function §&q§(param1:Event) : void
      {
         this.§>c§.removeEventListener(Event.SOUND_COMPLETE,this.§&q§);
         dispatchEvent(param1);
      }
      
      private function §[!0§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§>c§.soundTransform;
         _loc2_.volume = param1;
         this.§>c§.soundTransform = _loc2_;
      }
      
      public function §5!Q§() : void
      {
         this.stop();
         this.§&q§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§>c§)
         {
            this.§>c§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§>c§.removeEventListener(Event.SOUND_COMPLETE,this.§&q§);
         this.§>c§ = null;
      }
      
      public function §#!o§() : void
      {
         if(this.§>c§)
         {
            this.§[!0§(0);
            this.§2_§ = true;
         }
      }
      
      public function § §() : void
      {
         if(this.§>c§)
         {
            this.§[!0§(this.§7!j§);
            this.§2_§ = false;
         }
      }
   }
}
