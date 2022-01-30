package §1R§
{
   import § K§.§6"4§;
   import §#!,§.§#D§;
   import §6!>§.§-!s§;
   import §6!>§.§>!#§;
   import §7[§.§0!`§;
   import flash.events.Event;
   
   public class §]!"§ extends §-!s§ implements §4!T§
   {
       
      
      protected var §9!M§:uint = 0;
      
      protected var §^!#§:Number = 0;
      
      protected var §@k§:Boolean = false;
      
      protected var §05§:§>!#§;
      
      protected var §""#§:§#D§;
      
      protected var §[a§:Number;
      
      protected var §3q§:ClassicHandlers;
      
      protected var §+6§:Number = 0;
      
      protected var §8""§:Boolean = true;
      
      public function §]!"§(param1:§>!#§, param2:Number)
      {
         super();
         this.§05§ = param1;
         this.§^!#§ = param2;
      }
      
      public function get onStop() : Function
      {
         return this.§3q§ != null ? this.§3q§.onStop : null;
      }
      
      public function set onStop(param1:Function) : void
      {
         this.§>"8§().onStop = param1;
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         if(this.§""#§ != null)
         {
            return this.§""#§.willTrigger(param1);
         }
         return false;
      }
      
      protected function newInstance() : §]!"§
      {
         return null;
      }
      
      public function get onUpdate() : Function
      {
         return this.§3q§ != null ? this.§3q§.onUpdate : null;
      }
      
      public function get §5F§() : §>!#§
      {
         return this.§05§;
      }
      
      public function get duration() : Number
      {
         return this.§+6§;
      }
      
      public function gotoAndStop(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§+6§)
         {
            param1 = this.§+6§;
         }
         this.§^!#§ = param1;
         this.internalUpdate(param1);
         if((this.§9!M§ & 4) != 0)
         {
            this.§""#§.dispatchEvent(new §6"4§(§6"4§.§[!j§));
         }
         if(this.§3q§ != null && this.§3q§.onUpdate != null)
         {
            this.§3q§.onUpdate.apply(null,this.§3q§.onUpdateParams);
         }
         this.stop();
      }
      
      public function get onPlayParams() : Array
      {
         return this.§3q§ != null ? this.§3q§.onPlayParams : null;
      }
      
      public function stop() : void
      {
         if(this.§@k§)
         {
            this.§@k§ = false;
            if((this.§9!M§ & 2) != 0)
            {
               this.§""#§.dispatchEvent(new §6"4§(§6"4§.§=<§));
            }
            if(this.§3q§ != null && this.§3q§.onStop != null)
            {
               this.§3q§.onStop.apply(null,this.§3q§.onStopParams);
            }
         }
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§>"8§().onUpdate = param1;
      }
      
      public function firePlay() : void
      {
         if((this.§9!M§ & 1) != 0)
         {
            this.§""#§.dispatchEvent(new §6"4§(§6"4§.PLAY));
         }
         if(this.§3q§ != null && this.§3q§.onPlay != null)
         {
            this.§3q§.onPlay.apply(null,this.§3q§.onPlayParams);
         }
      }
      
      public function get §9!8§() : Boolean
      {
         return this.§@k§;
      }
      
      public function get onUpdateParams() : Array
      {
         return this.§3q§ != null ? this.§3q§.onUpdateParams : null;
      }
      
      public function get position() : Number
      {
         return this.§^!#§;
      }
      
      public function set onPlayParams(param1:Array) : void
      {
         this.§>"8§().onPlayParams = param1;
      }
      
      public function get onPlay() : Function
      {
         return this.§3q§ != null ? this.§3q§.onPlay : null;
      }
      
      public function set §9#§(param1:Boolean) : void
      {
         this.§8""§ = param1;
      }
      
      protected function §,<§() : void
      {
         if(this.§""#§.willTrigger(§6"4§.PLAY))
         {
            this.§9!M§ |= 1;
         }
         else
         {
            this.§9!M§ &= ~1;
         }
         if(this.§""#§.willTrigger(§6"4§.§=<§))
         {
            this.§9!M§ |= 2;
         }
         else
         {
            this.§9!M§ &= ~2;
         }
         if(this.§""#§.willTrigger(§6"4§.§[!j§))
         {
            this.§9!M§ |= 4;
         }
         else
         {
            this.§9!M§ &= ~4;
         }
         if(this.§""#§.willTrigger(§6"4§.COMPLETE))
         {
            this.§9!M§ |= 8;
         }
         else
         {
            this.§9!M§ &= ~8;
         }
      }
      
      public function set onCompleteParams(param1:Array) : void
      {
         this.§>"8§().onCompleteParams = param1;
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         if(this.§""#§ != null)
         {
            return this.§""#§.dispatchEvent(param1);
         }
         return false;
      }
      
      public function get onComplete() : Function
      {
         return this.§3q§ != null ? this.§3q§.onComplete : null;
      }
      
      public function §#!4§() : void
      {
         if(this.§@k§)
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
         if(this.§^!#§ < this.§+6§ && this.§+6§ <= param1 || 0 < this.§^!#§ && param1 <= 0)
         {
            _loc2_ = true;
         }
         this.§^!#§ = param1;
         this.internalUpdate(param1);
         if((this.§9!M§ & 4) != 0)
         {
            this.§""#§.dispatchEvent(new §6"4§(§6"4§.§[!j§));
         }
         if(this.§3q§ != null && this.§3q§.onUpdate != null)
         {
            this.§3q§.onUpdate.apply(null,this.§3q§.onUpdateParams);
         }
         if(_loc2_)
         {
            if((this.§9!M§ & 8) != 0)
            {
               this.§""#§.dispatchEvent(new §6"4§(§6"4§.COMPLETE));
            }
            if(this.§3q§ != null && this.§3q§.onComplete != null)
            {
               this.§3q§.onComplete.apply(null,this.§3q§.onCompleteParams);
            }
         }
      }
      
      public function play() : void
      {
         var _loc1_:Number = NaN;
         if(!this.§@k§)
         {
            if(this.§^!#§ >= this.§+6§)
            {
               this.§^!#§ = 0;
            }
            _loc1_ = this.§05§.time;
            this.§[a§ = _loc1_ - this.§^!#§;
            this.§@k§ = true;
            this.§05§.§%"!§(this);
            if((this.§9!M§ & 1) != 0)
            {
               this.§""#§.dispatchEvent(new §6"4§(§6"4§.PLAY));
            }
            if(this.§3q§ != null && this.§3q§.onPlay != null)
            {
               this.§3q§.onPlay.apply(null,this.§3q§.onPlayParams);
            }
            this.tick(_loc1_);
         }
      }
      
      public function set onStopParams(param1:Array) : void
      {
         this.§>"8§().onStopParams = param1;
      }
      
      public function gotoAndPlay(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§+6§)
         {
            param1 = this.§+6§;
         }
         this.§^!#§ = param1;
         this.play();
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(this.§""#§ != null)
         {
            this.§""#§.removeEventListener(param1,param2,param3);
            this.§,<§();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(this.§""#§ == null)
         {
            this.§""#§ = new §#D§(this);
         }
         this.§""#§.addEventListener(param1,param2,param3,param4,param5);
         this.§,<§();
      }
      
      public function fireStop() : void
      {
         if((this.§9!M§ & 2) != 0)
         {
            this.§""#§.dispatchEvent(new §6"4§(§6"4§.§=<§));
         }
         if(this.§3q§ != null && this.§3q§.onStop != null)
         {
            this.§3q§.onStop.apply(null,this.§3q§.onStopParams);
         }
      }
      
      public function get §9#§() : Boolean
      {
         return this.§8""§;
      }
      
      public function clone() : §0!`§
      {
         var _loc1_:§]!"§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function get onCompleteParams() : Array
      {
         return this.§3q§ != null ? this.§3q§.onCompleteParams : null;
      }
      
      public function set onUpdateParams(param1:Array) : void
      {
         this.§>"8§().onUpdateParams = param1;
      }
      
      public function get onStopParams() : Array
      {
         return this.§3q§ != null ? this.§3q§.onStopParams : null;
      }
      
      protected function §>"8§() : ClassicHandlers
      {
         return this.§3q§ || (this.§3q§ = new ClassicHandlers());
      }
      
      public function set onPlay(param1:Function) : void
      {
         this.§>"8§().onPlay = param1;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§>"8§().onComplete = param1;
      }
      
      override public function tick(param1:Number) : Boolean
      {
         if(!this.§@k§)
         {
            return true;
         }
         var _loc2_:Number = param1 - this.§[a§;
         this.§^!#§ = _loc2_;
         this.internalUpdate(_loc2_);
         if((this.§9!M§ & 4) != 0)
         {
            this.§""#§.dispatchEvent(new §6"4§(§6"4§.§[!j§));
         }
         if(this.§3q§ != null && this.§3q§.onUpdate != null)
         {
            this.§3q§.onUpdate.apply(null,this.§3q§.onUpdateParams);
         }
         if(this.§@k§)
         {
            if(_loc2_ >= this.§+6§)
            {
               this.§^!#§ = this.§+6§;
               if(this.§8""§)
               {
                  this.§@k§ = false;
                  if((this.§9!M§ & 8) != 0)
                  {
                     this.§""#§.dispatchEvent(new §6"4§(§6"4§.COMPLETE));
                  }
                  if(this.§3q§ != null && this.§3q§.onComplete != null)
                  {
                     this.§3q§.onComplete.apply(null,this.§3q§.onCompleteParams);
                  }
                  return true;
               }
               if((this.§9!M§ & 8) != 0)
               {
                  this.§""#§.dispatchEvent(new §6"4§(§6"4§.COMPLETE));
               }
               if(this.§3q§ != null && this.§3q§.onComplete != null)
               {
                  this.§3q§.onComplete.apply(null,this.§3q§.onCompleteParams);
               }
               this.§^!#§ = _loc2_ - this.§+6§;
               this.§[a§ = param1 - this.§^!#§;
               this.tick(param1);
            }
            return false;
         }
         return true;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         if(this.§""#§ != null)
         {
            return this.§""#§.hasEventListener(param1);
         }
         return false;
      }
      
      protected function copyFrom(param1:§]!"§) : void
      {
         this.§05§ = param1.§05§;
         this.§+6§ = param1.§+6§;
         this.§8""§ = param1.§8""§;
         if(param1.§3q§ != null)
         {
            this.§3q§ = new ClassicHandlers();
            this.§3q§.copyFrom(param1.§3q§);
         }
         if(param1.§""#§ != null)
         {
            this.§""#§ = new §#D§(this);
            this.§""#§.copyFrom(param1.§""#§);
         }
         this.§9!M§ = param1.§9!M§;
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
