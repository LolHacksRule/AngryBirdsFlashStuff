package §'0§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §[>§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §7!2§:int;
      
      public var §"=§:Number = 1;
      
      private var §6!L§:Vector.<§]!=§>;
      
      private var §<!$§:Number;
      
      public function §[>§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§7!2§ = param2;
         this.§"=§ = param3;
         this.§<!$§ = this.§"=§;
         this.§6!L§ = new Vector.<§]!=§>();
      }
      
      public function §'!1§() : Boolean
      {
         return this.§6!L§.length < this.§7!2§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §]!=§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§<!$§;
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
         var sndEffect:§]!=§ = new §]!=§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§1!$§);
         if(this.§"=§ == 0)
         {
            sndEffect.§'t§();
         }
         this.§6!L§.push(sndEffect);
         return sndEffect;
      }
      
      private function §1!$§(param1:Event) : void
      {
         var _loc3_:Vector.<§]!=§> = null;
         var _loc4_:§]!=§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§]!=§ = §]!=§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§1!$§);
         if(this.§6!L§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§6!L§.splice(this.§6!L§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §50§() : Boolean
      {
         return this.§6!L§.length > 0;
      }
      
      public function §^F§() : void
      {
         var _loc1_:§]!=§ = null;
         while(this.§6!L§.length > 0)
         {
            _loc1_ = this.§6!L§[0];
            _loc1_.stop();
            _loc1_.§#?§();
         }
      }
      
      public function §-!8§() : void
      {
         var _loc1_:§]!=§ = null;
         this.§"=§ = 0;
         for each(_loc1_ in this.§6!L§)
         {
            _loc1_.§'t§();
         }
      }
      
      public function §`l§() : void
      {
         var _loc1_:§]!=§ = null;
         this.§"=§ = this.§<!$§;
         for each(_loc1_ in this.§6!L§)
         {
            _loc1_.§[Z§();
         }
      }
      
      public function §&H§(param1:String) : §]!=§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§6!L§.length)
         {
            if(§]!=§(this.§6!L§[_loc2_]).id == param1)
            {
               return §]!=§(this.§6!L§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
