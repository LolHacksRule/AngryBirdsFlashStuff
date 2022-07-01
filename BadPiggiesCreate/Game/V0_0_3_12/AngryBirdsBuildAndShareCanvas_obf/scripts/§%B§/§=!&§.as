package §%B§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §=!&§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §9!_§:int;
      
      public var §+!c§:Number = 1;
      
      private var §0!t§:Vector.<§7!9§>;
      
      private var §^!T§:Number;
      
      public function §=!&§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§9!_§ = param2;
         this.§+!c§ = param3;
         this.§^!T§ = this.§+!c§;
         this.§0!t§ = new Vector.<§7!9§>();
      }
      
      public function §&!T§() : Boolean
      {
         return this.§0!t§.length < this.§9!_§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §7!9§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§^!T§;
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
         var sndEffect:§7!9§ = new §7!9§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§8X§);
         if(this.§+!c§ == 0)
         {
            sndEffect.§+![§();
         }
         this.§0!t§.push(sndEffect);
         return sndEffect;
      }
      
      private function §8X§(param1:Event) : void
      {
         var _loc3_:Vector.<§7!9§> = null;
         var _loc4_:§7!9§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§7!9§ = §7!9§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§8X§);
         if(this.§0!t§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§0!t§.splice(this.§0!t§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §2"'§() : Boolean
      {
         return this.§0!t§.length > 0;
      }
      
      public function §3,§() : void
      {
         var _loc1_:§7!9§ = null;
         while(this.§0!t§.length > 0)
         {
            _loc1_ = this.§0!t§[0];
            _loc1_.stop();
            _loc1_.§'Q§();
         }
      }
      
      public function §%!6§() : void
      {
         var _loc1_:§7!9§ = null;
         this.§+!c§ = 0;
         for each(_loc1_ in this.§0!t§)
         {
            _loc1_.§+![§();
         }
      }
      
      public function §]!m§() : void
      {
         var _loc1_:§7!9§ = null;
         this.§+!c§ = this.§^!T§;
         for each(_loc1_ in this.§0!t§)
         {
            _loc1_.§9!1§();
         }
      }
      
      public function §?!+§(param1:String) : §7!9§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§0!t§.length)
         {
            if(§7!9§(this.§0!t§[_loc2_]).id == param1)
            {
               return §7!9§(this.§0!t§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
