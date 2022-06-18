package §8T§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §7H§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §4=§:int;
      
      public var §9f§:Number = 1;
      
      private var §7N§:Vector.<§'F§>;
      
      private var §1!N§:Number;
      
      public function §7H§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§4=§ = param2;
         this.§9f§ = param3;
         this.§1!N§ = this.§9f§;
         this.§7N§ = new Vector.<§'F§>();
      }
      
      public function §4!2§() : Boolean
      {
         return this.§7N§.length < this.§4=§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §'F§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§1!N§;
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
         var sndEffect:§'F§ = new §'F§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§9G§);
         if(this.§9f§ == 0)
         {
            sndEffect.§+=§();
         }
         this.§7N§.push(sndEffect);
         return sndEffect;
      }
      
      private function §9G§(param1:Event) : void
      {
         var _loc3_:Vector.<§'F§> = null;
         var _loc4_:§'F§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§'F§ = §'F§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§9G§);
         if(this.§7N§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§7N§.splice(this.§7N§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §8f§() : Boolean
      {
         return this.§7N§.length > 0;
      }
      
      public function §#!;§() : void
      {
         var _loc1_:§'F§ = null;
         while(this.§7N§.length > 0)
         {
            _loc1_ = this.§7N§[0];
            _loc1_.stop();
            _loc1_.§[f§();
         }
      }
      
      public function § !2§() : void
      {
         var _loc1_:§'F§ = null;
         this.§9f§ = 0;
         for each(_loc1_ in this.§7N§)
         {
            _loc1_.§+=§();
         }
      }
      
      public function §!?§() : void
      {
         var _loc1_:§'F§ = null;
         this.§9f§ = this.§1!N§;
         for each(_loc1_ in this.§7N§)
         {
            _loc1_.§9U§();
         }
      }
      
      public function §9!M§(param1:String) : §'F§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§7N§.length)
         {
            if(§'F§(this.§7N§[_loc2_]).id == param1)
            {
               return §'F§(this.§7N§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
