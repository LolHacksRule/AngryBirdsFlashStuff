package §1!k§
{
   import § "'§.§3@§;
   import §<!3§.§'+§;
   import §=b§.§%"2§;
   import §=b§.§,7§;
   import §`!Y§.§&!H§;
   import flash.events.Event;
   
   public class §^!B§ extends §,7§ implements §?H§
   {
       
      
      protected var §=!r§:uint = 0;
      
      protected var §<!=§:Number = 0;
      
      protected var §#e§:Boolean = false;
      
      protected var §1!I§:§%"2§;
      
      protected var §&!t§:§'+§;
      
      protected var §8q§:Number;
      
      protected var §]R§:ClassicHandlers;
      
      protected var §[m§:Number = 0;
      
      protected var §;,§:Boolean = true;
      
      public function §^!B§(param1:§%"2§, param2:Number)
      {
         super();
         this.§1!I§ = param1;
         this.§<!=§ = param2;
      }
      
      public function get onStop() : Function
      {
         return this.§]R§ != null ? this.§]R§.onStop : null;
      }
      
      public function set onStop(param1:Function) : void
      {
         this.§%!'§().onStop = param1;
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         if(this.§&!t§ != null)
         {
            return this.§&!t§.willTrigger(param1);
         }
         return false;
      }
      
      protected function newInstance() : §^!B§
      {
         return null;
      }
      
      public function get onUpdate() : Function
      {
         return this.§]R§ != null ? this.§]R§.onUpdate : null;
      }
      
      public function get §3!-§() : §%"2§
      {
         return this.§1!I§;
      }
      
      public function get duration() : Number
      {
         return this.§[m§;
      }
      
      public function gotoAndStop(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§[m§)
         {
            param1 = this.§[m§;
         }
         this.§<!=§ = param1;
         this.internalUpdate(param1);
         if((this.§=!r§ & 4) != 0)
         {
            this.§&!t§.dispatchEvent(new §&!H§(§&!H§.§5Y§));
         }
         if(this.§]R§ != null && this.§]R§.onUpdate != null)
         {
            this.§]R§.onUpdate.apply(null,this.§]R§.onUpdateParams);
         }
         this.stop();
      }
      
      public function get onPlayParams() : Array
      {
         return this.§]R§ != null ? this.§]R§.onPlayParams : null;
      }
      
      public function stop() : void
      {
         if(this.§#e§)
         {
            this.§#e§ = false;
            if((this.§=!r§ & 2) != 0)
            {
               this.§&!t§.dispatchEvent(new §&!H§(§&!H§.§^r§));
            }
            if(this.§]R§ != null && this.§]R§.onStop != null)
            {
               this.§]R§.onStop.apply(null,this.§]R§.onStopParams);
            }
         }
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§%!'§().onUpdate = param1;
      }
      
      public function firePlay() : void
      {
         if((this.§=!r§ & 1) != 0)
         {
            this.§&!t§.dispatchEvent(new §&!H§(§&!H§.PLAY));
         }
         if(this.§]R§ != null && this.§]R§.onPlay != null)
         {
            this.§]R§.onPlay.apply(null,this.§]R§.onPlayParams);
         }
      }
      
      public function get §if §() : Boolean
      {
         return this.§#e§;
      }
      
      public function get onUpdateParams() : Array
      {
         return this.§]R§ != null ? this.§]R§.onUpdateParams : null;
      }
      
      public function get position() : Number
      {
         return this.§<!=§;
      }
      
      public function set onPlayParams(param1:Array) : void
      {
         this.§%!'§().onPlayParams = param1;
      }
      
      public function get onPlay() : Function
      {
         return this.§]R§ != null ? this.§]R§.onPlay : null;
      }
      
      public function set §!^§(param1:Boolean) : void
      {
         this.§;,§ = param1;
      }
      
      protected function §5!u§() : void
      {
         if(this.§&!t§.willTrigger(§&!H§.PLAY))
         {
            this.§=!r§ |= 1;
         }
         else
         {
            this.§=!r§ &= ~1;
         }
         if(this.§&!t§.willTrigger(§&!H§.§^r§))
         {
            this.§=!r§ |= 2;
         }
         else
         {
            this.§=!r§ &= ~2;
         }
         if(this.§&!t§.willTrigger(§&!H§.§5Y§))
         {
            this.§=!r§ |= 4;
         }
         else
         {
            this.§=!r§ &= ~4;
         }
         if(this.§&!t§.willTrigger(§&!H§.COMPLETE))
         {
            this.§=!r§ |= 8;
         }
         else
         {
            this.§=!r§ &= ~8;
         }
      }
      
      public function set onCompleteParams(param1:Array) : void
      {
         this.§%!'§().onCompleteParams = param1;
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         if(this.§&!t§ != null)
         {
            return this.§&!t§.dispatchEvent(param1);
         }
         return false;
      }
      
      public function get onComplete() : Function
      {
         return this.§]R§ != null ? this.§]R§.onComplete : null;
      }
      
      public function §!"5§() : void
      {
         if(this.§#e§)
         {
            this.stop();
         }
         else
         {
            this.play();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         if(this.§<!=§ < this.§[m§ && this.§[m§ <= param1 || 0 < this.§<!=§ && param1 <= 0)
         {
            _loc2_ = true;
         }
         this.§<!=§ = param1;
         this.internalUpdate(param1);
         if((this.§=!r§ & 4) != 0)
         {
            this.§&!t§.dispatchEvent(new §&!H§(§&!H§.§5Y§));
         }
         if(this.§]R§ != null && this.§]R§.onUpdate != null)
         {
            this.§]R§.onUpdate.apply(null,this.§]R§.onUpdateParams);
         }
         if(_loc2_)
         {
            if((this.§=!r§ & 8) != 0)
            {
               this.§&!t§.dispatchEvent(new §&!H§(§&!H§.COMPLETE));
            }
            if(this.§]R§ != null && this.§]R§.onComplete != null)
            {
               this.§]R§.onComplete.apply(null,this.§]R§.onCompleteParams);
            }
         }
      }
      
      public function play() : void
      {
         var _loc1_:Number = NaN;
         if(!this.§#e§)
         {
            if(this.§<!=§ >= this.§[m§)
            {
               this.§<!=§ = 0;
            }
            _loc1_ = this.§1!I§.time;
            this.§8q§ = _loc1_ - this.§<!=§;
            this.§#e§ = true;
            this.§1!I§.§`H§(this);
            if((this.§=!r§ & 1) != 0)
            {
               this.§&!t§.dispatchEvent(new §&!H§(§&!H§.PLAY));
            }
            if(this.§]R§ != null && this.§]R§.onPlay != null)
            {
               this.§]R§.onPlay.apply(null,this.§]R§.onPlayParams);
            }
            this.tick(_loc1_);
         }
      }
      
      public function set onStopParams(param1:Array) : void
      {
         this.§%!'§().onStopParams = param1;
      }
      
      public function gotoAndPlay(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§[m§)
         {
            param1 = this.§[m§;
         }
         this.§<!=§ = param1;
         this.play();
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(this.§&!t§ != null)
         {
            this.§&!t§.removeEventListener(param1,param2,param3);
            this.§5!u§();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(this.§&!t§ == null)
         {
            this.§&!t§ = new §'+§(this);
         }
         this.§&!t§.addEventListener(param1,param2,param3,param4,param5);
         this.§5!u§();
      }
      
      public function fireStop() : void
      {
         if((this.§=!r§ & 2) != 0)
         {
            this.§&!t§.dispatchEvent(new §&!H§(§&!H§.§^r§));
         }
         if(this.§]R§ != null && this.§]R§.onStop != null)
         {
            this.§]R§.onStop.apply(null,this.§]R§.onStopParams);
         }
      }
      
      public function get §!^§() : Boolean
      {
         return this.§;,§;
      }
      
      public function clone() : §3@§
      {
         var _loc1_:§^!B§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function get onCompleteParams() : Array
      {
         return this.§]R§ != null ? this.§]R§.onCompleteParams : null;
      }
      
      public function set onUpdateParams(param1:Array) : void
      {
         this.§%!'§().onUpdateParams = param1;
      }
      
      public function get onStopParams() : Array
      {
         return this.§]R§ != null ? this.§]R§.onStopParams : null;
      }
      
      protected function §%!'§() : ClassicHandlers
      {
         return this.§]R§ || (this.§]R§ = new ClassicHandlers());
      }
      
      public function set onPlay(param1:Function) : void
      {
         this.§%!'§().onPlay = param1;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§%!'§().onComplete = param1;
      }
      
      override public function tick(param1:Number) : Boolean
      {
         if(!this.§#e§)
         {
            return true;
         }
         var _loc2_:Number = param1 - this.§8q§;
         this.§<!=§ = _loc2_;
         this.internalUpdate(_loc2_);
         if((this.§=!r§ & 4) != 0)
         {
            this.§&!t§.dispatchEvent(new §&!H§(§&!H§.§5Y§));
         }
         if(this.§]R§ != null && this.§]R§.onUpdate != null)
         {
            this.§]R§.onUpdate.apply(null,this.§]R§.onUpdateParams);
         }
         if(this.§#e§)
         {
            if(_loc2_ >= this.§[m§)
            {
               this.§<!=§ = this.§[m§;
               if(this.§;,§)
               {
                  this.§#e§ = false;
                  if((this.§=!r§ & 8) != 0)
                  {
                     this.§&!t§.dispatchEvent(new §&!H§(§&!H§.COMPLETE));
                  }
                  if(this.§]R§ != null && this.§]R§.onComplete != null)
                  {
                     this.§]R§.onComplete.apply(null,this.§]R§.onCompleteParams);
                  }
                  return true;
               }
               if((this.§=!r§ & 8) != 0)
               {
                  this.§&!t§.dispatchEvent(new §&!H§(§&!H§.COMPLETE));
               }
               if(this.§]R§ != null && this.§]R§.onComplete != null)
               {
                  this.§]R§.onComplete.apply(null,this.§]R§.onCompleteParams);
               }
               this.§<!=§ = _loc2_ - this.§[m§;
               this.§8q§ = param1 - this.§<!=§;
               this.tick(param1);
            }
            return false;
         }
         return true;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         if(this.§&!t§ != null)
         {
            return this.§&!t§.hasEventListener(param1);
         }
         return false;
      }
      
      protected function copyFrom(param1:§^!B§) : void
      {
         this.§1!I§ = param1.§1!I§;
         this.§[m§ = param1.§[m§;
         this.§;,§ = param1.§;,§;
         if(param1.§]R§ != null)
         {
            this.§]R§ = new ClassicHandlers();
            this.§]R§.copyFrom(param1.§]R§);
         }
         if(param1.§&!t§ != null)
         {
            this.§&!t§ = new §'+§(this);
            this.§&!t§.copyFrom(param1.§&!t§);
         }
         this.§=!r§ = param1.§=!r§;
      }
      
      protected function internalUpdate(param1:Number) : void
      {
      }
   }
}

class ClassicHandlers
{
    
   
   public var onStop:Function;
   
   public var onStopParams:Array;
   
   public var onUpdate:Function;
   
   public var onUpdateParams:Array;
   
   public var onPlay:Function;
   
   public var onComplete:Function;
   
   public var onPlayParams:Array;
   
   public var onCompleteParams:Array;
   
   function ClassicHandlers()
   {
      super();
   }
   
   public function copyFrom(param1:ClassicHandlers) : void
   {
      this.onPlay = param1.onPlay;
      this.onPlayParams = param1.onPlayParams;
      this.onStop = param1.onStop;
      this.onStopParams = param1.onStopParams;
      this.onUpdate = param1.onUpdate;
      this.onUpdateParams = param1.onUpdateParams;
      this.onComplete = param1.onComplete;
      this.onCompleteParams = param1.onCompleteParams;
   }
}
