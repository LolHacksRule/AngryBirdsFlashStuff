package §;X§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §>!a§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §?y§:int;
      
      public var §1!w§:Number = 1;
      
      private var §,!J§:Vector.<§&"7§>;
      
      private var §=P§:Number;
      
      public function §>!a§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§?y§ = param2;
         this.§1!w§ = param3;
         this.§=P§ = this.§1!w§;
         this.§,!J§ = new Vector.<§&"7§>();
      }
      
      public function §9C§() : Boolean
      {
         var _loc2_:§&"7§ = null;
         if(this.§,!J§.length < this.§?y§)
         {
            return true;
         }
         var _loc1_:int = this.§,!J§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,!J§[_loc1_];
            if(_loc2_.§"§ <= 0)
            {
               _loc2_.§=!2§();
            }
            _loc1_--;
         }
         return this.§,!J§.length < this.§?y§;
      }
      
      public function §`!w§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §&"7§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§=P§;
         }
         else
         {
            volume *= this.§=P§;
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
         var sndEffect:§&"7§ = new §&"7§(sndChannel,sndID,snd.length * (loop + 1));
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§+!&§);
         if(this.§1!w§ == 0)
         {
            sndEffect.§=J§();
         }
         this.§,!J§.push(sndEffect);
         return sndEffect;
      }
      
      private function §+!&§(param1:Event) : void
      {
         var _loc3_:Vector.<§&"7§> = null;
         var _loc4_:§&"7§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§&"7§ = §&"7§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§+!&§);
         if(this.§,!J§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§,!J§.splice(this.§,!J§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §@t§() : Boolean
      {
         return this.§,!J§.length > 0;
      }
      
      public function § true§() : void
      {
         var _loc1_:§&"7§ = null;
         while(this.§,!J§.length > 0)
         {
            _loc1_ = this.§,!J§[0];
            _loc1_.§=!2§();
         }
      }
      
      public function §9§() : void
      {
         var _loc1_:§&"7§ = null;
         this.§1!w§ = 0;
         for each(_loc1_ in this.§,!J§)
         {
            _loc1_.§=J§();
         }
      }
      
      public function §?!d§() : void
      {
         var _loc1_:§&"7§ = null;
         this.§1!w§ = this.§=P§;
         for each(_loc1_ in this.§,!J§)
         {
            _loc1_.§4#§();
         }
      }
      
      public function §'K§(param1:String) : §&"7§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§,!J§.length)
         {
            if(§&"7§(this.§,!J§[_loc2_]).id == param1)
            {
               return §&"7§(this.§,!J§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
