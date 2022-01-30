package §&!>§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §6`§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §3!"§:int;
      
      public var §;m§:Number = 1;
      
      private var §["'§:Vector.<§3G§>;
      
      private var §,!t§:Number;
      
      public function §6`§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§3!"§ = param2;
         this.§;m§ = param3;
         this.§,!t§ = this.§;m§;
         this.§["'§ = new Vector.<§3G§>();
      }
      
      public function §?",§() : Boolean
      {
         var _loc2_:§3G§ = null;
         if(this.§["'§.length < this.§3!"§)
         {
            return true;
         }
         var _loc1_:int = this.§["'§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§["'§[_loc1_];
            if(_loc2_.§<!E§ <= 0)
            {
               _loc2_.§3!3§();
            }
            _loc1_--;
         }
         return this.§["'§.length < this.§3!"§;
      }
      
      public function §]"4§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §3G§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§,!t§;
         }
         else
         {
            volume *= this.§,!t§;
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
         var sndEffect:§3G§ = new §3G§(sndChannel,sndID,snd.length * (loop + 1));
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§9",§);
         if(this.§;m§ == 0)
         {
            sndEffect.§4!]§();
         }
         this.§["'§.push(sndEffect);
         return sndEffect;
      }
      
      private function §9",§(param1:Event) : void
      {
         var _loc3_:Vector.<§3G§> = null;
         var _loc4_:§3G§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§3G§ = §3G§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§9",§);
         if(this.§["'§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§["'§.splice(this.§["'§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §="§() : Boolean
      {
         return this.§["'§.length > 0;
      }
      
      public function §#!3§() : void
      {
         var _loc1_:§3G§ = null;
         while(this.§["'§.length > 0)
         {
            _loc1_ = this.§["'§[0];
            _loc1_.§3!3§();
         }
      }
      
      public function §4$§() : void
      {
         var _loc1_:§3G§ = null;
         this.§;m§ = 0;
         for each(_loc1_ in this.§["'§)
         {
            _loc1_.§4!]§();
         }
      }
      
      public function §9"-§() : void
      {
         var _loc1_:§3G§ = null;
         this.§;m§ = this.§,!t§;
         for each(_loc1_ in this.§["'§)
         {
            _loc1_.§^",§();
         }
      }
      
      public function §;!&§(param1:String) : §3G§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§["'§.length)
         {
            if(§3G§(this.§["'§[_loc2_]).id == param1)
            {
               return §3G§(this.§["'§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
