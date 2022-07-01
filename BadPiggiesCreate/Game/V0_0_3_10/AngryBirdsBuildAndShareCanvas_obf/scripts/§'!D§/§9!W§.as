package §'!D§
{
   import § !R§.§=!0§;
   import §&!8§.§9v§;
   import §["6§.§"!g§;
   import §["6§.§@D§;
   import §]!N§.§7"3§;
   import flash.events.Event;
   
   public class §9!W§ extends §"!g§ implements §&s§
   {
       
      
      protected var §+>§:uint = 0;
      
      protected var §>J§:Number = 0;
      
      protected var §[i§:Boolean = false;
      
      protected var §9%§:§@D§;
      
      protected var §2P§:§=!0§;
      
      protected var §,!a§:Number;
      
      protected var §[!^§:ClassicHandlers;
      
      protected var §4!V§:Number = 0;
      
      protected var §6!6§:Boolean = true;
      
      public function §9!W§(param1:§@D§, param2:Number)
      {
         super();
         this.§9%§ = param1;
         this.§>J§ = param2;
      }
      
      public function get onStop() : Function
      {
         return this.§[!^§ != null ? this.§[!^§.onStop : null;
      }
      
      public function set onStop(param1:Function) : void
      {
         this.§7v§().onStop = param1;
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         if(this.§2P§ != null)
         {
            return this.§2P§.willTrigger(param1);
         }
         return false;
      }
      
      protected function newInstance() : §9!W§
      {
         return null;
      }
      
      public function get onUpdate() : Function
      {
         return this.§[!^§ != null ? this.§[!^§.onUpdate : null;
      }
      
      public function get §%!H§() : §@D§
      {
         return this.§9%§;
      }
      
      public function get duration() : Number
      {
         return this.§4!V§;
      }
      
      public function gotoAndStop(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§4!V§)
         {
            param1 = this.§4!V§;
         }
         this.§>J§ = param1;
         this.internalUpdate(param1);
         if((this.§+>§ & 4) != 0)
         {
            this.§2P§.dispatchEvent(new §9v§(§9v§.§["§));
         }
         if(this.§[!^§ != null && this.§[!^§.onUpdate != null)
         {
            this.§[!^§.onUpdate.apply(null,this.§[!^§.onUpdateParams);
         }
         this.stop();
      }
      
      public function get onPlayParams() : Array
      {
         return this.§[!^§ != null ? this.§[!^§.onPlayParams : null;
      }
      
      public function stop() : void
      {
         if(this.§[i§)
         {
            this.§[i§ = false;
            if((this.§+>§ & 2) != 0)
            {
               this.§2P§.dispatchEvent(new §9v§(§9v§.§'o§));
            }
            if(this.§[!^§ != null && this.§[!^§.onStop != null)
            {
               this.§[!^§.onStop.apply(null,this.§[!^§.onStopParams);
            }
         }
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§7v§().onUpdate = param1;
      }
      
      public function firePlay() : void
      {
         if((this.§+>§ & 1) != 0)
         {
            this.§2P§.dispatchEvent(new §9v§(§9v§.§>b§));
         }
         if(this.§[!^§ != null && this.§[!^§.onPlay != null)
         {
            this.§[!^§.onPlay.apply(null,this.§[!^§.onPlayParams);
         }
      }
      
      public function get §#N§() : Boolean
      {
         return this.§[i§;
      }
      
      public function get onUpdateParams() : Array
      {
         return this.§[!^§ != null ? this.§[!^§.onUpdateParams : null;
      }
      
      public function get position() : Number
      {
         return this.§>J§;
      }
      
      public function set onPlayParams(param1:Array) : void
      {
         this.§7v§().onPlayParams = param1;
      }
      
      public function get onPlay() : Function
      {
         return this.§[!^§ != null ? this.§[!^§.onPlay : null;
      }
      
      public function set §@!r§(param1:Boolean) : void
      {
         this.§6!6§ = param1;
      }
      
      protected function §1c§() : void
      {
         if(this.§2P§.willTrigger(§9v§.§>b§))
         {
            this.§+>§ |= 1;
         }
         else
         {
            this.§+>§ &= ~1;
         }
         if(this.§2P§.willTrigger(§9v§.§'o§))
         {
            this.§+>§ |= 2;
         }
         else
         {
            this.§+>§ &= ~2;
         }
         if(this.§2P§.willTrigger(§9v§.§["§))
         {
            this.§+>§ |= 4;
         }
         else
         {
            this.§+>§ &= ~4;
         }
         if(this.§2P§.willTrigger(§9v§.COMPLETE))
         {
            this.§+>§ |= 8;
         }
         else
         {
            this.§+>§ &= ~8;
         }
      }
      
      public function set onCompleteParams(param1:Array) : void
      {
         this.§7v§().onCompleteParams = param1;
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         if(this.§2P§ != null)
         {
            return this.§2P§.dispatchEvent(param1);
         }
         return false;
      }
      
      public function get onComplete() : Function
      {
         return this.§[!^§ != null ? this.§[!^§.onComplete : null;
      }
      
      public function § z§() : void
      {
         if(this.§[i§)
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
         if(this.§>J§ < this.§4!V§ && this.§4!V§ <= param1 || 0 < this.§>J§ && param1 <= 0)
         {
            _loc2_ = true;
         }
         this.§>J§ = param1;
         this.internalUpdate(param1);
         if((this.§+>§ & 4) != 0)
         {
            this.§2P§.dispatchEvent(new §9v§(§9v§.§["§));
         }
         if(this.§[!^§ != null && this.§[!^§.onUpdate != null)
         {
            this.§[!^§.onUpdate.apply(null,this.§[!^§.onUpdateParams);
         }
         if(_loc2_)
         {
            if((this.§+>§ & 8) != 0)
            {
               this.§2P§.dispatchEvent(new §9v§(§9v§.COMPLETE));
            }
            if(this.§[!^§ != null && this.§[!^§.onComplete != null)
            {
               this.§[!^§.onComplete.apply(null,this.§[!^§.onCompleteParams);
            }
         }
      }
      
      public function play() : void
      {
         var _loc1_:Number = NaN;
         if(!this.§[i§)
         {
            if(this.§>J§ >= this.§4!V§)
            {
               this.§>J§ = 0;
            }
            _loc1_ = this.§9%§.time;
            this.§,!a§ = _loc1_ - this.§>J§;
            this.§[i§ = true;
            this.§9%§.§9y§(this);
            if((this.§+>§ & 1) != 0)
            {
               this.§2P§.dispatchEvent(new §9v§(§9v§.§>b§));
            }
            if(this.§[!^§ != null && this.§[!^§.onPlay != null)
            {
               this.§[!^§.onPlay.apply(null,this.§[!^§.onPlayParams);
            }
            this.tick(_loc1_);
         }
      }
      
      public function set onStopParams(param1:Array) : void
      {
         this.§7v§().onStopParams = param1;
      }
      
      public function gotoAndPlay(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§4!V§)
         {
            param1 = this.§4!V§;
         }
         this.§>J§ = param1;
         this.play();
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(this.§2P§ != null)
         {
            this.§2P§.removeEventListener(param1,param2,param3);
            this.§1c§();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(this.§2P§ == null)
         {
            this.§2P§ = new §=!0§(this);
         }
         this.§2P§.addEventListener(param1,param2,param3,param4,param5);
         this.§1c§();
      }
      
      public function fireStop() : void
      {
         if((this.§+>§ & 2) != 0)
         {
            this.§2P§.dispatchEvent(new §9v§(§9v§.§'o§));
         }
         if(this.§[!^§ != null && this.§[!^§.onStop != null)
         {
            this.§[!^§.onStop.apply(null,this.§[!^§.onStopParams);
         }
      }
      
      public function get §@!r§() : Boolean
      {
         return this.§6!6§;
      }
      
      public function clone() : §7"3§
      {
         var _loc1_:§9!W§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function get onCompleteParams() : Array
      {
         return this.§[!^§ != null ? this.§[!^§.onCompleteParams : null;
      }
      
      public function set onUpdateParams(param1:Array) : void
      {
         this.§7v§().onUpdateParams = param1;
      }
      
      public function get onStopParams() : Array
      {
         return this.§[!^§ != null ? this.§[!^§.onStopParams : null;
      }
      
      protected function §7v§() : ClassicHandlers
      {
         return this.§[!^§ || (this.§[!^§ = new ClassicHandlers());
      }
      
      public function set onPlay(param1:Function) : void
      {
         this.§7v§().onPlay = param1;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§7v§().onComplete = param1;
      }
      
      override public function tick(param1:Number) : Boolean
      {
         if(!this.§[i§)
         {
            return true;
         }
         var _loc2_:Number = param1 - this.§,!a§;
         this.§>J§ = _loc2_;
         this.internalUpdate(_loc2_);
         if((this.§+>§ & 4) != 0)
         {
            this.§2P§.dispatchEvent(new §9v§(§9v§.§["§));
         }
         if(this.§[!^§ != null && this.§[!^§.onUpdate != null)
         {
            this.§[!^§.onUpdate.apply(null,this.§[!^§.onUpdateParams);
         }
         if(this.§[i§)
         {
            if(_loc2_ >= this.§4!V§)
            {
               this.§>J§ = this.§4!V§;
               if(this.§6!6§)
               {
                  this.§[i§ = false;
                  if((this.§+>§ & 8) != 0)
                  {
                     this.§2P§.dispatchEvent(new §9v§(§9v§.COMPLETE));
                  }
                  if(this.§[!^§ != null && this.§[!^§.onComplete != null)
                  {
                     this.§[!^§.onComplete.apply(null,this.§[!^§.onCompleteParams);
                  }
                  return true;
               }
               if((this.§+>§ & 8) != 0)
               {
                  this.§2P§.dispatchEvent(new §9v§(§9v§.COMPLETE));
               }
               if(this.§[!^§ != null && this.§[!^§.onComplete != null)
               {
                  this.§[!^§.onComplete.apply(null,this.§[!^§.onCompleteParams);
               }
               this.§>J§ = _loc2_ - this.§4!V§;
               this.§,!a§ = param1 - this.§>J§;
               this.tick(param1);
            }
            return false;
         }
         return true;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         if(this.§2P§ != null)
         {
            return this.§2P§.hasEventListener(param1);
         }
         return false;
      }
      
      protected function copyFrom(param1:§9!W§) : void
      {
         this.§9%§ = param1.§9%§;
         this.§4!V§ = param1.§4!V§;
         this.§6!6§ = param1.§6!6§;
         if(param1.§[!^§ != null)
         {
            this.§[!^§ = new ClassicHandlers();
            this.§[!^§.copyFrom(param1.§[!^§);
         }
         if(param1.§2P§ != null)
         {
            this.§2P§ = new §=!0§(this);
            this.§2P§.copyFrom(param1.§2P§);
         }
         this.§+>§ = param1.§+>§;
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
