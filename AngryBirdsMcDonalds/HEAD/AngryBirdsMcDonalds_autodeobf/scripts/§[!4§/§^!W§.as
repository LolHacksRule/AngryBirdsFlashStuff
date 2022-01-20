package §[!4§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §^!W§ extends EventDispatcher
   {
       
      
      private var §1!I§:SoundChannel;
      
      private var §7^§:String;
      
      private var §&!2§:Number;
      
      private var §>n§:Boolean;
      
      public function §^!W§(param1:SoundChannel, param2:String)
      {
         super();
         this.§1!I§ = param1;
         this.§7^§ = param2;
         this.§1!I§.addEventListener(Event.SOUND_COMPLETE,this.§ !g§);
         this.§&!2§ = param1.soundTransform.volume;
         this.§>n§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§&!2§ = param1;
         if(!this.§>n§)
         {
            this.§!Z§(this.§&!2§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§&!2§;
      }
      
      public function get id() : String
      {
         return this.§7^§;
      }
      
      public function get position() : Number
      {
         return this.§1!I§.position;
      }
      
      private function § !g§(param1:Event) : void
      {
         this.§1!I§.removeEventListener(Event.SOUND_COMPLETE,this.§ !g§);
         dispatchEvent(param1);
      }
      
      private function §!Z§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§1!I§.soundTransform;
         _loc2_.volume = param1;
         this.§1!I§.soundTransform = _loc2_;
      }
      
      public function §^a§() : void
      {
         this.stop();
         this.§ !g§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§1!I§)
         {
            this.§1!I§.stop();
         }
      }
      
      public function §#!_§() : void
      {
         this.stop();
         this.§1!I§.removeEventListener(Event.SOUND_COMPLETE,this.§ !g§);
         this.§1!I§ = null;
      }
      
      public function §2!I§() : void
      {
         if(this.§1!I§)
         {
            this.§!Z§(0);
            this.§>n§ = true;
         }
      }
      
      public function §@8§() : void
      {
         if(this.§1!I§)
         {
            this.§!Z§(this.§&!2§);
            this.§>n§ = false;
         }
      }
   }
}
