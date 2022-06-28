package §#h§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §@b§ extends EventDispatcher
   {
       
      
      private var §8r§:SoundChannel;
      
      private var §]v§:String;
      
      private var §&x§:Number;
      
      private var §+S§:Boolean;
      
      public function §@b§(param1:SoundChannel, param2:String)
      {
         super();
         this.§8r§ = param1;
         this.§]v§ = param2;
         this.§8r§.addEventListener(Event.SOUND_COMPLETE,this.§,F§);
         this.§&x§ = param1.soundTransform.volume;
         this.§+S§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§&x§ = param1;
         if(!this.§+S§)
         {
            this.§-6§(this.§&x§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§&x§;
      }
      
      public function get id() : String
      {
         return this.§]v§;
      }
      
      public function get position() : Number
      {
         return this.§8r§.position;
      }
      
      private function §,F§(param1:Event) : void
      {
         this.§8r§.removeEventListener(Event.SOUND_COMPLETE,this.§,F§);
         dispatchEvent(param1);
      }
      
      private function §-6§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§8r§.soundTransform;
         _loc2_.volume = param1;
         this.§8r§.soundTransform = _loc2_;
      }
      
      public function §`C§() : void
      {
         this.§,F§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§8r§)
         {
            this.§8r§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§8r§.removeEventListener(Event.SOUND_COMPLETE,this.§,F§);
         this.§8r§ = null;
      }
      
      public function §5!H§() : void
      {
         if(this.§8r§)
         {
            this.§-6§(0);
            this.§+S§ = true;
         }
      }
      
      public function §6c§() : void
      {
         if(this.§8r§)
         {
            this.§-6§(this.§&x§);
            this.§+S§ = false;
         }
      }
   }
}
