package §7!i§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §-!;§ extends EventDispatcher implements §]"2§
   {
       
      
      private var §`!a§:Object;
      
      private var §2`§:String;
      
      private var §"D§:Vector.<String>;
      
      private var §]!i§:Vector.<Number>;
      
      private var §<!A§:Vector.<Number>;
      
      private var § !A§:Function;
      
      private var §?R§:Function;
      
      private var §4r§:Function;
      
      private var §"!A§:Array;
      
      private var §=^§:Array;
      
      private var §4n§:Array;
      
      private var §`Y§:Number;
      
      private var §@!d§:Number;
      
      private var § d§:Number;
      
      private var §4!W§:Boolean;
      
      public function §-!;§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§`!a§ = param1;
         this.§@!d§ = 0;
         this.§`Y§ = Math.max(0.0001,param2);
         this.§ d§ = 0;
         this.§2`§ = param3;
         this.§4!W§ = false;
         this.§"D§ = new Vector.<String>(0);
         this.§]!i§ = new Vector.<Number>(0);
         this.§<!A§ = new Vector.<Number>(0);
      }
      
      public function §;!R§(param1:String, param2:Number) : void
      {
         if(this.§`!a§ == null)
         {
            return;
         }
         this.§"D§.push(param1);
         this.§]!i§.push(Number.NaN);
         this.§<!A§.push(param2);
      }
      
      public function §<"%§(param1:Number) : void
      {
         this.§;!R§("scaleX",param1);
         this.§;!R§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§;!R§("x",param1);
         this.§;!R§("y",param2);
      }
      
      public function §,!C§(param1:Number) : void
      {
         this.§;!R§("alpha",param1);
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
         var _loc2_:Number = this.§@!d§;
         this.§@!d§ += param1;
         if(this.§@!d§ < 0 || _loc2_ >= this.§`Y§)
         {
            return;
         }
         if(this.§`!7§ != null && _loc2_ <= 0 && this.§@!d§ >= 0)
         {
            this.§`!7§.apply(null,this.§"!A§);
         }
         var _loc3_:Number = Math.min(this.§`Y§,this.§@!d§) / this.§`Y§;
         var _loc4_:int = this.§]!i§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§]!i§[_loc5_]))
            {
               this.§]!i§[_loc5_] = this.§`!a§[this.§"D§[_loc5_]] as Number;
            }
            _loc6_ = this.§]!i§[_loc5_];
            _loc8_ = (_loc7_ = this.§<!A§[_loc5_]) - _loc6_;
            _loc9_ = §^u§.§]!E§(this.§2`§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§4!W§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§`!a§[this.§"D§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§ !v§ != null)
         {
            this.§ !v§.apply(null,this.§=^§);
         }
         if(_loc2_ < this.§`Y§ && this.§@!d§ >= this.§`Y§)
         {
            dispatchEvent(new Event(Event.§#X§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§4n§);
            }
         }
      }
      
      public function get § !f§() : Boolean
      {
         return this.§@!d§ >= this.§`Y§;
      }
      
      public function get target() : Object
      {
         return this.§`!a§;
      }
      
      public function get §-!e§() : String
      {
         return this.§2`§;
      }
      
      public function get §-Q§() : Number
      {
         return this.§`Y§;
      }
      
      public function get §7"&§() : Number
      {
         return this.§@!d§;
      }
      
      public function get delay() : Number
      {
         return this.§ d§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§@!d§ = this.§@!d§ + this.§ d§ - param1;
         this.§ d§ = param1;
      }
      
      public function get §9!Z§() : Boolean
      {
         return this.§4!W§;
      }
      
      public function set §9!Z§(param1:Boolean) : void
      {
         this.§4!W§ = param1;
      }
      
      public function get §`!7§() : Function
      {
         return this.§ !A§;
      }
      
      public function set §`!7§(param1:Function) : void
      {
         this.§ !A§ = param1;
      }
      
      public function get § !v§() : Function
      {
         return this.§?R§;
      }
      
      public function set § !v§(param1:Function) : void
      {
         this.§?R§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§4r§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§4r§ = param1;
      }
      
      public function get §?!s§() : Array
      {
         return this.§"!A§;
      }
      
      public function set §?!s§(param1:Array) : void
      {
         this.§"!A§ = param1;
      }
      
      public function get §<!C§() : Array
      {
         return this.§=^§;
      }
      
      public function set §<!C§(param1:Array) : void
      {
         this.§=^§ = param1;
      }
      
      public function get §9[§() : Array
      {
         return this.§4n§;
      }
      
      public function set §9[§(param1:Array) : void
      {
         this.§4n§ = param1;
      }
   }
}
