package §8m§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §7!>§ extends EventDispatcher
   {
       
      
      private var §^!h§:SoundChannel;
      
      private var §&N§:String;
      
      private var §3N§:Number;
      
      private var §="X§:Boolean;
      
      public function §7!>§(param1:SoundChannel, param2:String)
      {
         super();
         this.§^!h§ = param1;
         this.§&N§ = param2;
         this.§^!h§.addEventListener(Event.SOUND_COMPLETE,this.§]#§);
         this.§3N§ = param1.soundTransform.volume;
         this.§="X§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§3N§ = param1;
         if(!this.§="X§)
         {
            this.§"!u§(this.§3N§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§3N§;
      }
      
      public function get id() : String
      {
         return this.§&N§;
      }
      
      public function get position() : Number
      {
         return this.§^!h§.position;
      }
      
      private function §]#§(param1:Event) : void
      {
         this.§^!h§.removeEventListener(Event.SOUND_COMPLETE,this.§]#§);
         dispatchEvent(param1);
      }
      
      private function §"!u§(param1:Number) : void
      {
         if(this.§^!h§ == null)
         {
            return;
         }
         var _loc2_:SoundTransform = this.§^!h§.soundTransform;
         if(_loc2_)
         {
            _loc2_.volume = param1;
            this.§^!h§.soundTransform = _loc2_;
         }
      }
      
      public function §7s§() : void
      {
         this.stop();
         this.§]#§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§^!h§)
         {
            this.§^!h§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§^!h§.removeEventListener(Event.SOUND_COMPLETE,this.§]#§);
         this.§^!h§ = null;
      }
      
      public function §["?§() : void
      {
         if(this.§^!h§)
         {
            this.§"!u§(0);
            this.§="X§ = true;
         }
      }
      
      public function §2!!§() : void
      {
         if(this.§^!h§)
         {
            this.§"!u§(this.§3N§);
            this.§="X§ = false;
         }
      }
   }
}
