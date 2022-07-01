package §8q§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §]$§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §`J§:int;
      
      public var §0e§:Number = 1;
      
      private var §8"#§:Vector.<§+m§>;
      
      private var §%!C§:Number;
      
      public function §]$§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§`J§ = param2;
         this.§0e§ = param3;
         this.§%!C§ = this.§0e§;
         this.§8"#§ = new Vector.<§+m§>();
      }
      
      public function §0!g§() : Boolean
      {
         var _loc2_:§+m§ = null;
         if(this.§8"#§.length < this.§`J§)
         {
            return true;
         }
         var _loc1_:int = this.§8"#§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§8"#§[_loc1_];
            if(_loc2_.§9§ <= 0)
            {
               _loc2_.§7!J§();
            }
            _loc1_--;
         }
         return this.§8"#§.length < this.§`J§;
      }
      
      public function §^!J§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §+m§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§%!C§;
         }
         else
         {
            volume *= this.§%!C§;
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
         var sndEffect:§+m§ = new §+m§(sndChannel,sndID,snd.length * (loop + 1));
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§=h§);
         if(this.§0e§ == 0)
         {
            sndEffect.§?l§();
         }
         this.§8"#§.push(sndEffect);
         return sndEffect;
      }
      
      private function §=h§(param1:Event) : void
      {
         var _loc3_:Vector.<§+m§> = null;
         var _loc4_:§+m§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§+m§ = §+m§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§=h§);
         if(this.§8"#§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§8"#§.splice(this.§8"#§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §'_§() : Boolean
      {
         return this.§8"#§.length > 0;
      }
      
      public function §]!u§() : void
      {
         var _loc1_:§+m§ = null;
         while(this.§8"#§.length > 0)
         {
            _loc1_ = this.§8"#§[0];
            _loc1_.§7!J§();
         }
      }
      
      public function §+W§() : void
      {
         var _loc1_:§+m§ = null;
         this.§0e§ = 0;
         for each(_loc1_ in this.§8"#§)
         {
            _loc1_.§?l§();
         }
      }
      
      public function §;b§() : void
      {
         var _loc1_:§+m§ = null;
         this.§0e§ = this.§%!C§;
         for each(_loc1_ in this.§8"#§)
         {
            _loc1_.§"!'§();
         }
      }
      
      public function §?r§(param1:String) : §+m§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§8"#§.length)
         {
            if(§+m§(this.§8"#§[_loc2_]).id == param1)
            {
               return §+m§(this.§8"#§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
