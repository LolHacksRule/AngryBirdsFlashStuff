package §9![§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §'r§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §;!&§:int;
      
      public var §2l§:Number = 1;
      
      private var §^"§:Vector.<§4Y§>;
      
      private var §2!Y§:Number;
      
      public function §'r§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§;!&§ = param2;
         this.§2l§ = param3;
         this.§2!Y§ = this.§2l§;
         this.§^"§ = new Vector.<§4Y§>();
      }
      
      public function §4V§() : Boolean
      {
         var _loc2_:§4Y§ = null;
         if(this.§^"§.length < this.§;!&§)
         {
            return true;
         }
         var _loc1_:int = this.§^"§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§^"§[_loc1_];
            if(_loc2_.§`x§ <= 0)
            {
               _loc2_.§`"'§();
            }
            _loc1_--;
         }
         return this.§^"§.length < this.§;!&§;
      }
      
      public function §+!Y§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §4Y§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§2!Y§;
         }
         else
         {
            volume *= this.§2!Y§;
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
         var sndEffect:§4Y§ = new §4Y§(sndChannel,sndID,snd.length * (loop + 1));
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§8M§);
         if(this.§2l§ == 0)
         {
            sndEffect.§%!?§();
         }
         this.§^"§.push(sndEffect);
         return sndEffect;
      }
      
      private function §8M§(param1:Event) : void
      {
         var _loc3_:Vector.<§4Y§> = null;
         var _loc4_:§4Y§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§4Y§ = §4Y§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§8M§);
         if(this.§^"§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§^"§.splice(this.§^"§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §?G§() : Boolean
      {
         return this.§^"§.length > 0;
      }
      
      public function § !S§() : void
      {
         var _loc1_:§4Y§ = null;
         while(this.§^"§.length > 0)
         {
            _loc1_ = this.§^"§[0];
            _loc1_.§`"'§();
         }
      }
      
      public function §#!4§() : void
      {
         var _loc1_:§4Y§ = null;
         this.§2l§ = 0;
         for each(_loc1_ in this.§^"§)
         {
            _loc1_.§%!?§();
         }
      }
      
      public function §!e§() : void
      {
         var _loc1_:§4Y§ = null;
         this.§2l§ = this.§2!Y§;
         for each(_loc1_ in this.§^"§)
         {
            _loc1_.§%!B§();
         }
      }
      
      public function §<!B§(param1:String) : §4Y§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§^"§.length)
         {
            if(§4Y§(this.§^"§[_loc2_]).id == param1)
            {
               return §4Y§(this.§^"§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
