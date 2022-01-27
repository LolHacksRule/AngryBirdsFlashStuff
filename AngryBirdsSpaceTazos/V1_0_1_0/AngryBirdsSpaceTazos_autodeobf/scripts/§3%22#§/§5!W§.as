package §3"#§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §5!W§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §4!M§:int;
      
      public var §8!W§:Number = 1;
      
      private var §,b§:Vector.<§3![§>;
      
      private var §'!l§:Number;
      
      public function §5!W§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§4!M§ = param2;
         this.§8!W§ = param3;
         this.§'!l§ = this.§8!W§;
         this.§,b§ = new Vector.<§3![§>();
      }
      
      public function §`K§() : Boolean
      {
         var _loc2_:§3![§ = null;
         if(this.§,b§.length < this.§4!M§)
         {
            return true;
         }
         var _loc1_:int = this.§,b§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,b§[_loc1_];
            if(_loc2_.§3!=§ <= 0)
            {
               _loc2_.§,v§();
            }
            _loc1_--;
         }
         return this.§,b§.length < this.§4!M§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §3![§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§'!l§;
         }
         else
         {
            volume *= this.§'!l§;
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
         var sndEffect:§3![§ = new §3![§(sndChannel,sndID,snd.length * (loop + 1));
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§^k§);
         if(this.§8!W§ == 0)
         {
            sndEffect.§&`§();
         }
         this.§,b§.push(sndEffect);
         return sndEffect;
      }
      
      private function §^k§(param1:Event) : void
      {
         var _loc3_:Vector.<§3![§> = null;
         var _loc4_:§3![§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§3![§ = §3![§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§^k§);
         if(this.§,b§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§,b§.splice(this.§,b§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §9"%§() : Boolean
      {
         return this.§,b§.length > 0;
      }
      
      public function §'N§() : void
      {
         var _loc1_:§3![§ = null;
         while(this.§,b§.length > 0)
         {
            _loc1_ = this.§,b§[0];
            _loc1_.§,v§();
         }
      }
      
      public function §%!?§() : void
      {
         var _loc1_:§3![§ = null;
         this.§8!W§ = 0;
         for each(_loc1_ in this.§,b§)
         {
            _loc1_.§&`§();
         }
      }
      
      public function §`!d§() : void
      {
         var _loc1_:§3![§ = null;
         this.§8!W§ = this.§'!l§;
         for each(_loc1_ in this.§,b§)
         {
            _loc1_.§%I§();
         }
      }
      
      public function §<" §(param1:String) : §3![§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§,b§.length)
         {
            if(§3![§(this.§,b§[_loc2_]).id == param1)
            {
               return §3![§(this.§,b§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
