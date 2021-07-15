package §1T§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §3!6§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §;?§:int;
      
      public var §'!7§:Number = 1;
      
      private var §^T§:Vector.<§8!Q§>;
      
      private var §`k§:Number;
      
      public function §3!6§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§;?§ = param2;
         this.§'!7§ = param3;
         this.§`k§ = this.§'!7§;
         this.§^T§ = new Vector.<§8!Q§>();
      }
      
      public function §^n§() : Boolean
      {
         var _loc2_:§8!Q§ = null;
         if(this.§^T§.length < this.§;?§)
         {
            return true;
         }
         var _loc1_:int = this.§^T§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§^T§[_loc1_];
            if(_loc2_.§1!n§ <= 0)
            {
               _loc2_.§>!C§();
            }
            _loc1_--;
         }
         return this.§^T§.length < this.§;?§;
      }
      
      public function §3!f§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §8!Q§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§`k§;
         }
         else
         {
            volume *= this.§`k§;
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
         var sndEffect:§8!Q§ = new §8!Q§(sndChannel,sndID,snd.length * (loop + 1));
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§9" §);
         if(this.§'!7§ == 0)
         {
            sndEffect.§;Y§();
         }
         this.§^T§.push(sndEffect);
         return sndEffect;
      }
      
      private function §9" §(param1:Event) : void
      {
         var _loc3_:Vector.<§8!Q§> = null;
         var _loc4_:§8!Q§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§8!Q§ = §8!Q§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§9" §);
         if(this.§^T§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§^T§.splice(this.§^T§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §,!V§() : Boolean
      {
         return this.§^T§.length > 0;
      }
      
      public function §&j§() : void
      {
         var _loc1_:§8!Q§ = null;
         while(this.§^T§.length > 0)
         {
            _loc1_ = this.§^T§[0];
            _loc1_.§>!C§();
         }
      }
      
      public function §>@§() : void
      {
         var _loc1_:§8!Q§ = null;
         this.§'!7§ = 0;
         for each(_loc1_ in this.§^T§)
         {
            _loc1_.§;Y§();
         }
      }
      
      public function §`!C§() : void
      {
         var _loc1_:§8!Q§ = null;
         this.§'!7§ = this.§`k§;
         for each(_loc1_ in this.§^T§)
         {
            _loc1_.§>!K§();
         }
      }
      
      public function §6Y§(param1:String) : §8!Q§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§^T§.length)
         {
            if(§8!Q§(this.§^T§[_loc2_]).id == param1)
            {
               return §8!Q§(this.§^T§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
