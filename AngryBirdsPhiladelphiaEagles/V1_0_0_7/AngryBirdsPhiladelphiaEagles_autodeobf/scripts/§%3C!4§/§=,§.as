package §<!4§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §=,§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §2o§:int;
      
      public var §-`§:Number = 1;
      
      private var §5t§:Vector.<§;<§>;
      
      private var §>! §:Number;
      
      public function §=,§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§2o§ = param2;
         this.§-`§ = param3;
         this.§>! § = this.§-`§;
         this.§5t§ = new Vector.<§;<§>();
      }
      
      public function §=!<§() : Boolean
      {
         return this.§5t§.length < this.§2o§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §;<§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§>! §;
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
         var sndEffect:§;<§ = new §;<§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§7E§);
         if(this.§-`§ == 0)
         {
            sndEffect.§0q§();
         }
         this.§5t§.push(sndEffect);
         return sndEffect;
      }
      
      private function §7E§(param1:Event) : void
      {
         var _loc3_:Vector.<§;<§> = null;
         var _loc4_:§;<§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§;<§ = §;<§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§7E§);
         if(this.§5t§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§5t§.splice(this.§5t§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §#!"§() : Boolean
      {
         return this.§5t§.length > 0;
      }
      
      public function §=!7§() : void
      {
         var _loc1_:§;<§ = null;
         while(this.§5t§.length > 0)
         {
            _loc1_ = this.§5t§[0];
            _loc1_.stop();
            _loc1_.§4!'§();
         }
      }
      
      public function §4c§() : void
      {
         var _loc1_:§;<§ = null;
         this.§-`§ = 0;
         for each(_loc1_ in this.§5t§)
         {
            _loc1_.§0q§();
         }
      }
      
      public function §`;§() : void
      {
         var _loc1_:§;<§ = null;
         this.§-`§ = this.§>! §;
         for each(_loc1_ in this.§5t§)
         {
            _loc1_.§#5§();
         }
      }
      
      public function §7!9§(param1:String) : §;<§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§5t§.length)
         {
            if(§;<§(this.§5t§[_loc2_]).id == param1)
            {
               return §;<§(this.§5t§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
