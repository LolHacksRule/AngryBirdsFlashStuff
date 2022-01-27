package §<!4§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §;<§ extends EventDispatcher
   {
       
      
      private var §8!P§:SoundChannel;
      
      private var §,j§:String;
      
      private var §-`§:Number;
      
      private var §?K§:Boolean;
      
      public function §;<§(param1:SoundChannel, param2:String)
      {
         super();
         this.§8!P§ = param1;
         this.§,j§ = param2;
         this.§8!P§.addEventListener(Event.SOUND_COMPLETE,this.§1Z§);
         this.§-`§ = param1.soundTransform.volume;
         this.§?K§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§-`§ = param1;
         if(!this.§?K§)
         {
            this.§&5§(this.§-`§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§-`§;
      }
      
      public function get id() : String
      {
         return this.§,j§;
      }
      
      public function get position() : Number
      {
         return this.§8!P§.position;
      }
      
      private function §1Z§(param1:Event) : void
      {
         this.§8!P§.removeEventListener(Event.SOUND_COMPLETE,this.§1Z§);
         dispatchEvent(param1);
      }
      
      private function §&5§(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§8!P§.soundTransform;
         _loc2_.volume = param1;
         this.§8!P§.soundTransform = _loc2_;
      }
      
      public function §4!'§() : void
      {
         this.stop();
         this.§1Z§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§8!P§)
         {
            this.§8!P§.stop();
         }
      }
      
      public function destroy() : void
      {
         this.stop();
         this.§8!P§.removeEventListener(Event.SOUND_COMPLETE,this.§1Z§);
         this.§8!P§ = null;
      }
      
      public function §0q§() : void
      {
         if(this.§8!P§)
         {
            this.§&5§(0);
            this.§?K§ = true;
         }
      }
      
      public function §#5§() : void
      {
         if(this.§8!P§)
         {
            this.§&5§(this.§-`§);
            this.§?K§ = false;
         }
      }
   }
}
