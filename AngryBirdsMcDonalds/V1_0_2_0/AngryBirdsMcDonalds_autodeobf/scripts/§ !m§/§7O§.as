package § !m§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §7O§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §8!Y§:int;
      
      public var §6W§:Number = 1;
      
      private var §,J§:Vector.<§ !M§>;
      
      private var §7!O§:Number;
      
      public function §7O§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§8!Y§ = param2;
         this.§6W§ = param3;
         this.§7!O§ = this.§6W§;
         this.§,J§ = new Vector.<§ !M§>();
      }
      
      public function §2!D§() : Boolean
      {
         return this.§,J§.length < this.§8!Y§;
      }
      
      public function §-a§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : § !M§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§7!O§;
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
         var sndEffect:§ !M§ = new § !M§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§<m§);
         if(this.§6W§ == 0)
         {
            sndEffect.§=!%§();
         }
         this.§,J§.push(sndEffect);
         return sndEffect;
      }
      
      private function §<m§(param1:Event) : void
      {
         var _loc3_:Vector.<§ !M§> = null;
         var _loc4_:§ !M§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§ !M§ = § !M§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§<m§);
         if(this.§,J§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§,J§.splice(this.§,J§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§[d§();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §['§() : Boolean
      {
         return this.§,J§.length > 0;
      }
      
      public function §>!U§() : void
      {
         var _loc1_:§ !M§ = null;
         while(this.§,J§.length > 0)
         {
            _loc1_ = this.§,J§[0];
            _loc1_.stop();
            _loc1_.§34§();
         }
      }
      
      public function §!-§() : void
      {
         var _loc1_:§ !M§ = null;
         this.§6W§ = 0;
         for each(_loc1_ in this.§,J§)
         {
            _loc1_.§=!%§();
         }
      }
      
      public function §null§() : void
      {
         var _loc1_:§ !M§ = null;
         this.§6W§ = this.§7!O§;
         for each(_loc1_ in this.§,J§)
         {
            _loc1_.§3!&§();
         }
      }
      
      public function §30§(param1:String) : § !M§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§,J§.length)
         {
            if(§ !M§(this.§,J§[_loc2_]).id == param1)
            {
               return § !M§(this.§,J§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
