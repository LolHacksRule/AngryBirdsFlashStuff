package §6#k§
{
   import §!#`§.Event;
   import §!#`§.EventDispatcher;
   
   public class §]$&§ extends EventDispatcher implements §8C§
   {
      
      private static var §6J§:Vector.<§]$&§> = new Vector.<§]$&§>(0);
       
      
      private var §[! §:Object;
      
      private var §1#A§:Function;
      
      private var §8y§:String;
      
      private var §7#r§:Vector.<String>;
      
      private var §%"!§:Vector.<Number>;
      
      private var §0#Y§:Vector.<Number>;
      
      private var §,"r§:Function;
      
      private var §^"E§:Function;
      
      private var §"#4§:Function;
      
      private var §2$@§:Function;
      
      private var §'!E§:Array;
      
      private var §>d§:Array;
      
      private var §+!U§:Array;
      
      private var §`!^§:Array;
      
      private var §5,§:Number;
      
      private var §!X§:Number;
      
      private var §>""§:Number;
      
      private var §1k§:Boolean;
      
      private var §#!y§:§]$&§;
      
      private var §>!b§:int;
      
      private var §>O§:Number;
      
      private var §0!!§:Boolean;
      
      private var §0#3§:int;
      
      public function §]$&§(param1:Object, param2:Number, param3:Object = "linear")
      {
         super();
         this.reset(param1,param2,param3);
      }
      
      static function §+!G§(param1:Object, param2:Number, param3:Object = "linear") : §]$&§
      {
         if(§6J§.length)
         {
            return §6J§.pop().reset(param1,param2,param3);
         }
         return new §]$&§(param1,param2,param3);
      }
      
      static function §6#L§(param1:§]$&§) : void
      {
         param1.§,"r§ = param1.§^"E§ = param1.§"#4§ = param1.§2$@§ = null;
         param1.§'!E§ = param1.§>d§ = param1.§+!U§ = param1.§`!^§ = null;
         param1.§[! § = null;
         param1.§1#A§ = null;
         param1.removeEventListeners();
         §6J§.push(param1);
      }
      
      public function reset(param1:Object, param2:Number, param3:Object = "linear") : §]$&§
      {
         this.§[! § = param1;
         this.§!X§ = 0;
         this.§5,§ = Math.max(0.0001,param2);
         this.§>""§ = this.§>O§ = 0;
         this.§,"r§ = this.§^"E§ = this.§2$@§ = null;
         this.§'!E§ = this.§>d§ = this.§`!^§ = null;
         this.§1k§ = this.§0!!§ = false;
         this.§>!b§ = 1;
         this.§0#3§ = -1;
         if(param3 is String)
         {
            this.§]!@§ = param3 as String;
         }
         else if(param3 is Function)
         {
            this.§6!#§ = param3 as Function;
         }
         else
         {
            throw new ArgumentError("Transition must be either a string or a function");
         }
         if(this.§7#r§)
         {
            this.§7#r§.length = 0;
         }
         else
         {
            this.§7#r§ = new Vector.<String>(0);
         }
         if(this.§%"!§)
         {
            this.§%"!§.length = 0;
         }
         else
         {
            this.§%"!§ = new Vector.<Number>(0);
         }
         if(this.§0#Y§)
         {
            this.§0#Y§.length = 0;
         }
         else
         {
            this.§0#Y§ = new Vector.<Number>(0);
         }
         return this;
      }
      
      public function §%#x§(param1:String, param2:Number) : void
      {
         if(this.§[! § == null)
         {
            return;
         }
         this.§7#r§.push(param1);
         this.§%"!§.push(Number.NaN);
         this.§0#Y§.push(param2);
      }
      
      public function §,n§(param1:Number) : void
      {
         this.§%#x§("scaleX",param1);
         this.§%#x§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§%#x§("x",param1);
         this.§%#x§("y",param2);
      }
      
      public function §#z§(param1:Number) : void
      {
         this.§%#x§("alpha",param1);
      }
      
      public function §#+§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Function = null;
         var _loc15_:Array = null;
         if(param1 == 0 || this.§>!b§ == 1 && this.§!X§ == this.§5,§)
         {
            return;
         }
         var _loc3_:Number = this.§!X§;
         var _loc4_:Number = this.§5,§ - this.§!X§;
         var _loc5_:Number = param1 > _loc4_ ? Number(param1 - _loc4_) : Number(0);
         this.§!X§ = Math.min(this.§5,§,this.§!X§ + param1);
         if(this.§!X§ <= 0)
         {
            return;
         }
         if(this.§0#3§ < 0 && _loc3_ <= 0 && this.§!X§ > 0)
         {
            ++this.§0#3§;
            if(this.§,"r§ != null)
            {
               this.§,"r§.apply(null,this.§'!E§);
            }
         }
         var _loc6_:Number = this.§!X§ / this.§5,§;
         var _loc7_:Boolean = this.§0!!§ && this.§0#3§ % 2 == 1;
         var _loc8_:int = this.§%"!§.length;
         _loc2_ = 0;
         while(_loc2_ < _loc8_)
         {
            if(isNaN(this.§%"!§[_loc2_]))
            {
               this.§%"!§[_loc2_] = this.§[! §[this.§7#r§[_loc2_]] as Number;
            }
            _loc9_ = this.§%"!§[_loc2_];
            _loc11_ = this.§0#Y§[_loc2_] - _loc9_;
            _loc12_ = !!_loc7_ ? Number(this.§1#A§(1 - _loc6_)) : Number(this.§1#A§(_loc6_));
            _loc13_ = _loc9_ + _loc12_ * _loc11_;
            if(this.§1k§)
            {
               _loc13_ = Math.round(_loc13_);
            }
            this.§[! §[this.§7#r§[_loc2_]] = _loc13_;
            _loc2_++;
         }
         if(this.§^"E§ != null)
         {
            this.§^"E§.apply(null,this.§>d§);
         }
         if(_loc3_ < this.§5,§ && this.§!X§ >= this.§5,§)
         {
            if(this.§>!b§ == 0 || this.§>!b§ > 1)
            {
               this.§!X§ = -this.§>O§;
               ++this.§0#3§;
               if(this.§>!b§ > 1)
               {
                  --this.§>!b§;
               }
               if(this.§"#4§ != null)
               {
                  this.§"#4§.apply(null,this.§+!U§);
               }
            }
            else
            {
               _loc14_ = this.§2$@§;
               _loc15_ = this.§`!^§;
               §@#<§(Event.§?§);
               if(_loc14_ != null)
               {
                  _loc14_.apply(null,_loc15_);
               }
            }
         }
         if(_loc5_)
         {
            this.§#+§(_loc5_);
         }
      }
      
      public function get §?#d§() : Boolean
      {
         return this.§!X§ >= this.§5,§ && this.§>!b§ == 1;
      }
      
      public function get target() : Object
      {
         return this.§[! §;
      }
      
      public function get §]!@§() : String
      {
         return this.§8y§;
      }
      
      public function set §]!@§(param1:String) : void
      {
         this.§8y§ = param1;
         this.§1#A§ = §]!b§.§4#?§(param1);
         if(this.§1#A§ == null)
         {
            throw new ArgumentError("Invalid transiton: " + param1);
         }
      }
      
      public function get §6!#§() : Function
      {
         return this.§1#A§;
      }
      
      public function set §6!#§(param1:Function) : void
      {
         this.§8y§ = "custom";
         this.§1#A§ = param1;
      }
      
      public function get §^!1§() : Number
      {
         return this.§5,§;
      }
      
      public function get §,$B§() : Number
      {
         return this.§!X§;
      }
      
      public function get delay() : Number
      {
         return this.§>""§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§!X§ = this.§!X§ + this.§>""§ - param1;
         this.§>""§ = param1;
      }
      
      public function get repeatCount() : int
      {
         return this.§>!b§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§>!b§ = param1;
      }
      
      public function get §4!E§() : Number
      {
         return this.§>O§;
      }
      
      public function set §4!E§(param1:Number) : void
      {
         this.§>O§ = param1;
      }
      
      public function get reverse() : Boolean
      {
         return this.§0!!§;
      }
      
      public function set reverse(param1:Boolean) : void
      {
         this.§0!!§ = param1;
      }
      
      public function get §&#w§() : Boolean
      {
         return this.§1k§;
      }
      
      public function set §&#w§(param1:Boolean) : void
      {
         this.§1k§ = param1;
      }
      
      public function get onStart() : Function
      {
         return this.§,"r§;
      }
      
      public function set onStart(param1:Function) : void
      {
         this.§,"r§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§^"E§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§^"E§ = param1;
      }
      
      public function get § "x§() : Function
      {
         return this.§"#4§;
      }
      
      public function set § "x§(param1:Function) : void
      {
         this.§"#4§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§2$@§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§2$@§ = param1;
      }
      
      public function get §5!S§() : Array
      {
         return this.§'!E§;
      }
      
      public function set §5!S§(param1:Array) : void
      {
         this.§'!E§ = param1;
      }
      
      public function get §?&§() : Array
      {
         return this.§>d§;
      }
      
      public function set §?&§(param1:Array) : void
      {
         this.§>d§ = param1;
      }
      
      public function get §3!$§() : Array
      {
         return this.§+!U§;
      }
      
      public function set §3!$§(param1:Array) : void
      {
         this.§+!U§ = param1;
      }
      
      public function get §-$9§() : Array
      {
         return this.§`!^§;
      }
      
      public function set §-$9§(param1:Array) : void
      {
         this.§`!^§ = param1;
      }
      
      public function get §with§() : §]$&§
      {
         return this.§#!y§;
      }
      
      public function set §with§(param1:§]$&§) : void
      {
         this.§#!y§ = param1;
      }
   }
}
