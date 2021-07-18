package §`!#§
{
   import §"E§.§""%§;
   import §%!n§.§'!r§;
   import §%!n§.§;!'§;
   import §]6§.§[f§;
   import §^!1§.§`!N§;
   import flash.events.Event;
   
   public class §[!O§ extends §'!r§ implements §?f§
   {
       
      
      protected var §8!X§:uint = 0;
      
      protected var §9r§:Number = 0;
      
      protected var § y§:Boolean = false;
      
      protected var §`!D§:§;!'§;
      
      protected var §,!V§:§""%§;
      
      protected var § ",§:Number;
      
      protected var §^W§:ClassicHandlers;
      
      protected var §!"-§:Number = 0;
      
      protected var §@0§:Boolean = true;
      
      public function §[!O§(param1:§;!'§, param2:Number)
      {
         super();
         this.§`!D§ = param1;
         this.§9r§ = param2;
      }
      
      public function get onStop() : Function
      {
         return this.§^W§ != null ? this.§^W§.onStop : null;
      }
      
      public function set onStop(param1:Function) : void
      {
         this.§^"5§().onStop = param1;
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         if(this.§,!V§ != null)
         {
            return this.§,!V§.willTrigger(param1);
         }
         return false;
      }
      
      protected function newInstance() : §[!O§
      {
         return null;
      }
      
      public function get onUpdate() : Function
      {
         return this.§^W§ != null ? this.§^W§.onUpdate : null;
      }
      
      public function get §!"$§() : §;!'§
      {
         return this.§`!D§;
      }
      
      public function get duration() : Number
      {
         return this.§!"-§;
      }
      
      public function gotoAndStop(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§!"-§)
         {
            param1 = this.§!"-§;
         }
         this.§9r§ = param1;
         this.internalUpdate(param1);
         if((this.§8!X§ & 4) != 0)
         {
            this.§,!V§.dispatchEvent(new §`!N§(§`!N§.§7"9§));
         }
         if(this.§^W§ != null && this.§^W§.onUpdate != null)
         {
            this.§^W§.onUpdate.apply(null,this.§^W§.onUpdateParams);
         }
         this.stop();
      }
      
      public function get onPlayParams() : Array
      {
         return this.§^W§ != null ? this.§^W§.onPlayParams : null;
      }
      
      public function stop() : void
      {
         if(this.§ y§)
         {
            this.§ y§ = false;
            if((this.§8!X§ & 2) != 0)
            {
               this.§,!V§.dispatchEvent(new §`!N§(§`!N§.§?S§));
            }
            if(this.§^W§ != null && this.§^W§.onStop != null)
            {
               this.§^W§.onStop.apply(null,this.§^W§.onStopParams);
            }
         }
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§^"5§().onUpdate = param1;
      }
      
      public function firePlay() : void
      {
         if((this.§8!X§ & 1) != 0)
         {
            this.§,!V§.dispatchEvent(new §`!N§(§`!N§.PLAY));
         }
         if(this.§^W§ != null && this.§^W§.onPlay != null)
         {
            this.§^W§.onPlay.apply(null,this.§^W§.onPlayParams);
         }
      }
      
      public function get §4C§() : Boolean
      {
         return this.§ y§;
      }
      
      public function get onUpdateParams() : Array
      {
         return this.§^W§ != null ? this.§^W§.onUpdateParams : null;
      }
      
      public function get position() : Number
      {
         return this.§9r§;
      }
      
      public function set onPlayParams(param1:Array) : void
      {
         this.§^"5§().onPlayParams = param1;
      }
      
      public function get onPlay() : Function
      {
         return this.§^W§ != null ? this.§^W§.onPlay : null;
      }
      
      public function set §"H§(param1:Boolean) : void
      {
         this.§@0§ = param1;
      }
      
      protected function §6f§() : void
      {
         if(this.§,!V§.willTrigger(§`!N§.PLAY))
         {
            this.§8!X§ |= 1;
         }
         else
         {
            this.§8!X§ &= ~1;
         }
         if(this.§,!V§.willTrigger(§`!N§.§?S§))
         {
            this.§8!X§ |= 2;
         }
         else
         {
            this.§8!X§ &= ~2;
         }
         if(this.§,!V§.willTrigger(§`!N§.§7"9§))
         {
            this.§8!X§ |= 4;
         }
         else
         {
            this.§8!X§ &= ~4;
         }
         if(this.§,!V§.willTrigger(§`!N§.COMPLETE))
         {
            this.§8!X§ |= 8;
         }
         else
         {
            this.§8!X§ &= ~8;
         }
      }
      
      public function set onCompleteParams(param1:Array) : void
      {
         this.§^"5§().onCompleteParams = param1;
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         if(this.§,!V§ != null)
         {
            return this.§,!V§.dispatchEvent(param1);
         }
         return false;
      }
      
      public function get onComplete() : Function
      {
         return this.§^W§ != null ? this.§^W§.onComplete : null;
      }
      
      public function §,!$§() : void
      {
         if(this.§ y§)
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
         if(this.§9r§ < this.§!"-§ && this.§!"-§ <= param1 || 0 < this.§9r§ && param1 <= 0)
         {
            _loc2_ = true;
         }
         this.§9r§ = param1;
         this.internalUpdate(param1);
         if((this.§8!X§ & 4) != 0)
         {
            this.§,!V§.dispatchEvent(new §`!N§(§`!N§.§7"9§));
         }
         if(this.§^W§ != null && this.§^W§.onUpdate != null)
         {
            this.§^W§.onUpdate.apply(null,this.§^W§.onUpdateParams);
         }
         if(_loc2_)
         {
            if((this.§8!X§ & 8) != 0)
            {
               this.§,!V§.dispatchEvent(new §`!N§(§`!N§.COMPLETE));
            }
            if(this.§^W§ != null && this.§^W§.onComplete != null)
            {
               this.§^W§.onComplete.apply(null,this.§^W§.onCompleteParams);
            }
         }
      }
      
      public function play() : void
      {
         var _loc1_:Number = NaN;
         if(!this.§ y§)
         {
            if(this.§9r§ >= this.§!"-§)
            {
               this.§9r§ = 0;
            }
            _loc1_ = this.§`!D§.time;
            this.§ ",§ = _loc1_ - this.§9r§;
            this.§ y§ = true;
            this.§`!D§.§]!a§(this);
            if((this.§8!X§ & 1) != 0)
            {
               this.§,!V§.dispatchEvent(new §`!N§(§`!N§.PLAY));
            }
            if(this.§^W§ != null && this.§^W§.onPlay != null)
            {
               this.§^W§.onPlay.apply(null,this.§^W§.onPlayParams);
            }
            this.tick(_loc1_);
         }
      }
      
      public function set onStopParams(param1:Array) : void
      {
         this.§^"5§().onStopParams = param1;
      }
      
      public function gotoAndPlay(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§!"-§)
         {
            param1 = this.§!"-§;
         }
         this.§9r§ = param1;
         this.play();
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(this.§,!V§ != null)
         {
            this.§,!V§.removeEventListener(param1,param2,param3);
            this.§6f§();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(this.§,!V§ == null)
         {
            this.§,!V§ = new §""%§(this);
         }
         this.§,!V§.addEventListener(param1,param2,param3,param4,param5);
         this.§6f§();
      }
      
      public function fireStop() : void
      {
         if((this.§8!X§ & 2) != 0)
         {
            this.§,!V§.dispatchEvent(new §`!N§(§`!N§.§?S§));
         }
         if(this.§^W§ != null && this.§^W§.onStop != null)
         {
            this.§^W§.onStop.apply(null,this.§^W§.onStopParams);
         }
      }
      
      public function get §"H§() : Boolean
      {
         return this.§@0§;
      }
      
      public function clone() : §[f§
      {
         var _loc1_:§[!O§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function get onCompleteParams() : Array
      {
         return this.§^W§ != null ? this.§^W§.onCompleteParams : null;
      }
      
      public function set onUpdateParams(param1:Array) : void
      {
         this.§^"5§().onUpdateParams = param1;
      }
      
      public function get onStopParams() : Array
      {
         return this.§^W§ != null ? this.§^W§.onStopParams : null;
      }
      
      protected function §^"5§() : ClassicHandlers
      {
         return this.§^W§ || (this.§^W§ = new ClassicHandlers());
      }
      
      public function set onPlay(param1:Function) : void
      {
         this.§^"5§().onPlay = param1;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§^"5§().onComplete = param1;
      }
      
      override public function tick(param1:Number) : Boolean
      {
         if(!this.§ y§)
         {
            return true;
         }
         var _loc2_:Number = param1 - this.§ ",§;
         this.§9r§ = _loc2_;
         this.internalUpdate(_loc2_);
         if((this.§8!X§ & 4) != 0)
         {
            this.§,!V§.dispatchEvent(new §`!N§(§`!N§.§7"9§));
         }
         if(this.§^W§ != null && this.§^W§.onUpdate != null)
         {
            this.§^W§.onUpdate.apply(null,this.§^W§.onUpdateParams);
         }
         if(this.§ y§)
         {
            if(_loc2_ >= this.§!"-§)
            {
               this.§9r§ = this.§!"-§;
               if(this.§@0§)
               {
                  this.§ y§ = false;
                  if((this.§8!X§ & 8) != 0)
                  {
                     this.§,!V§.dispatchEvent(new §`!N§(§`!N§.COMPLETE));
                  }
                  if(this.§^W§ != null && this.§^W§.onComplete != null)
                  {
                     this.§^W§.onComplete.apply(null,this.§^W§.onCompleteParams);
                  }
                  return true;
               }
               if((this.§8!X§ & 8) != 0)
               {
                  this.§,!V§.dispatchEvent(new §`!N§(§`!N§.COMPLETE));
               }
               if(this.§^W§ != null && this.§^W§.onComplete != null)
               {
                  this.§^W§.onComplete.apply(null,this.§^W§.onCompleteParams);
               }
               this.§9r§ = _loc2_ - this.§!"-§;
               this.§ ",§ = param1 - this.§9r§;
               this.tick(param1);
            }
            return false;
         }
         return true;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         if(this.§,!V§ != null)
         {
            return this.§,!V§.hasEventListener(param1);
         }
         return false;
      }
      
      protected function copyFrom(param1:§[!O§) : void
      {
         this.§`!D§ = param1.§`!D§;
         this.§!"-§ = param1.§!"-§;
         this.§@0§ = param1.§@0§;
         if(param1.§^W§ != null)
         {
            this.§^W§ = new ClassicHandlers();
            this.§^W§.copyFrom(param1.§^W§);
         }
         if(param1.§,!V§ != null)
         {
            this.§,!V§ = new §""%§(this);
            this.§,!V§.copyFrom(param1.§,!V§);
         }
         this.§8!X§ = param1.§8!X§;
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
