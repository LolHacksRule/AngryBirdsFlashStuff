package §?!g§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §^Y§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §>!J§:int;
      
      public var §=A§:Number = 1;
      
      private var § v§:Vector.<§-!B§>;
      
      private var §+7§:Number;
      
      public function §^Y§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§>!J§ = param2;
         this.§=A§ = param3;
         this.§+7§ = this.§=A§;
         this.§ v§ = new Vector.<§-!B§>();
      }
      
      public function §-!Y§() : Boolean
      {
         return this.§ v§.length < this.§>!J§;
      }
      
      public function §-h§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §-!B§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§+7§;
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
         var sndEffect:§-!B§ = new §-!B§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§6!?§);
         if(this.§=A§ == 0)
         {
            sndEffect.§7!f§();
         }
         this.§ v§.push(sndEffect);
         return sndEffect;
      }
      
      private function §6!?§(param1:Event) : void
      {
         var _loc3_:Vector.<§-!B§> = null;
         var _loc4_:§-!B§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§-!B§ = §-!B§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§6!?§);
         if(this.§ v§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§ v§.splice(this.§ v§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§@@§();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §8!N§() : Boolean
      {
         return this.§ v§.length > 0;
      }
      
      public function §;O§() : void
      {
         var _loc1_:§-!B§ = null;
         while(this.§ v§.length > 0)
         {
            _loc1_ = this.§ v§[0];
            _loc1_.stop();
            _loc1_.§?V§();
         }
      }
      
      public function §-!=§() : void
      {
         var _loc1_:§-!B§ = null;
         this.§=A§ = 0;
         for each(_loc1_ in this.§ v§)
         {
            _loc1_.§7!f§();
         }
      }
      
      public function §9_§() : void
      {
         var _loc1_:§-!B§ = null;
         this.§=A§ = this.§+7§;
         for each(_loc1_ in this.§ v§)
         {
            _loc1_.§8F§();
         }
      }
      
      public function §&!K§(param1:String) : §-!B§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§ v§.length)
         {
            if(§-!B§(this.§ v§[_loc2_]).id == param1)
            {
               return §-!B§(this.§ v§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
