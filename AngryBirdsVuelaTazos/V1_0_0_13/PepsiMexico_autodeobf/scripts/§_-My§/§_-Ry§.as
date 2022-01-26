package §_-My§
{
   import §_-LP§.§_-PH§;
   import §_-NB§.§_-mj§;
   import §_-OS§.§_-RE§;
   import §_-h2§.§_-CC§;
   import §_-h2§.§_-Q0§;
   import flash.events.Event;
   
   public class §_-Ry§ extends §_-Q0§ implements §_-hK§
   {
       
      
      protected var §_-w2§:uint = 0;
      
      protected var §_-TB§:Number = 0;
      
      protected var §_-Kq§:Boolean = false;
      
      protected var §function§:§_-CC§;
      
      protected var §_-Kg§:§_-RE§;
      
      protected var §_-vu§:Number;
      
      protected var §_-ZQ§:ClassicHandlers;
      
      protected var §_-Hr§:Number = 0;
      
      protected var §_-W8§:Boolean = true;
      
      public function §_-Ry§(param1:§_-CC§, param2:Number)
      {
         super();
         this.§function§ = param1;
         this.§_-TB§ = param2;
      }
      
      public function get onStop() : Function
      {
         return this.§_-ZQ§ != null ? this.§_-ZQ§.onStop : null;
      }
      
      public function set onStop(param1:Function) : void
      {
         this.§_-Sd§().onStop = param1;
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         if(this.§_-Kg§ != null)
         {
            return this.§_-Kg§.willTrigger(param1);
         }
         return false;
      }
      
      protected function newInstance() : §_-Ry§
      {
         return null;
      }
      
      public function get onUpdate() : Function
      {
         return this.§_-ZQ§ != null ? this.§_-ZQ§.onUpdate : null;
      }
      
      public function get §_-AY§() : §_-CC§
      {
         return this.§function§;
      }
      
      public function get duration() : Number
      {
         return this.§_-Hr§;
      }
      
      public function gotoAndStop(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§_-Hr§)
         {
            param1 = this.§_-Hr§;
         }
         this.§_-TB§ = param1;
         this.internalUpdate(param1);
         if((this.§_-w2§ & 4) != 0)
         {
            this.§_-Kg§.dispatchEvent(new §_-mj§(§_-mj§.§_-uu§));
         }
         if(this.§_-ZQ§ != null && this.§_-ZQ§.onUpdate != null)
         {
            this.§_-ZQ§.onUpdate.apply(null,this.§_-ZQ§.onUpdateParams);
         }
         this.stop();
      }
      
      public function get onPlayParams() : Array
      {
         return this.§_-ZQ§ != null ? this.§_-ZQ§.onPlayParams : null;
      }
      
      public function stop() : void
      {
         if(this.§_-Kq§)
         {
            this.§_-Kq§ = false;
            if((this.§_-w2§ & 2) != 0)
            {
               this.§_-Kg§.dispatchEvent(new §_-mj§(§_-mj§.§_-vL§));
            }
            if(this.§_-ZQ§ != null && this.§_-ZQ§.onStop != null)
            {
               this.§_-ZQ§.onStop.apply(null,this.§_-ZQ§.onStopParams);
            }
         }
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§_-Sd§().onUpdate = param1;
      }
      
      public function firePlay() : void
      {
         if((this.§_-w2§ & 1) != 0)
         {
            this.§_-Kg§.dispatchEvent(new §_-mj§(§_-mj§.§_-7C§));
         }
         if(this.§_-ZQ§ != null && this.§_-ZQ§.onPlay != null)
         {
            this.§_-ZQ§.onPlay.apply(null,this.§_-ZQ§.onPlayParams);
         }
      }
      
      public function get §_-54§() : Boolean
      {
         return this.§_-Kq§;
      }
      
      public function get onUpdateParams() : Array
      {
         return this.§_-ZQ§ != null ? this.§_-ZQ§.onUpdateParams : null;
      }
      
      public function get position() : Number
      {
         return this.§_-TB§;
      }
      
      public function set onPlayParams(param1:Array) : void
      {
         this.§_-Sd§().onPlayParams = param1;
      }
      
      public function get onPlay() : Function
      {
         return this.§_-ZQ§ != null ? this.§_-ZQ§.onPlay : null;
      }
      
      public function set §_-8y§(param1:Boolean) : void
      {
         this.§_-W8§ = param1;
      }
      
      protected function §_-dG§() : void
      {
         if(this.§_-Kg§.willTrigger(§_-mj§.§_-7C§))
         {
            this.§_-w2§ |= 1;
         }
         else
         {
            this.§_-w2§ &= ~1;
         }
         if(this.§_-Kg§.willTrigger(§_-mj§.§_-vL§))
         {
            this.§_-w2§ |= 2;
         }
         else
         {
            this.§_-w2§ &= ~2;
         }
         if(this.§_-Kg§.willTrigger(§_-mj§.§_-uu§))
         {
            this.§_-w2§ |= 4;
         }
         else
         {
            this.§_-w2§ &= ~4;
         }
         if(this.§_-Kg§.willTrigger(§_-mj§.COMPLETE))
         {
            this.§_-w2§ |= 8;
         }
         else
         {
            this.§_-w2§ &= ~8;
         }
      }
      
      public function set onCompleteParams(param1:Array) : void
      {
         this.§_-Sd§().onCompleteParams = param1;
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         if(this.§_-Kg§ != null)
         {
            return this.§_-Kg§.dispatchEvent(param1);
         }
         return false;
      }
      
      public function get onComplete() : Function
      {
         return this.§_-ZQ§ != null ? this.§_-ZQ§.onComplete : null;
      }
      
      public function §_-Hc§() : void
      {
         if(this.§_-Kq§)
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
         if(this.§_-TB§ < this.§_-Hr§ && this.§_-Hr§ <= param1 || 0 < this.§_-TB§ && param1 <= 0)
         {
            _loc2_ = true;
         }
         this.§_-TB§ = param1;
         this.internalUpdate(param1);
         if((this.§_-w2§ & 4) != 0)
         {
            this.§_-Kg§.dispatchEvent(new §_-mj§(§_-mj§.§_-uu§));
         }
         if(this.§_-ZQ§ != null && this.§_-ZQ§.onUpdate != null)
         {
            this.§_-ZQ§.onUpdate.apply(null,this.§_-ZQ§.onUpdateParams);
         }
         if(_loc2_)
         {
            if((this.§_-w2§ & 8) != 0)
            {
               this.§_-Kg§.dispatchEvent(new §_-mj§(§_-mj§.COMPLETE));
            }
            if(this.§_-ZQ§ != null && this.§_-ZQ§.onComplete != null)
            {
               this.§_-ZQ§.onComplete.apply(null,this.§_-ZQ§.onCompleteParams);
            }
         }
      }
      
      public function play() : void
      {
         var _loc1_:Number = NaN;
         if(!this.§_-Kq§)
         {
            if(this.§_-TB§ >= this.§_-Hr§)
            {
               this.§_-TB§ = 0;
            }
            _loc1_ = this.§function§.time;
            this.§_-vu§ = _loc1_ - this.§_-TB§;
            this.§_-Kq§ = true;
            this.§function§.§_-kf§(this);
            if((this.§_-w2§ & 1) != 0)
            {
               this.§_-Kg§.dispatchEvent(new §_-mj§(§_-mj§.§_-7C§));
            }
            if(this.§_-ZQ§ != null && this.§_-ZQ§.onPlay != null)
            {
               this.§_-ZQ§.onPlay.apply(null,this.§_-ZQ§.onPlayParams);
            }
            this.tick(_loc1_);
         }
      }
      
      public function set onStopParams(param1:Array) : void
      {
         this.§_-Sd§().onStopParams = param1;
      }
      
      public function gotoAndPlay(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§_-Hr§)
         {
            param1 = this.§_-Hr§;
         }
         this.§_-TB§ = param1;
         this.play();
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(this.§_-Kg§ != null)
         {
            this.§_-Kg§.removeEventListener(param1,param2,param3);
            this.§_-dG§();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(this.§_-Kg§ == null)
         {
            this.§_-Kg§ = new §_-RE§(this);
         }
         this.§_-Kg§.addEventListener(param1,param2,param3,param4,param5);
         this.§_-dG§();
      }
      
      public function fireStop() : void
      {
         if((this.§_-w2§ & 2) != 0)
         {
            this.§_-Kg§.dispatchEvent(new §_-mj§(§_-mj§.§_-vL§));
         }
         if(this.§_-ZQ§ != null && this.§_-ZQ§.onStop != null)
         {
            this.§_-ZQ§.onStop.apply(null,this.§_-ZQ§.onStopParams);
         }
      }
      
      public function get §_-8y§() : Boolean
      {
         return this.§_-W8§;
      }
      
      public function clone() : §_-PH§
      {
         var _loc1_:§_-Ry§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function get onCompleteParams() : Array
      {
         return this.§_-ZQ§ != null ? this.§_-ZQ§.onCompleteParams : null;
      }
      
      public function set onUpdateParams(param1:Array) : void
      {
         this.§_-Sd§().onUpdateParams = param1;
      }
      
      public function get onStopParams() : Array
      {
         return this.§_-ZQ§ != null ? this.§_-ZQ§.onStopParams : null;
      }
      
      protected function §_-Sd§() : ClassicHandlers
      {
         return this.§_-ZQ§ || (this.§_-ZQ§ = new ClassicHandlers());
      }
      
      public function set onPlay(param1:Function) : void
      {
         this.§_-Sd§().onPlay = param1;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§_-Sd§().onComplete = param1;
      }
      
      override public function tick(param1:Number) : Boolean
      {
         if(!this.§_-Kq§)
         {
            return true;
         }
         var _loc2_:Number = param1 - this.§_-vu§;
         this.§_-TB§ = _loc2_;
         this.internalUpdate(_loc2_);
         if((this.§_-w2§ & 4) != 0)
         {
            this.§_-Kg§.dispatchEvent(new §_-mj§(§_-mj§.§_-uu§));
         }
         if(this.§_-ZQ§ != null && this.§_-ZQ§.onUpdate != null)
         {
            this.§_-ZQ§.onUpdate.apply(null,this.§_-ZQ§.onUpdateParams);
         }
         if(this.§_-Kq§)
         {
            if(_loc2_ >= this.§_-Hr§)
            {
               this.§_-TB§ = this.§_-Hr§;
               if(this.§_-W8§)
               {
                  this.§_-Kq§ = false;
                  if((this.§_-w2§ & 8) != 0)
                  {
                     this.§_-Kg§.dispatchEvent(new §_-mj§(§_-mj§.COMPLETE));
                  }
                  if(this.§_-ZQ§ != null && this.§_-ZQ§.onComplete != null)
                  {
                     this.§_-ZQ§.onComplete.apply(null,this.§_-ZQ§.onCompleteParams);
                  }
                  return true;
               }
               if((this.§_-w2§ & 8) != 0)
               {
                  this.§_-Kg§.dispatchEvent(new §_-mj§(§_-mj§.COMPLETE));
               }
               if(this.§_-ZQ§ != null && this.§_-ZQ§.onComplete != null)
               {
                  this.§_-ZQ§.onComplete.apply(null,this.§_-ZQ§.onCompleteParams);
               }
               this.§_-TB§ = _loc2_ - this.§_-Hr§;
               this.§_-vu§ = param1 - this.§_-TB§;
               this.tick(param1);
            }
            return false;
         }
         return true;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         if(this.§_-Kg§ != null)
         {
            return this.§_-Kg§.hasEventListener(param1);
         }
         return false;
      }
      
      protected function copyFrom(param1:§_-Ry§) : void
      {
         this.§function§ = param1.§function§;
         this.§_-Hr§ = param1.§_-Hr§;
         this.§_-W8§ = param1.§_-W8§;
         if(param1.§_-ZQ§ != null)
         {
            this.§_-ZQ§ = new ClassicHandlers();
            this.§_-ZQ§.copyFrom(param1.§_-ZQ§);
         }
         if(param1.§_-Kg§ != null)
         {
            this.§_-Kg§ = new §_-RE§(this);
            this.§_-Kg§.copyFrom(param1.§_-Kg§);
         }
         this.§_-w2§ = param1.§_-w2§;
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
