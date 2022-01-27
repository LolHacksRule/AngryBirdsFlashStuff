package §+y§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §7!#§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §@<§:int;
      
      public var §4p§:Number = 1;
      
      private var §`!N§:Vector.<§#h§>;
      
      private var §<n§:Number;
      
      public function §7!#§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§@<§ = param2;
         this.§4p§ = param3;
         this.§<n§ = this.§4p§;
         this.§`!N§ = new Vector.<§#h§>();
      }
      
      public function §30§() : Boolean
      {
         return this.§`!N§.length < this.§@<§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §#h§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§<n§;
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
         var sndEffect:§#h§ = new §#h§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§`^§);
         if(this.§4p§ == 0)
         {
            sndEffect.§-!C§();
         }
         this.§`!N§.push(sndEffect);
         return sndEffect;
      }
      
      private function §`^§(param1:Event) : void
      {
         var _loc3_:Vector.<§#h§> = null;
         var _loc4_:§#h§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§#h§ = §#h§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§`^§);
         if(this.§`!N§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§`!N§.splice(this.§`!N§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §6-§() : Boolean
      {
         return this.§`!N§.length > 0;
      }
      
      public function §0x§() : void
      {
         var _loc1_:§#h§ = null;
         while(this.§`!N§.length > 0)
         {
            _loc1_ = this.§`!N§[0];
            _loc1_.stop();
            _loc1_.§2e§();
         }
      }
      
      public function §continue§() : void
      {
         var _loc1_:§#h§ = null;
         this.§4p§ = 0;
         for each(_loc1_ in this.§`!N§)
         {
            _loc1_.§-!C§();
         }
      }
      
      public function §32§() : void
      {
         var _loc1_:§#h§ = null;
         this.§4p§ = this.§<n§;
         for each(_loc1_ in this.§`!N§)
         {
            _loc1_.§;O§();
         }
      }
      
      public function §@!2§(param1:String) : §#h§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§`!N§.length)
         {
            if(§#h§(this.§`!N§[_loc2_]).id == param1)
            {
               return §#h§(this.§`!N§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
