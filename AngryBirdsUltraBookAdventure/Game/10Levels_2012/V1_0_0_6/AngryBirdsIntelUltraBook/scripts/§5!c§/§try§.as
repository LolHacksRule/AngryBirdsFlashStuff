package §5!c§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §try§ extends EventDispatcher
   {
       
      
      private var §[o§:SoundChannel;
      
      private var §@H§:String;
      
      private var §7m§:Number;
      
      private var §6!B§:Boolean;
      
      public function §try§(param1:SoundChannel, param2:String)
      {
         super();
         this.§[o§ = param1;
         this.§@H§ = param2;
         this.§[o§.addEventListener(Event.SOUND_COMPLETE,this.§,,§);
         this.§7m§ = param1.soundTransform.volume;
         this.§6!B§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§7m§ = param1;
         if(!this.§6!B§)
         {
            this.§]9§(this.§7m§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§7m§;
      }
      
      public function get id() : String
      {
         return this.§@H§;
      }
      
      public function get position() : Number
      {
         return this.§[o§.position;
      }
      
      private function §,,§(param1:Event) : void
      {
         this.§[o§.removeEventListener(Event.SOUND_COMPLETE,this.§,,§);
         dispatchEvent(param1);
      }
      
      private function §]9§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§[o§.soundTransform;
         _loc2_.volume = param1;
         this.§[o§.soundTransform = _loc2_;
      }
      
      public function §#!e§() : void
      {
         this.§,,§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§[o§)
         {
            this.§[o§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§[o§.removeEventListener(Event.SOUND_COMPLETE,this.§,,§);
         this.§[o§ = null;
      }
      
      public function §`d§() : void
      {
         if(this.§[o§)
         {
            this.§]9§(0);
            this.§6!B§ = true;
         }
      }
      
      public function §5!'§() : void
      {
         if(this.§[o§)
         {
            this.§]9§(this.§7m§);
            this.§6!B§ = false;
         }
      }
   }
}
