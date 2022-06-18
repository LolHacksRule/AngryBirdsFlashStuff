package §2>§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §4d§ extends EventDispatcher
   {
       
      
      private var §+-§:SoundChannel;
      
      private var §0!F§:String;
      
      private var §4!=§:Number;
      
      private var §+!^§:Boolean;
      
      public function §4d§(param1:SoundChannel, param2:String)
      {
         super();
         this.§+-§ = param1;
         this.§0!F§ = param2;
         this.§+-§.addEventListener(Event.SOUND_COMPLETE,this.§7E§);
         this.§4!=§ = param1.soundTransform.volume;
         this.§+!^§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§4!=§ = param1;
         if(!this.§+!^§)
         {
            this.§3w§(this.§4!=§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§4!=§;
      }
      
      public function get id() : String
      {
         return this.§0!F§;
      }
      
      public function get position() : Number
      {
         return this.§+-§.position;
      }
      
      private function §7E§(param1:Event) : void
      {
         this.§+-§.removeEventListener(Event.SOUND_COMPLETE,this.§7E§);
         dispatchEvent(param1);
      }
      
      private function §3w§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§+-§.soundTransform;
         _loc2_.volume = param1;
         this.§+-§.soundTransform = _loc2_;
      }
      
      public function §'&§() : void
      {
         this.§7E§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§+-§)
         {
            this.§+-§.stop();
         }
      }
      
      public function §>!?§() : void
      {
         this.stop();
         this.§+-§.removeEventListener(Event.SOUND_COMPLETE,this.§7E§);
         this.§+-§ = null;
      }
      
      public function § N§() : void
      {
         if(this.§+-§)
         {
            this.§3w§(0);
            this.§+!^§ = true;
         }
      }
      
      public function §6f§() : void
      {
         if(this.§+-§)
         {
            this.§3w§(this.§4!=§);
            this.§+!^§ = false;
         }
      }
   }
}
