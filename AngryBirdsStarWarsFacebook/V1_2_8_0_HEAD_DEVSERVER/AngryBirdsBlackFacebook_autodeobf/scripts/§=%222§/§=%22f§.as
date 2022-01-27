package §="2§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §="f§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §0"o§:int;
      
      public var §4!=§:Number = 1;
      
      private var §,">§:Vector.<§4!5§>;
      
      private var §5!4§:Number;
      
      public function §="f§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§0"o§ = param2;
         this.§4!=§ = param3;
         this.§5!4§ = this.§4!=§;
         this.§,">§ = new Vector.<§4!5§>();
      }
      
      public function §>#H§() : Boolean
      {
         var _loc2_:§4!5§ = null;
         if(this.§,">§.length < this.§0"o§)
         {
            return true;
         }
         var _loc1_:int = this.§,">§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,">§[_loc1_];
            if(_loc2_.§3"o§ <= 0)
            {
               _loc2_.§!"^§();
            }
            _loc1_--;
         }
         return this.§,">§.length < this.§0"o§;
      }
      
      public function §"#_§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §4!5§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§5!4§;
         }
         else
         {
            volume *= this.§5!4§;
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
         var sndEffect:§4!5§ = new §4!5§(sndChannel,sndID,snd.length * (loop + 1));
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§@"e§);
         if(this.§4!=§ == 0)
         {
            sndEffect.§^"w§();
         }
         this.§,">§.push(sndEffect);
         return sndEffect;
      }
      
      private function §@"e§(param1:Event) : void
      {
         var _loc3_:Vector.<§4!5§> = null;
         var _loc4_:§4!5§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§4!5§ = §4!5§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§@"e§);
         if(this.§,">§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§,">§.splice(this.§,">§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §<"M§() : Boolean
      {
         return this.§,">§.length > 0;
      }
      
      public function §0"#§() : void
      {
         var _loc1_:§4!5§ = null;
         while(this.§,">§.length > 0)
         {
            _loc1_ = this.§,">§[0];
            _loc1_.§!"^§();
         }
      }
      
      public function §3!o§() : void
      {
         var _loc1_:§4!5§ = null;
         this.§4!=§ = 0;
         for each(_loc1_ in this.§,">§)
         {
            _loc1_.§^"w§();
         }
      }
      
      public function §!!j§() : void
      {
         var _loc1_:§4!5§ = null;
         this.§4!=§ = this.§5!4§;
         for each(_loc1_ in this.§,">§)
         {
            _loc1_.§<#D§();
         }
      }
      
      public function get §9"H§() : int
      {
         return this.§,">§.length;
      }
      
      public function §0<§(param1:String) : §4!5§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§,">§.length)
         {
            if(§4!5§(this.§,">§[_loc2_]).id == param1)
            {
               return §4!5§(this.§,">§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §use§(param1:int) : §4!5§
      {
         return this.§,">§[param1];
      }
   }
}
