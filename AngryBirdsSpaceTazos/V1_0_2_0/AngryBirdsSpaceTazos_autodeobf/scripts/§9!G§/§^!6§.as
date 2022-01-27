package §9!G§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §^!6§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §;!v§:int;
      
      public var §5!Q§:Number = 1;
      
      private var §0!X§:Vector.<§0!"§>;
      
      private var §1!C§:Number;
      
      public function §^!6§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§;!v§ = param2;
         this.§5!Q§ = param3;
         this.§1!C§ = this.§5!Q§;
         this.§0!X§ = new Vector.<§0!"§>();
      }
      
      public function §#!B§() : Boolean
      {
         var _loc2_:§0!"§ = null;
         if(this.§0!X§.length < this.§;!v§)
         {
            return true;
         }
         var _loc1_:int = this.§0!X§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§0!X§[_loc1_];
            if(_loc2_.§;!X§ <= 0)
            {
               _loc2_.§3!z§();
            }
            _loc1_--;
         }
         return this.§0!X§.length < this.§;!v§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §0!"§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§1!C§;
         }
         else
         {
            volume *= this.§1!C§;
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
         var sndEffect:§0!"§ = new §0!"§(sndChannel,sndID,snd.length * (loop + 1));
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§7!E§);
         if(this.§5!Q§ == 0)
         {
            sndEffect.§"C§();
         }
         this.§0!X§.push(sndEffect);
         return sndEffect;
      }
      
      private function §7!E§(param1:Event) : void
      {
         var _loc3_:Vector.<§0!"§> = null;
         var _loc4_:§0!"§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§0!"§ = §0!"§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§7!E§);
         if(this.§0!X§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§0!X§.splice(this.§0!X§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §`]§() : Boolean
      {
         return this.§0!X§.length > 0;
      }
      
      public function §#9§() : void
      {
         var _loc1_:§0!"§ = null;
         while(this.§0!X§.length > 0)
         {
            _loc1_ = this.§0!X§[0];
            _loc1_.§3!z§();
         }
      }
      
      public function §`!q§() : void
      {
         var _loc1_:§0!"§ = null;
         this.§5!Q§ = 0;
         for each(_loc1_ in this.§0!X§)
         {
            _loc1_.§"C§();
         }
      }
      
      public function §?M§() : void
      {
         var _loc1_:§0!"§ = null;
         this.§5!Q§ = this.§1!C§;
         for each(_loc1_ in this.§0!X§)
         {
            _loc1_.§;n§();
         }
      }
      
      public function §[!i§(param1:String) : §0!"§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§0!X§.length)
         {
            if(§0!"§(this.§0!X§[_loc2_]).id == param1)
            {
               return §0!"§(this.§0!X§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
