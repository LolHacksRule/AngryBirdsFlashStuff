package §-!n§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §7v§ extends EventDispatcher
   {
       
      
      private var §;!-§:SoundChannel;
      
      private var §"E§:String;
      
      private var §#!u§:Number;
      
      private var §]E§:Boolean;
      
      public function §7v§(param1:SoundChannel, param2:String)
      {
         super();
         this.§;!-§ = param1;
         this.§"E§ = param2;
         this.§;!-§.addEventListener(Event.SOUND_COMPLETE,this.§8!r§);
         this.§#!u§ = param1.soundTransform.volume;
         this.§]E§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§#!u§ = param1;
         if(!this.§]E§)
         {
            this.§4!%§(this.§#!u§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§#!u§;
      }
      
      public function get id() : String
      {
         return this.§"E§;
      }
      
      public function get position() : Number
      {
         return this.§;!-§.position;
      }
      
      private function §8!r§(param1:Event) : void
      {
         this.§;!-§.removeEventListener(Event.SOUND_COMPLETE,this.§8!r§);
         dispatchEvent(param1);
      }
      
      private function §4!%§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§;!-§.soundTransform;
         _loc2_.volume = param1;
         this.§;!-§.soundTransform = _loc2_;
      }
      
      public function § !5§() : void
      {
         this.stop();
         this.§8!r§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§;!-§)
         {
            this.§;!-§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§;!-§.removeEventListener(Event.SOUND_COMPLETE,this.§8!r§);
         this.§;!-§ = null;
      }
      
      public function §7!t§() : void
      {
         if(this.§;!-§)
         {
            this.§4!%§(0);
            this.§]E§ = true;
         }
      }
      
      public function §6!%§() : void
      {
         if(this.§;!-§)
         {
            this.§4!%§(this.§#!u§);
            this.§]E§ = false;
         }
      }
   }
}
