package §1o§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §+x§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §<g§:int;
      
      public var §]!E§:Number = 1;
      
      private var §#!'§:Vector.<§-![§>;
      
      private var § if§:Number;
      
      public function §+x§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§<g§ = param2;
         this.§]!E§ = param3;
         this.§ if§ = this.§]!E§;
         this.§#!'§ = new Vector.<§-![§>();
      }
      
      public function §]e§() : Boolean
      {
         return this.§#!'§.length < this.§<g§;
      }
      
      public function §1T§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §-![§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§ if§;
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
         var sndEffect:§-![§ = new §-![§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§8!E§);
         if(this.§]!E§ == 0)
         {
            sndEffect.§&!H§();
         }
         this.§#!'§.push(sndEffect);
         return sndEffect;
      }
      
      private function §8!E§(param1:Event) : void
      {
         var _loc3_:Vector.<§-![§> = null;
         var _loc4_:§-![§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§-![§ = §-![§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§8!E§);
         if(this.§#!'§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§#!'§.splice(this.§#!'§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§0'§();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §]!K§() : Boolean
      {
         return this.§#!'§.length > 0;
      }
      
      public function §"!?§() : void
      {
         var _loc1_:§-![§ = null;
         while(this.§#!'§.length > 0)
         {
            _loc1_ = this.§#!'§[0];
            _loc1_.stop();
            _loc1_.§"!=§();
         }
      }
      
      public function §1%§() : void
      {
         var _loc1_:§-![§ = null;
         this.§]!E§ = 0;
         for each(_loc1_ in this.§#!'§)
         {
            _loc1_.§&!H§();
         }
      }
      
      public function §5l§() : void
      {
         var _loc1_:§-![§ = null;
         this.§]!E§ = this.§ if§;
         for each(_loc1_ in this.§#!'§)
         {
            _loc1_.§-9§();
         }
      }
      
      public function §-!M§(param1:String) : §-![§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§#!'§.length)
         {
            if(§-![§(this.§#!'§[_loc2_]).id == param1)
            {
               return §-![§(this.§#!'§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
