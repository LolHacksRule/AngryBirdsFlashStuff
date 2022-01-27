package §,!1§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §+L§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §69§:int;
      
      public var § 8§:Number = 1;
      
      private var §;R§:Vector.<§"?§>;
      
      private var §`!9§:Number;
      
      public function §+L§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§69§ = param2;
         this.§ 8§ = param3;
         this.§`!9§ = this.§ 8§;
         this.§;R§ = new Vector.<§"?§>();
      }
      
      public function §%!#§() : Boolean
      {
         return this.§;R§.length < this.§69§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §"?§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§`!9§;
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
         var sndEffect:§"?§ = new §"?§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§9!;§);
         if(this.§ 8§ == 0)
         {
            sndEffect.§=§();
         }
         this.§;R§.push(sndEffect);
         return sndEffect;
      }
      
      private function §9!;§(param1:Event) : void
      {
         var _loc3_:Vector.<§"?§> = null;
         var _loc4_:§"?§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§"?§ = §"?§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§9!;§);
         if(this.§;R§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§;R§.splice(this.§;R§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §;7§() : Boolean
      {
         return this.§;R§.length > 0;
      }
      
      public function §>$§() : void
      {
         var _loc1_:§"?§ = null;
         while(this.§;R§.length > 0)
         {
            _loc1_ = this.§;R§[0];
            _loc1_.stop();
            _loc1_.§7"§();
         }
      }
      
      public function § !G§() : void
      {
         var _loc1_:§"?§ = null;
         this.§ 8§ = 0;
         for each(_loc1_ in this.§;R§)
         {
            _loc1_.§=§();
         }
      }
      
      public function §]E§() : void
      {
         var _loc1_:§"?§ = null;
         this.§ 8§ = this.§`!9§;
         for each(_loc1_ in this.§;R§)
         {
            _loc1_.§-S§();
         }
      }
      
      public function §7F§(param1:String) : §"?§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§;R§.length)
         {
            if(§"?§(this.§;R§[_loc2_]).id == param1)
            {
               return §"?§(this.§;R§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
