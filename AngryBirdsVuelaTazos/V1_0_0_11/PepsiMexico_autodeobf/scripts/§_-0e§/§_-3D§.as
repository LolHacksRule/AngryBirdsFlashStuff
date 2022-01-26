package §_-0e§
{
   import §_-Aa§.§_-Y4§;
   import §_-Aa§.§_-nm§;
   import §_-rb§.§_-2Q§;
   import §_-uz§.§_-wX§;
   import §_-wn§.§_-hf§;
   import flash.events.Event;
   
   public class §_-3D§ extends §_-nm§ implements §_-i8§
   {
       
      
      protected var §_-07§:uint = 0;
      
      protected var §_-OS§:Number = 0;
      
      protected var §_-JI§:Boolean = false;
      
      protected var §_-7S§:§_-Y4§;
      
      protected var §_-UY§:§_-hf§;
      
      protected var §_-Fq§:Number;
      
      protected var §_-h-§:ClassicHandlers;
      
      protected var §_-hZ§:Number = 0;
      
      protected var §_-oS§:Boolean = true;
      
      public function §_-3D§(param1:§_-Y4§, param2:Number)
      {
         super();
         this.§_-7S§ = param1;
         this.§_-OS§ = param2;
      }
      
      public function get onStop() : Function
      {
         return this.§_-h-§ != null ? this.§_-h-§.onStop : null;
      }
      
      public function set onStop(param1:Function) : void
      {
         this.§_-wT§().onStop = param1;
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         if(this.§_-UY§ != null)
         {
            return this.§_-UY§.willTrigger(param1);
         }
         return false;
      }
      
      protected function newInstance() : §_-3D§
      {
         return null;
      }
      
      public function get onUpdate() : Function
      {
         return this.§_-h-§ != null ? this.§_-h-§.onUpdate : null;
      }
      
      public function get §_-wD§() : §_-Y4§
      {
         return this.§_-7S§;
      }
      
      public function get duration() : Number
      {
         return this.§_-hZ§;
      }
      
      public function gotoAndStop(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§_-hZ§)
         {
            param1 = this.§_-hZ§;
         }
         this.§_-OS§ = param1;
         this.internalUpdate(param1);
         if((this.§_-07§ & 4) != 0)
         {
            this.§_-UY§.dispatchEvent(new §_-2Q§(§_-2Q§.§_-uo§));
         }
         if(this.§_-h-§ != null && this.§_-h-§.onUpdate != null)
         {
            this.§_-h-§.onUpdate.apply(null,this.§_-h-§.onUpdateParams);
         }
         this.stop();
      }
      
      public function get onPlayParams() : Array
      {
         return this.§_-h-§ != null ? this.§_-h-§.onPlayParams : null;
      }
      
      public function stop() : void
      {
         if(this.§_-JI§)
         {
            this.§_-JI§ = false;
            if((this.§_-07§ & 2) != 0)
            {
               this.§_-UY§.dispatchEvent(new §_-2Q§(§_-2Q§.§_-et§));
            }
            if(this.§_-h-§ != null && this.§_-h-§.onStop != null)
            {
               this.§_-h-§.onStop.apply(null,this.§_-h-§.onStopParams);
            }
         }
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§_-wT§().onUpdate = param1;
      }
      
      public function firePlay() : void
      {
         if((this.§_-07§ & 1) != 0)
         {
            this.§_-UY§.dispatchEvent(new §_-2Q§(§_-2Q§.§_-V4§));
         }
         if(this.§_-h-§ != null && this.§_-h-§.onPlay != null)
         {
            this.§_-h-§.onPlay.apply(null,this.§_-h-§.onPlayParams);
         }
      }
      
      public function get §_-q3§() : Boolean
      {
         return this.§_-JI§;
      }
      
      public function get onUpdateParams() : Array
      {
         return this.§_-h-§ != null ? this.§_-h-§.onUpdateParams : null;
      }
      
      public function get position() : Number
      {
         return this.§_-OS§;
      }
      
      public function set onPlayParams(param1:Array) : void
      {
         this.§_-wT§().onPlayParams = param1;
      }
      
      public function get onPlay() : Function
      {
         return this.§_-h-§ != null ? this.§_-h-§.onPlay : null;
      }
      
      public function set §_-BL§(param1:Boolean) : void
      {
         this.§_-oS§ = param1;
      }
      
      protected function §_-bf§() : void
      {
         if(this.§_-UY§.willTrigger(§_-2Q§.§_-V4§))
         {
            this.§_-07§ |= 1;
         }
         else
         {
            this.§_-07§ &= ~1;
         }
         if(this.§_-UY§.willTrigger(§_-2Q§.§_-et§))
         {
            this.§_-07§ |= 2;
         }
         else
         {
            this.§_-07§ &= ~2;
         }
         if(this.§_-UY§.willTrigger(§_-2Q§.§_-uo§))
         {
            this.§_-07§ |= 4;
         }
         else
         {
            this.§_-07§ &= ~4;
         }
         if(this.§_-UY§.willTrigger(§_-2Q§.COMPLETE))
         {
            this.§_-07§ |= 8;
         }
         else
         {
            this.§_-07§ &= ~8;
         }
      }
      
      public function set onCompleteParams(param1:Array) : void
      {
         this.§_-wT§().onCompleteParams = param1;
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         if(this.§_-UY§ != null)
         {
            return this.§_-UY§.dispatchEvent(param1);
         }
         return false;
      }
      
      public function get onComplete() : Function
      {
         return this.§_-h-§ != null ? this.§_-h-§.onComplete : null;
      }
      
      public function §_-f1§() : void
      {
         if(this.§_-JI§)
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
         if(this.§_-OS§ < this.§_-hZ§ && this.§_-hZ§ <= param1 || 0 < this.§_-OS§ && param1 <= 0)
         {
            _loc2_ = true;
         }
         this.§_-OS§ = param1;
         this.internalUpdate(param1);
         if((this.§_-07§ & 4) != 0)
         {
            this.§_-UY§.dispatchEvent(new §_-2Q§(§_-2Q§.§_-uo§));
         }
         if(this.§_-h-§ != null && this.§_-h-§.onUpdate != null)
         {
            this.§_-h-§.onUpdate.apply(null,this.§_-h-§.onUpdateParams);
         }
         if(_loc2_)
         {
            if((this.§_-07§ & 8) != 0)
            {
               this.§_-UY§.dispatchEvent(new §_-2Q§(§_-2Q§.COMPLETE));
            }
            if(this.§_-h-§ != null && this.§_-h-§.onComplete != null)
            {
               this.§_-h-§.onComplete.apply(null,this.§_-h-§.onCompleteParams);
            }
         }
      }
      
      public function play() : void
      {
         var _loc1_:Number = NaN;
         if(!this.§_-JI§)
         {
            if(this.§_-OS§ >= this.§_-hZ§)
            {
               this.§_-OS§ = 0;
            }
            _loc1_ = this.§_-7S§.time;
            this.§_-Fq§ = _loc1_ - this.§_-OS§;
            this.§_-JI§ = true;
            this.§_-7S§.§_-Ej§(this);
            if((this.§_-07§ & 1) != 0)
            {
               this.§_-UY§.dispatchEvent(new §_-2Q§(§_-2Q§.§_-V4§));
            }
            if(this.§_-h-§ != null && this.§_-h-§.onPlay != null)
            {
               this.§_-h-§.onPlay.apply(null,this.§_-h-§.onPlayParams);
            }
            this.tick(_loc1_);
         }
      }
      
      public function set onStopParams(param1:Array) : void
      {
         this.§_-wT§().onStopParams = param1;
      }
      
      public function gotoAndPlay(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§_-hZ§)
         {
            param1 = this.§_-hZ§;
         }
         this.§_-OS§ = param1;
         this.play();
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(this.§_-UY§ != null)
         {
            this.§_-UY§.removeEventListener(param1,param2,param3);
            this.§_-bf§();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(this.§_-UY§ == null)
         {
            this.§_-UY§ = new §_-hf§(this);
         }
         this.§_-UY§.addEventListener(param1,param2,param3,param4,param5);
         this.§_-bf§();
      }
      
      public function fireStop() : void
      {
         if((this.§_-07§ & 2) != 0)
         {
            this.§_-UY§.dispatchEvent(new §_-2Q§(§_-2Q§.§_-et§));
         }
         if(this.§_-h-§ != null && this.§_-h-§.onStop != null)
         {
            this.§_-h-§.onStop.apply(null,this.§_-h-§.onStopParams);
         }
      }
      
      public function get §_-BL§() : Boolean
      {
         return this.§_-oS§;
      }
      
      public function clone() : §_-wX§
      {
         var _loc1_:§_-3D§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function get onCompleteParams() : Array
      {
         return this.§_-h-§ != null ? this.§_-h-§.onCompleteParams : null;
      }
      
      public function set onUpdateParams(param1:Array) : void
      {
         this.§_-wT§().onUpdateParams = param1;
      }
      
      public function get onStopParams() : Array
      {
         return this.§_-h-§ != null ? this.§_-h-§.onStopParams : null;
      }
      
      protected function §_-wT§() : ClassicHandlers
      {
         return this.§_-h-§ || (this.§_-h-§ = new ClassicHandlers());
      }
      
      public function set onPlay(param1:Function) : void
      {
         this.§_-wT§().onPlay = param1;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§_-wT§().onComplete = param1;
      }
      
      override public function tick(param1:Number) : Boolean
      {
         if(!this.§_-JI§)
         {
            return true;
         }
         var _loc2_:Number = param1 - this.§_-Fq§;
         this.§_-OS§ = _loc2_;
         this.internalUpdate(_loc2_);
         if((this.§_-07§ & 4) != 0)
         {
            this.§_-UY§.dispatchEvent(new §_-2Q§(§_-2Q§.§_-uo§));
         }
         if(this.§_-h-§ != null && this.§_-h-§.onUpdate != null)
         {
            this.§_-h-§.onUpdate.apply(null,this.§_-h-§.onUpdateParams);
         }
         if(this.§_-JI§)
         {
            if(_loc2_ >= this.§_-hZ§)
            {
               this.§_-OS§ = this.§_-hZ§;
               if(this.§_-oS§)
               {
                  this.§_-JI§ = false;
                  if((this.§_-07§ & 8) != 0)
                  {
                     this.§_-UY§.dispatchEvent(new §_-2Q§(§_-2Q§.COMPLETE));
                  }
                  if(this.§_-h-§ != null && this.§_-h-§.onComplete != null)
                  {
                     this.§_-h-§.onComplete.apply(null,this.§_-h-§.onCompleteParams);
                  }
                  return true;
               }
               if((this.§_-07§ & 8) != 0)
               {
                  this.§_-UY§.dispatchEvent(new §_-2Q§(§_-2Q§.COMPLETE));
               }
               if(this.§_-h-§ != null && this.§_-h-§.onComplete != null)
               {
                  this.§_-h-§.onComplete.apply(null,this.§_-h-§.onCompleteParams);
               }
               this.§_-OS§ = _loc2_ - this.§_-hZ§;
               this.§_-Fq§ = param1 - this.§_-OS§;
               this.tick(param1);
            }
            return false;
         }
         return true;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         if(this.§_-UY§ != null)
         {
            return this.§_-UY§.hasEventListener(param1);
         }
         return false;
      }
      
      protected function copyFrom(param1:§_-3D§) : void
      {
         this.§_-7S§ = param1.§_-7S§;
         this.§_-hZ§ = param1.§_-hZ§;
         this.§_-oS§ = param1.§_-oS§;
         if(param1.§_-h-§ != null)
         {
            this.§_-h-§ = new ClassicHandlers();
            this.§_-h-§.copyFrom(param1.§_-h-§);
         }
         if(param1.§_-UY§ != null)
         {
            this.§_-UY§ = new §_-hf§(this);
            this.§_-UY§.copyFrom(param1.§_-UY§);
         }
         this.§_-07§ = param1.§_-07§;
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
