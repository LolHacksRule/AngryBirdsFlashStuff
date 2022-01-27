package §[N§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §8!@§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §4O§:int;
      
      public var §1Q§:Number = 1;
      
      private var §&J§:Vector.<§>f§>;
      
      private var §<b§:Number;
      
      public function §8!@§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§4O§ = param2;
         this.§1Q§ = param3;
         this.§<b§ = this.§1Q§;
         this.§&J§ = new Vector.<§>f§>();
      }
      
      public function §@m§() : Boolean
      {
         return this.§&J§.length < this.§4O§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §>f§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§<b§;
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
         var sndEffect:§>f§ = new §>f§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§,^§);
         if(this.§1Q§ == 0)
         {
            sndEffect.§2t§();
         }
         this.§&J§.push(sndEffect);
         return sndEffect;
      }
      
      private function §,^§(param1:Event) : void
      {
         var _loc3_:Vector.<§>f§> = null;
         var _loc4_:§>f§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§>f§ = §>f§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§,^§);
         if(this.§&J§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§&J§.splice(this.§&J§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §]!6§() : Boolean
      {
         return this.§&J§.length > 0;
      }
      
      public function §return§() : void
      {
         var _loc1_:§>f§ = null;
         while(this.§&J§.length > 0)
         {
            _loc1_ = this.§&J§[0];
            _loc1_.stop();
            _loc1_.§2!8§();
         }
      }
      
      public function §;V§() : void
      {
         var _loc1_:§>f§ = null;
         this.§1Q§ = 0;
         for each(_loc1_ in this.§&J§)
         {
            _loc1_.§2t§();
         }
      }
      
      public function § null§() : void
      {
         var _loc1_:§>f§ = null;
         this.§1Q§ = this.§<b§;
         for each(_loc1_ in this.§&J§)
         {
            _loc1_.§#!C§();
         }
      }
      
      public function §=u§(param1:String) : §>f§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§&J§.length)
         {
            if(§>f§(this.§&J§[_loc2_]).id == param1)
            {
               return §>f§(this.§&J§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
