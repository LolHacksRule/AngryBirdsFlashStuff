package §&^§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §-!F§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §@j§:int;
      
      public var §;!6§:Number = 1;
      
      private var §4!3§:Vector.<§&r§>;
      
      private var §1!<§:Number;
      
      public function §-!F§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§@j§ = param2;
         this.§;!6§ = param3;
         this.§1!<§ = this.§;!6§;
         this.§4!3§ = new Vector.<§&r§>();
      }
      
      public function §^P§() : Boolean
      {
         return this.§4!3§.length < this.§@j§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §&r§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§1!<§;
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
         var sndEffect:§&r§ = new §&r§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§48§);
         if(this.§;!6§ == 0)
         {
            sndEffect.§<3§();
         }
         this.§4!3§.push(sndEffect);
         return sndEffect;
      }
      
      private function §48§(param1:Event) : void
      {
         var _loc3_:Vector.<§&r§> = null;
         var _loc4_:§&r§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§&r§ = §&r§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§48§);
         if(this.§4!3§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§4!3§.splice(this.§4!3§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §+c§() : Boolean
      {
         return this.§4!3§.length > 0;
      }
      
      public function §=0§() : void
      {
         var _loc1_:§&r§ = null;
         while(this.§4!3§.length > 0)
         {
            _loc1_ = this.§4!3§[0];
            _loc1_.stop();
            _loc1_.§-u§();
         }
      }
      
      public function §&g§() : void
      {
         var _loc1_:§&r§ = null;
         this.§;!6§ = 0;
         for each(_loc1_ in this.§4!3§)
         {
            _loc1_.§<3§();
         }
      }
      
      public function §=@§() : void
      {
         var _loc1_:§&r§ = null;
         this.§;!6§ = this.§1!<§;
         for each(_loc1_ in this.§4!3§)
         {
            _loc1_.§<!3§();
         }
      }
      
      public function §0w§(param1:String) : §&r§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§4!3§.length)
         {
            if(§&r§(this.§4!3§[_loc2_]).id == param1)
            {
               return §&r§(this.§4!3§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
