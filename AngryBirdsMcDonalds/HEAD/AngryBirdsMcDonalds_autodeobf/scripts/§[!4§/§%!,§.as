package §[!4§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §%!,§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §[!T§:int;
      
      public var §&!2§:Number = 1;
      
      private var §@!k§:Vector.<§^!W§>;
      
      private var §@`§:Number;
      
      public function §%!,§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§[!T§ = param2;
         this.§&!2§ = param3;
         this.§@`§ = this.§&!2§;
         this.§@!k§ = new Vector.<§^!W§>();
      }
      
      public function §;!T§() : Boolean
      {
         return this.§@!k§.length < this.§[!T§;
      }
      
      public function §4h§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §^!W§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§@`§;
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
         var sndEffect:§^!W§ = new §^!W§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§'a§);
         if(this.§&!2§ == 0)
         {
            sndEffect.§2!I§();
         }
         this.§@!k§.push(sndEffect);
         return sndEffect;
      }
      
      private function §'a§(param1:Event) : void
      {
         var _loc3_:Vector.<§^!W§> = null;
         var _loc4_:§^!W§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§^!W§ = §^!W§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§'a§);
         if(this.§@!k§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§@!k§.splice(this.§@!k§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§#!_§();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §&!H§() : Boolean
      {
         return this.§@!k§.length > 0;
      }
      
      public function §4A§() : void
      {
         var _loc1_:§^!W§ = null;
         while(this.§@!k§.length > 0)
         {
            _loc1_ = this.§@!k§[0];
            _loc1_.stop();
            _loc1_.§^a§();
         }
      }
      
      public function §^[§() : void
      {
         var _loc1_:§^!W§ = null;
         this.§&!2§ = 0;
         for each(_loc1_ in this.§@!k§)
         {
            _loc1_.§2!I§();
         }
      }
      
      public function § H§() : void
      {
         var _loc1_:§^!W§ = null;
         this.§&!2§ = this.§@`§;
         for each(_loc1_ in this.§@!k§)
         {
            _loc1_.§@8§();
         }
      }
      
      public function §!]§(param1:String) : §^!W§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§@!k§.length)
         {
            if(§^!W§(this.§@!k§[_loc2_]).id == param1)
            {
               return §^!W§(this.§@!k§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
