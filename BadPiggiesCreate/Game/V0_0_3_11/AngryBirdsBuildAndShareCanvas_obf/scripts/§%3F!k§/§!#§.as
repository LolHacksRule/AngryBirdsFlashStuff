package §?!k§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §!#§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §5!U§:int;
      
      public var §@"$§:Number = 1;
      
      private var §-l§:Vector.<§&p§>;
      
      private var §;!d§:Number;
      
      public function §!#§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§5!U§ = param2;
         this.§@"$§ = param3;
         this.§;!d§ = this.§@"$§;
         this.§-l§ = new Vector.<§&p§>();
      }
      
      public function §-4§() : Boolean
      {
         return this.§-l§.length < this.§5!U§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §&p§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§;!d§;
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
         var sndEffect:§&p§ = new §&p§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§3!f§);
         if(this.§@"$§ == 0)
         {
            sndEffect.§[!9§();
         }
         this.§-l§.push(sndEffect);
         return sndEffect;
      }
      
      private function §3!f§(param1:Event) : void
      {
         var _loc3_:Vector.<§&p§> = null;
         var _loc4_:§&p§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§&p§ = §&p§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§3!f§);
         if(this.§-l§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§-l§.splice(this.§-l§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §@!K§() : Boolean
      {
         return this.§-l§.length > 0;
      }
      
      public function §,!S§() : void
      {
         var _loc1_:§&p§ = null;
         while(this.§-l§.length > 0)
         {
            _loc1_ = this.§-l§[0];
            _loc1_.stop();
            _loc1_.§"!<§();
         }
      }
      
      public function §#v§() : void
      {
         var _loc1_:§&p§ = null;
         this.§@"$§ = 0;
         for each(_loc1_ in this.§-l§)
         {
            _loc1_.§[!9§();
         }
      }
      
      public function §`!E§() : void
      {
         var _loc1_:§&p§ = null;
         this.§@"$§ = this.§;!d§;
         for each(_loc1_ in this.§-l§)
         {
            _loc1_.§>!z§();
         }
      }
      
      public function §=_§(param1:String) : §&p§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§-l§.length)
         {
            if(§&p§(this.§-l§[_loc2_]).id == param1)
            {
               return §&p§(this.§-l§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
