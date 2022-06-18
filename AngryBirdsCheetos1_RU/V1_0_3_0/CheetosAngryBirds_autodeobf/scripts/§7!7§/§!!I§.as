package §7!7§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §!!I§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §@;§:int;
      
      public var §&!%§:Number = 1;
      
      private var §3!L§:Vector.<§ !$§>;
      
      private var §&!=§:Number;
      
      public function §!!I§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§@;§ = param2;
         this.§&!%§ = param3;
         this.§&!=§ = this.§&!%§;
         this.§3!L§ = new Vector.<§ !$§>();
      }
      
      public function §4i§() : Boolean
      {
         return this.§3!L§.length < this.§@;§;
      }
      
      public function §2!S§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : § !$§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§&!=§;
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
         var sndEffect:§ !$§ = new § !$§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§1!0§);
         if(this.§&!%§ == 0)
         {
            sndEffect.§>r§();
         }
         this.§3!L§.push(sndEffect);
         return sndEffect;
      }
      
      private function §1!0§(param1:Event) : void
      {
         var _loc3_:Vector.<§ !$§> = null;
         var _loc4_:§ !$§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§ !$§ = § !$§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§1!0§);
         if(this.§3!L§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§3!L§.splice(this.§3!L§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§2!G§();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §7`§() : Boolean
      {
         return this.§3!L§.length > 0;
      }
      
      public function §+r§() : void
      {
         var _loc1_:§ !$§ = null;
         while(this.§3!L§.length > 0)
         {
            _loc1_ = this.§3!L§[0];
            _loc1_.stop();
            _loc1_.§0F§();
         }
      }
      
      public function §?!9§() : void
      {
         var _loc1_:§ !$§ = null;
         this.§&!%§ = 0;
         for each(_loc1_ in this.§3!L§)
         {
            _loc1_.§>r§();
         }
      }
      
      public function §&!D§() : void
      {
         var _loc1_:§ !$§ = null;
         this.§&!%§ = this.§&!=§;
         for each(_loc1_ in this.§3!L§)
         {
            _loc1_.§+!N§();
         }
      }
      
      public function §?d§(param1:String) : § !$§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§3!L§.length)
         {
            if(§ !$§(this.§3!L§[_loc2_]).id == param1)
            {
               return § !$§(this.§3!L§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
