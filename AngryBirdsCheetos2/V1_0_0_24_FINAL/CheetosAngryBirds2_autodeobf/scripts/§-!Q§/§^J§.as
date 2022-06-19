package §-!Q§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §^J§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §?[§:int;
      
      public var §+!#§:Number = 1;
      
      private var §7s§:Vector.<§;l§>;
      
      private var §+!Z§:Number;
      
      public function §^J§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§?[§ = param2;
         this.§+!#§ = param3;
         this.§+!Z§ = this.§+!#§;
         this.§7s§ = new Vector.<§;l§>();
      }
      
      public function § O§() : Boolean
      {
         return this.§7s§.length < this.§?[§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §;l§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§+!Z§;
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
         var sndEffect:§;l§ = new §;l§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§^[§);
         if(this.§+!#§ == 0)
         {
            sndEffect.§^!f§();
         }
         this.§7s§.push(sndEffect);
         return sndEffect;
      }
      
      private function §^[§(param1:Event) : void
      {
         var _loc3_:Vector.<§;l§> = null;
         var _loc4_:§;l§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§;l§ = §;l§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§^[§);
         if(this.§7s§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§7s§.splice(this.§7s§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§;@§();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §`!N§() : Boolean
      {
         return this.§7s§.length > 0;
      }
      
      public function §13§() : void
      {
         var _loc1_:§;l§ = null;
         while(this.§7s§.length > 0)
         {
            _loc1_ = this.§7s§[0];
            _loc1_.stop();
            _loc1_.§8!K§();
         }
      }
      
      public function §`j§() : void
      {
         var _loc1_:§;l§ = null;
         this.§+!#§ = 0;
         for each(_loc1_ in this.§7s§)
         {
            _loc1_.§^!f§();
         }
      }
      
      public function §2!^§() : void
      {
         var _loc1_:§;l§ = null;
         this.§+!#§ = this.§+!Z§;
         for each(_loc1_ in this.§7s§)
         {
            _loc1_.§2!?§();
         }
      }
      
      public function § !I§(param1:String) : §;l§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§7s§.length)
         {
            if(§;l§(this.§7s§[_loc2_]).id == param1)
            {
               return §;l§(this.§7s§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
