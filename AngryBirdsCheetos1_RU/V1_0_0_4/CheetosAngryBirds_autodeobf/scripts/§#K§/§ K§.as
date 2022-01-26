package §#K§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class § K§ extends EventDispatcher
   {
       
      
      private var §'#§:SoundChannel;
      
      private var §#!J§:String;
      
      private var §4T§:Number;
      
      private var §,`§:Boolean;
      
      public function § K§(param1:SoundChannel, param2:String)
      {
         super();
         this.§'#§ = param1;
         this.§#!J§ = param2;
         this.§'#§.addEventListener(Event.SOUND_COMPLETE,this.§+!K§);
         this.§4T§ = param1.soundTransform.volume;
         this.§,`§ = false;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§4T§ = param1;
         if(!this.§,`§)
         {
            this.§use §(this.§4T§);
         }
      }
      
      public function get volume() : Number
      {
         return this.§4T§;
      }
      
      public function get id() : String
      {
         return this.§#!J§;
      }
      
      public function get position() : Number
      {
         return this.§'#§.position;
      }
      
      private function §+!K§(param1:Event) : void
      {
         this.§'#§.removeEventListener(Event.SOUND_COMPLETE,this.§+!K§);
         dispatchEvent(param1);
      }
      
      private function §use §(param1:Number) : void
      {
         var _loc2_:SoundTransform = this.§'#§.soundTransform;
         _loc2_.volume = param1;
         this.§'#§.soundTransform = _loc2_;
      }
      
      public function §!!W§() : void
      {
         this.§+!K§(new Event(Event.SOUND_COMPLETE));
      }
      
      public function stop() : void
      {
         if(this.§'#§)
         {
            this.§'#§.stop();
         }
      }
      
      public function §+y§() : void
      {
         this.stop();
         this.§'#§.removeEventListener(Event.SOUND_COMPLETE,this.§+!K§);
         this.§'#§ = null;
      }
      
      public function §5!G§() : void
      {
         if(this.§'#§)
         {
            this.§use §(0);
            this.§,`§ = true;
         }
      }
      
      public function §]!B§() : void
      {
         if(this.§'#§)
         {
            this.§use §(this.§4T§);
            this.§,`§ = false;
         }
      }
   }
}
