package §8!J§
{
   import §#U§.§^!5§;
   import §%!D§.§,h§;
   import §2n§.§5!t§;
   import §2n§.§8"7§;
   import §?"3§.§>"!§;
   import flash.events.Event;
   
   public class §5f§ extends §5!t§ implements §3j§
   {
       
      
      protected var §2!`§:uint = 0;
      
      protected var §5-§:Number = 0;
      
      protected var §1!1§:Boolean = false;
      
      protected var §+!s§:§8"7§;
      
      protected var §,!F§:§>"!§;
      
      protected var §-q§:Number;
      
      protected var §+7§:ClassicHandlers;
      
      protected var §,!O§:Number = 0;
      
      protected var §>!I§:Boolean = true;
      
      public function §5f§(param1:§8"7§, param2:Number)
      {
         super();
         this.§+!s§ = param1;
         this.§5-§ = param2;
      }
      
      public function get onStop() : Function
      {
         return this.§+7§ != null ? this.§+7§.onStop : null;
      }
      
      public function set onStop(param1:Function) : void
      {
         this.§8!3§().onStop = param1;
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         if(this.§,!F§ != null)
         {
            return this.§,!F§.willTrigger(param1);
         }
         return false;
      }
      
      protected function newInstance() : §5f§
      {
         return null;
      }
      
      public function get onUpdate() : Function
      {
         return this.§+7§ != null ? this.§+7§.onUpdate : null;
      }
      
      public function get §?J§() : §8"7§
      {
         return this.§+!s§;
      }
      
      public function get duration() : Number
      {
         return this.§,!O§;
      }
      
      public function gotoAndStop(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§,!O§)
         {
            param1 = this.§,!O§;
         }
         this.§5-§ = param1;
         this.internalUpdate(param1);
         if((this.§2!`§ & 4) != 0)
         {
            this.§,!F§.dispatchEvent(new §^!5§(§^!5§.§!n§));
         }
         if(this.§+7§ != null && this.§+7§.onUpdate != null)
         {
            this.§+7§.onUpdate.apply(null,this.§+7§.onUpdateParams);
         }
         this.stop();
      }
      
      public function get onPlayParams() : Array
      {
         return this.§+7§ != null ? this.§+7§.onPlayParams : null;
      }
      
      public function stop() : void
      {
         if(this.§1!1§)
         {
            this.§1!1§ = false;
            if((this.§2!`§ & 2) != 0)
            {
               this.§,!F§.dispatchEvent(new §^!5§(§^!5§.§5W§));
            }
            if(this.§+7§ != null && this.§+7§.onStop != null)
            {
               this.§+7§.onStop.apply(null,this.§+7§.onStopParams);
            }
         }
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§8!3§().onUpdate = param1;
      }
      
      public function firePlay() : void
      {
         if((this.§2!`§ & 1) != 0)
         {
            this.§,!F§.dispatchEvent(new §^!5§(§^!5§.§;S§));
         }
         if(this.§+7§ != null && this.§+7§.onPlay != null)
         {
            this.§+7§.onPlay.apply(null,this.§+7§.onPlayParams);
         }
      }
      
      public function get §2"'§() : Boolean
      {
         return this.§1!1§;
      }
      
      public function get onUpdateParams() : Array
      {
         return this.§+7§ != null ? this.§+7§.onUpdateParams : null;
      }
      
      public function get position() : Number
      {
         return this.§5-§;
      }
      
      public function set onPlayParams(param1:Array) : void
      {
         this.§8!3§().onPlayParams = param1;
      }
      
      public function get onPlay() : Function
      {
         return this.§+7§ != null ? this.§+7§.onPlay : null;
      }
      
      public function set §-k§(param1:Boolean) : void
      {
         this.§>!I§ = param1;
      }
      
      protected function §&O§() : void
      {
         if(this.§,!F§.willTrigger(§^!5§.§;S§))
         {
            this.§2!`§ |= 1;
         }
         else
         {
            this.§2!`§ &= ~1;
         }
         if(this.§,!F§.willTrigger(§^!5§.§5W§))
         {
            this.§2!`§ |= 2;
         }
         else
         {
            this.§2!`§ &= ~2;
         }
         if(this.§,!F§.willTrigger(§^!5§.§!n§))
         {
            this.§2!`§ |= 4;
         }
         else
         {
            this.§2!`§ &= ~4;
         }
         if(this.§,!F§.willTrigger(§^!5§.COMPLETE))
         {
            this.§2!`§ |= 8;
         }
         else
         {
            this.§2!`§ &= ~8;
         }
      }
      
      public function set onCompleteParams(param1:Array) : void
      {
         this.§8!3§().onCompleteParams = param1;
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         if(this.§,!F§ != null)
         {
            return this.§,!F§.dispatchEvent(param1);
         }
         return false;
      }
      
      public function get onComplete() : Function
      {
         return this.§+7§ != null ? this.§+7§.onComplete : null;
      }
      
      public function §@%§() : void
      {
         if(this.§1!1§)
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
         if(this.§5-§ < this.§,!O§ && this.§,!O§ <= param1 || 0 < this.§5-§ && param1 <= 0)
         {
            _loc2_ = true;
         }
         this.§5-§ = param1;
         this.internalUpdate(param1);
         if((this.§2!`§ & 4) != 0)
         {
            this.§,!F§.dispatchEvent(new §^!5§(§^!5§.§!n§));
         }
         if(this.§+7§ != null && this.§+7§.onUpdate != null)
         {
            this.§+7§.onUpdate.apply(null,this.§+7§.onUpdateParams);
         }
         if(_loc2_)
         {
            if((this.§2!`§ & 8) != 0)
            {
               this.§,!F§.dispatchEvent(new §^!5§(§^!5§.COMPLETE));
            }
            if(this.§+7§ != null && this.§+7§.onComplete != null)
            {
               this.§+7§.onComplete.apply(null,this.§+7§.onCompleteParams);
            }
         }
      }
      
      public function play() : void
      {
         var _loc1_:Number = NaN;
         if(!this.§1!1§)
         {
            if(this.§5-§ >= this.§,!O§)
            {
               this.§5-§ = 0;
            }
            _loc1_ = this.§+!s§.time;
            this.§-q§ = _loc1_ - this.§5-§;
            this.§1!1§ = true;
            this.§+!s§.§["3§(this);
            if((this.§2!`§ & 1) != 0)
            {
               this.§,!F§.dispatchEvent(new §^!5§(§^!5§.§;S§));
            }
            if(this.§+7§ != null && this.§+7§.onPlay != null)
            {
               this.§+7§.onPlay.apply(null,this.§+7§.onPlayParams);
            }
            this.tick(_loc1_);
         }
      }
      
      public function set onStopParams(param1:Array) : void
      {
         this.§8!3§().onStopParams = param1;
      }
      
      public function gotoAndPlay(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§,!O§)
         {
            param1 = this.§,!O§;
         }
         this.§5-§ = param1;
         this.play();
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(this.§,!F§ != null)
         {
            this.§,!F§.removeEventListener(param1,param2,param3);
            this.§&O§();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(this.§,!F§ == null)
         {
            this.§,!F§ = new §>"!§(this);
         }
         this.§,!F§.addEventListener(param1,param2,param3,param4,param5);
         this.§&O§();
      }
      
      public function fireStop() : void
      {
         if((this.§2!`§ & 2) != 0)
         {
            this.§,!F§.dispatchEvent(new §^!5§(§^!5§.§5W§));
         }
         if(this.§+7§ != null && this.§+7§.onStop != null)
         {
            this.§+7§.onStop.apply(null,this.§+7§.onStopParams);
         }
      }
      
      public function get §-k§() : Boolean
      {
         return this.§>!I§;
      }
      
      public function clone() : §,h§
      {
         var _loc1_:§5f§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function get onCompleteParams() : Array
      {
         return this.§+7§ != null ? this.§+7§.onCompleteParams : null;
      }
      
      public function set onUpdateParams(param1:Array) : void
      {
         this.§8!3§().onUpdateParams = param1;
      }
      
      public function get onStopParams() : Array
      {
         return this.§+7§ != null ? this.§+7§.onStopParams : null;
      }
      
      protected function §8!3§() : ClassicHandlers
      {
         return this.§+7§ || (this.§+7§ = new ClassicHandlers());
      }
      
      public function set onPlay(param1:Function) : void
      {
         this.§8!3§().onPlay = param1;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§8!3§().onComplete = param1;
      }
      
      override public function tick(param1:Number) : Boolean
      {
         if(!this.§1!1§)
         {
            return true;
         }
         var _loc2_:Number = param1 - this.§-q§;
         this.§5-§ = _loc2_;
         this.internalUpdate(_loc2_);
         if((this.§2!`§ & 4) != 0)
         {
            this.§,!F§.dispatchEvent(new §^!5§(§^!5§.§!n§));
         }
         if(this.§+7§ != null && this.§+7§.onUpdate != null)
         {
            this.§+7§.onUpdate.apply(null,this.§+7§.onUpdateParams);
         }
         if(this.§1!1§)
         {
            if(_loc2_ >= this.§,!O§)
            {
               this.§5-§ = this.§,!O§;
               if(this.§>!I§)
               {
                  this.§1!1§ = false;
                  if((this.§2!`§ & 8) != 0)
                  {
                     this.§,!F§.dispatchEvent(new §^!5§(§^!5§.COMPLETE));
                  }
                  if(this.§+7§ != null && this.§+7§.onComplete != null)
                  {
                     this.§+7§.onComplete.apply(null,this.§+7§.onCompleteParams);
                  }
                  return true;
               }
               if((this.§2!`§ & 8) != 0)
               {
                  this.§,!F§.dispatchEvent(new §^!5§(§^!5§.COMPLETE));
               }
               if(this.§+7§ != null && this.§+7§.onComplete != null)
               {
                  this.§+7§.onComplete.apply(null,this.§+7§.onCompleteParams);
               }
               this.§5-§ = _loc2_ - this.§,!O§;
               this.§-q§ = param1 - this.§5-§;
               this.tick(param1);
            }
            return false;
         }
         return true;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         if(this.§,!F§ != null)
         {
            return this.§,!F§.hasEventListener(param1);
         }
         return false;
      }
      
      protected function copyFrom(param1:§5f§) : void
      {
         this.§+!s§ = param1.§+!s§;
         this.§,!O§ = param1.§,!O§;
         this.§>!I§ = param1.§>!I§;
         if(param1.§+7§ != null)
         {
            this.§+7§ = new ClassicHandlers();
            this.§+7§.copyFrom(param1.§+7§);
         }
         if(param1.§,!F§ != null)
         {
            this.§,!F§ = new §>"!§(this);
            this.§,!F§.copyFrom(param1.§,!F§);
         }
         this.§2!`§ = param1.§2!`§;
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
