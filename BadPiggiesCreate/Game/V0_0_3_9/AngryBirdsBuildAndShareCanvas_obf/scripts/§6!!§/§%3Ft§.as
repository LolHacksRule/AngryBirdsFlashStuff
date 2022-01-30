package §6!!§
{
   import §=!^§.§9!V§;
   import §>a§.§!!D§;
   import §^!B§.§ %§;
   import §^b§.§ E§;
   import §^b§.§6!s§;
   import flash.events.Event;
   
   public class §?t§ extends §6!s§ implements §,!B§
   {
       
      
      protected var §&!i§:uint = 0;
      
      protected var §3!E§:Number = 0;
      
      protected var §9§:Boolean = false;
      
      protected var §=!9§:§ E§;
      
      protected var §@!X§:§ %§;
      
      protected var §6!W§:Number;
      
      protected var §+!i§:ClassicHandlers;
      
      protected var §4!1§:Number = 0;
      
      protected var §4!+§:Boolean = true;
      
      public function §?t§(param1:§ E§, param2:Number)
      {
         super();
         this.§=!9§ = param1;
         this.§3!E§ = param2;
      }
      
      public function get onStop() : Function
      {
         return this.§+!i§ != null ? this.§+!i§.onStop : null;
      }
      
      public function set onStop(param1:Function) : void
      {
         this.§ !!§().onStop = param1;
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         if(this.§@!X§ != null)
         {
            return this.§@!X§.willTrigger(param1);
         }
         return false;
      }
      
      protected function newInstance() : §?t§
      {
         return null;
      }
      
      public function get onUpdate() : Function
      {
         return this.§+!i§ != null ? this.§+!i§.onUpdate : null;
      }
      
      public function get §>8§() : § E§
      {
         return this.§=!9§;
      }
      
      public function get duration() : Number
      {
         return this.§4!1§;
      }
      
      public function gotoAndStop(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§4!1§)
         {
            param1 = this.§4!1§;
         }
         this.§3!E§ = param1;
         this.internalUpdate(param1);
         if((this.§&!i§ & 4) != 0)
         {
            this.§@!X§.dispatchEvent(new §!!D§(§!!D§.§#!z§));
         }
         if(this.§+!i§ != null && this.§+!i§.onUpdate != null)
         {
            this.§+!i§.onUpdate.apply(null,this.§+!i§.onUpdateParams);
         }
         this.stop();
      }
      
      public function get onPlayParams() : Array
      {
         return this.§+!i§ != null ? this.§+!i§.onPlayParams : null;
      }
      
      public function stop() : void
      {
         if(this.§9§)
         {
            this.§9§ = false;
            if((this.§&!i§ & 2) != 0)
            {
               this.§@!X§.dispatchEvent(new §!!D§(§!!D§.§[Z§));
            }
            if(this.§+!i§ != null && this.§+!i§.onStop != null)
            {
               this.§+!i§.onStop.apply(null,this.§+!i§.onStopParams);
            }
         }
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§ !!§().onUpdate = param1;
      }
      
      public function firePlay() : void
      {
         if((this.§&!i§ & 1) != 0)
         {
            this.§@!X§.dispatchEvent(new §!!D§(§!!D§.§[!'§));
         }
         if(this.§+!i§ != null && this.§+!i§.onPlay != null)
         {
            this.§+!i§.onPlay.apply(null,this.§+!i§.onPlayParams);
         }
      }
      
      public function get §[r§() : Boolean
      {
         return this.§9§;
      }
      
      public function get onUpdateParams() : Array
      {
         return this.§+!i§ != null ? this.§+!i§.onUpdateParams : null;
      }
      
      public function get position() : Number
      {
         return this.§3!E§;
      }
      
      public function set onPlayParams(param1:Array) : void
      {
         this.§ !!§().onPlayParams = param1;
      }
      
      public function get onPlay() : Function
      {
         return this.§+!i§ != null ? this.§+!i§.onPlay : null;
      }
      
      public function set §7Z§(param1:Boolean) : void
      {
         this.§4!+§ = param1;
      }
      
      protected function §'3§() : void
      {
         if(this.§@!X§.willTrigger(§!!D§.§[!'§))
         {
            this.§&!i§ |= 1;
         }
         else
         {
            this.§&!i§ &= ~1;
         }
         if(this.§@!X§.willTrigger(§!!D§.§[Z§))
         {
            this.§&!i§ |= 2;
         }
         else
         {
            this.§&!i§ &= ~2;
         }
         if(this.§@!X§.willTrigger(§!!D§.§#!z§))
         {
            this.§&!i§ |= 4;
         }
         else
         {
            this.§&!i§ &= ~4;
         }
         if(this.§@!X§.willTrigger(§!!D§.COMPLETE))
         {
            this.§&!i§ |= 8;
         }
         else
         {
            this.§&!i§ &= ~8;
         }
      }
      
      public function set onCompleteParams(param1:Array) : void
      {
         this.§ !!§().onCompleteParams = param1;
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         if(this.§@!X§ != null)
         {
            return this.§@!X§.dispatchEvent(param1);
         }
         return false;
      }
      
      public function get onComplete() : Function
      {
         return this.§+!i§ != null ? this.§+!i§.onComplete : null;
      }
      
      public function §[!^§() : void
      {
         if(this.§9§)
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
         if(this.§3!E§ < this.§4!1§ && this.§4!1§ <= param1 || 0 < this.§3!E§ && param1 <= 0)
         {
            _loc2_ = true;
         }
         this.§3!E§ = param1;
         this.internalUpdate(param1);
         if((this.§&!i§ & 4) != 0)
         {
            this.§@!X§.dispatchEvent(new §!!D§(§!!D§.§#!z§));
         }
         if(this.§+!i§ != null && this.§+!i§.onUpdate != null)
         {
            this.§+!i§.onUpdate.apply(null,this.§+!i§.onUpdateParams);
         }
         if(_loc2_)
         {
            if((this.§&!i§ & 8) != 0)
            {
               this.§@!X§.dispatchEvent(new §!!D§(§!!D§.COMPLETE));
            }
            if(this.§+!i§ != null && this.§+!i§.onComplete != null)
            {
               this.§+!i§.onComplete.apply(null,this.§+!i§.onCompleteParams);
            }
         }
      }
      
      public function play() : void
      {
         var _loc1_:Number = NaN;
         if(!this.§9§)
         {
            if(this.§3!E§ >= this.§4!1§)
            {
               this.§3!E§ = 0;
            }
            _loc1_ = this.§=!9§.time;
            this.§6!W§ = _loc1_ - this.§3!E§;
            this.§9§ = true;
            this.§=!9§.§+!U§(this);
            if((this.§&!i§ & 1) != 0)
            {
               this.§@!X§.dispatchEvent(new §!!D§(§!!D§.§[!'§));
            }
            if(this.§+!i§ != null && this.§+!i§.onPlay != null)
            {
               this.§+!i§.onPlay.apply(null,this.§+!i§.onPlayParams);
            }
            this.tick(_loc1_);
         }
      }
      
      public function set onStopParams(param1:Array) : void
      {
         this.§ !!§().onStopParams = param1;
      }
      
      public function gotoAndPlay(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > this.§4!1§)
         {
            param1 = this.§4!1§;
         }
         this.§3!E§ = param1;
         this.play();
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(this.§@!X§ != null)
         {
            this.§@!X§.removeEventListener(param1,param2,param3);
            this.§'3§();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(this.§@!X§ == null)
         {
            this.§@!X§ = new § %§(this);
         }
         this.§@!X§.addEventListener(param1,param2,param3,param4,param5);
         this.§'3§();
      }
      
      public function fireStop() : void
      {
         if((this.§&!i§ & 2) != 0)
         {
            this.§@!X§.dispatchEvent(new §!!D§(§!!D§.§[Z§));
         }
         if(this.§+!i§ != null && this.§+!i§.onStop != null)
         {
            this.§+!i§.onStop.apply(null,this.§+!i§.onStopParams);
         }
      }
      
      public function get §7Z§() : Boolean
      {
         return this.§4!+§;
      }
      
      public function clone() : §9!V§
      {
         var _loc1_:§?t§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function get onCompleteParams() : Array
      {
         return this.§+!i§ != null ? this.§+!i§.onCompleteParams : null;
      }
      
      public function set onUpdateParams(param1:Array) : void
      {
         this.§ !!§().onUpdateParams = param1;
      }
      
      public function get onStopParams() : Array
      {
         return this.§+!i§ != null ? this.§+!i§.onStopParams : null;
      }
      
      protected function § !!§() : ClassicHandlers
      {
         return this.§+!i§ || (this.§+!i§ = new ClassicHandlers());
      }
      
      public function set onPlay(param1:Function) : void
      {
         this.§ !!§().onPlay = param1;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§ !!§().onComplete = param1;
      }
      
      override public function tick(param1:Number) : Boolean
      {
         if(!this.§9§)
         {
            return true;
         }
         var _loc2_:Number = param1 - this.§6!W§;
         this.§3!E§ = _loc2_;
         this.internalUpdate(_loc2_);
         if((this.§&!i§ & 4) != 0)
         {
            this.§@!X§.dispatchEvent(new §!!D§(§!!D§.§#!z§));
         }
         if(this.§+!i§ != null && this.§+!i§.onUpdate != null)
         {
            this.§+!i§.onUpdate.apply(null,this.§+!i§.onUpdateParams);
         }
         if(this.§9§)
         {
            if(_loc2_ >= this.§4!1§)
            {
               this.§3!E§ = this.§4!1§;
               if(this.§4!+§)
               {
                  this.§9§ = false;
                  if((this.§&!i§ & 8) != 0)
                  {
                     this.§@!X§.dispatchEvent(new §!!D§(§!!D§.COMPLETE));
                  }
                  if(this.§+!i§ != null && this.§+!i§.onComplete != null)
                  {
                     this.§+!i§.onComplete.apply(null,this.§+!i§.onCompleteParams);
                  }
                  return true;
               }
               if((this.§&!i§ & 8) != 0)
               {
                  this.§@!X§.dispatchEvent(new §!!D§(§!!D§.COMPLETE));
               }
               if(this.§+!i§ != null && this.§+!i§.onComplete != null)
               {
                  this.§+!i§.onComplete.apply(null,this.§+!i§.onCompleteParams);
               }
               this.§3!E§ = _loc2_ - this.§4!1§;
               this.§6!W§ = param1 - this.§3!E§;
               this.tick(param1);
            }
            return false;
         }
         return true;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         if(this.§@!X§ != null)
         {
            return this.§@!X§.hasEventListener(param1);
         }
         return false;
      }
      
      protected function copyFrom(param1:§?t§) : void
      {
         this.§=!9§ = param1.§=!9§;
         this.§4!1§ = param1.§4!1§;
         this.§4!+§ = param1.§4!+§;
         if(param1.§+!i§ != null)
         {
            this.§+!i§ = new ClassicHandlers();
            this.§+!i§.copyFrom(param1.§+!i§);
         }
         if(param1.§@!X§ != null)
         {
            this.§@!X§ = new § %§(this);
            this.§@!X§.copyFrom(param1.§@!X§);
         }
         this.§&!i§ = param1.§&!i§;
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
