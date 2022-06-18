package §0K§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §!u§ extends EventDispatcher implements §0h§
   {
       
      
      private var §?!<§:Object;
      
      private var §[6§:String;
      
      private var §5g§:Vector.<String>;
      
      private var §&!§:Vector.<Number>;
      
      private var §=b§:Vector.<Number>;
      
      private var §1!0§:Function;
      
      private var §1C§:Function;
      
      private var §&S§:Function;
      
      private var §#r§:Array;
      
      private var §6^§:Array;
      
      private var § !P§:Array;
      
      private var §"e§:Number;
      
      private var §^o§:Number;
      
      private var §[D§:Number;
      
      private var §2o§:Boolean;
      
      public function §!u§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§?!<§ = param1;
         this.§^o§ = 0;
         this.§"e§ = Math.max(0.0001,param2);
         this.§[D§ = 0;
         this.§[6§ = param3;
         this.§2o§ = false;
         this.§5g§ = new Vector.<String>(0);
         this.§&!§ = new Vector.<Number>(0);
         this.§=b§ = new Vector.<Number>(0);
      }
      
      public function §-!N§(param1:String, param2:Number) : void
      {
         if(this.§?!<§ == null)
         {
            return;
         }
         this.§5g§.push(param1);
         this.§&!§.push(Number.NaN);
         this.§=b§.push(param2);
      }
      
      public function §4<§(param1:Number) : void
      {
         this.§-!N§("scaleX",param1);
         this.§-!N§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§-!N§("x",param1);
         this.§-!N§("y",param2);
      }
      
      public function §]2§(param1:Number) : void
      {
         this.§-!N§("alpha",param1);
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
         var _loc2_:Number = this.§^o§;
         this.§^o§ += param1;
         if(this.§^o§ < 0 || _loc2_ >= this.§"e§)
         {
            return;
         }
         if(this.§1>§ != null && _loc2_ <= 0 && this.§^o§ >= 0)
         {
            this.§1>§.apply(null,this.§#r§);
         }
         var _loc3_:Number = Math.min(this.§"e§,this.§^o§) / this.§"e§;
         var _loc4_:int = this.§&!§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§&!§[_loc5_]))
            {
               this.§&!§[_loc5_] = this.§?!<§[this.§5g§[_loc5_]] as Number;
            }
            _loc6_ = this.§&!§[_loc5_];
            _loc8_ = (_loc7_ = this.§=b§[_loc5_]) - _loc6_;
            _loc9_ = §6p§.§5>§(this.§[6§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§2o§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§?!<§[this.§5g§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§=[§ != null)
         {
            this.§=[§.apply(null,this.§6^§);
         }
         if(_loc2_ < this.§"e§ && this.§^o§ >= this.§"e§)
         {
            dispatchEvent(new Event(Event.§'!-§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§ !P§);
            }
         }
      }
      
      public function get §0<§() : Boolean
      {
         return this.§^o§ >= this.§"e§;
      }
      
      public function get target() : Object
      {
         return this.§?!<§;
      }
      
      public function get §9`§() : String
      {
         return this.§[6§;
      }
      
      public function get § do§() : Number
      {
         return this.§"e§;
      }
      
      public function get currentTime() : Number
      {
         return this.§^o§;
      }
      
      public function get delay() : Number
      {
         return this.§[D§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§^o§ = this.§^o§ + this.§[D§ - param1;
         this.§[D§ = param1;
      }
      
      public function get §=^§() : Boolean
      {
         return this.§2o§;
      }
      
      public function set §=^§(param1:Boolean) : void
      {
         this.§2o§ = param1;
      }
      
      public function get §1>§() : Function
      {
         return this.§1!0§;
      }
      
      public function set §1>§(param1:Function) : void
      {
         this.§1!0§ = param1;
      }
      
      public function get §=[§() : Function
      {
         return this.§1C§;
      }
      
      public function set §=[§(param1:Function) : void
      {
         this.§1C§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§&S§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§&S§ = param1;
      }
      
      public function get §,!9§() : Array
      {
         return this.§#r§;
      }
      
      public function set §,!9§(param1:Array) : void
      {
         this.§#r§ = param1;
      }
      
      public function get §>a§() : Array
      {
         return this.§6^§;
      }
      
      public function set §>a§(param1:Array) : void
      {
         this.§6^§ = param1;
      }
      
      public function get §8_§() : Array
      {
         return this.§ !P§;
      }
      
      public function set §8_§(param1:Array) : void
      {
         this.§ !P§ = param1;
      }
   }
}
