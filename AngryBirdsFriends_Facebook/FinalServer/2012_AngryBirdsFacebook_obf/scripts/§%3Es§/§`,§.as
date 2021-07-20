package §>s§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §`,§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §>R§:int;
      
      public var §1"B§:Number = 1;
      
      private var §[X§:Vector.<§9!u§>;
      
      private var §&W§:Number;
      
      public function §`,§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§>R§ = param2;
         this.§1"B§ = param3;
         this.§&W§ = this.§1"B§;
         this.§[X§ = new Vector.<§9!u§>();
      }
      
      public function §4Z§() : Boolean
      {
         return this.§[X§.length < this.§>R§;
      }
      
      public function §]!N§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §9!u§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§&W§;
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
         var sndEffect:§9!u§ = new §9!u§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§><§);
         if(this.§1"B§ == 0)
         {
            sndEffect.§;E§();
         }
         this.§[X§.push(sndEffect);
         return sndEffect;
      }
      
      private function §><§(param1:Event) : void
      {
         var _loc3_:Vector.<§9!u§> = null;
         var _loc4_:§9!u§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§9!u§ = §9!u§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§><§);
         if(this.§[X§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§[X§.splice(this.§[X§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §%![§() : Boolean
      {
         return this.§[X§.length > 0;
      }
      
      public function §2!2§() : void
      {
         var _loc1_:§9!u§ = null;
         while(this.§[X§.length > 0)
         {
            _loc1_ = this.§[X§[0];
            _loc1_.stop();
            _loc1_.§ Q§();
         }
      }
      
      public function §0x§() : void
      {
         var _loc1_:§9!u§ = null;
         this.§1"B§ = 0;
         for each(_loc1_ in this.§[X§)
         {
            _loc1_.§;E§();
         }
      }
      
      public function §#!0§() : void
      {
         var _loc1_:§9!u§ = null;
         this.§1"B§ = this.§&W§;
         for each(_loc1_ in this.§[X§)
         {
            _loc1_.§>!M§();
         }
      }
      
      public function §]m§(param1:String) : §9!u§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§[X§.length)
         {
            if(§9!u§(this.§[X§[_loc2_]).id == param1)
            {
               return §9!u§(this.§[X§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
