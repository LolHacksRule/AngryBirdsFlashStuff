package §[!Z§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §&b§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §0[§:int;
      
      public var §=A§:Number = 1;
      
      private var §[!_§:Vector.<§`v§>;
      
      private var §8!u§:Number;
      
      public function §&b§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§0[§ = param2;
         this.§=A§ = param3;
         this.§8!u§ = this.§=A§;
         this.§[!_§ = new Vector.<§`v§>();
      }
      
      public function §]!U§() : Boolean
      {
         var _loc2_:§`v§ = null;
         if(this.§[!_§.length < this.§0[§)
         {
            return true;
         }
         var _loc1_:int = this.§[!_§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§[!_§[_loc1_];
            if(_loc2_.§%!+§ <= 0)
            {
               _loc2_.§,^§();
            }
            _loc1_--;
         }
         return this.§[!_§.length < this.§0[§;
      }
      
      public function §9!q§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §`v§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§8!u§;
         }
         else
         {
            volume *= this.§8!u§;
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
         var sndEffect:§`v§ = new §`v§(sndChannel,sndID,snd.length * (loop + 1));
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§]"2§);
         if(this.§=A§ == 0)
         {
            sndEffect.§?!t§();
         }
         this.§[!_§.push(sndEffect);
         return sndEffect;
      }
      
      private function §]"2§(param1:Event) : void
      {
         var _loc3_:Vector.<§`v§> = null;
         var _loc4_:§`v§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§`v§ = §`v§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§]"2§);
         if(this.§[!_§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§[!_§.splice(this.§[!_§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §2x§() : Boolean
      {
         return this.§[!_§.length > 0;
      }
      
      public function §>!%§() : void
      {
         var _loc1_:§`v§ = null;
         while(this.§[!_§.length > 0)
         {
            _loc1_ = this.§[!_§[0];
            _loc1_.§,^§();
         }
      }
      
      public function §'D§() : void
      {
         var _loc1_:§`v§ = null;
         this.§=A§ = 0;
         for each(_loc1_ in this.§[!_§)
         {
            _loc1_.§?!t§();
         }
      }
      
      public function §&",§() : void
      {
         var _loc1_:§`v§ = null;
         this.§=A§ = this.§8!u§;
         for each(_loc1_ in this.§[!_§)
         {
            _loc1_.§6T§();
         }
      }
      
      public function §7D§(param1:String) : §`v§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§[!_§.length)
         {
            if(§`v§(this.§[!_§[_loc2_]).id == param1)
            {
               return §`v§(this.§[!_§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
