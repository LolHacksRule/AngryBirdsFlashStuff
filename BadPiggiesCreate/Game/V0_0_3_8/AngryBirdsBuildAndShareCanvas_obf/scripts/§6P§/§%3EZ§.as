package §6P§
{
   import §9!j§.§@y§;
   import §?"1§.§1"%§;
   import §]+§.§"G§;
   import §]+§.§%a§;
   import §`"5§.§ !J§;
   import flash.events.Event;
   
   public class §>Z§ extends §%a§ implements §!b§
   {
       
      
      protected var §>!2§:uint = 0;
      
      protected var §#!M§:Number = 0;
      
      protected var §74§:Boolean = false;
      
      protected var §;v§:§"G§;
      
      protected var §,l§:§@y§;
      
      protected var §=!d§:Number;
      
      protected var §=Z§:ClassicHandlers;
      
      protected var §"!,§:Number = 0;
      
      protected var §["-§:Boolean = true;
      
      public function §>Z§(param1:§"G§, param2:Number)
      {
         super();
         this.§;v§ = param1;
         this.§#!M§ = param2;
      }
      
      public function get onStop() : Function
      {
         return this.§=Z§ != null ? this.§=Z§.onStop : null;
      }
      
      public function set onStop(param1:Function) : void
      {
         this.§<v§().onStop = param1;
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         if(this.§,l§ != null)
         {
            return this.§,l§.willTrigger(param1);
         }
         return false;
      }
      
      protected function newInstance() : §>Z§
      {
         return null;
      }
      
      public function get onUpdate() : Function
      {
         return this.§=Z§ != null ? this.§=Z§.onUpdate : null;
      }
      
      public function get §&! §() : §"G§
      {
         return this.§;v§;
      }
      
      public function get duration() : Number
      {
         return this.§"!,§;
      }
      
      public function gotoAndStop(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§"!,§)
         {
            param1 = this.§"!,§;
         }
         this.§#!M§ = param1;
         this.internalUpdate(param1);
         if((this.§>!2§ & 4) != 0)
         {
            this.§,l§.dispatchEvent(new §1"%§(§1"%§.§1!!§));
         }
         if(this.§=Z§ != null && this.§=Z§.onUpdate != null)
         {
            this.§=Z§.onUpdate.apply(null,this.§=Z§.onUpdateParams);
         }
         this.stop();
      }
      
      public function get onPlayParams() : Array
      {
         return this.§=Z§ != null ? this.§=Z§.onPlayParams : null;
      }
      
      public function stop() : void
      {
         if(this.§74§)
         {
            this.§74§ = false;
            if((this.§>!2§ & 2) != 0)
            {
               this.§,l§.dispatchEvent(new §1"%§(§1"%§.§!!H§));
            }
            if(this.§=Z§ != null && this.§=Z§.onStop != null)
            {
               this.§=Z§.onStop.apply(null,this.§=Z§.onStopParams);
            }
         }
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§<v§().onUpdate = param1;
      }
      
      public function firePlay() : void
      {
         if((this.§>!2§ & 1) != 0)
         {
            this.§,l§.dispatchEvent(new §1"%§(§1"%§.§,3§));
         }
         if(this.§=Z§ != null && this.§=Z§.onPlay != null)
         {
            this.§=Z§.onPlay.apply(null,this.§=Z§.onPlayParams);
         }
      }
      
      public function get §^" §() : Boolean
      {
         return this.§74§;
      }
      
      public function get onUpdateParams() : Array
      {
         return this.§=Z§ != null ? this.§=Z§.onUpdateParams : null;
      }
      
      public function get position() : Number
      {
         return this.§#!M§;
      }
      
      public function set onPlayParams(param1:Array) : void
      {
         this.§<v§().onPlayParams = param1;
      }
      
      public function get onPlay() : Function
      {
         return this.§=Z§ != null ? this.§=Z§.onPlay : null;
      }
      
      public function set §+K§(param1:Boolean) : void
      {
         this.§["-§ = param1;
      }
      
      protected function §0"%§() : void
      {
         if(this.§,l§.willTrigger(§1"%§.§,3§))
         {
            this.§>!2§ |= 1;
         }
         else
         {
            this.§>!2§ &= ~1;
         }
         if(this.§,l§.willTrigger(§1"%§.§!!H§))
         {
            this.§>!2§ |= 2;
         }
         else
         {
            this.§>!2§ &= ~2;
         }
         if(this.§,l§.willTrigger(§1"%§.§1!!§))
         {
            this.§>!2§ |= 4;
         }
         else
         {
            this.§>!2§ &= ~4;
         }
         if(this.§,l§.willTrigger(§1"%§.COMPLETE))
         {
            this.§>!2§ |= 8;
         }
         else
         {
            this.§>!2§ &= ~8;
         }
      }
      
      public function set onCompleteParams(param1:Array) : void
      {
         this.§<v§().onCompleteParams = param1;
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         if(this.§,l§ != null)
         {
            return this.§,l§.dispatchEvent(param1);
         }
         return false;
      }
      
      public function get onComplete() : Function
      {
         return this.§=Z§ != null ? this.§=Z§.onComplete : null;
      }
      
      public function §!!D§() : void
      {
         if(this.§74§)
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
         if(this.§#!M§ < this.§"!,§ && this.§"!,§ <= param1 || 0 < this.§#!M§ && param1 <= 0)
         {
            _loc2_ = true;
         }
         this.§#!M§ = param1;
         this.internalUpdate(param1);
         if((this.§>!2§ & 4) != 0)
         {
            this.§,l§.dispatchEvent(new §1"%§(§1"%§.§1!!§));
         }
         if(this.§=Z§ != null && this.§=Z§.onUpdate != null)
         {
            this.§=Z§.onUpdate.apply(null,this.§=Z§.onUpdateParams);
         }
         if(_loc2_)
         {
            if((this.§>!2§ & 8) != 0)
            {
               this.§,l§.dispatchEvent(new §1"%§(§1"%§.COMPLETE));
            }
            if(this.§=Z§ != null && this.§=Z§.onComplete != null)
            {
               this.§=Z§.onComplete.apply(null,this.§=Z§.onCompleteParams);
            }
         }
      }
      
      public function play() : void
      {
         var _loc1_:Number = NaN;
         if(!this.§74§)
         {
            if(this.§#!M§ >= this.§"!,§)
            {
               this.§#!M§ = 0;
            }
            _loc1_ = this.§;v§.time;
            this.§=!d§ = _loc1_ - this.§#!M§;
            this.§74§ = true;
            this.§;v§.§-q§(this);
            if((this.§>!2§ & 1) != 0)
            {
               this.§,l§.dispatchEvent(new §1"%§(§1"%§.§,3§));
            }
            if(this.§=Z§ != null && this.§=Z§.onPlay != null)
            {
               this.§=Z§.onPlay.apply(null,this.§=Z§.onPlayParams);
            }
            this.tick(_loc1_);
         }
      }
      
      public function set onStopParams(param1:Array) : void
      {
         this.§<v§().onStopParams = param1;
      }
      
      public function gotoAndPlay(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§"!,§)
         {
            param1 = this.§"!,§;
         }
         this.§#!M§ = param1;
         this.play();
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(this.§,l§ != null)
         {
            this.§,l§.removeEventListener(param1,param2,param3);
            this.§0"%§();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(this.§,l§ == null)
         {
            this.§,l§ = new §@y§(this);
         }
         this.§,l§.addEventListener(param1,param2,param3,param4,param5);
         this.§0"%§();
      }
      
      public function fireStop() : void
      {
         if((this.§>!2§ & 2) != 0)
         {
            this.§,l§.dispatchEvent(new §1"%§(§1"%§.§!!H§));
         }
         if(this.§=Z§ != null && this.§=Z§.onStop != null)
         {
            this.§=Z§.onStop.apply(null,this.§=Z§.onStopParams);
         }
      }
      
      public function get §+K§() : Boolean
      {
         return this.§["-§;
      }
      
      public function clone() : § !J§
      {
         var _loc1_:§>Z§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function get onCompleteParams() : Array
      {
         return this.§=Z§ != null ? this.§=Z§.onCompleteParams : null;
      }
      
      public function set onUpdateParams(param1:Array) : void
      {
         this.§<v§().onUpdateParams = param1;
      }
      
      public function get onStopParams() : Array
      {
         return this.§=Z§ != null ? this.§=Z§.onStopParams : null;
      }
      
      protected function §<v§() : ClassicHandlers
      {
         return this.§=Z§ || (this.§=Z§ = new ClassicHandlers());
      }
      
      public function set onPlay(param1:Function) : void
      {
         this.§<v§().onPlay = param1;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§<v§().onComplete = param1;
      }
      
      override public function tick(param1:Number) : Boolean
      {
         if(!this.§74§)
         {
            return true;
         }
         var _loc2_:Number = param1 - this.§=!d§;
         this.§#!M§ = _loc2_;
         this.internalUpdate(_loc2_);
         if((this.§>!2§ & 4) != 0)
         {
            this.§,l§.dispatchEvent(new §1"%§(§1"%§.§1!!§));
         }
         if(this.§=Z§ != null && this.§=Z§.onUpdate != null)
         {
            this.§=Z§.onUpdate.apply(null,this.§=Z§.onUpdateParams);
         }
         if(this.§74§)
         {
            if(_loc2_ >= this.§"!,§)
            {
               this.§#!M§ = this.§"!,§;
               if(this.§["-§)
               {
                  this.§74§ = false;
                  if((this.§>!2§ & 8) != 0)
                  {
                     this.§,l§.dispatchEvent(new §1"%§(§1"%§.COMPLETE));
                  }
                  if(this.§=Z§ != null && this.§=Z§.onComplete != null)
                  {
                     this.§=Z§.onComplete.apply(null,this.§=Z§.onCompleteParams);
                  }
                  return true;
               }
               if((this.§>!2§ & 8) != 0)
               {
                  this.§,l§.dispatchEvent(new §1"%§(§1"%§.COMPLETE));
               }
               if(this.§=Z§ != null && this.§=Z§.onComplete != null)
               {
                  this.§=Z§.onComplete.apply(null,this.§=Z§.onCompleteParams);
               }
               this.§#!M§ = _loc2_ - this.§"!,§;
               this.§=!d§ = param1 - this.§#!M§;
               this.tick(param1);
            }
            return false;
         }
         return true;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         if(this.§,l§ != null)
         {
            return this.§,l§.hasEventListener(param1);
         }
         return false;
      }
      
      protected function copyFrom(param1:§>Z§) : void
      {
         this.§;v§ = param1.§;v§;
         this.§"!,§ = param1.§"!,§;
         this.§["-§ = param1.§["-§;
         if(param1.§=Z§ != null)
         {
            this.§=Z§ = new ClassicHandlers();
            this.§=Z§.copyFrom(param1.§=Z§);
         }
         if(param1.§,l§ != null)
         {
            this.§,l§ = new §@y§(this);
            this.§,l§.copyFrom(param1.§,l§);
         }
         this.§>!2§ = param1.§>!2§;
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
