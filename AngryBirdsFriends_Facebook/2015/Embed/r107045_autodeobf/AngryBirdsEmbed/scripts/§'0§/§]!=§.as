package §'0§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §]!=§ extends EventDispatcher
   {
       
      
      private var §`Y§:SoundChannel;
      
      private var §5!-§:String;
      
      private var §"=§:Number;
      
      private var §8[§:Boolean;
      
      public function §]!=§(param1:SoundChannel, param2:String)
      {
         super();
         this.§`Y§ = param1;
         this.§5!-§ = param2;
         this.§`Y§.addEventListener(Event.SOUND_COMPLETE,this.§?L§);
         this.§"=§ = param1.soundTransform.volume;
         this.§8[§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§"=§ = param1;
         if(!this.§8[§)
         {
            this.§&f§(this.§"=§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§"=§;
      }
      
      public function get id() : String
      {
         return this.§5!-§;
      }
      
      public function get position() : Number
      {
         return this.§`Y§.position;
      }
      
      private function §?L§(param1:Event) : void
      {
         this.§`Y§.removeEventListener(Event.SOUND_COMPLETE,this.§?L§);
         dispatchEvent(param1);
      }
      
      private function §&f§(param1:Number) : void
      {
         if(this.§`Y§ == null)
         {
            return;
         }
         var _loc2_:SoundTransform = this.§`Y§.soundTransform;
         if(_loc2_)
         {
            _loc2_.volume = param1;
            this.§`Y§.soundTransform = _loc2_;
         }
      }
      
      public function §#?§() : void
      {
         this.stop();
         this.§?L§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§`Y§)
         {
            this.§`Y§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§`Y§.removeEventListener(Event.SOUND_COMPLETE,this.§?L§);
         this.§`Y§ = null;
      }
      
      public function §'t§() : void
      {
         if(this.§`Y§)
         {
            this.§&f§(0);
            this.§8[§ = true;
         }
      }
      
      public function §[Z§() : void
      {
         if(this.§`Y§)
         {
            this.§&f§(this.§"=§);
            this.§8[§ = false;
         }
      }
   }
}
