package §[,§
{
   import §?a§.Event;
   import §?a§.EventDispatcher;
   
   public class §""V§ extends EventDispatcher implements §4#r§
   {
      
      private static var §`f§:Vector.<§""V§> = new Vector.<§""V§>(0);
       
      
      private var §>F§:Object;
      
      private var §'"[§:Function;
      
      private var §8#q§:String;
      
      private var §!q§:Vector.<String>;
      
      private var §6"N§:Vector.<Number>;
      
      private var §0"%§:Vector.<Number>;
      
      private var § get§:Function;
      
      private var §-"0§:Function;
      
      private var §^"^§:Function;
      
      private var §;#§:Function;
      
      private var §5!P§:Array;
      
      private var §]#9§:Array;
      
      private var §5n§:Array;
      
      private var §5g§:Array;
      
      private var §#$0§:Number;
      
      private var § #^§:Number;
      
      private var §3#Q§:Number;
      
      private var §[l§:Boolean;
      
      private var §3#V§:§""V§;
      
      private var §6$9§:int;
      
      private var §'"]§:Number;
      
      private var §]!G§:Boolean;
      
      private var §4#?§:int;
      
      public function §""V§(param1:Object, param2:Number, param3:Object = "linear")
      {
         super();
         this.reset(param1,param2,param3);
      }
      
      static function §]"f§(param1:Object, param2:Number, param3:Object = "linear") : §""V§
      {
         if(§`f§.length)
         {
            return §`f§.pop().reset(param1,param2,param3);
         }
         return new §""V§(param1,param2,param3);
      }
      
      static function §4!m§(param1:§""V§) : void
      {
         param1.§ get§ = param1.§-"0§ = param1.§^"^§ = param1.§;#§ = null;
         param1.§5!P§ = param1.§]#9§ = param1.§5n§ = param1.§5g§ = null;
         param1.§>F§ = null;
         param1.§'"[§ = null;
         param1.removeEventListeners();
         §`f§.push(param1);
      }
      
      public function reset(param1:Object, param2:Number, param3:Object = "linear") : §""V§
      {
         this.§>F§ = param1;
         this.§ #^§ = 0;
         this.§#$0§ = Math.max(0.0001,param2);
         this.§3#Q§ = this.§'"]§ = 0;
         this.§ get§ = this.§-"0§ = this.§;#§ = null;
         this.§5!P§ = this.§]#9§ = this.§5g§ = null;
         this.§[l§ = this.§]!G§ = false;
         this.§6$9§ = 1;
         this.§4#?§ = -1;
         if(param3 is String)
         {
            this.§5";§ = param3 as String;
         }
         else if(param3 is Function)
         {
            this.§?$8§ = param3 as Function;
         }
         else
         {
            throw new ArgumentError("Transition must be either a string or a function");
         }
         if(this.§!q§)
         {
            this.§!q§.length = 0;
         }
         else
         {
            this.§!q§ = new Vector.<String>(0);
         }
         if(this.§6"N§)
         {
            this.§6"N§.length = 0;
         }
         else
         {
            this.§6"N§ = new Vector.<Number>(0);
         }
         if(this.§0"%§)
         {
            this.§0"%§.length = 0;
         }
         else
         {
            this.§0"%§ = new Vector.<Number>(0);
         }
         return this;
      }
      
      public function §5#X§(param1:String, param2:Number) : void
      {
         if(this.§>F§ == null)
         {
            return;
         }
         this.§!q§.push(param1);
         this.§6"N§.push(Number.NaN);
         this.§0"%§.push(param2);
      }
      
      public function §9!P§(param1:Number) : void
      {
         this.§5#X§("scaleX",param1);
         this.§5#X§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§5#X§("x",param1);
         this.§5#X§("y",param2);
      }
      
      public function §##0§(param1:Number) : void
      {
         this.§5#X§("alpha",param1);
      }
      
      public function §%"f§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Function = null;
         var _loc15_:Array = null;
         if(param1 == 0 || this.§6$9§ == 1 && this.§ #^§ == this.§#$0§)
         {
            return;
         }
         var _loc3_:Number = this.§ #^§;
         var _loc4_:Number = this.§#$0§ - this.§ #^§;
         var _loc5_:Number = param1 > _loc4_ ? Number(param1 - _loc4_) : Number(0);
         this.§ #^§ = Math.min(this.§#$0§,this.§ #^§ + param1);
         if(this.§ #^§ <= 0)
         {
            return;
         }
         if(this.§4#?§ < 0 && _loc3_ <= 0 && this.§ #^§ > 0)
         {
            ++this.§4#?§;
            if(this.§ get§ != null)
            {
               this.§ get§.apply(null,this.§5!P§);
            }
         }
         var _loc6_:Number = this.§ #^§ / this.§#$0§;
         var _loc7_:Boolean = this.§]!G§ && this.§4#?§ % 2 == 1;
         var _loc8_:int = this.§6"N§.length;
         _loc2_ = 0;
         while(_loc2_ < _loc8_)
         {
            if(isNaN(this.§6"N§[_loc2_]))
            {
               this.§6"N§[_loc2_] = this.§>F§[this.§!q§[_loc2_]] as Number;
            }
            _loc9_ = this.§6"N§[_loc2_];
            _loc11_ = this.§0"%§[_loc2_] - _loc9_;
            _loc12_ = !!_loc7_ ? Number(this.§'"[§(1 - _loc6_)) : Number(this.§'"[§(_loc6_));
            _loc13_ = _loc9_ + _loc12_ * _loc11_;
            if(this.§[l§)
            {
               _loc13_ = Math.round(_loc13_);
            }
            this.§>F§[this.§!q§[_loc2_]] = _loc13_;
            _loc2_++;
         }
         if(this.§-"0§ != null)
         {
            this.§-"0§.apply(null,this.§]#9§);
         }
         if(_loc3_ < this.§#$0§ && this.§ #^§ >= this.§#$0§)
         {
            if(this.§6$9§ == 0 || this.§6$9§ > 1)
            {
               this.§ #^§ = -this.§'"]§;
               ++this.§4#?§;
               if(this.§6$9§ > 1)
               {
                  --this.§6$9§;
               }
               if(this.§^"^§ != null)
               {
                  this.§^"^§.apply(null,this.§5n§);
               }
            }
            else
            {
               _loc14_ = this.§;#§;
               _loc15_ = this.§5g§;
               §8!V§(Event.§[#H§);
               if(_loc14_ != null)
               {
                  _loc14_.apply(null,_loc15_);
               }
            }
         }
         if(_loc5_)
         {
            this.§%"f§(_loc5_);
         }
      }
      
      public function get §>N§() : Boolean
      {
         return this.§ #^§ >= this.§#$0§ && this.§6$9§ == 1;
      }
      
      public function get target() : Object
      {
         return this.§>F§;
      }
      
      public function get §5";§() : String
      {
         return this.§8#q§;
      }
      
      public function set §5";§(param1:String) : void
      {
         this.§8#q§ = param1;
         this.§'"[§ = §3$!§.§7"4§(param1);
         if(this.§'"[§ == null)
         {
            throw new ArgumentError("Invalid transiton: " + param1);
         }
      }
      
      public function get §?$8§() : Function
      {
         return this.§'"[§;
      }
      
      public function set §?$8§(param1:Function) : void
      {
         this.§8#q§ = "custom";
         this.§'"[§ = param1;
      }
      
      public function get §;B§() : Number
      {
         return this.§#$0§;
      }
      
      public function get §<$!§() : Number
      {
         return this.§ #^§;
      }
      
      public function get delay() : Number
      {
         return this.§3#Q§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§ #^§ = this.§ #^§ + this.§3#Q§ - param1;
         this.§3#Q§ = param1;
      }
      
      public function get §4"7§() : int
      {
         return this.§6$9§;
      }
      
      public function set §4"7§(param1:int) : void
      {
         this.§6$9§ = param1;
      }
      
      public function get §%6§() : Number
      {
         return this.§'"]§;
      }
      
      public function set §%6§(param1:Number) : void
      {
         this.§'"]§ = param1;
      }
      
      public function get reverse() : Boolean
      {
         return this.§]!G§;
      }
      
      public function set reverse(param1:Boolean) : void
      {
         this.§]!G§ = param1;
      }
      
      public function get §-B§() : Boolean
      {
         return this.§[l§;
      }
      
      public function set §-B§(param1:Boolean) : void
      {
         this.§[l§ = param1;
      }
      
      public function get onStart() : Function
      {
         return this.§ get§;
      }
      
      public function set onStart(param1:Function) : void
      {
         this.§ get§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§-"0§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§-"0§ = param1;
      }
      
      public function get §&$$§() : Function
      {
         return this.§^"^§;
      }
      
      public function set §&$$§(param1:Function) : void
      {
         this.§^"^§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§;#§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§;#§ = param1;
      }
      
      public function get §1#J§() : Array
      {
         return this.§5!P§;
      }
      
      public function set §1#J§(param1:Array) : void
      {
         this.§5!P§ = param1;
      }
      
      public function get §#1§() : Array
      {
         return this.§]#9§;
      }
      
      public function set §#1§(param1:Array) : void
      {
         this.§]#9§ = param1;
      }
      
      public function get §="k§() : Array
      {
         return this.§5n§;
      }
      
      public function set §="k§(param1:Array) : void
      {
         this.§5n§ = param1;
      }
      
      public function get §-! §() : Array
      {
         return this.§5g§;
      }
      
      public function set §-! §(param1:Array) : void
      {
         this.§5g§ = param1;
      }
      
      public function get §@#C§() : §""V§
      {
         return this.§3#V§;
      }
      
      public function set §@#C§(param1:§""V§) : void
      {
         this.§3#V§ = param1;
      }
   }
}
