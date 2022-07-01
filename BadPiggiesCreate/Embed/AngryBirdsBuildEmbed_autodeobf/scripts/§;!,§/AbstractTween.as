package §;!,§
{
   import §4!7§.§%!m§;
   import §4!7§.§,u§;
   import §?!4§.§=Y§;
   import §]!q§.§=;§;
   import §]s§.ClonableEventDispatcher;
   import flash.events.Event;
   
   public class AbstractTween extends §,u§ implements §#>§
   {
       
      
      protected var §8^§:uint = 0;
      
      protected var §]!N§:Number = 0;
      
      protected var §5N§:Boolean = false;
      
      protected var §5!§:§%!m§;
      
      protected var §'!$§:ClonableEventDispatcher;
      
      protected var §5_§:Number;
      
      protected var §+!v§:ClassicHandlers;
      
      protected var §1J§:Number = 0;
      
      protected var §72§:Boolean = true;
      
      public function AbstractTween(param1:§%!m§, param2:Number)
      {
         super();
         this.§5!§ = param1;
         this.§]!N§ = param2;
      }
      
      public function get onStop() : Function
      {
         return this.§+!v§ != null ? this.§+!v§.onStop : null;
      }
      
      public function set onStop(param1:Function) : void
      {
         this.§`z§().onStop = param1;
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         if(this.§'!$§ != null)
         {
            return this.§'!$§.willTrigger(param1);
         }
         return false;
      }
      
      protected function newInstance() : AbstractTween
      {
         return null;
      }
      
      public function get onUpdate() : Function
      {
         return this.§+!v§ != null ? this.§+!v§.onUpdate : null;
      }
      
      public function get §-!4§() : §%!m§
      {
         return this.§5!§;
      }
      
      public function get duration() : Number
      {
         return this.§1J§;
      }
      
      public function gotoAndStop(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§1J§)
         {
            param1 = this.§1J§;
         }
         this.§]!N§ = param1;
         this.internalUpdate(param1);
         if((this.§8^§ & 4) != 0)
         {
            this.§'!$§.dispatchEvent(new §=;§(§=;§.§]v§));
         }
         if(this.§+!v§ != null && this.§+!v§.onUpdate != null)
         {
            this.§+!v§.onUpdate.apply(null,this.§+!v§.onUpdateParams);
         }
         this.stop();
      }
      
      public function get onPlayParams() : Array
      {
         return this.§+!v§ != null ? this.§+!v§.onPlayParams : null;
      }
      
      public function stop() : void
      {
         if(this.§5N§)
         {
            this.§5N§ = false;
            if((this.§8^§ & 2) != 0)
            {
               this.§'!$§.dispatchEvent(new §=;§(§=;§.§ !8§));
            }
            if(this.§+!v§ != null && this.§+!v§.onStop != null)
            {
               this.§+!v§.onStop.apply(null,this.§+!v§.onStopParams);
            }
         }
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§`z§().onUpdate = param1;
      }
      
      public function firePlay() : void
      {
         if((this.§8^§ & 1) != 0)
         {
            this.§'!$§.dispatchEvent(new §=;§(§=;§.PLAY));
         }
         if(this.§+!v§ != null && this.§+!v§.onPlay != null)
         {
            this.§+!v§.onPlay.apply(null,this.§+!v§.onPlayParams);
         }
      }
      
      public function get §6e§() : Boolean
      {
         return this.§5N§;
      }
      
      public function get onUpdateParams() : Array
      {
         return this.§+!v§ != null ? this.§+!v§.onUpdateParams : null;
      }
      
      public function get position() : Number
      {
         return this.§]!N§;
      }
      
      public function set onPlayParams(param1:Array) : void
      {
         this.§`z§().onPlayParams = param1;
      }
      
      public function get onPlay() : Function
      {
         return this.§+!v§ != null ? this.§+!v§.onPlay : null;
      }
      
      public function set §@!d§(param1:Boolean) : void
      {
         this.§72§ = param1;
      }
      
      protected function §3!"§() : void
      {
         if(this.§'!$§.willTrigger(§=;§.PLAY))
         {
            this.§8^§ |= 1;
         }
         else
         {
            this.§8^§ &= ~1;
         }
         if(this.§'!$§.willTrigger(§=;§.§ !8§))
         {
            this.§8^§ |= 2;
         }
         else
         {
            this.§8^§ &= ~2;
         }
         if(this.§'!$§.willTrigger(§=;§.§]v§))
         {
            this.§8^§ |= 4;
         }
         else
         {
            this.§8^§ &= ~4;
         }
         if(this.§'!$§.willTrigger(§=;§.COMPLETE))
         {
            this.§8^§ |= 8;
         }
         else
         {
            this.§8^§ &= ~8;
         }
      }
      
      public function set onCompleteParams(param1:Array) : void
      {
         this.§`z§().onCompleteParams = param1;
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         if(this.§'!$§ != null)
         {
            return this.§'!$§.dispatchEvent(param1);
         }
         return false;
      }
      
      public function get onComplete() : Function
      {
         return this.§+!v§ != null ? this.§+!v§.onComplete : null;
      }
      
      public function §&!1§() : void
      {
         if(this.§5N§)
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
         if(this.§]!N§ < this.§1J§ && this.§1J§ <= param1 || 0 < this.§]!N§ && param1 <= 0)
         {
            _loc2_ = true;
         }
         this.§]!N§ = param1;
         this.internalUpdate(param1);
         if((this.§8^§ & 4) != 0)
         {
            this.§'!$§.dispatchEvent(new §=;§(§=;§.§]v§));
         }
         if(this.§+!v§ != null && this.§+!v§.onUpdate != null)
         {
            this.§+!v§.onUpdate.apply(null,this.§+!v§.onUpdateParams);
         }
         if(_loc2_)
         {
            if((this.§8^§ & 8) != 0)
            {
               this.§'!$§.dispatchEvent(new §=;§(§=;§.COMPLETE));
            }
            if(this.§+!v§ != null && this.§+!v§.onComplete != null)
            {
               this.§+!v§.onComplete.apply(null,this.§+!v§.onCompleteParams);
            }
         }
      }
      
      public function play() : void
      {
         var _loc1_:Number = NaN;
         if(!this.§5N§)
         {
            if(this.§]!N§ >= this.§1J§)
            {
               this.§]!N§ = 0;
            }
            _loc1_ = this.§5!§.time;
            this.§5_§ = _loc1_ - this.§]!N§;
            this.§5N§ = true;
            this.§5!§.§'`§(this);
            if((this.§8^§ & 1) != 0)
            {
               this.§'!$§.dispatchEvent(new §=;§(§=;§.PLAY));
            }
            if(this.§+!v§ != null && this.§+!v§.onPlay != null)
            {
               this.§+!v§.onPlay.apply(null,this.§+!v§.onPlayParams);
            }
            this.tick(_loc1_);
         }
      }
      
      public function set onStopParams(param1:Array) : void
      {
         this.§`z§().onStopParams = param1;
      }
      
      public function gotoAndPlay(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§1J§)
         {
            param1 = this.§1J§;
         }
         this.§]!N§ = param1;
         this.play();
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(this.§'!$§ != null)
         {
            this.§'!$§.removeEventListener(param1,param2,param3);
            this.§3!"§();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(this.§'!$§ == null)
         {
            this.§'!$§ = new ClonableEventDispatcher(this);
         }
         this.§'!$§.addEventListener(param1,param2,param3,param4,param5);
         this.§3!"§();
      }
      
      public function fireStop() : void
      {
         if((this.§8^§ & 2) != 0)
         {
            this.§'!$§.dispatchEvent(new §=;§(§=;§.§ !8§));
         }
         if(this.§+!v§ != null && this.§+!v§.onStop != null)
         {
            this.§+!v§.onStop.apply(null,this.§+!v§.onStopParams);
         }
      }
      
      public function get §@!d§() : Boolean
      {
         return this.§72§;
      }
      
      public function clone() : §=Y§
      {
         var _loc1_:AbstractTween = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function get onCompleteParams() : Array
      {
         return this.§+!v§ != null ? this.§+!v§.onCompleteParams : null;
      }
      
      public function set onUpdateParams(param1:Array) : void
      {
         this.§`z§().onUpdateParams = param1;
      }
      
      public function get onStopParams() : Array
      {
         return this.§+!v§ != null ? this.§+!v§.onStopParams : null;
      }
      
      protected function §`z§() : ClassicHandlers
      {
         return this.§+!v§ || (this.§+!v§ = new ClassicHandlers());
      }
      
      public function set onPlay(param1:Function) : void
      {
         this.§`z§().onPlay = param1;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§`z§().onComplete = param1;
      }
      
      override public function tick(param1:Number) : Boolean
      {
         if(!this.§5N§)
         {
            return true;
         }
         var _loc2_:Number = param1 - this.§5_§;
         this.§]!N§ = _loc2_;
         this.internalUpdate(_loc2_);
         if((this.§8^§ & 4) != 0)
         {
            this.§'!$§.dispatchEvent(new §=;§(§=;§.§]v§));
         }
         if(this.§+!v§ != null && this.§+!v§.onUpdate != null)
         {
            this.§+!v§.onUpdate.apply(null,this.§+!v§.onUpdateParams);
         }
         if(this.§5N§)
         {
            if(_loc2_ >= this.§1J§)
            {
               this.§]!N§ = this.§1J§;
               if(this.§72§)
               {
                  this.§5N§ = false;
                  if((this.§8^§ & 8) != 0)
                  {
                     this.§'!$§.dispatchEvent(new §=;§(§=;§.COMPLETE));
                  }
                  if(this.§+!v§ != null && this.§+!v§.onComplete != null)
                  {
                     this.§+!v§.onComplete.apply(null,this.§+!v§.onCompleteParams);
                  }
                  return true;
               }
               if((this.§8^§ & 8) != 0)
               {
                  this.§'!$§.dispatchEvent(new §=;§(§=;§.COMPLETE));
               }
               if(this.§+!v§ != null && this.§+!v§.onComplete != null)
               {
                  this.§+!v§.onComplete.apply(null,this.§+!v§.onCompleteParams);
               }
               this.§]!N§ = _loc2_ - this.§1J§;
               this.§5_§ = param1 - this.§]!N§;
               this.tick(param1);
            }
            return false;
         }
         return true;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         if(this.§'!$§ != null)
         {
            return this.§'!$§.hasEventListener(param1);
         }
         return false;
      }
      
      protected function copyFrom(param1:AbstractTween) : void
      {
         this.§5!§ = param1.§5!§;
         this.§1J§ = param1.§1J§;
         this.§72§ = param1.§72§;
         if(param1.§+!v§ != null)
         {
            this.§+!v§ = new ClassicHandlers();
            this.§+!v§.copyFrom(param1.§+!v§);
         }
         if(param1.§'!$§ != null)
         {
            this.§'!$§ = new ClonableEventDispatcher(this);
            this.§'!$§.copyFrom(param1.§'!$§);
         }
         this.§8^§ = param1.§8^§;
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
