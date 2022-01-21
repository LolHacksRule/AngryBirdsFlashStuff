package §-!#§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §;'§ extends EventDispatcher
   {
       
      
      private var §^!I§:SoundChannel;
      
      private var §&!3§:String;
      
      private var §<8§:Number;
      
      private var §81§:Boolean;
      
      public function §;'§(param1:SoundChannel, param2:String)
      {
         super();
         this.§^!I§ = param1;
         this.§&!3§ = param2;
         this.§^!I§.addEventListener(Event.SOUND_COMPLETE,this.§<!V§);
         this.§<8§ = param1.soundTransform.volume;
         this.§81§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§<8§ = param1;
         if(!this.§81§)
         {
            this.§2!F§(this.§<8§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§<8§;
      }
      
      public function get id() : String
      {
         return this.§&!3§;
      }
      
      public function get position() : Number
      {
         return this.§^!I§.position;
      }
      
      private function §<!V§(param1:Event) : void
      {
         this.§^!I§.removeEventListener(Event.SOUND_COMPLETE,this.§<!V§);
         dispatchEvent(param1);
      }
      
      private function §2!F§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§^!I§.soundTransform;
         _loc2_.volume = param1;
         this.§^!I§.soundTransform = _loc2_;
      }
      
      public function §-!P§() : void
      {
         this.stop();
         this.§<!V§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§^!I§)
         {
            this.§^!I§.stop();
         }
      }
      
      public function §3G§() : void
      {
         this.stop();
         this.§^!I§.removeEventListener(Event.SOUND_COMPLETE,this.§<!V§);
         this.§^!I§ = null;
      }
      
      public function §7!n§() : void
      {
         if(this.§^!I§)
         {
            this.§2!F§(0);
            this.§81§ = true;
         }
      }
      
      public function §!!p§() : void
      {
         if(this.§^!I§)
         {
            this.§2!F§(this.§<8§);
            this.§81§ = false;
         }
      }
   }
}
