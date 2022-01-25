package §]^§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §5!§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §]!`§:int;
      
      public var §`!B§:Number = 1;
      
      private var §%f§:Vector.<§1!K§>;
      
      private var §>!L§:Number;
      
      public function §5!§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§]!`§ = param2;
         this.§`!B§ = param3;
         this.§>!L§ = this.§`!B§;
         this.§%f§ = new Vector.<§1!K§>();
      }
      
      public function § !+§() : Boolean
      {
         return this.§%f§.length < this.§]!`§;
      }
      
      public function §4W§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §1!K§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§>!L§;
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
         var sndEffect:§1!K§ = new §1!K§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§^!E§);
         if(this.§`!B§ == 0)
         {
            sndEffect.§@!<§();
         }
         this.§%f§.push(sndEffect);
         return sndEffect;
      }
      
      private function §^!E§(param1:Event) : void
      {
         var _loc3_:Vector.<§1!K§> = null;
         var _loc4_:§1!K§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§1!K§ = §1!K§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§^!E§);
         if(this.§%f§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§%f§.splice(this.§%f§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§,!'§();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §4!V§() : Boolean
      {
         return this.§%f§.length > 0;
      }
      
      public function §]!Z§() : void
      {
         var _loc1_:§1!K§ = null;
         while(this.§%f§.length > 0)
         {
            _loc1_ = this.§%f§[0];
            _loc1_.stop();
            _loc1_.§0!K§();
         }
      }
      
      public function §`!S§() : void
      {
         var _loc1_:§1!K§ = null;
         this.§`!B§ = 0;
         for each(_loc1_ in this.§%f§)
         {
            _loc1_.§@!<§();
         }
      }
      
      public function §0d§() : void
      {
         var _loc1_:§1!K§ = null;
         this.§`!B§ = this.§>!L§;
         for each(_loc1_ in this.§%f§)
         {
            _loc1_.§1!]§();
         }
      }
      
      public function §?!>§(param1:String) : §1!K§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§%f§.length)
         {
            if(§1!K§(this.§%f§[_loc2_]).id == param1)
            {
               return §1!K§(this.§%f§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
