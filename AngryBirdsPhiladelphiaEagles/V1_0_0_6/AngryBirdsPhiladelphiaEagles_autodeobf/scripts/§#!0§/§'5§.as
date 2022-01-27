package §#!0§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §'5§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §5!E§:int;
      
      public var §[E§:Number = 1;
      
      private var §3L§:Vector.<§0!7§>;
      
      private var §2!K§:Number;
      
      public function §'5§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§5!E§ = param2;
         this.§[E§ = param3;
         this.§2!K§ = this.§[E§;
         this.§3L§ = new Vector.<§0!7§>();
      }
      
      public function §[3§() : Boolean
      {
         return this.§3L§.length < this.§5!E§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §0!7§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§2!K§;
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
         var sndEffect:§0!7§ = new §0!7§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§`!G§);
         if(this.§[E§ == 0)
         {
            sndEffect.§#B§();
         }
         this.§3L§.push(sndEffect);
         return sndEffect;
      }
      
      private function §`!G§(param1:Event) : void
      {
         var _loc3_:Vector.<§0!7§> = null;
         var _loc4_:§0!7§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§0!7§ = §0!7§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§`!G§);
         if(this.§3L§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§3L§.splice(this.§3L§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §,J§() : Boolean
      {
         return this.§3L§.length > 0;
      }
      
      public function §[!>§() : void
      {
         var _loc1_:§0!7§ = null;
         while(this.§3L§.length > 0)
         {
            _loc1_ = this.§3L§[0];
            _loc1_.stop();
            _loc1_.§]!1§();
         }
      }
      
      public function §;M§() : void
      {
         var _loc1_:§0!7§ = null;
         this.§[E§ = 0;
         for each(_loc1_ in this.§3L§)
         {
            _loc1_.§#B§();
         }
      }
      
      public function §9O§() : void
      {
         var _loc1_:§0!7§ = null;
         this.§[E§ = this.§2!K§;
         for each(_loc1_ in this.§3L§)
         {
            _loc1_.§=!B§();
         }
      }
      
      public function §65§(param1:String) : §0!7§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§3L§.length)
         {
            if(§0!7§(this.§3L§[_loc2_]).id == param1)
            {
               return §0!7§(this.§3L§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
