package § M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §-!=§ extends EventDispatcher implements §]-§
   {
       
      
      private var §6[§:Object;
      
      private var §3]§:String;
      
      private var §2!7§:Vector.<String>;
      
      private var § !C§:Vector.<Number>;
      
      private var §?w§:Vector.<Number>;
      
      private var §<x§:Function;
      
      private var §4k§:Function;
      
      private var §]!8§:Function;
      
      private var §;c§:Array;
      
      private var §^;§:Array;
      
      private var §[C§:Array;
      
      private var §98§:Number;
      
      private var §-r§:Number;
      
      private var §?-§:Number;
      
      private var §"!4§:Boolean;
      
      public function §-!=§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§6[§ = param1;
         this.§-r§ = 0;
         this.§98§ = Math.max(0.0001,param2);
         this.§?-§ = 0;
         this.§3]§ = param3;
         this.§"!4§ = false;
         this.§2!7§ = new Vector.<String>(0);
         this.§ !C§ = new Vector.<Number>(0);
         this.§?w§ = new Vector.<Number>(0);
      }
      
      public function §@w§(param1:String, param2:Number) : void
      {
         if(this.§6[§ == null)
         {
            return;
         }
         this.§2!7§.push(param1);
         this.§ !C§.push(Number.NaN);
         this.§?w§.push(param2);
      }
      
      public function §?4§(param1:Number) : void
      {
         this.§@w§("scaleX",param1);
         this.§@w§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§@w§("x",param1);
         this.§@w§("y",param2);
      }
      
      public function §75§(param1:Number) : void
      {
         this.§@w§("alpha",param1);
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
         var _loc2_:Number = this.§-r§;
         this.§-r§ += param1;
         if(this.§-r§ < 0 || _loc2_ >= this.§98§)
         {
            return;
         }
         if(this.§%r§ != null && _loc2_ <= 0 && this.§-r§ >= 0)
         {
            this.§%r§.apply(null,this.§;c§);
         }
         var _loc3_:Number = Math.min(this.§98§,this.§-r§) / this.§98§;
         var _loc4_:int = this.§ !C§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§ !C§[_loc5_]))
            {
               this.§ !C§[_loc5_] = this.§6[§[this.§2!7§[_loc5_]] as Number;
            }
            _loc6_ = this.§ !C§[_loc5_];
            _loc8_ = (_loc7_ = this.§?w§[_loc5_]) - _loc6_;
            _loc9_ = §'f§.§+!0§(this.§3]§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§"!4§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§6[§[this.§2!7§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§7!@§ != null)
         {
            this.§7!@§.apply(null,this.§^;§);
         }
         if(_loc2_ < this.§98§ && this.§-r§ >= this.§98§)
         {
            dispatchEvent(new Event(Event.§1E§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§[C§);
            }
         }
      }
      
      public function get §@!+§() : Boolean
      {
         return this.§-r§ >= this.§98§;
      }
      
      public function get target() : Object
      {
         return this.§6[§;
      }
      
      public function get §[T§() : String
      {
         return this.§3]§;
      }
      
      public function get §=!,§() : Number
      {
         return this.§98§;
      }
      
      public function get currentTime() : Number
      {
         return this.§-r§;
      }
      
      public function get delay() : Number
      {
         return this.§?-§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§-r§ = this.§-r§ + this.§?-§ - param1;
         this.§?-§ = param1;
      }
      
      public function get §%d§() : Boolean
      {
         return this.§"!4§;
      }
      
      public function set §%d§(param1:Boolean) : void
      {
         this.§"!4§ = param1;
      }
      
      public function get §%r§() : Function
      {
         return this.§<x§;
      }
      
      public function set §%r§(param1:Function) : void
      {
         this.§<x§ = param1;
      }
      
      public function get §7!@§() : Function
      {
         return this.§4k§;
      }
      
      public function set §7!@§(param1:Function) : void
      {
         this.§4k§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§]!8§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§]!8§ = param1;
      }
      
      public function get §"!6§() : Array
      {
         return this.§;c§;
      }
      
      public function set §"!6§(param1:Array) : void
      {
         this.§;c§ = param1;
      }
      
      public function get §0F§() : Array
      {
         return this.§^;§;
      }
      
      public function set §0F§(param1:Array) : void
      {
         this.§^;§ = param1;
      }
      
      public function get §5-§() : Array
      {
         return this.§[C§;
      }
      
      public function set §5-§(param1:Array) : void
      {
         this.§[C§ = param1;
      }
   }
}
