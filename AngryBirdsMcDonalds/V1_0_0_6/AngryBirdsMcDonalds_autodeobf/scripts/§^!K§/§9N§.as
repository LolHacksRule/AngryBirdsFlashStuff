package §^!K§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §9N§ extends EventDispatcher
   {
       
      
      private var §@o§:SoundChannel;
      
      private var §4R§:String;
      
      private var §!8§:Number;
      
      private var §<X§:Boolean;
      
      public function §9N§(param1:SoundChannel, param2:String)
      {
         super();
         this.§@o§ = param1;
         this.§4R§ = param2;
         this.§@o§.addEventListener(Event.SOUND_COMPLETE,this.§,W§);
         this.§!8§ = param1.soundTransform.volume;
         this.§<X§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§!8§ = param1;
         if(!this.§<X§)
         {
            this.§3]§(this.§!8§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§!8§;
      }
      
      public function get id() : String
      {
         return this.§4R§;
      }
      
      public function get position() : Number
      {
         return this.§@o§.position;
      }
      
      private function §,W§(param1:Event) : void
      {
         this.§@o§.removeEventListener(Event.SOUND_COMPLETE,this.§,W§);
         dispatchEvent(param1);
      }
      
      private function §3]§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§@o§.soundTransform;
         _loc2_.volume = param1;
         this.§@o§.soundTransform = _loc2_;
      }
      
      public function §%!E§() : void
      {
         this.stop();
         this.§,W§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§@o§)
         {
            this.§@o§.stop();
         }
      }
      
      public function §]!>§() : void
      {
         this.stop();
         this.§@o§.removeEventListener(Event.SOUND_COMPLETE,this.§,W§);
         this.§@o§ = null;
      }
      
      public function §8!P§() : void
      {
         if(this.§@o§)
         {
            this.§3]§(0);
            this.§<X§ = true;
         }
      }
      
      public function §@B§() : void
      {
         if(this.§@o§)
         {
            this.§3]§(this.§!8§);
            this.§<X§ = false;
         }
      }
   }
}
