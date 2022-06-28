package §#X§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §=J§ extends EventDispatcher
   {
       
      
      private var §]!'§:SoundChannel;
      
      private var §3!8§:String;
      
      private var §"!4§:Number;
      
      private var §,!B§:Boolean;
      
      public function §=J§(param1:SoundChannel, param2:String)
      {
         super();
         this.§]!'§ = param1;
         this.§3!8§ = param2;
         this.§]!'§.addEventListener(Event.SOUND_COMPLETE,this.§<+§);
         this.§"!4§ = param1.soundTransform.volume;
         this.§,!B§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§"!4§ = param1;
         if(!this.§,!B§)
         {
            this.§'M§(this.§"!4§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§"!4§;
      }
      
      public function get id() : String
      {
         return this.§3!8§;
      }
      
      public function get position() : Number
      {
         return this.§]!'§.position;
      }
      
      private function §<+§(param1:Event) : void
      {
         this.§]!'§.removeEventListener(Event.SOUND_COMPLETE,this.§<+§);
         dispatchEvent(param1);
      }
      
      private function §'M§(param1:Number) : void
      {
         if(this.§]!'§ == null)
         {
            return;
         }
         var _loc2_:SoundTransform = this.§]!'§.soundTransform;
         if(_loc2_)
         {
            _loc2_.volume = param1;
            this.§]!'§.soundTransform = _loc2_;
         }
      }
      
      public function §3'§() : void
      {
         this.stop();
         this.§<+§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§]!'§)
         {
            this.§]!'§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§]!'§.removeEventListener(Event.SOUND_COMPLETE,this.§<+§);
         this.§]!'§ = null;
      }
      
      public function §!h§() : void
      {
         if(this.§]!'§)
         {
            this.§'M§(0);
            this.§,!B§ = true;
         }
      }
      
      public function §1J§() : void
      {
         if(this.§]!'§)
         {
            this.§'M§(this.§"!4§);
            this.§,!B§ = false;
         }
      }
   }
}
