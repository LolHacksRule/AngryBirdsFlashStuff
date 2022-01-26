package §_-hn§
{
   import §_-Og§.§_-PS§;
   import §_-Ou§.§_-DP§;
   import §_-Ou§.§_-mV§;
   import §_-UQ§.§_-QZ§;
   import §_-ZI§.§_-Vu§;
   import flash.events.Event;
   
   public class §_-DZ§ extends §_-mV§ implements §_-pg§
   {
       
      
      protected var §_-iM§:uint = 0;
      
      protected var §_-p0§:Number = 0;
      
      protected var §_-tX§:Boolean = false;
      
      protected var §_-2E§:§_-DP§;
      
      protected var §_-C5§:§_-PS§;
      
      protected var §_-dw§:Number;
      
      protected var §_-7C§:ClassicHandlers;
      
      protected var §_-tU§:Number = 0;
      
      protected var §_-Sx§:Boolean = true;
      
      public function §_-DZ§(param1:§_-DP§, param2:Number)
      {
         super();
         this.§_-2E§ = param1;
         this.§_-p0§ = param2;
      }
      
      public function get onStop() : Function
      {
         return this.§_-7C§ != null ? this.§_-7C§.onStop : null;
      }
      
      public function set onStop(param1:Function) : void
      {
         this.§_-nK§().onStop = param1;
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         if(this.§_-C5§ != null)
         {
            return this.§_-C5§.willTrigger(param1);
         }
         return false;
      }
      
      protected function newInstance() : §_-DZ§
      {
         return null;
      }
      
      public function get onUpdate() : Function
      {
         return this.§_-7C§ != null ? this.§_-7C§.onUpdate : null;
      }
      
      public function get §_-BG§() : §_-DP§
      {
         return this.§_-2E§;
      }
      
      public function get duration() : Number
      {
         return this.§_-tU§;
      }
      
      public function gotoAndStop(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§_-tU§)
         {
            param1 = this.§_-tU§;
         }
         this.§_-p0§ = param1;
         this.internalUpdate(param1);
         if((this.§_-iM§ & 4) != 0)
         {
            this.§_-C5§.dispatchEvent(new §_-QZ§(§_-QZ§.§use §));
         }
         if(this.§_-7C§ != null && this.§_-7C§.onUpdate != null)
         {
            this.§_-7C§.onUpdate.apply(null,this.§_-7C§.onUpdateParams);
         }
         this.stop();
      }
      
      public function get onPlayParams() : Array
      {
         return this.§_-7C§ != null ? this.§_-7C§.onPlayParams : null;
      }
      
      public function stop() : void
      {
         if(this.§_-tX§)
         {
            this.§_-tX§ = false;
            if((this.§_-iM§ & 2) != 0)
            {
               this.§_-C5§.dispatchEvent(new §_-QZ§(§_-QZ§.§_-Gk§));
            }
            if(this.§_-7C§ != null && this.§_-7C§.onStop != null)
            {
               this.§_-7C§.onStop.apply(null,this.§_-7C§.onStopParams);
            }
         }
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§_-nK§().onUpdate = param1;
      }
      
      public function firePlay() : void
      {
         if((this.§_-iM§ & 1) != 0)
         {
            this.§_-C5§.dispatchEvent(new §_-QZ§(§_-QZ§.§_-XS§));
         }
         if(this.§_-7C§ != null && this.§_-7C§.onPlay != null)
         {
            this.§_-7C§.onPlay.apply(null,this.§_-7C§.onPlayParams);
         }
      }
      
      public function get get() : Boolean
      {
         return this.§_-tX§;
      }
      
      public function get onUpdateParams() : Array
      {
         return this.§_-7C§ != null ? this.§_-7C§.onUpdateParams : null;
      }
      
      public function get position() : Number
      {
         return this.§_-p0§;
      }
      
      public function set onPlayParams(param1:Array) : void
      {
         this.§_-nK§().onPlayParams = param1;
      }
      
      public function get onPlay() : Function
      {
         return this.§_-7C§ != null ? this.§_-7C§.onPlay : null;
      }
      
      public function set §_-QY§(param1:Boolean) : void
      {
         this.§_-Sx§ = param1;
      }
      
      protected function §_-ia§() : void
      {
         if(this.§_-C5§.willTrigger(§_-QZ§.§_-XS§))
         {
            this.§_-iM§ |= 1;
         }
         else
         {
            this.§_-iM§ &= ~1;
         }
         if(this.§_-C5§.willTrigger(§_-QZ§.§_-Gk§))
         {
            this.§_-iM§ |= 2;
         }
         else
         {
            this.§_-iM§ &= ~2;
         }
         if(this.§_-C5§.willTrigger(§_-QZ§.§use §))
         {
            this.§_-iM§ |= 4;
         }
         else
         {
            this.§_-iM§ &= ~4;
         }
         if(this.§_-C5§.willTrigger(§_-QZ§.COMPLETE))
         {
            this.§_-iM§ |= 8;
         }
         else
         {
            this.§_-iM§ &= ~8;
         }
      }
      
      public function set onCompleteParams(param1:Array) : void
      {
         this.§_-nK§().onCompleteParams = param1;
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         if(this.§_-C5§ != null)
         {
            return this.§_-C5§.dispatchEvent(param1);
         }
         return false;
      }
      
      public function get onComplete() : Function
      {
         return this.§_-7C§ != null ? this.§_-7C§.onComplete : null;
      }
      
      public function §_-J2§() : void
      {
         if(this.§_-tX§)
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
         if(this.§_-p0§ < this.§_-tU§ && this.§_-tU§ <= param1 || 0 < this.§_-p0§ && param1 <= 0)
         {
            _loc2_ = true;
         }
         this.§_-p0§ = param1;
         this.internalUpdate(param1);
         if((this.§_-iM§ & 4) != 0)
         {
            this.§_-C5§.dispatchEvent(new §_-QZ§(§_-QZ§.§use §));
         }
         if(this.§_-7C§ != null && this.§_-7C§.onUpdate != null)
         {
            this.§_-7C§.onUpdate.apply(null,this.§_-7C§.onUpdateParams);
         }
         if(_loc2_)
         {
            if((this.§_-iM§ & 8) != 0)
            {
               this.§_-C5§.dispatchEvent(new §_-QZ§(§_-QZ§.COMPLETE));
            }
            if(this.§_-7C§ != null && this.§_-7C§.onComplete != null)
            {
               this.§_-7C§.onComplete.apply(null,this.§_-7C§.onCompleteParams);
            }
         }
      }
      
      public function play() : void
      {
         var _loc1_:Number = NaN;
         if(!this.§_-tX§)
         {
            if(this.§_-p0§ >= this.§_-tU§)
            {
               this.§_-p0§ = 0;
            }
            _loc1_ = this.§_-2E§.time;
            this.§_-dw§ = _loc1_ - this.§_-p0§;
            this.§_-tX§ = true;
            this.§_-2E§.§_-I0§(this);
            if((this.§_-iM§ & 1) != 0)
            {
               this.§_-C5§.dispatchEvent(new §_-QZ§(§_-QZ§.§_-XS§));
            }
            if(this.§_-7C§ != null && this.§_-7C§.onPlay != null)
            {
               this.§_-7C§.onPlay.apply(null,this.§_-7C§.onPlayParams);
            }
            this.tick(_loc1_);
         }
      }
      
      public function set onStopParams(param1:Array) : void
      {
         this.§_-nK§().onStopParams = param1;
      }
      
      public function gotoAndPlay(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§_-tU§)
         {
            param1 = this.§_-tU§;
         }
         this.§_-p0§ = param1;
         this.play();
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(this.§_-C5§ != null)
         {
            this.§_-C5§.removeEventListener(param1,param2,param3);
            this.§_-ia§();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(this.§_-C5§ == null)
         {
            this.§_-C5§ = new §_-PS§(this);
         }
         this.§_-C5§.addEventListener(param1,param2,param3,param4,param5);
         this.§_-ia§();
      }
      
      public function fireStop() : void
      {
         if((this.§_-iM§ & 2) != 0)
         {
            this.§_-C5§.dispatchEvent(new §_-QZ§(§_-QZ§.§_-Gk§));
         }
         if(this.§_-7C§ != null && this.§_-7C§.onStop != null)
         {
            this.§_-7C§.onStop.apply(null,this.§_-7C§.onStopParams);
         }
      }
      
      public function get §_-QY§() : Boolean
      {
         return this.§_-Sx§;
      }
      
      public function clone() : §_-Vu§
      {
         var _loc1_:§_-DZ§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function get onCompleteParams() : Array
      {
         return this.§_-7C§ != null ? this.§_-7C§.onCompleteParams : null;
      }
      
      public function set onUpdateParams(param1:Array) : void
      {
         this.§_-nK§().onUpdateParams = param1;
      }
      
      public function get onStopParams() : Array
      {
         return this.§_-7C§ != null ? this.§_-7C§.onStopParams : null;
      }
      
      protected function §_-nK§() : ClassicHandlers
      {
         return this.§_-7C§ || (this.§_-7C§ = new ClassicHandlers());
      }
      
      public function set onPlay(param1:Function) : void
      {
         this.§_-nK§().onPlay = param1;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§_-nK§().onComplete = param1;
      }
      
      override public function tick(param1:Number) : Boolean
      {
         if(!this.§_-tX§)
         {
            return true;
         }
         var _loc2_:Number = param1 - this.§_-dw§;
         this.§_-p0§ = _loc2_;
         this.internalUpdate(_loc2_);
         if((this.§_-iM§ & 4) != 0)
         {
            this.§_-C5§.dispatchEvent(new §_-QZ§(§_-QZ§.§use §));
         }
         if(this.§_-7C§ != null && this.§_-7C§.onUpdate != null)
         {
            this.§_-7C§.onUpdate.apply(null,this.§_-7C§.onUpdateParams);
         }
         if(this.§_-tX§)
         {
            if(_loc2_ >= this.§_-tU§)
            {
               this.§_-p0§ = this.§_-tU§;
               if(this.§_-Sx§)
               {
                  this.§_-tX§ = false;
                  if((this.§_-iM§ & 8) != 0)
                  {
                     this.§_-C5§.dispatchEvent(new §_-QZ§(§_-QZ§.COMPLETE));
                  }
                  if(this.§_-7C§ != null && this.§_-7C§.onComplete != null)
                  {
                     this.§_-7C§.onComplete.apply(null,this.§_-7C§.onCompleteParams);
                  }
                  return true;
               }
               if((this.§_-iM§ & 8) != 0)
               {
                  this.§_-C5§.dispatchEvent(new §_-QZ§(§_-QZ§.COMPLETE));
               }
               if(this.§_-7C§ != null && this.§_-7C§.onComplete != null)
               {
                  this.§_-7C§.onComplete.apply(null,this.§_-7C§.onCompleteParams);
               }
               this.§_-p0§ = _loc2_ - this.§_-tU§;
               this.§_-dw§ = param1 - this.§_-p0§;
               this.tick(param1);
            }
            return false;
         }
         return true;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         if(this.§_-C5§ != null)
         {
            return this.§_-C5§.hasEventListener(param1);
         }
         return false;
      }
      
      protected function copyFrom(param1:§_-DZ§) : void
      {
         this.§_-2E§ = param1.§_-2E§;
         this.§_-tU§ = param1.§_-tU§;
         this.§_-Sx§ = param1.§_-Sx§;
         if(param1.§_-7C§ != null)
         {
            this.§_-7C§ = new ClassicHandlers();
            this.§_-7C§.copyFrom(param1.§_-7C§);
         }
         if(param1.§_-C5§ != null)
         {
            this.§_-C5§ = new §_-PS§(this);
            this.§_-C5§.copyFrom(param1.§_-C5§);
         }
         this.§_-iM§ = param1.§_-iM§;
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
