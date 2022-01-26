package §_-sN§
{
   import §_-Kj§.§_-8u§;
   import §_-SJ§.§_-Q5§;
   import §_-SJ§.§_-kc§;
   import §_-XK§.§_-tC§;
   import §_-rM§.§_-2w§;
   import flash.events.Event;
   
   public class §_-b8§ extends §_-kc§ implements §_-x5§
   {
       
      
      protected var §_-Ot§:uint = 0;
      
      protected var §_-Nq§:Number = 0;
      
      protected var §_-2a§:Boolean = false;
      
      protected var §_-MR§:§_-Q5§;
      
      protected var §_-7-§:§_-2w§;
      
      protected var §_-Cr§:Number;
      
      protected var §_-iq§:ClassicHandlers;
      
      protected var §_-sA§:Number = 0;
      
      protected var §_-Jf§:Boolean = true;
      
      public function §_-b8§(param1:§_-Q5§, param2:Number)
      {
         super();
         this.§_-MR§ = param1;
         this.§_-Nq§ = param2;
      }
      
      public function get onStop() : Function
      {
         return this.§_-iq§ != null ? this.§_-iq§.onStop : null;
      }
      
      public function set onStop(param1:Function) : void
      {
         this.§_-rO§().onStop = param1;
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         if(this.§_-7-§ != null)
         {
            return this.§_-7-§.willTrigger(param1);
         }
         return false;
      }
      
      protected function newInstance() : §_-b8§
      {
         return null;
      }
      
      public function get onUpdate() : Function
      {
         return this.§_-iq§ != null ? this.§_-iq§.onUpdate : null;
      }
      
      public function get §_-ti§() : §_-Q5§
      {
         return this.§_-MR§;
      }
      
      public function get duration() : Number
      {
         return this.§_-sA§;
      }
      
      public function gotoAndStop(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§_-sA§)
         {
            param1 = this.§_-sA§;
         }
         this.§_-Nq§ = param1;
         this.internalUpdate(param1);
         if((this.§_-Ot§ & 4) != 0)
         {
            this.§_-7-§.dispatchEvent(new §_-tC§(§_-tC§.§_-vB§));
         }
         if(this.§_-iq§ != null && this.§_-iq§.onUpdate != null)
         {
            this.§_-iq§.onUpdate.apply(null,this.§_-iq§.onUpdateParams);
         }
         this.stop();
      }
      
      public function get onPlayParams() : Array
      {
         return this.§_-iq§ != null ? this.§_-iq§.onPlayParams : null;
      }
      
      public function stop() : void
      {
         if(this.§_-2a§)
         {
            this.§_-2a§ = false;
            if((this.§_-Ot§ & 2) != 0)
            {
               this.§_-7-§.dispatchEvent(new §_-tC§(§_-tC§.§_-9O§));
            }
            if(this.§_-iq§ != null && this.§_-iq§.onStop != null)
            {
               this.§_-iq§.onStop.apply(null,this.§_-iq§.onStopParams);
            }
         }
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§_-rO§().onUpdate = param1;
      }
      
      public function firePlay() : void
      {
         if((this.§_-Ot§ & 1) != 0)
         {
            this.§_-7-§.dispatchEvent(new §_-tC§(§_-tC§.§_-ok§));
         }
         if(this.§_-iq§ != null && this.§_-iq§.onPlay != null)
         {
            this.§_-iq§.onPlay.apply(null,this.§_-iq§.onPlayParams);
         }
      }
      
      public function get §_-sE§() : Boolean
      {
         return this.§_-2a§;
      }
      
      public function get onUpdateParams() : Array
      {
         return this.§_-iq§ != null ? this.§_-iq§.onUpdateParams : null;
      }
      
      public function get position() : Number
      {
         return this.§_-Nq§;
      }
      
      public function set onPlayParams(param1:Array) : void
      {
         this.§_-rO§().onPlayParams = param1;
      }
      
      public function get onPlay() : Function
      {
         return this.§_-iq§ != null ? this.§_-iq§.onPlay : null;
      }
      
      public function set §_-xX§(param1:Boolean) : void
      {
         this.§_-Jf§ = param1;
      }
      
      protected function §_-7V§() : void
      {
         if(this.§_-7-§.willTrigger(§_-tC§.§_-ok§))
         {
            this.§_-Ot§ |= 1;
         }
         else
         {
            this.§_-Ot§ &= ~1;
         }
         if(this.§_-7-§.willTrigger(§_-tC§.§_-9O§))
         {
            this.§_-Ot§ |= 2;
         }
         else
         {
            this.§_-Ot§ &= ~2;
         }
         if(this.§_-7-§.willTrigger(§_-tC§.§_-vB§))
         {
            this.§_-Ot§ |= 4;
         }
         else
         {
            this.§_-Ot§ &= ~4;
         }
         if(this.§_-7-§.willTrigger(§_-tC§.COMPLETE))
         {
            this.§_-Ot§ |= 8;
         }
         else
         {
            this.§_-Ot§ &= ~8;
         }
      }
      
      public function set onCompleteParams(param1:Array) : void
      {
         this.§_-rO§().onCompleteParams = param1;
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         if(this.§_-7-§ != null)
         {
            return this.§_-7-§.dispatchEvent(param1);
         }
         return false;
      }
      
      public function get onComplete() : Function
      {
         return this.§_-iq§ != null ? this.§_-iq§.onComplete : null;
      }
      
      public function §_-XD§() : void
      {
         if(this.§_-2a§)
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
         if(this.§_-Nq§ < this.§_-sA§ && this.§_-sA§ <= param1 || 0 < this.§_-Nq§ && param1 <= 0)
         {
            _loc2_ = true;
         }
         this.§_-Nq§ = param1;
         this.internalUpdate(param1);
         if((this.§_-Ot§ & 4) != 0)
         {
            this.§_-7-§.dispatchEvent(new §_-tC§(§_-tC§.§_-vB§));
         }
         if(this.§_-iq§ != null && this.§_-iq§.onUpdate != null)
         {
            this.§_-iq§.onUpdate.apply(null,this.§_-iq§.onUpdateParams);
         }
         if(_loc2_)
         {
            if((this.§_-Ot§ & 8) != 0)
            {
               this.§_-7-§.dispatchEvent(new §_-tC§(§_-tC§.COMPLETE));
            }
            if(this.§_-iq§ != null && this.§_-iq§.onComplete != null)
            {
               this.§_-iq§.onComplete.apply(null,this.§_-iq§.onCompleteParams);
            }
         }
      }
      
      public function play() : void
      {
         var _loc1_:Number = NaN;
         if(!this.§_-2a§)
         {
            if(this.§_-Nq§ >= this.§_-sA§)
            {
               this.§_-Nq§ = 0;
            }
            _loc1_ = this.§_-MR§.time;
            this.§_-Cr§ = _loc1_ - this.§_-Nq§;
            this.§_-2a§ = true;
            this.§_-MR§.§_-X5§(this);
            if((this.§_-Ot§ & 1) != 0)
            {
               this.§_-7-§.dispatchEvent(new §_-tC§(§_-tC§.§_-ok§));
            }
            if(this.§_-iq§ != null && this.§_-iq§.onPlay != null)
            {
               this.§_-iq§.onPlay.apply(null,this.§_-iq§.onPlayParams);
            }
            this.tick(_loc1_);
         }
      }
      
      public function set onStopParams(param1:Array) : void
      {
         this.§_-rO§().onStopParams = param1;
      }
      
      public function gotoAndPlay(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§_-sA§)
         {
            param1 = this.§_-sA§;
         }
         this.§_-Nq§ = param1;
         this.play();
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(this.§_-7-§ != null)
         {
            this.§_-7-§.removeEventListener(param1,param2,param3);
            this.§_-7V§();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(this.§_-7-§ == null)
         {
            this.§_-7-§ = new §_-2w§(this);
         }
         this.§_-7-§.addEventListener(param1,param2,param3,param4,param5);
         this.§_-7V§();
      }
      
      public function fireStop() : void
      {
         if((this.§_-Ot§ & 2) != 0)
         {
            this.§_-7-§.dispatchEvent(new §_-tC§(§_-tC§.§_-9O§));
         }
         if(this.§_-iq§ != null && this.§_-iq§.onStop != null)
         {
            this.§_-iq§.onStop.apply(null,this.§_-iq§.onStopParams);
         }
      }
      
      public function get §_-xX§() : Boolean
      {
         return this.§_-Jf§;
      }
      
      public function clone() : §_-8u§
      {
         var _loc1_:§_-b8§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function get onCompleteParams() : Array
      {
         return this.§_-iq§ != null ? this.§_-iq§.onCompleteParams : null;
      }
      
      public function set onUpdateParams(param1:Array) : void
      {
         this.§_-rO§().onUpdateParams = param1;
      }
      
      public function get onStopParams() : Array
      {
         return this.§_-iq§ != null ? this.§_-iq§.onStopParams : null;
      }
      
      protected function §_-rO§() : ClassicHandlers
      {
         return this.§_-iq§ || (this.§_-iq§ = new ClassicHandlers());
      }
      
      public function set onPlay(param1:Function) : void
      {
         this.§_-rO§().onPlay = param1;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§_-rO§().onComplete = param1;
      }
      
      override public function tick(param1:Number) : Boolean
      {
         if(!this.§_-2a§)
         {
            return true;
         }
         var _loc2_:Number = param1 - this.§_-Cr§;
         this.§_-Nq§ = _loc2_;
         this.internalUpdate(_loc2_);
         if((this.§_-Ot§ & 4) != 0)
         {
            this.§_-7-§.dispatchEvent(new §_-tC§(§_-tC§.§_-vB§));
         }
         if(this.§_-iq§ != null && this.§_-iq§.onUpdate != null)
         {
            this.§_-iq§.onUpdate.apply(null,this.§_-iq§.onUpdateParams);
         }
         if(this.§_-2a§)
         {
            if(_loc2_ >= this.§_-sA§)
            {
               this.§_-Nq§ = this.§_-sA§;
               if(this.§_-Jf§)
               {
                  this.§_-2a§ = false;
                  if((this.§_-Ot§ & 8) != 0)
                  {
                     this.§_-7-§.dispatchEvent(new §_-tC§(§_-tC§.COMPLETE));
                  }
                  if(this.§_-iq§ != null && this.§_-iq§.onComplete != null)
                  {
                     this.§_-iq§.onComplete.apply(null,this.§_-iq§.onCompleteParams);
                  }
                  return true;
               }
               if((this.§_-Ot§ & 8) != 0)
               {
                  this.§_-7-§.dispatchEvent(new §_-tC§(§_-tC§.COMPLETE));
               }
               if(this.§_-iq§ != null && this.§_-iq§.onComplete != null)
               {
                  this.§_-iq§.onComplete.apply(null,this.§_-iq§.onCompleteParams);
               }
               this.§_-Nq§ = _loc2_ - this.§_-sA§;
               this.§_-Cr§ = param1 - this.§_-Nq§;
               this.tick(param1);
            }
            return false;
         }
         return true;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         if(this.§_-7-§ != null)
         {
            return this.§_-7-§.hasEventListener(param1);
         }
         return false;
      }
      
      protected function copyFrom(param1:§_-b8§) : void
      {
         this.§_-MR§ = param1.§_-MR§;
         this.§_-sA§ = param1.§_-sA§;
         this.§_-Jf§ = param1.§_-Jf§;
         if(param1.§_-iq§ != null)
         {
            this.§_-iq§ = new ClassicHandlers();
            this.§_-iq§.copyFrom(param1.§_-iq§);
         }
         if(param1.§_-7-§ != null)
         {
            this.§_-7-§ = new §_-2w§(this);
            this.§_-7-§.copyFrom(param1.§_-7-§);
         }
         this.§_-Ot§ = param1.§_-Ot§;
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
