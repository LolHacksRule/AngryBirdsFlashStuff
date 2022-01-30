package §6`§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §!!Y§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §=!N§:int;
      
      public var §7!j§:Number = 1;
      
      private var §%!6§:Vector.<§4!m§>;
      
      private var §]"3§:Number;
      
      public function §!!Y§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§=!N§ = param2;
         this.§7!j§ = param3;
         this.§]"3§ = this.§7!j§;
         this.§%!6§ = new Vector.<§4!m§>();
      }
      
      public function §^?§() : Boolean
      {
         return this.§%!6§.length < this.§=!N§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §4!m§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§]"3§;
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
         var sndEffect:§4!m§ = new §4!m§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§`!9§);
         if(this.§7!j§ == 0)
         {
            sndEffect.§#!o§();
         }
         this.§%!6§.push(sndEffect);
         return sndEffect;
      }
      
      private function §`!9§(param1:Event) : void
      {
         var _loc3_:Vector.<§4!m§> = null;
         var _loc4_:§4!m§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§4!m§ = §4!m§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§`!9§);
         if(this.§%!6§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§%!6§.splice(this.§%!6§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §^" §() : Boolean
      {
         return this.§%!6§.length > 0;
      }
      
      public function §@"!§() : void
      {
         var _loc1_:§4!m§ = null;
         while(this.§%!6§.length > 0)
         {
            _loc1_ = this.§%!6§[0];
            _loc1_.stop();
            _loc1_.§5!Q§();
         }
      }
      
      public function §5"+§() : void
      {
         var _loc1_:§4!m§ = null;
         this.§7!j§ = 0;
         for each(_loc1_ in this.§%!6§)
         {
            _loc1_.§#!o§();
         }
      }
      
      public function §,!N§() : void
      {
         var _loc1_:§4!m§ = null;
         this.§7!j§ = this.§]"3§;
         for each(_loc1_ in this.§%!6§)
         {
            _loc1_.§ §();
         }
      }
      
      public function §#!D§(param1:String) : §4!m§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!6§.length)
         {
            if(§4!m§(this.§%!6§[_loc2_]).id == param1)
            {
               return §4!m§(this.§%!6§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
