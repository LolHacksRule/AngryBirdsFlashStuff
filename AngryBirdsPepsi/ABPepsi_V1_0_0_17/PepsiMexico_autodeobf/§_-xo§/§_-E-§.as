package §_-xo§
{
   import §_-20§.§_-j5§;
   import §_-6v§.§_-In§;
   import §_-Xz§.§_-PG§;
   import §_-Xz§.§_-Ps§;
   import §_-wT§.§_-K0§;
   import flash.events.Event;
   
   public class §_-E-§ extends §_-PG§ implements §_-Lk§
   {
       
      
      protected var §_-gR§:uint = 0;
      
      protected var §_-St§:Number = 0;
      
      protected var §_-k7§:Boolean = false;
      
      protected var §_-0A§:§_-Ps§;
      
      protected var §_-aw§:§_-K0§;
      
      protected var §_-56§:Number;
      
      protected var §_-BL§:ClassicHandlers;
      
      protected var §_-7A§:Number = 0;
      
      protected var §_-lo§:Boolean = true;
      
      public function §_-E-§(param1:§_-Ps§, param2:Number)
      {
         super();
         this.§_-0A§ = param1;
         this.§_-St§ = param2;
      }
      
      public function get onStop() : Function
      {
         return this.§_-BL§ != null ? this.§_-BL§.onStop : null;
      }
      
      public function set onStop(param1:Function) : void
      {
         this.§_-En§().onStop = param1;
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         if(this.§_-aw§ != null)
         {
            return this.§_-aw§.willTrigger(param1);
         }
         return false;
      }
      
      protected function newInstance() : §_-E-§
      {
         return null;
      }
      
      public function get onUpdate() : Function
      {
         return this.§_-BL§ != null ? this.§_-BL§.onUpdate : null;
      }
      
      public function get §_-Pj§() : §_-Ps§
      {
         return this.§_-0A§;
      }
      
      public function get duration() : Number
      {
         return this.§_-7A§;
      }
      
      public function gotoAndStop(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§_-7A§)
         {
            param1 = this.§_-7A§;
         }
         this.§_-St§ = param1;
         this.internalUpdate(param1);
         if((this.§_-gR§ & 4) != 0)
         {
            this.§_-aw§.dispatchEvent(new §_-In§(§_-In§.§_-QW§));
         }
         if(this.§_-BL§ != null && this.§_-BL§.onUpdate != null)
         {
            this.§_-BL§.onUpdate.apply(null,this.§_-BL§.onUpdateParams);
         }
         this.stop();
      }
      
      public function get onPlayParams() : Array
      {
         return this.§_-BL§ != null ? this.§_-BL§.onPlayParams : null;
      }
      
      public function stop() : void
      {
         if(this.§_-k7§)
         {
            this.§_-k7§ = false;
            if((this.§_-gR§ & 2) != 0)
            {
               this.§_-aw§.dispatchEvent(new §_-In§(§_-In§.§_-7E§));
            }
            if(this.§_-BL§ != null && this.§_-BL§.onStop != null)
            {
               this.§_-BL§.onStop.apply(null,this.§_-BL§.onStopParams);
            }
         }
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§_-En§().onUpdate = param1;
      }
      
      public function firePlay() : void
      {
         if((this.§_-gR§ & 1) != 0)
         {
            this.§_-aw§.dispatchEvent(new §_-In§(§_-In§.§_-X2§));
         }
         if(this.§_-BL§ != null && this.§_-BL§.onPlay != null)
         {
            this.§_-BL§.onPlay.apply(null,this.§_-BL§.onPlayParams);
         }
      }
      
      public function get §_-Z§() : Boolean
      {
         return this.§_-k7§;
      }
      
      public function get onUpdateParams() : Array
      {
         return this.§_-BL§ != null ? this.§_-BL§.onUpdateParams : null;
      }
      
      public function get position() : Number
      {
         return this.§_-St§;
      }
      
      public function set onPlayParams(param1:Array) : void
      {
         this.§_-En§().onPlayParams = param1;
      }
      
      public function get onPlay() : Function
      {
         return this.§_-BL§ != null ? this.§_-BL§.onPlay : null;
      }
      
      public function set §_-Yc§(param1:Boolean) : void
      {
         this.§_-lo§ = param1;
      }
      
      protected function §_-E1§() : void
      {
         if(this.§_-aw§.willTrigger(§_-In§.§_-X2§))
         {
            this.§_-gR§ |= 1;
         }
         else
         {
            this.§_-gR§ &= ~1;
         }
         if(this.§_-aw§.willTrigger(§_-In§.§_-7E§))
         {
            this.§_-gR§ |= 2;
         }
         else
         {
            this.§_-gR§ &= ~2;
         }
         if(this.§_-aw§.willTrigger(§_-In§.§_-QW§))
         {
            this.§_-gR§ |= 4;
         }
         else
         {
            this.§_-gR§ &= ~4;
         }
         if(this.§_-aw§.willTrigger(§_-In§.COMPLETE))
         {
            this.§_-gR§ |= 8;
         }
         else
         {
            this.§_-gR§ &= ~8;
         }
      }
      
      public function set onCompleteParams(param1:Array) : void
      {
         this.§_-En§().onCompleteParams = param1;
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         if(this.§_-aw§ != null)
         {
            return this.§_-aw§.dispatchEvent(param1);
         }
         return false;
      }
      
      public function get onComplete() : Function
      {
         return this.§_-BL§ != null ? this.§_-BL§.onComplete : null;
      }
      
      public function §_-hT§() : void
      {
         if(this.§_-k7§)
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
         if(this.§_-St§ < this.§_-7A§ && this.§_-7A§ <= param1 || 0 < this.§_-St§ && param1 <= 0)
         {
            _loc2_ = true;
         }
         this.§_-St§ = param1;
         this.internalUpdate(param1);
         if((this.§_-gR§ & 4) != 0)
         {
            this.§_-aw§.dispatchEvent(new §_-In§(§_-In§.§_-QW§));
         }
         if(this.§_-BL§ != null && this.§_-BL§.onUpdate != null)
         {
            this.§_-BL§.onUpdate.apply(null,this.§_-BL§.onUpdateParams);
         }
         if(_loc2_)
         {
            if((this.§_-gR§ & 8) != 0)
            {
               this.§_-aw§.dispatchEvent(new §_-In§(§_-In§.COMPLETE));
            }
            if(this.§_-BL§ != null && this.§_-BL§.onComplete != null)
            {
               this.§_-BL§.onComplete.apply(null,this.§_-BL§.onCompleteParams);
            }
         }
      }
      
      public function play() : void
      {
         var _loc1_:Number = NaN;
         if(!this.§_-k7§)
         {
            if(this.§_-St§ >= this.§_-7A§)
            {
               this.§_-St§ = 0;
            }
            _loc1_ = this.§_-0A§.time;
            this.§_-56§ = _loc1_ - this.§_-St§;
            this.§_-k7§ = true;
            this.§_-0A§.§_-lE§(this);
            if((this.§_-gR§ & 1) != 0)
            {
               this.§_-aw§.dispatchEvent(new §_-In§(§_-In§.§_-X2§));
            }
            if(this.§_-BL§ != null && this.§_-BL§.onPlay != null)
            {
               this.§_-BL§.onPlay.apply(null,this.§_-BL§.onPlayParams);
            }
            this.tick(_loc1_);
         }
      }
      
      public function set onStopParams(param1:Array) : void
      {
         this.§_-En§().onStopParams = param1;
      }
      
      public function gotoAndPlay(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§_-7A§)
         {
            param1 = this.§_-7A§;
         }
         this.§_-St§ = param1;
         this.play();
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(this.§_-aw§ != null)
         {
            this.§_-aw§.removeEventListener(param1,param2,param3);
            this.§_-E1§();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(this.§_-aw§ == null)
         {
            this.§_-aw§ = new §_-K0§(this);
         }
         this.§_-aw§.addEventListener(param1,param2,param3,param4,param5);
         this.§_-E1§();
      }
      
      public function fireStop() : void
      {
         if((this.§_-gR§ & 2) != 0)
         {
            this.§_-aw§.dispatchEvent(new §_-In§(§_-In§.§_-7E§));
         }
         if(this.§_-BL§ != null && this.§_-BL§.onStop != null)
         {
            this.§_-BL§.onStop.apply(null,this.§_-BL§.onStopParams);
         }
      }
      
      public function get §_-Yc§() : Boolean
      {
         return this.§_-lo§;
      }
      
      public function clone() : §_-j5§
      {
         var _loc1_:§_-E-§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function get onCompleteParams() : Array
      {
         return this.§_-BL§ != null ? this.§_-BL§.onCompleteParams : null;
      }
      
      public function set onUpdateParams(param1:Array) : void
      {
         this.§_-En§().onUpdateParams = param1;
      }
      
      public function get onStopParams() : Array
      {
         return this.§_-BL§ != null ? this.§_-BL§.onStopParams : null;
      }
      
      protected function §_-En§() : ClassicHandlers
      {
         return this.§_-BL§ || (this.§_-BL§ = new ClassicHandlers());
      }
      
      public function set onPlay(param1:Function) : void
      {
         this.§_-En§().onPlay = param1;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§_-En§().onComplete = param1;
      }
      
      override public function tick(param1:Number) : Boolean
      {
         if(!this.§_-k7§)
         {
            return true;
         }
         var _loc2_:Number = param1 - this.§_-56§;
         this.§_-St§ = _loc2_;
         this.internalUpdate(_loc2_);
         if((this.§_-gR§ & 4) != 0)
         {
            this.§_-aw§.dispatchEvent(new §_-In§(§_-In§.§_-QW§));
         }
         if(this.§_-BL§ != null && this.§_-BL§.onUpdate != null)
         {
            this.§_-BL§.onUpdate.apply(null,this.§_-BL§.onUpdateParams);
         }
         if(this.§_-k7§)
         {
            if(_loc2_ >= this.§_-7A§)
            {
               this.§_-St§ = this.§_-7A§;
               if(this.§_-lo§)
               {
                  this.§_-k7§ = false;
                  if((this.§_-gR§ & 8) != 0)
                  {
                     this.§_-aw§.dispatchEvent(new §_-In§(§_-In§.COMPLETE));
                  }
                  if(this.§_-BL§ != null && this.§_-BL§.onComplete != null)
                  {
                     this.§_-BL§.onComplete.apply(null,this.§_-BL§.onCompleteParams);
                  }
                  return true;
               }
               if((this.§_-gR§ & 8) != 0)
               {
                  this.§_-aw§.dispatchEvent(new §_-In§(§_-In§.COMPLETE));
               }
               if(this.§_-BL§ != null && this.§_-BL§.onComplete != null)
               {
                  this.§_-BL§.onComplete.apply(null,this.§_-BL§.onCompleteParams);
               }
               this.§_-St§ = _loc2_ - this.§_-7A§;
               this.§_-56§ = param1 - this.§_-St§;
               this.tick(param1);
            }
            return false;
         }
         return true;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         if(this.§_-aw§ != null)
         {
            return this.§_-aw§.hasEventListener(param1);
         }
         return false;
      }
      
      protected function copyFrom(param1:§_-E-§) : void
      {
         this.§_-0A§ = param1.§_-0A§;
         this.§_-7A§ = param1.§_-7A§;
         this.§_-lo§ = param1.§_-lo§;
         if(param1.§_-BL§ != null)
         {
            this.§_-BL§ = new ClassicHandlers();
            this.§_-BL§.copyFrom(param1.§_-BL§);
         }
         if(param1.§_-aw§ != null)
         {
            this.§_-aw§ = new §_-K0§(this);
            this.§_-aw§.copyFrom(param1.§_-aw§);
         }
         this.§_-gR§ = param1.§_-gR§;
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
