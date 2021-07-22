package §8m§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §;!`§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var § y§:int;
      
      public var §3N§:Number = 1;
      
      private var §`"!§:Vector.<§7!>§>;
      
      private var §2q§:Number;
      
      public function §;!`§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§ y§ = param2;
         this.§3N§ = param3;
         this.§2q§ = this.§3N§;
         this.§`"!§ = new Vector.<§7!>§>();
      }
      
      public function §5[§() : Boolean
      {
         return this.§`"!§.length < this.§ y§;
      }
      
      public function §3"C§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §7!>§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§2q§;
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
         var sndEffect:§7!>§ = new §7!>§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§4s§);
         if(this.§3N§ == 0)
         {
            sndEffect.§["?§();
         }
         this.§`"!§.push(sndEffect);
         return sndEffect;
      }
      
      private function §4s§(param1:Event) : void
      {
         var _loc3_:Vector.<§7!>§> = null;
         var _loc4_:§7!>§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§7!>§ = §7!>§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§4s§);
         if(this.§`"!§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§`"!§.splice(this.§`"!§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §6",§() : Boolean
      {
         return this.§`"!§.length > 0;
      }
      
      public function §3!s§() : void
      {
         var _loc1_:§7!>§ = null;
         while(this.§`"!§.length > 0)
         {
            _loc1_ = this.§`"!§[0];
            _loc1_.stop();
            _loc1_.§7s§();
         }
      }
      
      public function §#!z§() : void
      {
         var _loc1_:§7!>§ = null;
         this.§3N§ = 0;
         for each(_loc1_ in this.§`"!§)
         {
            _loc1_.§["?§();
         }
      }
      
      public function §^!s§() : void
      {
         var _loc1_:§7!>§ = null;
         this.§3N§ = this.§2q§;
         for each(_loc1_ in this.§`"!§)
         {
            _loc1_.§2!!§();
         }
      }
      
      public function § "?§(param1:String) : §7!>§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§`"!§.length)
         {
            if(§7!>§(this.§`"!§[_loc2_]).id == param1)
            {
               return §7!>§(this.§`"!§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
