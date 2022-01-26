package §_-wo§
{
   import §_-12§.§_-7l§;
   import §_-3P§.§_-os§;
   import §_-8p§.§_-Zu§;
   import §_-8p§.§_-dW§;
   import §_-C5§.§_-GZ§;
   import flash.events.Event;
   
   public class §_-g0§ extends §_-Zu§ implements §_-Ff§
   {
       
      
      protected var §_-JL§:uint = 0;
      
      protected var §_-mK§:Number = 0;
      
      protected var §_-6Q§:Boolean = false;
      
      protected var §_-ac§:§_-dW§;
      
      protected var §_-vl§:§_-GZ§;
      
      protected var §_-eE§:Number;
      
      protected var §_-pc§:ClassicHandlers;
      
      protected var §_-jI§:Number = 0;
      
      protected var §_-oZ§:Boolean = true;
      
      public function §_-g0§(param1:§_-dW§, param2:Number)
      {
         super();
         this.§_-ac§ = param1;
         this.§_-mK§ = param2;
      }
      
      public function get onStop() : Function
      {
         return this.§_-pc§ != null ? this.§_-pc§.onStop : null;
      }
      
      public function set onStop(param1:Function) : void
      {
         this.§_-5Q§().onStop = param1;
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         if(this.§_-vl§ != null)
         {
            return this.§_-vl§.willTrigger(param1);
         }
         return false;
      }
      
      protected function newInstance() : §_-g0§
      {
         return null;
      }
      
      public function get onUpdate() : Function
      {
         return this.§_-pc§ != null ? this.§_-pc§.onUpdate : null;
      }
      
      public function get §_-mw§() : §_-dW§
      {
         return this.§_-ac§;
      }
      
      public function get duration() : Number
      {
         return this.§_-jI§;
      }
      
      public function gotoAndStop(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§_-jI§)
         {
            param1 = this.§_-jI§;
         }
         this.§_-mK§ = param1;
         this.internalUpdate(param1);
         if((this.§_-JL§ & 4) != 0)
         {
            this.§_-vl§.dispatchEvent(new §_-os§(§_-os§.§_-nV§));
         }
         if(this.§_-pc§ != null && this.§_-pc§.onUpdate != null)
         {
            this.§_-pc§.onUpdate.apply(null,this.§_-pc§.onUpdateParams);
         }
         this.stop();
      }
      
      public function get onPlayParams() : Array
      {
         return this.§_-pc§ != null ? this.§_-pc§.onPlayParams : null;
      }
      
      public function stop() : void
      {
         if(this.§_-6Q§)
         {
            this.§_-6Q§ = false;
            if((this.§_-JL§ & 2) != 0)
            {
               this.§_-vl§.dispatchEvent(new §_-os§(§_-os§.§_-ym§));
            }
            if(this.§_-pc§ != null && this.§_-pc§.onStop != null)
            {
               this.§_-pc§.onStop.apply(null,this.§_-pc§.onStopParams);
            }
         }
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§_-5Q§().onUpdate = param1;
      }
      
      public function firePlay() : void
      {
         if((this.§_-JL§ & 1) != 0)
         {
            this.§_-vl§.dispatchEvent(new §_-os§(§_-os§.§_-Rx§));
         }
         if(this.§_-pc§ != null && this.§_-pc§.onPlay != null)
         {
            this.§_-pc§.onPlay.apply(null,this.§_-pc§.onPlayParams);
         }
      }
      
      public function get §_-Os§() : Boolean
      {
         return this.§_-6Q§;
      }
      
      public function get onUpdateParams() : Array
      {
         return this.§_-pc§ != null ? this.§_-pc§.onUpdateParams : null;
      }
      
      public function get position() : Number
      {
         return this.§_-mK§;
      }
      
      public function set onPlayParams(param1:Array) : void
      {
         this.§_-5Q§().onPlayParams = param1;
      }
      
      public function get onPlay() : Function
      {
         return this.§_-pc§ != null ? this.§_-pc§.onPlay : null;
      }
      
      public function set §_-SA§(param1:Boolean) : void
      {
         this.§_-oZ§ = param1;
      }
      
      protected function §_-RH§() : void
      {
         if(this.§_-vl§.willTrigger(§_-os§.§_-Rx§))
         {
            this.§_-JL§ |= 1;
         }
         else
         {
            this.§_-JL§ &= ~1;
         }
         if(this.§_-vl§.willTrigger(§_-os§.§_-ym§))
         {
            this.§_-JL§ |= 2;
         }
         else
         {
            this.§_-JL§ &= ~2;
         }
         if(this.§_-vl§.willTrigger(§_-os§.§_-nV§))
         {
            this.§_-JL§ |= 4;
         }
         else
         {
            this.§_-JL§ &= ~4;
         }
         if(this.§_-vl§.willTrigger(§_-os§.COMPLETE))
         {
            this.§_-JL§ |= 8;
         }
         else
         {
            this.§_-JL§ &= ~8;
         }
      }
      
      public function set onCompleteParams(param1:Array) : void
      {
         this.§_-5Q§().onCompleteParams = param1;
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         if(this.§_-vl§ != null)
         {
            return this.§_-vl§.dispatchEvent(param1);
         }
         return false;
      }
      
      public function get onComplete() : Function
      {
         return this.§_-pc§ != null ? this.§_-pc§.onComplete : null;
      }
      
      public function §_-To§() : void
      {
         if(this.§_-6Q§)
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
         if(this.§_-mK§ < this.§_-jI§ && this.§_-jI§ <= param1 || 0 < this.§_-mK§ && param1 <= 0)
         {
            _loc2_ = true;
         }
         this.§_-mK§ = param1;
         this.internalUpdate(param1);
         if((this.§_-JL§ & 4) != 0)
         {
            this.§_-vl§.dispatchEvent(new §_-os§(§_-os§.§_-nV§));
         }
         if(this.§_-pc§ != null && this.§_-pc§.onUpdate != null)
         {
            this.§_-pc§.onUpdate.apply(null,this.§_-pc§.onUpdateParams);
         }
         if(_loc2_)
         {
            if((this.§_-JL§ & 8) != 0)
            {
               this.§_-vl§.dispatchEvent(new §_-os§(§_-os§.COMPLETE));
            }
            if(this.§_-pc§ != null && this.§_-pc§.onComplete != null)
            {
               this.§_-pc§.onComplete.apply(null,this.§_-pc§.onCompleteParams);
            }
         }
      }
      
      public function play() : void
      {
         var _loc1_:Number = NaN;
         if(!this.§_-6Q§)
         {
            if(this.§_-mK§ >= this.§_-jI§)
            {
               this.§_-mK§ = 0;
            }
            _loc1_ = this.§_-ac§.time;
            this.§_-eE§ = _loc1_ - this.§_-mK§;
            this.§_-6Q§ = true;
            this.§_-ac§.§_-42§(this);
            if((this.§_-JL§ & 1) != 0)
            {
               this.§_-vl§.dispatchEvent(new §_-os§(§_-os§.§_-Rx§));
            }
            if(this.§_-pc§ != null && this.§_-pc§.onPlay != null)
            {
               this.§_-pc§.onPlay.apply(null,this.§_-pc§.onPlayParams);
            }
            this.tick(_loc1_);
         }
      }
      
      public function set onStopParams(param1:Array) : void
      {
         this.§_-5Q§().onStopParams = param1;
      }
      
      public function gotoAndPlay(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§_-jI§)
         {
            param1 = this.§_-jI§;
         }
         this.§_-mK§ = param1;
         this.play();
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(this.§_-vl§ != null)
         {
            this.§_-vl§.removeEventListener(param1,param2,param3);
            this.§_-RH§();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(this.§_-vl§ == null)
         {
            this.§_-vl§ = new §_-GZ§(this);
         }
         this.§_-vl§.addEventListener(param1,param2,param3,param4,param5);
         this.§_-RH§();
      }
      
      public function fireStop() : void
      {
         if((this.§_-JL§ & 2) != 0)
         {
            this.§_-vl§.dispatchEvent(new §_-os§(§_-os§.§_-ym§));
         }
         if(this.§_-pc§ != null && this.§_-pc§.onStop != null)
         {
            this.§_-pc§.onStop.apply(null,this.§_-pc§.onStopParams);
         }
      }
      
      public function get §_-SA§() : Boolean
      {
         return this.§_-oZ§;
      }
      
      public function clone() : §_-7l§
      {
         var _loc1_:§_-g0§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function get onCompleteParams() : Array
      {
         return this.§_-pc§ != null ? this.§_-pc§.onCompleteParams : null;
      }
      
      public function set onUpdateParams(param1:Array) : void
      {
         this.§_-5Q§().onUpdateParams = param1;
      }
      
      public function get onStopParams() : Array
      {
         return this.§_-pc§ != null ? this.§_-pc§.onStopParams : null;
      }
      
      protected function §_-5Q§() : ClassicHandlers
      {
         return this.§_-pc§ || (this.§_-pc§ = new ClassicHandlers());
      }
      
      public function set onPlay(param1:Function) : void
      {
         this.§_-5Q§().onPlay = param1;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§_-5Q§().onComplete = param1;
      }
      
      override public function tick(param1:Number) : Boolean
      {
         if(!this.§_-6Q§)
         {
            return true;
         }
         var _loc2_:Number = param1 - this.§_-eE§;
         this.§_-mK§ = _loc2_;
         this.internalUpdate(_loc2_);
         if((this.§_-JL§ & 4) != 0)
         {
            this.§_-vl§.dispatchEvent(new §_-os§(§_-os§.§_-nV§));
         }
         if(this.§_-pc§ != null && this.§_-pc§.onUpdate != null)
         {
            this.§_-pc§.onUpdate.apply(null,this.§_-pc§.onUpdateParams);
         }
         if(this.§_-6Q§)
         {
            if(_loc2_ >= this.§_-jI§)
            {
               this.§_-mK§ = this.§_-jI§;
               if(this.§_-oZ§)
               {
                  this.§_-6Q§ = false;
                  if((this.§_-JL§ & 8) != 0)
                  {
                     this.§_-vl§.dispatchEvent(new §_-os§(§_-os§.COMPLETE));
                  }
                  if(this.§_-pc§ != null && this.§_-pc§.onComplete != null)
                  {
                     this.§_-pc§.onComplete.apply(null,this.§_-pc§.onCompleteParams);
                  }
                  return true;
               }
               if((this.§_-JL§ & 8) != 0)
               {
                  this.§_-vl§.dispatchEvent(new §_-os§(§_-os§.COMPLETE));
               }
               if(this.§_-pc§ != null && this.§_-pc§.onComplete != null)
               {
                  this.§_-pc§.onComplete.apply(null,this.§_-pc§.onCompleteParams);
               }
               this.§_-mK§ = _loc2_ - this.§_-jI§;
               this.§_-eE§ = param1 - this.§_-mK§;
               this.tick(param1);
            }
            return false;
         }
         return true;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         if(this.§_-vl§ != null)
         {
            return this.§_-vl§.hasEventListener(param1);
         }
         return false;
      }
      
      protected function copyFrom(param1:§_-g0§) : void
      {
         this.§_-ac§ = param1.§_-ac§;
         this.§_-jI§ = param1.§_-jI§;
         this.§_-oZ§ = param1.§_-oZ§;
         if(param1.§_-pc§ != null)
         {
            this.§_-pc§ = new ClassicHandlers();
            this.§_-pc§.copyFrom(param1.§_-pc§);
         }
         if(param1.§_-vl§ != null)
         {
            this.§_-vl§ = new §_-GZ§(this);
            this.§_-vl§.copyFrom(param1.§_-vl§);
         }
         this.§_-JL§ = param1.§_-JL§;
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
