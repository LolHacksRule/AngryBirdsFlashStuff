package §^!K§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §]!L§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §&!A§:int;
      
      public var §!8§:Number = 1;
      
      private var §0h§:Vector.<§9N§>;
      
      private var §7?§:Number;
      
      public function §]!L§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§&!A§ = param2;
         this.§!8§ = param3;
         this.§7?§ = this.§!8§;
         this.§0h§ = new Vector.<§9N§>();
      }
      
      public function §,q§() : Boolean
      {
         return this.§0h§.length < this.§&!A§;
      }
      
      public function §-N§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §9N§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§7?§;
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
         var sndEffect:§9N§ = new §9N§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§%!;§);
         if(this.§!8§ == 0)
         {
            sndEffect.§8!P§();
         }
         this.§0h§.push(sndEffect);
         return sndEffect;
      }
      
      private function §%!;§(param1:Event) : void
      {
         var _loc3_:Vector.<§9N§> = null;
         var _loc4_:§9N§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§9N§ = §9N§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§%!;§);
         if(this.§0h§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§0h§.splice(this.§0h§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§]!>§();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §9! §() : Boolean
      {
         return this.§0h§.length > 0;
      }
      
      public function §?j§() : void
      {
         var _loc1_:§9N§ = null;
         while(this.§0h§.length > 0)
         {
            _loc1_ = this.§0h§[0];
            _loc1_.stop();
            _loc1_.§%!E§();
         }
      }
      
      public function §[!$§() : void
      {
         var _loc1_:§9N§ = null;
         this.§!8§ = 0;
         for each(_loc1_ in this.§0h§)
         {
            _loc1_.§8!P§();
         }
      }
      
      public function §+!=§() : void
      {
         var _loc1_:§9N§ = null;
         this.§!8§ = this.§7?§;
         for each(_loc1_ in this.§0h§)
         {
            _loc1_.§@B§();
         }
      }
      
      public function §^!9§(param1:String) : §9N§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§0h§.length)
         {
            if(§9N§(this.§0h§[_loc2_]).id == param1)
            {
               return §9N§(this.§0h§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
