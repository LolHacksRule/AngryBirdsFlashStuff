package §#";§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §8V§ extends EventDispatcher
   {
       
      
      private var §3p§:SoundChannel;
      
      private var §&&§:String;
      
      private var §[+§:Number;
      
      private var §7!w§:Boolean;
      
      public function §8V§(param1:SoundChannel, param2:String)
      {
         super();
         this.§3p§ = param1;
         this.§&&§ = param2;
         this.§3p§.addEventListener(Event.SOUND_COMPLETE,this.§,R§);
         this.§[+§ = param1.soundTransform.volume;
         this.§7!w§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§[+§ = param1;
         if(!this.§7!w§)
         {
            this.§`A§(this.§[+§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§[+§;
      }
      
      public function get id() : String
      {
         return this.§&&§;
      }
      
      public function get position() : Number
      {
         return this.§3p§.position;
      }
      
      private function §,R§(param1:Event) : void
      {
         this.§3p§.removeEventListener(Event.SOUND_COMPLETE,this.§,R§);
         dispatchEvent(param1);
      }
      
      private function §`A§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§3p§.soundTransform;
         _loc2_.volume = param1;
         this.§3p§.soundTransform = _loc2_;
      }
      
      public function §"",§() : void
      {
         this.stop();
         this.§,R§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§3p§)
         {
            this.§3p§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§3p§.removeEventListener(Event.SOUND_COMPLETE,this.§,R§);
         this.§3p§ = null;
      }
      
      public function §`§() : void
      {
         if(this.§3p§)
         {
            this.§`A§(0);
            this.§7!w§ = true;
         }
      }
      
      public function §5!t§() : void
      {
         if(this.§3p§)
         {
            this.§`A§(this.§[+§);
            this.§7!w§ = false;
         }
      }
   }
}
