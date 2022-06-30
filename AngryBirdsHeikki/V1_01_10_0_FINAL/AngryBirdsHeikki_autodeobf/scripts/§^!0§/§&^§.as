package §^!0§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §&^§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §7!V§:int;
      
      public var §,8§:Number = 1;
      
      private var §[Q§:Vector.<§4E§>;
      
      private var §'S§:Number;
      
      public function §&^§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§7!V§ = param2;
         this.§,8§ = param3;
         this.§'S§ = this.§,8§;
         this.§[Q§ = new Vector.<§4E§>();
      }
      
      public function §`!Q§() : Boolean
      {
         return this.§[Q§.length < this.§7!V§;
      }
      
      public function §6!#§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §4E§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§'S§;
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
         var sndEffect:§4E§ = new §4E§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§<z§);
         if(this.§,8§ == 0)
         {
            sndEffect.§#!b§();
         }
         this.§[Q§.push(sndEffect);
         return sndEffect;
      }
      
      private function §<z§(param1:Event) : void
      {
         var _loc3_:Vector.<§4E§> = null;
         var _loc4_:§4E§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§4E§ = §4E§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§<z§);
         if(this.§[Q§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§[Q§.splice(this.§[Q§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§&$§();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §&A§() : Boolean
      {
         return this.§[Q§.length > 0;
      }
      
      public function §=!7§() : void
      {
         var _loc1_:§4E§ = null;
         while(this.§[Q§.length > 0)
         {
            _loc1_ = this.§[Q§[0];
            _loc1_.stop();
            _loc1_.§6`§();
         }
      }
      
      public function §6!;§() : void
      {
         var _loc1_:§4E§ = null;
         this.§,8§ = 0;
         for each(_loc1_ in this.§[Q§)
         {
            _loc1_.§#!b§();
         }
      }
      
      public function §2!X§() : void
      {
         var _loc1_:§4E§ = null;
         this.§,8§ = this.§'S§;
         for each(_loc1_ in this.§[Q§)
         {
            _loc1_.§6E§();
         }
      }
      
      public function §8!-§(param1:String) : §4E§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§[Q§.length)
         {
            if(§4E§(this.§[Q§[_loc2_]).id == param1)
            {
               return §4E§(this.§[Q§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
