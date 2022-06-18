package §9!5§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §<e§ extends EventDispatcher implements §&!&§
   {
       
      
      private var §8+§:Object;
      
      private var §2!#§:String;
      
      private var §;!;§:Vector.<String>;
      
      private var §;!2§:Vector.<Number>;
      
      private var §%M§:Vector.<Number>;
      
      private var §-!T§:Function;
      
      private var § !A§:Function;
      
      private var §5^§:Function;
      
      private var §=!F§:Array;
      
      private var §];§:Array;
      
      private var §%i§:Array;
      
      private var §&_§:Number;
      
      private var §0g§:Number;
      
      private var §0!]§:Number;
      
      private var §0"§:Boolean;
      
      public function §<e§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§8+§ = param1;
         this.§0g§ = 0;
         this.§&_§ = Math.max(0.0001,param2);
         this.§0!]§ = 0;
         this.§2!#§ = param3;
         this.§0"§ = false;
         this.§;!;§ = new Vector.<String>(0);
         this.§;!2§ = new Vector.<Number>(0);
         this.§%M§ = new Vector.<Number>(0);
      }
      
      public function § !§(param1:String, param2:Number) : void
      {
         if(this.§8+§ == null)
         {
            return;
         }
         this.§;!;§.push(param1);
         this.§;!2§.push(Number.NaN);
         this.§%M§.push(param2);
      }
      
      public function §0M§(param1:Number) : void
      {
         this.§ !§("scaleX",param1);
         this.§ !§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§ !§("x",param1);
         this.§ !§("y",param2);
      }
      
      public function §[E§(param1:Number) : void
      {
         this.§ !§("alpha",param1);
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
         var _loc2_:Number = this.§0g§;
         this.§0g§ += param1;
         if(this.§0g§ < 0 || _loc2_ >= this.§&_§)
         {
            return;
         }
         if(this.§8q§ != null && _loc2_ <= 0 && this.§0g§ >= 0)
         {
            this.§8q§.apply(null,this.§=!F§);
         }
         var _loc3_:Number = Math.min(this.§&_§,this.§0g§) / this.§&_§;
         var _loc4_:int = this.§;!2§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§;!2§[_loc5_]))
            {
               this.§;!2§[_loc5_] = this.§8+§[this.§;!;§[_loc5_]] as Number;
            }
            _loc6_ = this.§;!2§[_loc5_];
            _loc8_ = (_loc7_ = this.§%M§[_loc5_]) - _loc6_;
            _loc9_ = §]!>§.§#!9§(this.§2!#§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§0"§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§8+§[this.§;!;§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§7!7§ != null)
         {
            this.§7!7§.apply(null,this.§];§);
         }
         if(_loc2_ < this.§&_§ && this.§0g§ >= this.§&_§)
         {
            dispatchEvent(new Event(Event.§^5§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§%i§);
            }
         }
      }
      
      public function get §;!R§() : Boolean
      {
         return this.§0g§ >= this.§&_§;
      }
      
      public function get target() : Object
      {
         return this.§8+§;
      }
      
      public function get §"3§() : String
      {
         return this.§2!#§;
      }
      
      public function get §#]§() : Number
      {
         return this.§&_§;
      }
      
      public function get §%>§() : Number
      {
         return this.§0g§;
      }
      
      public function get delay() : Number
      {
         return this.§0!]§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§0g§ = this.§0g§ + this.§0!]§ - param1;
         this.§0!]§ = param1;
      }
      
      public function get §`!9§() : Boolean
      {
         return this.§0"§;
      }
      
      public function set §`!9§(param1:Boolean) : void
      {
         this.§0"§ = param1;
      }
      
      public function get §8q§() : Function
      {
         return this.§-!T§;
      }
      
      public function set §8q§(param1:Function) : void
      {
         this.§-!T§ = param1;
      }
      
      public function get §7!7§() : Function
      {
         return this.§ !A§;
      }
      
      public function set §7!7§(param1:Function) : void
      {
         this.§ !A§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§5^§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§5^§ = param1;
      }
      
      public function get §!!E§() : Array
      {
         return this.§=!F§;
      }
      
      public function set §!!E§(param1:Array) : void
      {
         this.§=!F§ = param1;
      }
      
      public function get §;g§() : Array
      {
         return this.§];§;
      }
      
      public function set §;g§(param1:Array) : void
      {
         this.§];§ = param1;
      }
      
      public function get §5!$§() : Array
      {
         return this.§%i§;
      }
      
      public function set §5!$§(param1:Array) : void
      {
         this.§%i§ = param1;
      }
   }
}
