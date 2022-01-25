package §+x§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §0!"§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §%f§:int;
      
      public var §`i§:Number = 1;
      
      private var §7!+§:Vector.<§9a§>;
      
      private var §@!"§:Number;
      
      public function §0!"§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§%f§ = param2;
         this.§`i§ = param3;
         this.§@!"§ = this.§`i§;
         this.§7!+§ = new Vector.<§9a§>();
      }
      
      public function §3<§() : Boolean
      {
         return this.§7!+§.length < this.§%f§;
      }
      
      public function §6!#§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §9a§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§@!"§;
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
         var sndEffect:§9a§ = new §9a§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§`d§);
         if(this.§`i§ == 0)
         {
            sndEffect.§]!>§();
         }
         this.§7!+§.push(sndEffect);
         return sndEffect;
      }
      
      private function §`d§(param1:Event) : void
      {
         var _loc3_:Vector.<§9a§> = null;
         var _loc4_:§9a§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§9a§ = §9a§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§`d§);
         if(this.§7!+§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§7!+§.splice(this.§7!+§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§7!E§();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §?!]§() : Boolean
      {
         return this.§7!+§.length > 0;
      }
      
      public function §[G§() : void
      {
         var _loc1_:§9a§ = null;
         while(this.§7!+§.length > 0)
         {
            _loc1_ = this.§7!+§[0];
            _loc1_.stop();
            _loc1_.§&!#§();
         }
      }
      
      public function §@9§() : void
      {
         var _loc1_:§9a§ = null;
         this.§`i§ = 0;
         for each(_loc1_ in this.§7!+§)
         {
            _loc1_.§]!>§();
         }
      }
      
      public function §2!A§() : void
      {
         var _loc1_:§9a§ = null;
         this.§`i§ = this.§@!"§;
         for each(_loc1_ in this.§7!+§)
         {
            _loc1_.§8Y§();
         }
      }
      
      public function §?§(param1:String) : §9a§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§7!+§.length)
         {
            if(§9a§(this.§7!+§[_loc2_]).id == param1)
            {
               return §9a§(this.§7!+§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
