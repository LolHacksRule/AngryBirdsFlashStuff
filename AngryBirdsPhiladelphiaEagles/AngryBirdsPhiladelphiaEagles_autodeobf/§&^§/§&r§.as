package §&^§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §&r§ extends EventDispatcher
   {
       
      
      private var §-=§:SoundChannel;
      
      private var §[!&§:String;
      
      private var §;!6§:Number;
      
      private var §-r§:Boolean;
      
      public function §&r§(param1:SoundChannel, param2:String)
      {
         super();
         this.§-=§ = param1;
         this.§[!&§ = param2;
         this.§-=§.addEventListener(Event.SOUND_COMPLETE,this.§32§);
         this.§;!6§ = param1.soundTransform.volume;
         this.§-r§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§;!6§ = param1;
         if(!this.§-r§)
         {
            this.§=b§(this.§;!6§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§;!6§;
      }
      
      public function get id() : String
      {
         return this.§[!&§;
      }
      
      public function get position() : Number
      {
         return this.§-=§.position;
      }
      
      private function §32§(param1:Event) : void
      {
         this.§-=§.removeEventListener(Event.SOUND_COMPLETE,this.§32§);
         dispatchEvent(param1);
      }
      
      private function §=b§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§-=§.soundTransform;
         _loc2_.volume = param1;
         this.§-=§.soundTransform = _loc2_;
      }
      
      public function §-u§() : void
      {
         this.stop();
         this.§32§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§-=§)
         {
            this.§-=§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§-=§.removeEventListener(Event.SOUND_COMPLETE,this.§32§);
         this.§-=§ = null;
      }
      
      public function §<3§() : void
      {
         if(this.§-=§)
         {
            this.§=b§(0);
            this.§-r§ = true;
         }
      }
      
      public function §<!3§() : void
      {
         if(this.§-=§)
         {
            this.§=b§(this.§;!6§);
            this.§-r§ = false;
         }
      }
   }
}
