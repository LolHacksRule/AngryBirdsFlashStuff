package §#";§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §,%§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §2"?§:int;
      
      public var §[+§:Number = 1;
      
      private var §`w§:Vector.<§8V§>;
      
      private var §<!Q§:Number;
      
      public function §,%§(param1:String, param2:int, param3:Number)
      {
         super();
         this.mName = param1;
         this.§2"?§ = param2;
         this.§[+§ = param3;
         this.§<!Q§ = this.§[+§;
         this.§`w§ = new Vector.<§8V§>();
      }
      
      public function §+!k§() : Boolean
      {
         return this.§`w§.length < this.§2"?§;
      }
      
      public function §9"2§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §8V§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         if(volume < 0)
         {
            volume = this.§<!Q§;
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
         var sndEffect:§8V§ = new §8V§(sndChannel,sndID);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§&!o§);
         if(this.§[+§ == 0)
         {
            sndEffect.§`§();
         }
         this.§`w§.push(sndEffect);
         return sndEffect;
      }
      
      private function §&!o§(param1:Event) : void
      {
         var _loc3_:Vector.<§8V§> = null;
         var _loc4_:§8V§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§8V§ = §8V§(param1.currentTarget);
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§&!o§);
         if(this.§`w§.indexOf(_loc2_) > -1)
         {
            _loc3_ = this.§`w§.splice(this.§`w§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            dispatchEvent(_loc5_);
         }
      }
      
      public function §4C§() : Boolean
      {
         return this.§`w§.length > 0;
      }
      
      public function §4"#§() : void
      {
         var _loc1_:§8V§ = null;
         while(this.§`w§.length > 0)
         {
            _loc1_ = this.§`w§[0];
            _loc1_.stop();
            _loc1_.§"",§();
         }
      }
      
      public function §"g§() : void
      {
         var _loc1_:§8V§ = null;
         this.§[+§ = 0;
         for each(_loc1_ in this.§`w§)
         {
            _loc1_.§`§();
         }
      }
      
      public function §=x§() : void
      {
         var _loc1_:§8V§ = null;
         this.§[+§ = this.§<!Q§;
         for each(_loc1_ in this.§`w§)
         {
            _loc1_.§5!t§();
         }
      }
      
      public function §<!j§(param1:String) : §8V§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§`w§.length)
         {
            if(§8V§(this.§`w§[_loc2_]).id == param1)
            {
               return §8V§(this.§`w§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
