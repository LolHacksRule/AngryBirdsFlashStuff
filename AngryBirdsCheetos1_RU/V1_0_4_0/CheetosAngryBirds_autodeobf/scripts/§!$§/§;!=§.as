package §!$§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §;!=§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §>!T§:int;
      
      public var §'!#§:Number = 1;
      
      private var §2T§:Vector.<§3Z§>;
      
      private var §!3§:Number;
      
      public function §;!=§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§>!T§ = param2;
         this.§'!#§ = param3;
         this.§!3§ = this.§'!#§;
         this.§2T§ = new Vector.<§3Z§>();
      }
      
      public function §?!Q§() : Boolean
      {
         return this.§2T§.length < this.§>!T§;
      }
      
      public function §<D§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §3Z§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§!3§;
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
         var sndEffect:§3Z§ = new §3Z§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§#o§);
         if(this.§'!#§ == 0)
         {
            sndEffect.§?]§();
         }
         this.§2T§.push(sndEffect);
         return sndEffect;
      }
      
      private function §#o§(param1:Event) : void
      {
         var _loc3_:Vector.<§3Z§> = null;
         var _loc4_:§3Z§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§3Z§ = §3Z§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§#o§);
         if(this.§2T§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§2T§.splice(this.§2T§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§[!8§();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §6G§() : Boolean
      {
         return this.§2T§.length > 0;
      }
      
      public function §+"§() : void
      {
         var _loc1_:§3Z§ = null;
         while(this.§2T§.length > 0)
         {
            _loc1_ = this.§2T§[0];
            _loc1_.stop();
            _loc1_.§?!R§();
         }
      }
      
      public function §<!F§() : void
      {
         var _loc1_:§3Z§ = null;
         this.§'!#§ = 0;
         for each(_loc1_ in this.§2T§)
         {
            _loc1_.§?]§();
         }
      }
      
      public function §>!c§() : void
      {
         var _loc1_:§3Z§ = null;
         this.§'!#§ = this.§!3§;
         for each(_loc1_ in this.§2T§)
         {
            _loc1_.§9!3§();
         }
      }
      
      public function §+!_§(param1:String) : §3Z§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§2T§.length)
         {
            if(§3Z§(this.§2T§[_loc2_]).id == param1)
            {
               return §3Z§(this.§2T§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
