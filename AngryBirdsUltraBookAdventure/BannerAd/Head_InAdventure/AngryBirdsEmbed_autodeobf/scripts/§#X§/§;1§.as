package §#X§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §;1§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §[_§:int;
      
      public var §"!4§:Number = 1;
      
      private var §-g§:Vector.<§=J§>;
      
      private var §&+§:Number;
      
      public function §;1§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§[_§ = param2;
         this.§"!4§ = param3;
         this.§&+§ = this.§"!4§;
         this.§-g§ = new Vector.<§=J§>();
      }
      
      public function §]!!§() : Boolean
      {
         return this.§-g§.length < this.§[_§;
      }
      
      public function §;v§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §=J§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§&+§;
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
         var sndEffect:§=J§ = new §=J§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§[! §);
         if(this.§"!4§ == 0)
         {
            sndEffect.§!h§();
         }
         this.§-g§.push(sndEffect);
         return sndEffect;
      }
      
      private function §[! §(param1:Event) : void
      {
         var _loc3_:Vector.<§=J§> = null;
         var _loc4_:§=J§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§=J§ = §=J§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§[! §);
         if(this.§-g§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§-g§.splice(this.§-g§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §]n§() : Boolean
      {
         return this.§-g§.length > 0;
      }
      
      public function §?X§() : void
      {
         var _loc1_:§=J§ = null;
         while(this.§-g§.length > 0)
         {
            _loc1_ = this.§-g§[0];
            _loc1_.stop();
            _loc1_.§3'§();
         }
      }
      
      public function §<g§() : void
      {
         var _loc1_:§=J§ = null;
         this.§"!4§ = 0;
         for each(_loc1_ in this.§-g§)
         {
            _loc1_.§!h§();
         }
      }
      
      public function §@z§() : void
      {
         var _loc1_:§=J§ = null;
         this.§"!4§ = this.§&+§;
         for each(_loc1_ in this.§-g§)
         {
            _loc1_.§1J§();
         }
      }
      
      public function §4!?§(param1:String) : §=J§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§-g§.length)
         {
            if(§=J§(this.§-g§[_loc2_]).id == param1)
            {
               return §=J§(this.§-g§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
