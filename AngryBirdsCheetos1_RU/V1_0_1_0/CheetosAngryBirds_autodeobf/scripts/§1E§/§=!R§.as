package §1E§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §=!R§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §""§:int;
      
      public var §!p§:Number = 1;
      
      private var §=o§:Vector.<§ _§>;
      
      private var §?!6§:Number;
      
      public function §=!R§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§""§ = param2;
         this.§!p§ = param3;
         this.§?!6§ = this.§!p§;
         this.§=o§ = new Vector.<§ _§>();
      }
      
      public function §6A§() : Boolean
      {
         return this.§=o§.length < this.§""§;
      }
      
      public function § !C§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : § _§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§?!6§;
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
         var sndEffect:§ _§ = new § _§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§"j§);
         if(this.§!p§ == 0)
         {
            sndEffect.§,y§();
         }
         this.§=o§.push(sndEffect);
         return sndEffect;
      }
      
      private function §"j§(param1:Event) : void
      {
         var _loc3_:Vector.<§ _§> = null;
         var _loc4_:§ _§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§ _§ = § _§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§"j§);
         if(this.§=o§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§=o§.splice(this.§=o§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§4D§();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §"U§() : Boolean
      {
         return this.§=o§.length > 0;
      }
      
      public function § !]§() : void
      {
         var _loc1_:§ _§ = null;
         while(this.§=o§.length > 0)
         {
            _loc1_ = this.§=o§[0];
            _loc1_.stop();
            _loc1_.§`o§();
         }
      }
      
      public function §>g§() : void
      {
         var _loc1_:§ _§ = null;
         this.§!p§ = 0;
         for each(_loc1_ in this.§=o§)
         {
            _loc1_.§,y§();
         }
      }
      
      public function §7!a§() : void
      {
         var _loc1_:§ _§ = null;
         this.§!p§ = this.§?!6§;
         for each(_loc1_ in this.§=o§)
         {
            _loc1_.§4v§();
         }
      }
      
      public function §3!N§(param1:String) : § _§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§=o§.length)
         {
            if(§ _§(this.§=o§[_loc2_]).id == param1)
            {
               return § _§(this.§=o§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
