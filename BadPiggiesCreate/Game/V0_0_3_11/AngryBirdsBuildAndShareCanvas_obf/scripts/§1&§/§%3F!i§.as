package §1&§
{
   import §4s§.§>P§;
   import §7!N§.§?"0§;
   import §8!X§.§7'§;
   import §8!X§.§^^§;
   import §[!G§.§>,§;
   import flash.events.Event;
   
   public class §?!i§ extends §^^§ implements §!!W§
   {
       
      
      protected var §9!s§:uint = 0;
      
      protected var §5!S§:Number = 0;
      
      protected var §=!A§:Boolean = false;
      
      protected var §="5§:§7'§;
      
      protected var §-B§:§?"0§;
      
      protected var §]"§:Number;
      
      protected var §^E§:ClassicHandlers;
      
      protected var §['§:Number = 0;
      
      protected var §'R§:Boolean = true;
      
      public function §?!i§(param1:§7'§, param2:Number)
      {
         super();
         this.§="5§ = param1;
         this.§5!S§ = param2;
      }
      
      public function get onStop() : Function
      {
         return this.§^E§ != null ? this.§^E§.onStop : null;
      }
      
      public function set onStop(param1:Function) : void
      {
         this.§%F§().onStop = param1;
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         if(this.§-B§ != null)
         {
            return this.§-B§.willTrigger(param1);
         }
         return false;
      }
      
      protected function newInstance() : §?!i§
      {
         return null;
      }
      
      public function get onUpdate() : Function
      {
         return this.§^E§ != null ? this.§^E§.onUpdate : null;
      }
      
      public function get §!H§() : §7'§
      {
         return this.§="5§;
      }
      
      public function get duration() : Number
      {
         return this.§['§;
      }
      
      public function gotoAndStop(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§['§)
         {
            param1 = this.§['§;
         }
         this.§5!S§ = param1;
         this.internalUpdate(param1);
         if((this.§9!s§ & 4) != 0)
         {
            this.§-B§.dispatchEvent(new §>,§(§>,§.§=!I§));
         }
         if(this.§^E§ != null && this.§^E§.onUpdate != null)
         {
            this.§^E§.onUpdate.apply(null,this.§^E§.onUpdateParams);
         }
         this.stop();
      }
      
      public function get onPlayParams() : Array
      {
         return this.§^E§ != null ? this.§^E§.onPlayParams : null;
      }
      
      public function stop() : void
      {
         if(this.§=!A§)
         {
            this.§=!A§ = false;
            if((this.§9!s§ & 2) != 0)
            {
               this.§-B§.dispatchEvent(new §>,§(§>,§.§5B§));
            }
            if(this.§^E§ != null && this.§^E§.onStop != null)
            {
               this.§^E§.onStop.apply(null,this.§^E§.onStopParams);
            }
         }
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§%F§().onUpdate = param1;
      }
      
      public function firePlay() : void
      {
         if((this.§9!s§ & 1) != 0)
         {
            this.§-B§.dispatchEvent(new §>,§(§>,§.§@!n§));
         }
         if(this.§^E§ != null && this.§^E§.onPlay != null)
         {
            this.§^E§.onPlay.apply(null,this.§^E§.onPlayParams);
         }
      }
      
      public function get §@!K§() : Boolean
      {
         return this.§=!A§;
      }
      
      public function get onUpdateParams() : Array
      {
         return this.§^E§ != null ? this.§^E§.onUpdateParams : null;
      }
      
      public function get position() : Number
      {
         return this.§5!S§;
      }
      
      public function set onPlayParams(param1:Array) : void
      {
         this.§%F§().onPlayParams = param1;
      }
      
      public function get onPlay() : Function
      {
         return this.§^E§ != null ? this.§^E§.onPlay : null;
      }
      
      public function set §6o§(param1:Boolean) : void
      {
         this.§'R§ = param1;
      }
      
      protected function §1E§() : void
      {
         if(this.§-B§.willTrigger(§>,§.§@!n§))
         {
            this.§9!s§ |= 1;
         }
         else
         {
            this.§9!s§ &= ~1;
         }
         if(this.§-B§.willTrigger(§>,§.§5B§))
         {
            this.§9!s§ |= 2;
         }
         else
         {
            this.§9!s§ &= ~2;
         }
         if(this.§-B§.willTrigger(§>,§.§=!I§))
         {
            this.§9!s§ |= 4;
         }
         else
         {
            this.§9!s§ &= ~4;
         }
         if(this.§-B§.willTrigger(§>,§.COMPLETE))
         {
            this.§9!s§ |= 8;
         }
         else
         {
            this.§9!s§ &= ~8;
         }
      }
      
      public function set onCompleteParams(param1:Array) : void
      {
         this.§%F§().onCompleteParams = param1;
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         if(this.§-B§ != null)
         {
            return this.§-B§.dispatchEvent(param1);
         }
         return false;
      }
      
      public function get onComplete() : Function
      {
         return this.§^E§ != null ? this.§^E§.onComplete : null;
      }
      
      public function §=! §() : void
      {
         if(this.§=!A§)
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
         if(this.§5!S§ < this.§['§ && this.§['§ <= param1 || 0 < this.§5!S§ && param1 <= 0)
         {
            _loc2_ = true;
         }
         this.§5!S§ = param1;
         this.internalUpdate(param1);
         if((this.§9!s§ & 4) != 0)
         {
            this.§-B§.dispatchEvent(new §>,§(§>,§.§=!I§));
         }
         if(this.§^E§ != null && this.§^E§.onUpdate != null)
         {
            this.§^E§.onUpdate.apply(null,this.§^E§.onUpdateParams);
         }
         if(_loc2_)
         {
            if((this.§9!s§ & 8) != 0)
            {
               this.§-B§.dispatchEvent(new §>,§(§>,§.COMPLETE));
            }
            if(this.§^E§ != null && this.§^E§.onComplete != null)
            {
               this.§^E§.onComplete.apply(null,this.§^E§.onCompleteParams);
            }
         }
      }
      
      public function play() : void
      {
         var _loc1_:Number = NaN;
         if(!this.§=!A§)
         {
            if(this.§5!S§ >= this.§['§)
            {
               this.§5!S§ = 0;
            }
            _loc1_ = this.§="5§.time;
            this.§]"§ = _loc1_ - this.§5!S§;
            this.§=!A§ = true;
            this.§="5§.§ "9§(this);
            if((this.§9!s§ & 1) != 0)
            {
               this.§-B§.dispatchEvent(new §>,§(§>,§.§@!n§));
            }
            if(this.§^E§ != null && this.§^E§.onPlay != null)
            {
               this.§^E§.onPlay.apply(null,this.§^E§.onPlayParams);
            }
            this.tick(_loc1_);
         }
      }
      
      public function set onStopParams(param1:Array) : void
      {
         this.§%F§().onStopParams = param1;
      }
      
      public function gotoAndPlay(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§['§)
         {
            param1 = this.§['§;
         }
         this.§5!S§ = param1;
         this.play();
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(this.§-B§ != null)
         {
            this.§-B§.removeEventListener(param1,param2,param3);
            this.§1E§();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(this.§-B§ == null)
         {
            this.§-B§ = new §?"0§(this);
         }
         this.§-B§.addEventListener(param1,param2,param3,param4,param5);
         this.§1E§();
      }
      
      public function fireStop() : void
      {
         if((this.§9!s§ & 2) != 0)
         {
            this.§-B§.dispatchEvent(new §>,§(§>,§.§5B§));
         }
         if(this.§^E§ != null && this.§^E§.onStop != null)
         {
            this.§^E§.onStop.apply(null,this.§^E§.onStopParams);
         }
      }
      
      public function get §6o§() : Boolean
      {
         return this.§'R§;
      }
      
      public function clone() : §>P§
      {
         var _loc1_:§?!i§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function get onCompleteParams() : Array
      {
         return this.§^E§ != null ? this.§^E§.onCompleteParams : null;
      }
      
      public function set onUpdateParams(param1:Array) : void
      {
         this.§%F§().onUpdateParams = param1;
      }
      
      public function get onStopParams() : Array
      {
         return this.§^E§ != null ? this.§^E§.onStopParams : null;
      }
      
      protected function §%F§() : ClassicHandlers
      {
         return this.§^E§ || (this.§^E§ = new ClassicHandlers());
      }
      
      public function set onPlay(param1:Function) : void
      {
         this.§%F§().onPlay = param1;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§%F§().onComplete = param1;
      }
      
      override public function tick(param1:Number) : Boolean
      {
         if(!this.§=!A§)
         {
            return true;
         }
         var _loc2_:Number = param1 - this.§]"§;
         this.§5!S§ = _loc2_;
         this.internalUpdate(_loc2_);
         if((this.§9!s§ & 4) != 0)
         {
            this.§-B§.dispatchEvent(new §>,§(§>,§.§=!I§));
         }
         if(this.§^E§ != null && this.§^E§.onUpdate != null)
         {
            this.§^E§.onUpdate.apply(null,this.§^E§.onUpdateParams);
         }
         if(this.§=!A§)
         {
            if(_loc2_ >= this.§['§)
            {
               this.§5!S§ = this.§['§;
               if(this.§'R§)
               {
                  this.§=!A§ = false;
                  if((this.§9!s§ & 8) != 0)
                  {
                     this.§-B§.dispatchEvent(new §>,§(§>,§.COMPLETE));
                  }
                  if(this.§^E§ != null && this.§^E§.onComplete != null)
                  {
                     this.§^E§.onComplete.apply(null,this.§^E§.onCompleteParams);
                  }
                  return true;
               }
               if((this.§9!s§ & 8) != 0)
               {
                  this.§-B§.dispatchEvent(new §>,§(§>,§.COMPLETE));
               }
               if(this.§^E§ != null && this.§^E§.onComplete != null)
               {
                  this.§^E§.onComplete.apply(null,this.§^E§.onCompleteParams);
               }
               this.§5!S§ = _loc2_ - this.§['§;
               this.§]"§ = param1 - this.§5!S§;
               this.tick(param1);
            }
            return false;
         }
         return true;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         if(this.§-B§ != null)
         {
            return this.§-B§.hasEventListener(param1);
         }
         return false;
      }
      
      protected function copyFrom(param1:§?!i§) : void
      {
         this.§="5§ = param1.§="5§;
         this.§['§ = param1.§['§;
         this.§'R§ = param1.§'R§;
         if(param1.§^E§ != null)
         {
            this.§^E§ = new ClassicHandlers();
            this.§^E§.copyFrom(param1.§^E§);
         }
         if(param1.§-B§ != null)
         {
            this.§-B§ = new §?"0§(this);
            this.§-B§.copyFrom(param1.§-B§);
         }
         this.§9!s§ = param1.§9!s§;
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
