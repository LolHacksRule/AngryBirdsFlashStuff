package §[N§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §>f§ extends EventDispatcher
   {
       
      
      private var §=z§:SoundChannel;
      
      private var §?!7§:String;
      
      private var §1Q§:Number;
      
      private var §`$§:Boolean;
      
      public function §>f§(param1:SoundChannel, param2:String)
      {
         super();
         this.§=z§ = param1;
         this.§?!7§ = param2;
         this.§=z§.addEventListener(Event.SOUND_COMPLETE,this.§3!4§);
         this.§1Q§ = param1.soundTransform.volume;
         this.§`$§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§1Q§ = param1;
         if(!this.§`$§)
         {
            this.§]z§(this.§1Q§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§1Q§;
      }
      
      public function get id() : String
      {
         return this.§?!7§;
      }
      
      public function get position() : Number
      {
         return this.§=z§.position;
      }
      
      private function §3!4§(param1:Event) : void
      {
         this.§=z§.removeEventListener(Event.SOUND_COMPLETE,this.§3!4§);
         dispatchEvent(param1);
      }
      
      private function §]z§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§=z§.soundTransform;
         _loc2_.volume = param1;
         this.§=z§.soundTransform = _loc2_;
      }
      
      public function §2!8§() : void
      {
         this.stop();
         this.§3!4§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§=z§)
         {
            this.§=z§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§=z§.removeEventListener(Event.SOUND_COMPLETE,this.§3!4§);
         this.§=z§ = null;
      }
      
      public function §2t§() : void
      {
         if(this.§=z§)
         {
            this.§]z§(0);
            this.§`$§ = true;
         }
      }
      
      public function §#!C§() : void
      {
         if(this.§=z§)
         {
            this.§]z§(this.§1Q§);
            this.§`$§ = false;
         }
      }
   }
}
