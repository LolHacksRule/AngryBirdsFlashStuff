package §>Z§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §>"?§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §88§:int;
      
      public var §'o§:Number = 1;
      
      private var §&j§:Vector.<§??§>;
      
      private var §[O§:Number;
      
      public function §>"?§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§88§ = param2;
         this.§'o§ = param3;
         this.§[O§ = this.§'o§;
         this.§&j§ = new Vector.<§??§>();
      }
      
      public function §;"6§() : Boolean
      {
         return this.§&j§.length < this.§88§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §??§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§[O§;
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
         var sndEffect:§??§ = new §??§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§`!l§);
         if(this.§'o§ == 0)
         {
            sndEffect.§0b§();
         }
         this.§&j§.push(sndEffect);
         return sndEffect;
      }
      
      private function §`!l§(param1:Event) : void
      {
         var _loc3_:Vector.<§??§> = null;
         var _loc4_:§??§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§??§ = §??§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§`!l§);
         if(this.§&j§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§&j§.splice(this.§&j§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §9!8§() : Boolean
      {
         return this.§&j§.length > 0;
      }
      
      public function §8X§() : void
      {
         var _loc1_:§??§ = null;
         while(this.§&j§.length > 0)
         {
            _loc1_ = this.§&j§[0];
            _loc1_.stop();
            _loc1_.§]§();
         }
      }
      
      public function §`w§() : void
      {
         var _loc1_:§??§ = null;
         this.§'o§ = 0;
         for each(_loc1_ in this.§&j§)
         {
            _loc1_.§0b§();
         }
      }
      
      public function §3"'§() : void
      {
         var _loc1_:§??§ = null;
         this.§'o§ = this.§[O§;
         for each(_loc1_ in this.§&j§)
         {
            _loc1_.§4f§();
         }
      }
      
      public function §`q§(param1:String) : §??§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§&j§.length)
         {
            if(§??§(this.§&j§[_loc2_]).id == param1)
            {
               return §??§(this.§&j§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
