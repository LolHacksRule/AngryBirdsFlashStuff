package §+[§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §6a§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §@F§:int;
      
      public var §&V§:Number = 1;
      
      private var §5G§:Vector.<§4J§>;
      
      private var §`!G§:Number;
      
      public function §6a§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§@F§ = param2;
         this.§&V§ = param3;
         this.§`!G§ = this.§&V§;
         this.§5G§ = new Vector.<§4J§>();
      }
      
      public function §?Y§() : Boolean
      {
         return this.§5G§.length < this.§@F§;
      }
      
      public function §48§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §4J§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§`!G§;
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
         var sndEffect:§4J§ = new §4J§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§4!1§);
         if(this.§&V§ == 0)
         {
            sndEffect.§8Z§();
         }
         this.§5G§.push(sndEffect);
         return sndEffect;
      }
      
      private function §4!1§(param1:Event) : void
      {
         var _loc3_:Vector.<§4J§> = null;
         var _loc4_:§4J§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§4J§ = §4J§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§4!1§);
         if(this.§5G§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§5G§.splice(this.§5G§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §?d§() : Boolean
      {
         return this.§5G§.length > 0;
      }
      
      public function §^R§() : void
      {
         var _loc1_:§4J§ = null;
         while(this.§5G§.length > 0)
         {
            _loc1_ = this.§5G§[0];
            _loc1_.stop();
            _loc1_.§7`§();
         }
      }
      
      public function §?T§() : void
      {
         var _loc1_:§4J§ = null;
         this.§&V§ = 0;
         for each(_loc1_ in this.§5G§)
         {
            _loc1_.§8Z§();
         }
      }
      
      public function §?#§() : void
      {
         var _loc1_:§4J§ = null;
         this.§&V§ = this.§`!G§;
         for each(_loc1_ in this.§5G§)
         {
            _loc1_.§=!I§();
         }
      }
      
      public function §"3§(param1:String) : §4J§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§5G§.length)
         {
            if(§4J§(this.§5G§[_loc2_]).id == param1)
            {
               return §4J§(this.§5G§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
