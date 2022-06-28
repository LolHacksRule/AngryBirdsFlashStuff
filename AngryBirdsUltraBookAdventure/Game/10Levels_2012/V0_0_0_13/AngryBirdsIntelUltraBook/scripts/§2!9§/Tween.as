package §2!9§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class Tween extends EventDispatcher implements §"m§
   {
       
      
      private var §#!+§:Object;
      
      private var §^T§:String;
      
      private var §0!Y§:Vector.<String>;
      
      private var §0b§:Vector.<Number>;
      
      private var §3!?§:Vector.<Number>;
      
      private var §%i§:Function;
      
      private var §<X§:Function;
      
      private var §>!@§:Function;
      
      private var §4!b§:Array;
      
      private var §!=§:Array;
      
      private var § !@§:Array;
      
      private var §^?§:Number;
      
      private var §?u§:Number;
      
      private var §'r§:Number;
      
      private var §]!]§:Boolean;
      
      public function Tween(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§#!+§ = param1;
         this.§?u§ = 0;
         this.§^?§ = Math.max(0.0001,param2);
         this.§'r§ = 0;
         this.§^T§ = param3;
         this.§]!]§ = false;
         this.§0!Y§ = new Vector.<String>(0);
         this.§0b§ = new Vector.<Number>(0);
         this.§3!?§ = new Vector.<Number>(0);
      }
      
      public function animate(param1:String, param2:Number) : void
      {
         if(this.§#!+§ == null)
         {
            return;
         }
         this.§0!Y§.push(param1);
         this.§0b§.push(Number.NaN);
         this.§3!?§.push(param2);
      }
      
      public function §4!a§(param1:Number) : void
      {
         this.animate("scaleX",param1);
         this.animate("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.animate("x",param1);
         this.animate("y",param2);
      }
      
      public function §7!P§(param1:Number) : void
      {
         this.animate("alpha",param1);
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
         var _loc2_:Number = this.§?u§;
         this.§?u§ += param1;
         if(this.§?u§ < 0 || _loc2_ >= this.§^?§)
         {
            return;
         }
         if(this.§&i§ != null && _loc2_ <= 0 && this.§?u§ >= 0)
         {
            this.§&i§.apply(null,this.§4!b§);
         }
         var _loc3_:Number = Math.min(this.§^?§,this.§?u§) / this.§^?§;
         var _loc4_:int = this.§0b§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§0b§[_loc5_]))
            {
               this.§0b§[_loc5_] = this.§#!+§[this.§0!Y§[_loc5_]] as Number;
            }
            _loc6_ = this.§0b§[_loc5_];
            _loc7_ = this.§3!?§[_loc5_];
            _loc8_ = _loc7_ - _loc6_;
            _loc9_ = Transitions.§;b§(this.§^T§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§]!]§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§#!+§[this.§0!Y§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§;!S§ != null)
         {
            this.§;!S§.apply(null,this.§!=§);
         }
         if(_loc2_ < this.§^?§ && this.§?u§ >= this.§^?§)
         {
            dispatchEvent(new Event(Event.§-!&§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§ !@§);
            }
         }
      }
      
      public function get §6!5§() : Boolean
      {
         return this.§?u§ >= this.§^?§;
      }
      
      public function get target() : Object
      {
         return this.§#!+§;
      }
      
      public function get §77§() : String
      {
         return this.§^T§;
      }
      
      public function get §?!D§() : Number
      {
         return this.§^?§;
      }
      
      public function get §6§() : Number
      {
         return this.§?u§;
      }
      
      public function get delay() : Number
      {
         return this.§'r§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§?u§ = this.§?u§ + this.§'r§ - param1;
         this.§'r§ = param1;
      }
      
      public function get §0!A§() : Boolean
      {
         return this.§]!]§;
      }
      
      public function set §0!A§(param1:Boolean) : void
      {
         this.§]!]§ = param1;
      }
      
      public function get §&i§() : Function
      {
         return this.§%i§;
      }
      
      public function set §&i§(param1:Function) : void
      {
         this.§%i§ = param1;
      }
      
      public function get §;!S§() : Function
      {
         return this.§<X§;
      }
      
      public function set §;!S§(param1:Function) : void
      {
         this.§<X§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§>!@§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§>!@§ = param1;
      }
      
      public function get §4_§() : Array
      {
         return this.§4!b§;
      }
      
      public function set §4_§(param1:Array) : void
      {
         this.§4!b§ = param1;
      }
      
      public function get §"!d§() : Array
      {
         return this.§!=§;
      }
      
      public function set §"!d§(param1:Array) : void
      {
         this.§!=§ = param1;
      }
      
      public function get §2d§() : Array
      {
         return this.§ !@§;
      }
      
      public function set §2d§(param1:Array) : void
      {
         this.§ !@§ = param1;
      }
   }
}
