package §5^§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §[?§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §+!u§:int;
      
      public var §&5§:Number = 1;
      
      private var §@!%§:Vector.<§]h§>;
      
      private var §,!@§:Number;
      
      public function §[?§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§+!u§ = param2;
         this.§&5§ = param3;
         this.§,!@§ = this.§&5§;
         this.§@!%§ = new Vector.<§]h§>();
      }
      
      public function §^!k§() : Boolean
      {
         return this.§@!%§.length < this.§+!u§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §]h§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§,!@§;
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
         var sndEffect:§]h§ = new §]h§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§6p§);
         if(this.§&5§ == 0)
         {
            sndEffect.§^"0§();
         }
         this.§@!%§.push(sndEffect);
         return sndEffect;
      }
      
      private function §6p§(param1:Event) : void
      {
         var _loc3_:Vector.<§]h§> = null;
         var _loc4_:§]h§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§]h§ = §]h§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§6p§);
         if(this.§@!%§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§@!%§.splice(this.§@!%§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §#N§() : Boolean
      {
         return this.§@!%§.length > 0;
      }
      
      public function § X§() : void
      {
         var _loc1_:§]h§ = null;
         while(this.§@!%§.length > 0)
         {
            _loc1_ = this.§@!%§[0];
            _loc1_.stop();
            _loc1_.§=`§();
         }
      }
      
      public function §'!k§() : void
      {
         var _loc1_:§]h§ = null;
         this.§&5§ = 0;
         for each(_loc1_ in this.§@!%§)
         {
            _loc1_.§^"0§();
         }
      }
      
      public function §7j§() : void
      {
         var _loc1_:§]h§ = null;
         this.§&5§ = this.§,!@§;
         for each(_loc1_ in this.§@!%§)
         {
            _loc1_.§=;§();
         }
      }
      
      public function §#3§(param1:String) : §]h§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§@!%§.length)
         {
            if(§]h§(this.§@!%§[_loc2_]).id == param1)
            {
               return §]h§(this.§@!%§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
