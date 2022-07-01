package §?!k§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §&p§ extends EventDispatcher
   {
       
      
      private var §@U§:SoundChannel;
      
      private var §52§:String;
      
      private var §@"$§:Number;
      
      private var §1!;§:Boolean;
      
      public function §&p§(param1:SoundChannel, param2:String)
      {
         super();
         this.§@U§ = param1;
         this.§52§ = param2;
         this.§@U§.addEventListener(Event.SOUND_COMPLETE,this.§0M§);
         this.§@"$§ = param1.soundTransform.volume;
         this.§1!;§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§@"$§ = param1;
         if(!this.§1!;§)
         {
            this.§%<§(this.§@"$§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§@"$§;
      }
      
      public function get id() : String
      {
         return this.§52§;
      }
      
      public function get position() : Number
      {
         return this.§@U§.position;
      }
      
      private function §0M§(param1:Event) : void
      {
         this.§@U§.removeEventListener(Event.SOUND_COMPLETE,this.§0M§);
         dispatchEvent(param1);
      }
      
      private function §%<§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§@U§.soundTransform;
         _loc2_.volume = param1;
         this.§@U§.soundTransform = _loc2_;
      }
      
      public function §"!<§() : void
      {
         this.stop();
         this.§0M§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§@U§)
         {
            this.§@U§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§@U§.removeEventListener(Event.SOUND_COMPLETE,this.§0M§);
         this.§@U§ = null;
      }
      
      public function §[!9§() : void
      {
         if(this.§@U§)
         {
            this.§%<§(0);
            this.§1!;§ = true;
         }
      }
      
      public function §>!z§() : void
      {
         if(this.§@U§)
         {
            this.§%<§(this.§@"$§);
            this.§1!;§ = false;
         }
      }
   }
}
