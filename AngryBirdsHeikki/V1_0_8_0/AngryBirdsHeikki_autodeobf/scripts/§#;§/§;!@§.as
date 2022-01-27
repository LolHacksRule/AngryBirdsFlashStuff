package §#;§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §;!@§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §5!'§:int;
      
      public var §-r§:Number = 1;
      
      private var §5E§:Vector.<§?!,§>;
      
      private var §04§:Number;
      
      public function §;!@§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§5!'§ = param2;
         this.§-r§ = param3;
         this.§04§ = this.§-r§;
         this.§5E§ = new Vector.<§?!,§>();
      }
      
      public function § T§() : Boolean
      {
         return this.§5E§.length < this.§5!'§;
      }
      
      public function §;!`§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §?!,§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§04§;
         }
         var soundTransform:SoundTransform = new SoundTransform(volume);
         var sndChannel:SoundChannel = null;
         try
         {
            sndChannel = snd.play(startTime,loop,soundTransform);
         }
         catch(e:Error)
         {
            dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message,e.errorID));
            sndChannel = null;
         }
         if(sndChannel == null)
         {
            return null;
         }
         var sndEffect:§?!,§ = new §?!,§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§-!7§);
         if(this.§-r§ == 0)
         {
            sndEffect.§9!N§();
         }
         this.§5E§.push(sndEffect);
         return sndEffect;
      }
      
      private function §-!7§(param1:Event) : void
      {
         var _loc3_:Vector.<§?!,§> = null;
         var _loc4_:§?!,§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§?!,§ = §?!,§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§-!7§);
         if(this.§5E§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§5E§.splice(this.§5E§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§2!K§();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §6!W§() : Boolean
      {
         return this.§5E§.length > 0;
      }
      
      public function §<!_§() : void
      {
         var _loc1_:§?!,§ = null;
         while(this.§5E§.length > 0)
         {
            _loc1_ = this.§5E§[0];
            _loc1_.stop();
            _loc1_.§ set§();
         }
      }
      
      public function §9E§() : void
      {
         var _loc1_:§?!,§ = null;
         this.§-r§ = 0;
         for each(_loc1_ in this.§5E§)
         {
            _loc1_.§9!N§();
         }
      }
      
      public function §8U§() : void
      {
         var _loc1_:§?!,§ = null;
         this.§-r§ = this.§04§;
         for each(_loc1_ in this.§5E§)
         {
            _loc1_.§&j§();
         }
      }
      
      public function §^#§(param1:String) : §?!,§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§5E§.length)
         {
            if(§?!,§(this.§5E§[_loc2_]).id == param1)
            {
               return §?!,§(this.§5E§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
