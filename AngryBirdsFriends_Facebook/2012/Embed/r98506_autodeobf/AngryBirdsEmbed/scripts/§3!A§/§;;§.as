package §3!A§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §;;§ extends EventDispatcher
   {
       
      
      private var §%!#§:SoundChannel;
      
      private var §>Q§:String;
      
      private var §,A§:Number;
      
      private var § z§:Boolean;
      
      public function §;;§(param1:SoundChannel, param2:String)
      {
         super();
         this.§%!#§ = param1;
         this.§>Q§ = param2;
         this.§%!#§.addEventListener(Event.SOUND_COMPLETE,this.§4l§);
         this.§,A§ = param1.soundTransform.volume;
         this.§ z§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§,A§ = param1;
         if(!this.§ z§)
         {
            this.§?X§(this.§,A§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§,A§;
      }
      
      public function get id() : String
      {
         return this.§>Q§;
      }
      
      public function get position() : Number
      {
         return this.§%!#§.position;
      }
      
      private function §4l§(param1:Event) : void
      {
         this.§%!#§.removeEventListener(Event.SOUND_COMPLETE,this.§4l§);
         dispatchEvent(param1);
      }
      
      private function §?X§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§%!#§.soundTransform;
         _loc2_.volume = param1;
         this.§%!#§.soundTransform = _loc2_;
      }
      
      public function §^+§() : void
      {
         this.stop();
         this.§4l§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§%!#§)
         {
            this.§%!#§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§%!#§.removeEventListener(Event.SOUND_COMPLETE,this.§4l§);
         this.§%!#§ = null;
      }
      
      public function §>U§() : void
      {
         if(this.§%!#§)
         {
            this.§?X§(0);
            this.§ z§ = true;
         }
      }
      
      public function §+<§() : void
      {
         if(this.§%!#§)
         {
            this.§?X§(this.§,A§);
            this.§ z§ = false;
         }
      }
   }
}
