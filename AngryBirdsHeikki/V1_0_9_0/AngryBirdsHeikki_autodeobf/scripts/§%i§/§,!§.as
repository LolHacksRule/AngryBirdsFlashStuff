package §%i§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §,!§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var § else§:int;
      
      public var §-P§:Number = 1;
      
      private var §!S§:Vector.<§8!A§>;
      
      private var §@6§:Number;
      
      public function §,!§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§ else§ = param2;
         this.§-P§ = param3;
         this.§@6§ = this.§-P§;
         this.§!S§ = new Vector.<§8!A§>();
      }
      
      public function §!3§() : Boolean
      {
         return this.§!S§.length < this.§ else§;
      }
      
      public function §2o§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §8!A§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§@6§;
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
         var sndEffect:§8!A§ = new §8!A§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§,`§);
         if(this.§-P§ == 0)
         {
            sndEffect.§^j§();
         }
         this.§!S§.push(sndEffect);
         return sndEffect;
      }
      
      private function §,`§(param1:Event) : void
      {
         var _loc3_:Vector.<§8!A§> = null;
         var _loc4_:§8!A§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§8!A§ = §8!A§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§,`§);
         if(this.§!S§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§!S§.splice(this.§!S§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§5!H§();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §0m§() : Boolean
      {
         return this.§!S§.length > 0;
      }
      
      public function §2!5§() : void
      {
         var _loc1_:§8!A§ = null;
         while(this.§!S§.length > 0)
         {
            _loc1_ = this.§!S§[0];
            _loc1_.stop();
            _loc1_.§=t§();
         }
      }
      
      public function §4s§() : void
      {
         var _loc1_:§8!A§ = null;
         this.§-P§ = 0;
         for each(_loc1_ in this.§!S§)
         {
            _loc1_.§^j§();
         }
      }
      
      public function §#!4§() : void
      {
         var _loc1_:§8!A§ = null;
         this.§-P§ = this.§@6§;
         for each(_loc1_ in this.§!S§)
         {
            _loc1_.§5"§();
         }
      }
      
      public function §?!J§(param1:String) : §8!A§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!S§.length)
         {
            if(§8!A§(this.§!S§[_loc2_]).id == param1)
            {
               return §8!A§(this.§!S§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
