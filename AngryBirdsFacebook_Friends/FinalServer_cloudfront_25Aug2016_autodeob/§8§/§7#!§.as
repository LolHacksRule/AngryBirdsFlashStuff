package §8§#7
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §7#!§ extends EventDispatcher
   {
       
      
      public var §2!4§:String;
      
      public var §+#q§:int;
      
      public var §>!B§:Number = 1;
      
      private var §>$"§:Vector.<§@!"§>;
      
      private var §;n§:Number;
      
      private var §<!c§:Vector.<§@#=§>;
      
      public function §7#!§(param1:String, param2:int, param3:Number)
      {
         super();
         this.§2!4§ = param1;
         this.§+#q§ = param2;
         this.§>!B§ = param3;
         this.§;n§ = this.§>!B§;
         this.§>$"§ = new Vector.<§@!"§>();
         this.§<!c§ = new Vector.<§@#=§>();
      }
      
      public function §#d§() : Boolean
      {
         var _loc2_:§@!"§ = null;
         if(this.§>$"§.length < this.§+#q§)
         {
            return true;
         }
         var _loc1_:int = this.§>$"§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§>$"§[_loc1_];
            if(_loc2_.§&"e§ <= 0)
            {
               _loc2_.§+Z§();
            }
            _loc1_--;
         }
         return this.§>$"§.length < this.§+#q§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §@!"§
      {
         if(param4 < 0)
         {
            param4 = this.§;n§;
         }
         else
         {
            param4 *= this.§;n§;
         }
         return this.play(param1,param2,param3,param4,param5);
      }
      
      private function play(param1:Sound, param2:String, param3:int, param4:Number, param5:Number) : §@!"§
      {
         var snd:Sound = param1;
         var sndID:String = param2;
         var loop:int = param3;
         var volume:Number = param4;
         var startTime:Number = param5;
         var soundTransform:SoundTransform = new SoundTransform(volume);
         var sndChannel:SoundChannel = null;
         try
         {
            sndChannel = snd.play(startTime,0,soundTransform);
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
         var sndEffect:§@!"§ = new §@!"§(sndChannel,sndID,snd.length * (loop + 1),loop);
         sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§&!6§);
         if(this.§>!B§ == 0)
         {
            sndEffect.§0$2§();
         }
         this.§>$"§.push(sndEffect);
         return sndEffect;
      }
      
      private function §&!6§(param1:Event) : void
      {
         var _loc3_:Sound = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§@!"§ = §@!"§(param1.currentTarget);
         if(_loc2_.§+b§ < _loc2_.§-"T§)
         {
            _loc3_ = §#$+§.§3y§(_loc2_.id);
            this.§4!C§(_loc2_);
            this.play(_loc3_,_loc2_.id,_loc2_.§-"T§ - 1 - _loc2_.§+b§,_loc2_.volume,0);
         }
         else
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§&!6§);
            if(this.§4!C§(_loc2_))
            {
               _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
               dispatchEvent(_loc5_);
            }
         }
      }
      
      private function §4!C§(param1:§@!"§) : Boolean
      {
         var _loc3_:Vector.<§@!"§> = null;
         var _loc2_:Boolean = false;
         if(this.§>$"§.indexOf(param1) > -1)
         {
            _loc3_ = this.§>$"§.splice(this.§>$"§.indexOf(param1),1);
            _loc3_[0].destroy();
            _loc3_ = null;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      public function isPlaying() : Boolean
      {
         return this.§>$"§.length > 0;
      }
      
      public function §#$-§() : void
      {
         var _loc1_:§@!"§ = null;
         while(this.§>$"§.length > 0)
         {
            _loc1_ = this.§>$"§[0];
            _loc1_.§+Z§();
         }
         this.§<!c§.length = 0;
      }
      
      public function §#"r§() : void
      {
         var _loc1_:§@!"§ = null;
         while(this.§>$"§.length > 0)
         {
            _loc1_ = this.§>$"§[0];
            this.§<!c§.push(_loc1_.pause());
         }
      }
      
      public function §;$&§() : void
      {
         var _loc1_:§@#=§ = null;
         var _loc2_:Sound = null;
         for each(_loc1_ in this.§<!c§)
         {
            _loc2_ = §#$+§.§3y§(_loc1_.§]6§);
            if(_loc2_)
            {
               this.playSound(_loc2_,_loc1_.§]6§,_loc1_.loop,_loc1_.volume,_loc1_.startTime);
            }
         }
         this.§<!c§.length = 0;
      }
      
      public function §7#y§() : void
      {
         var _loc1_:§@!"§ = null;
         this.§>!B§ = 0;
         for each(_loc1_ in this.§>$"§)
         {
            _loc1_.§0$2§();
         }
      }
      
      public function §'#§() : void
      {
         var _loc1_:§@!"§ = null;
         this.§>!B§ = this.§;n§;
         for each(_loc1_ in this.§>$"§)
         {
            _loc1_.§+!g§();
         }
      }
      
      public function get §^7§() : int
      {
         return this.§>$"§.length;
      }
      
      public function §="<§(param1:String) : §@!"§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§>$"§.length)
         {
            if(§@!"§(this.§>$"§[_loc2_]).id == param1)
            {
               return §@!"§(this.§>$"§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §1#F§(param1:int) : §@!"§
      {
         return this.§>$"§[param1];
      }
   }
}
