package §,"v§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §,w§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §4"A§:int;
      
      public var §&"7§:Number = 1;
      
      private var §]"`§:Vector.<§^!2§>;
      
      private var §="v§:Number;
      
      public function §,w§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§4"A§ = param2;
         this.§&"7§ = param3;
         this.§="v§ = this.§&"7§;
         this.§]"`§ = new Vector.<§^!2§>();
      }
      
      public function §"-§() : Boolean
      {
         var _loc2_:§^!2§ = null;
         if(this.§]"`§.length < this.§4"A§)
         {
            return true;
         }
         var _loc1_:int = this.§]"`§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]"`§[_loc1_];
            if(_loc2_.§!!U§ <= 0)
            {
               _loc2_.§-'§();
            }
            _loc1_--;
         }
         return this.§]"`§.length < this.§4"A§;
      }
      
      public function §=Y§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §^!2§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§="v§;
         }
         else
         {
            volume *= this.§="v§;
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
         var sndEffect:§^!2§ = new §^!2§(sndChannel,sndID,snd.length * (loop + 1));
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§?"+§);
         if(this.§&"7§ == 0)
         {
            sndEffect.§8!C§();
         }
         this.§]"`§.push(sndEffect);
         return sndEffect;
      }
      
      private function §?"+§(param1:Event) : void
      {
         var _loc3_:Vector.<§^!2§> = null;
         var _loc4_:§^!2§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§^!2§ = §^!2§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§?"+§);
         if(this.§]"`§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§]"`§.splice(this.§]"`§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §^"h§() : Boolean
      {
         return this.§]"`§.length > 0;
      }
      
      public function §+A§() : void
      {
         var _loc1_:§^!2§ = null;
         while(this.§]"`§.length > 0)
         {
            _loc1_ = this.§]"`§[0];
            _loc1_.§-'§();
         }
      }
      
      public function §^!I§() : void
      {
         var _loc1_:§^!2§ = null;
         this.§&"7§ = 0;
         for each(_loc1_ in this.§]"`§)
         {
            _loc1_.§8!C§();
         }
      }
      
      public function §'"O§() : void
      {
         var _loc1_:§^!2§ = null;
         this.§&"7§ = this.§="v§;
         for each(_loc1_ in this.§]"`§)
         {
            _loc1_.§7$§();
         }
      }
      
      public function §9!d§(param1:String) : §^!2§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§]"`§.length)
         {
            if(§^!2§(this.§]"`§[_loc2_]).id == param1)
            {
               return §^!2§(this.§]"`§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
