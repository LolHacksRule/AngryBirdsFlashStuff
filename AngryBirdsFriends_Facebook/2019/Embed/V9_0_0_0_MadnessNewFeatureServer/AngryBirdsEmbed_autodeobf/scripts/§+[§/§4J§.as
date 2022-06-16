package §+[§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §4J§ extends EventDispatcher
   {
       
      
      private var §5!A§:SoundChannel;
      
      private var §<H§:String;
      
      private var §&V§:Number;
      
      private var §@!6§:Boolean;
      
      public function §4J§(param1:SoundChannel, param2:String)
      {
         super();
         this.§5!A§ = param1;
         this.§<H§ = param2;
         this.§5!A§.addEventListener(Event.SOUND_COMPLETE,this.§=;§);
         this.§&V§ = param1.soundTransform.volume;
         this.§@!6§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§&V§ = param1;
         if(!this.§@!6§)
         {
            this.§6G§(this.§&V§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§&V§;
      }
      
      public function get id() : String
      {
         return this.§<H§;
      }
      
      public function get position() : Number
      {
         return this.§5!A§.position;
      }
      
      private function §=;§(param1:Event) : void
      {
         this.§5!A§.removeEventListener(Event.SOUND_COMPLETE,this.§=;§);
         dispatchEvent(param1);
      }
      
      private function §6G§(param1:Number) : void
      {
         if(this.§5!A§ == null)
         {
            return;
         }
         var _loc2_:SoundTransform = this.§5!A§.soundTransform;
         if(_loc2_)
         {
            _loc2_.volume = param1;
            this.§5!A§.soundTransform = _loc2_;
         }
      }
      
      public function §7`§() : void
      {
         this.stop();
         this.§=;§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§5!A§)
         {
            this.§5!A§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§5!A§.removeEventListener(Event.SOUND_COMPLETE,this.§=;§);
         this.§5!A§ = null;
      }
      
      public function §8Z§() : void
      {
         if(this.§5!A§)
         {
            this.§6G§(0);
            this.§@!6§ = true;
         }
      }
      
      public function §=!I§() : void
      {
         if(this.§5!A§)
         {
            this.§6G§(this.§&V§);
            this.§@!6§ = false;
         }
      }
   }
}
