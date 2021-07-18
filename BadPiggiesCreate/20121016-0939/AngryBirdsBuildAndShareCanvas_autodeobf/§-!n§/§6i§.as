package §-!n§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §6i§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §,w§:int;
      
      public var §#!u§:Number = 1;
      
      private var §3!X§:Vector.<§7v§>;
      
      private var §%#§:Number;
      
      public function §6i§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§,w§ = param2;
         this.§#!u§ = param3;
         this.§%#§ = this.§#!u§;
         this.§3!X§ = new Vector.<§7v§>();
      }
      
      public function §<s§() : Boolean
      {
         return this.§3!X§.length < this.§,w§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §7v§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§%#§;
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
         var sndEffect:§7v§ = new §7v§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§;!M§);
         if(this.§#!u§ == 0)
         {
            sndEffect.§7!t§();
         }
         this.§3!X§.push(sndEffect);
         return sndEffect;
      }
      
      private function §;!M§(param1:Event) : void
      {
         var _loc3_:Vector.<§7v§> = null;
         var _loc4_:§7v§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§7v§ = §7v§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§;!M§);
         if(this.§3!X§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§3!X§.splice(this.§3!X§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §if §() : Boolean
      {
         return this.§3!X§.length > 0;
      }
      
      public function §9&§() : void
      {
         var _loc1_:§7v§ = null;
         while(this.§3!X§.length > 0)
         {
            _loc1_ = this.§3!X§[0];
            _loc1_.stop();
            _loc1_.§ !5§();
         }
      }
      
      public function §9"+§() : void
      {
         var _loc1_:§7v§ = null;
         this.§#!u§ = 0;
         for each(_loc1_ in this.§3!X§)
         {
            _loc1_.§7!t§();
         }
      }
      
      public function §0!m§() : void
      {
         var _loc1_:§7v§ = null;
         this.§#!u§ = this.§%#§;
         for each(_loc1_ in this.§3!X§)
         {
            _loc1_.§6!%§();
         }
      }
      
      public function §7!=§(param1:String) : §7v§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§3!X§.length)
         {
            if(§7v§(this.§3!X§[_loc2_]).id == param1)
            {
               return §7v§(this.§3!X§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
