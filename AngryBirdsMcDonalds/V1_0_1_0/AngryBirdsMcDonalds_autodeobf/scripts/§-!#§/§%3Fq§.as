package §-!#§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §?q§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §=!V§:int;
      
      public var §<8§:Number = 1;
      
      private var §!H§:Vector.<§;'§>;
      
      private var §1!o§:Number;
      
      public function §?q§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§=!V§ = param2;
         this.§<8§ = param3;
         this.§1!o§ = this.§<8§;
         this.§!H§ = new Vector.<§;'§>();
      }
      
      public function §0f§() : Boolean
      {
         return this.§!H§.length < this.§=!V§;
      }
      
      public function §8!G§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §;'§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§1!o§;
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
         var sndEffect:§;'§ = new §;'§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§0!T§);
         if(this.§<8§ == 0)
         {
            sndEffect.§7!n§();
         }
         this.§!H§.push(sndEffect);
         return sndEffect;
      }
      
      private function §0!T§(param1:Event) : void
      {
         var _loc3_:Vector.<§;'§> = null;
         var _loc4_:§;'§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§;'§ = §;'§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§0!T§);
         if(this.§!H§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§!H§.splice(this.§!H§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§3G§();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §=!n§() : Boolean
      {
         return this.§!H§.length > 0;
      }
      
      public function §#!a§() : void
      {
         var _loc1_:§;'§ = null;
         while(this.§!H§.length > 0)
         {
            _loc1_ = this.§!H§[0];
            _loc1_.stop();
            _loc1_.§-!P§();
         }
      }
      
      public function §54§() : void
      {
         var _loc1_:§;'§ = null;
         this.§<8§ = 0;
         for each(_loc1_ in this.§!H§)
         {
            _loc1_.§7!n§();
         }
      }
      
      public function §1t§() : void
      {
         var _loc1_:§;'§ = null;
         this.§<8§ = this.§1!o§;
         for each(_loc1_ in this.§!H§)
         {
            _loc1_.§!!p§();
         }
      }
      
      public function §=!L§(param1:String) : §;'§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!H§.length)
         {
            if(§;'§(this.§!H§[_loc2_]).id == param1)
            {
               return §;'§(this.§!H§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
