package §7!7§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class § !$§ extends EventDispatcher
   {
       
      
      private var §6=§:SoundChannel;
      
      private var §%`§:String;
      
      private var §&!%§:Number;
      
      private var §+7§:Boolean;
      
      public function § !$§(param1:SoundChannel, param2:String)
      {
         super();
         this.§6=§ = param1;
         this.§%`§ = param2;
         this.§6=§.addEventListener(Event.SOUND_COMPLETE,this.§]!$§);
         this.§&!%§ = param1.soundTransform.volume;
         this.§+7§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§&!%§ = param1;
         if(!this.§+7§)
         {
            this.§>"§(this.§&!%§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§&!%§;
      }
      
      public function get id() : String
      {
         return this.§%`§;
      }
      
      public function get position() : Number
      {
         return this.§6=§.position;
      }
      
      private function §]!$§(param1:Event) : void
      {
         this.§6=§.removeEventListener(Event.SOUND_COMPLETE,this.§]!$§);
         dispatchEvent(param1);
      }
      
      private function §>"§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§6=§.soundTransform;
         _loc2_.volume = param1;
         this.§6=§.soundTransform = _loc2_;
      }
      
      public function §0F§() : void
      {
         this.stop();
         this.§]!$§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§6=§)
         {
            this.§6=§.stop();
         }
      }
      
      public function §2!G§() : void
      {
         this.stop();
         this.§6=§.removeEventListener(Event.SOUND_COMPLETE,this.§]!$§);
         this.§6=§ = null;
      }
      
      public function §>r§() : void
      {
         if(this.§6=§)
         {
            this.§>"§(0);
            this.§+7§ = true;
         }
      }
      
      public function §+!N§() : void
      {
         if(this.§6=§)
         {
            this.§>"§(this.§&!%§);
            this.§+7§ = false;
         }
      }
   }
}
