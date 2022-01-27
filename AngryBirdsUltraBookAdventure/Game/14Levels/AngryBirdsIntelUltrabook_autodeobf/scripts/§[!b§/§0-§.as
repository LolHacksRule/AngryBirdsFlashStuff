package §[!b§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §0-§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §+g§:int;
      
      public var §'9§:Number = 1;
      
      private var §,!9§:Vector.<§,!W§>;
      
      private var §]!h§:Number;
      
      public function §0-§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§+g§ = param2;
         this.§'9§ = param3;
         this.§]!h§ = this.§'9§;
         this.§,!9§ = new Vector.<§,!W§>();
      }
      
      public function §@m§() : Boolean
      {
         return this.§,!9§.length < this.§+g§;
      }
      
      public function §#3§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §,!W§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§]!h§;
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
         var sndEffect:§,!W§ = new §,!W§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§"!z§);
         if(this.§'9§ == 0)
         {
            sndEffect.§3!?§();
         }
         this.§,!9§.push(sndEffect);
         return sndEffect;
      }
      
      private function §"!z§(param1:Event) : void
      {
         var _loc3_:Vector.<§,!W§> = null;
         var _loc4_:§,!W§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§,!W§ = §,!W§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§"!z§);
         if(this.§,!9§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§,!9§.splice(this.§,!9§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §!!#§() : Boolean
      {
         return this.§,!9§.length > 0;
      }
      
      public function §4!$§() : void
      {
         var _loc1_:§,!W§ = null;
         while(this.§,!9§.length > 0)
         {
            _loc1_ = this.§,!9§[0];
            _loc1_.stop();
            _loc1_.§@!M§();
         }
      }
      
      public function §"A§() : void
      {
         var _loc1_:§,!W§ = null;
         this.§'9§ = 0;
         for each(_loc1_ in this.§,!9§)
         {
            _loc1_.§3!?§();
         }
      }
      
      public function §^^§() : void
      {
         var _loc1_:§,!W§ = null;
         this.§'9§ = this.§]!h§;
         for each(_loc1_ in this.§,!9§)
         {
            _loc1_.§9!n§();
         }
      }
      
      public function §9K§(param1:String) : §,!W§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§,!9§.length)
         {
            if(§,!W§(this.§,!9§[_loc2_]).id == param1)
            {
               return §,!W§(this.§,!9§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
