package §1!D§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §5O§ extends EventDispatcher implements §=!B§
   {
       
      
      private var §=r§:Object;
      
      private var §2!=§:String;
      
      private var §?b§:Vector.<String>;
      
      private var §<!"§:Vector.<Number>;
      
      private var §1r§:Vector.<Number>;
      
      private var §]!F§:Function;
      
      private var §%u§:Function;
      
      private var §"R§:Function;
      
      private var §^!%§:Array;
      
      private var §8V§:Array;
      
      private var §7Q§:Array;
      
      private var §9!4§:Number;
      
      private var §-!K§:Number;
      
      private var §[s§:Number;
      
      private var §2R§:Boolean;
      
      public function §5O§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§=r§ = param1;
         this.§-!K§ = 0;
         this.§9!4§ = Math.max(0.0001,param2);
         this.§[s§ = 0;
         this.§2!=§ = param3;
         this.§2R§ = false;
         this.§?b§ = new Vector.<String>(0);
         this.§<!"§ = new Vector.<Number>(0);
         this.§1r§ = new Vector.<Number>(0);
      }
      
      public function §5!?§(param1:String, param2:Number) : void
      {
         if(this.§=r§ == null)
         {
            return;
         }
         this.§?b§.push(param1);
         this.§<!"§.push(Number.NaN);
         this.§1r§.push(param2);
      }
      
      public function §7!I§(param1:Number) : void
      {
         this.§5!?§("scaleX",param1);
         this.§5!?§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§5!?§("x",param1);
         this.§5!?§("y",param2);
      }
      
      public function §`+§(param1:Number) : void
      {
         this.§5!?§("alpha",param1);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Function = null;
         var _loc10_:Number = NaN;
         if(param1 == 0)
         {
            return;
         }
         var _loc2_:Number = this.§-!K§;
         this.§-!K§ += param1;
         if(this.§-!K§ < 0 || _loc2_ >= this.§9!4§)
         {
            return;
         }
         if(this.§6x§ != null && _loc2_ <= 0 && this.§-!K§ >= 0)
         {
            this.§6x§.apply(null,this.§^!%§);
         }
         var _loc3_:Number = Math.min(this.§9!4§,this.§-!K§) / this.§9!4§;
         var _loc4_:int = this.§<!"§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§<!"§[_loc5_]))
            {
               this.§<!"§[_loc5_] = this.§=r§[this.§?b§[_loc5_]] as Number;
            }
            _loc6_ = this.§<!"§[_loc5_];
            _loc8_ = (_loc7_ = this.§1r§[_loc5_]) - _loc6_;
            _loc9_ = §4!;§.§%g§(this.§2!=§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§2R§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§=r§[this.§?b§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§[!E§ != null)
         {
            this.§[!E§.apply(null,this.§8V§);
         }
         if(_loc2_ < this.§9!4§ && this.§-!K§ >= this.§9!4§)
         {
            dispatchEvent(new Event(Event.§ `§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§7Q§);
            }
         }
      }
      
      public function get §"7§() : Boolean
      {
         return this.§-!K§ >= this.§9!4§;
      }
      
      public function get target() : Object
      {
         return this.§=r§;
      }
      
      public function get §?!4§() : String
      {
         return this.§2!=§;
      }
      
      public function get §#!&§() : Number
      {
         return this.§9!4§;
      }
      
      public function get currentTime() : Number
      {
         return this.§-!K§;
      }
      
      public function get delay() : Number
      {
         return this.§[s§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§-!K§ = this.§-!K§ + this.§[s§ - param1;
         this.§[s§ = param1;
      }
      
      public function get §<!=§() : Boolean
      {
         return this.§2R§;
      }
      
      public function set §<!=§(param1:Boolean) : void
      {
         this.§2R§ = param1;
      }
      
      public function get §6x§() : Function
      {
         return this.§]!F§;
      }
      
      public function set §6x§(param1:Function) : void
      {
         this.§]!F§ = param1;
      }
      
      public function get §[!E§() : Function
      {
         return this.§%u§;
      }
      
      public function set §[!E§(param1:Function) : void
      {
         this.§%u§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§"R§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§"R§ = param1;
      }
      
      public function get §>!9§() : Array
      {
         return this.§^!%§;
      }
      
      public function set §>!9§(param1:Array) : void
      {
         this.§^!%§ = param1;
      }
      
      public function get §?v§() : Array
      {
         return this.§8V§;
      }
      
      public function set §?v§(param1:Array) : void
      {
         this.§8V§ = param1;
      }
      
      public function get §"!7§() : Array
      {
         return this.§7Q§;
      }
      
      public function set §"!7§(param1:Array) : void
      {
         this.§7Q§ = param1;
      }
   }
}
