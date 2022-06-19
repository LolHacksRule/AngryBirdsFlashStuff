package §1k§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class § !M§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §@!2§:int;
      
      public var §3N§:Number = 1;
      
      private var §;">§:Vector.<§'"9§>;
      
      private var §4!,§:Number;
      
      public function § !M§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§@!2§ = param2;
         this.§3N§ = param3;
         this.§4!,§ = this.§3N§;
         this.§;">§ = new Vector.<§'"9§>();
      }
      
      public function §'T§() : Boolean
      {
         return this.§;">§.length < this.§@!2§;
      }
      
      public function §>f§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §'"9§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§4!,§;
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
         var sndEffect:§'"9§ = new §'"9§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§!!]§);
         if(this.§3N§ == 0)
         {
            sndEffect.§-N§();
         }
         this.§;">§.push(sndEffect);
         return sndEffect;
      }
      
      private function §!!]§(param1:Event) : void
      {
         var _loc3_:Vector.<§'"9§> = null;
         var _loc4_:§'"9§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§'"9§ = §'"9§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§!!]§);
         if(this.§;">§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§;">§.splice(this.§;">§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §^^§() : Boolean
      {
         return this.§;">§.length > 0;
      }
      
      public function §9!0§() : void
      {
         var _loc1_:§'"9§ = null;
         while(this.§;">§.length > 0)
         {
            _loc1_ = this.§;">§[0];
            _loc1_.stop();
            _loc1_.§^!5§();
         }
      }
      
      public function § w§() : void
      {
         var _loc1_:§'"9§ = null;
         this.§3N§ = 0;
         for each(_loc1_ in this.§;">§)
         {
            _loc1_.§-N§();
         }
      }
      
      public function §"O§() : void
      {
         var _loc1_:§'"9§ = null;
         this.§3N§ = this.§4!,§;
         for each(_loc1_ in this.§;">§)
         {
            _loc1_.§`!3§();
         }
      }
      
      public function §finally§(param1:String) : §'"9§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§;">§.length)
         {
            if(§'"9§(this.§;">§[_loc2_]).id == param1)
            {
               return §'"9§(this.§;">§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
