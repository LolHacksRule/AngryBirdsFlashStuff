package §[>§
{
   import §,$&§.Event;
   import §,$&§.EventDispatcher;
   
   public class §4"h§ extends EventDispatcher implements §-"w§
   {
      
      private static var §4#>§:Vector.<§4"h§> = new Vector.<§4"h§>(0);
       
      
      private var §["8§:Object;
      
      private var §9a§:Function;
      
      private var §1!6§:String;
      
      private var §[!m§:Vector.<String>;
      
      private var §5!o§:Vector.<Number>;
      
      private var §9K§:Vector.<Number>;
      
      private var §=!Q§:Function;
      
      private var §2"8§:Function;
      
      private var §[#H§:Function;
      
      private var §-!^§:Function;
      
      private var §[!D§:Array;
      
      private var §`x§:Array;
      
      private var §6# §:Array;
      
      private var §&h§:Array;
      
      private var §#"w§:Number;
      
      private var §3S§:Number;
      
      private var §^#p§:Number;
      
      private var §`Y§:Boolean;
      
      private var §9@§:§4"h§;
      
      private var §4P§:int;
      
      private var §-!5§:Number;
      
      private var §"$@§:Boolean;
      
      private var §=h§:int;
      
      public function §4"h§(param1:Object, param2:Number, param3:Object = "linear")
      {
         super();
         this.reset(param1,param2,param3);
      }
      
      static function §<!G§(param1:Object, param2:Number, param3:Object = "linear") : §4"h§
      {
         if(§4#>§.length)
         {
            return §4#>§.pop().reset(param1,param2,param3);
         }
         return new §4"h§(param1,param2,param3);
      }
      
      static function §<$D§(param1:§4"h§) : void
      {
         param1.§=!Q§ = param1.§2"8§ = param1.§[#H§ = param1.§-!^§ = null;
         param1.§[!D§ = param1.§`x§ = param1.§6# § = param1.§&h§ = null;
         param1.§["8§ = null;
         param1.§9a§ = null;
         param1.removeEventListeners();
         §4#>§.push(param1);
      }
      
      public function reset(param1:Object, param2:Number, param3:Object = "linear") : §4"h§
      {
         this.§["8§ = param1;
         this.§3S§ = 0;
         this.§#"w§ = Math.max(0.0001,param2);
         this.§^#p§ = this.§-!5§ = 0;
         this.§=!Q§ = this.§2"8§ = this.§-!^§ = null;
         this.§[!D§ = this.§`x§ = this.§&h§ = null;
         this.§`Y§ = this.§"$@§ = false;
         this.§4P§ = 1;
         this.§=h§ = -1;
         if(param3 is String)
         {
            this.§%#&§ = param3 as String;
         }
         else
         {
            if(!(param3 is Function))
            {
               throw new ArgumentError("Transition must be either a string or a function");
            }
            this.§4!U§ = param3 as Function;
         }
         if(this.§[!m§)
         {
            this.§[!m§.length = 0;
         }
         else
         {
            this.§[!m§ = new Vector.<String>(0);
         }
         if(this.§5!o§)
         {
            this.§5!o§.length = 0;
         }
         else
         {
            this.§5!o§ = new Vector.<Number>(0);
         }
         if(this.§9K§)
         {
            this.§9K§.length = 0;
         }
         else
         {
            this.§9K§ = new Vector.<Number>(0);
         }
         return this;
      }
      
      public function §;!E§(param1:String, param2:Number) : void
      {
         if(this.§["8§ == null)
         {
            return;
         }
         this.§[!m§.push(param1);
         this.§5!o§.push(Number.NaN);
         this.§9K§.push(param2);
      }
      
      public function §%!+§(param1:Number) : void
      {
         this.§;!E§("scaleX",param1);
         this.§;!E§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§;!E§("x",param1);
         this.§;!E§("y",param2);
      }
      
      public function §8Y§(param1:Number) : void
      {
         this.§;!E§("alpha",param1);
      }
      
      public function §]W§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Function = null;
         var _loc15_:Array = null;
         if(param1 == 0 || this.§4P§ == 1 && this.§3S§ == this.§#"w§)
         {
            return;
         }
         var _loc3_:Number = this.§3S§;
         var _loc4_:Number = this.§#"w§ - this.§3S§;
         var _loc5_:Number = param1 > _loc4_ ? Number(param1 - _loc4_) : Number(0);
         this.§3S§ = Math.min(this.§#"w§,this.§3S§ + param1);
         if(this.§3S§ <= 0)
         {
            return;
         }
         if(this.§=h§ < 0 && _loc3_ <= 0 && this.§3S§ > 0)
         {
            ++this.§=h§;
            if(this.§=!Q§ != null)
            {
               this.§=!Q§.apply(null,this.§[!D§);
            }
         }
         var _loc6_:Number = this.§3S§ / this.§#"w§;
         var _loc7_:Boolean = this.§"$@§ && this.§=h§ % 2 == 1;
         var _loc8_:int = this.§5!o§.length;
         _loc2_ = 0;
         while(_loc2_ < _loc8_)
         {
            if(isNaN(this.§5!o§[_loc2_]))
            {
               this.§5!o§[_loc2_] = this.§["8§[this.§[!m§[_loc2_]] as Number;
            }
            _loc9_ = this.§5!o§[_loc2_];
            _loc11_ = (_loc10_ = this.§9K§[_loc2_]) - _loc9_;
            _loc12_ = !!_loc7_ ? Number(this.§9a§(1 - _loc6_)) : Number(this.§9a§(_loc6_));
            _loc13_ = _loc9_ + _loc12_ * _loc11_;
            if(this.§`Y§)
            {
               _loc13_ = Math.round(_loc13_);
            }
            this.§["8§[this.§[!m§[_loc2_]] = _loc13_;
            _loc2_++;
         }
         if(this.§2"8§ != null)
         {
            this.§2"8§.apply(null,this.§`x§);
         }
         if(_loc3_ < this.§#"w§ && this.§3S§ >= this.§#"w§)
         {
            if(this.§4P§ == 0 || this.§4P§ > 1)
            {
               this.§3S§ = -this.§-!5§;
               ++this.§=h§;
               if(this.§4P§ > 1)
               {
                  --this.§4P§;
               }
               if(this.§[#H§ != null)
               {
                  this.§[#H§.apply(null,this.§6# §);
               }
            }
            else
            {
               _loc14_ = this.§-!^§;
               _loc15_ = this.§&h§;
               §"!=§(Event.§]#h§);
               if(_loc14_ != null)
               {
                  _loc14_.apply(null,_loc15_);
               }
            }
         }
         if(_loc5_)
         {
            this.§]W§(_loc5_);
         }
      }
      
      public function get §;# §() : Boolean
      {
         return this.§3S§ >= this.§#"w§ && this.§4P§ == 1;
      }
      
      public function get target() : Object
      {
         return this.§["8§;
      }
      
      public function get §%#&§() : String
      {
         return this.§1!6§;
      }
      
      public function set §%#&§(param1:String) : void
      {
         this.§1!6§ = param1;
         this.§9a§ = §>S§.§,"l§(param1);
         if(this.§9a§ == null)
         {
            throw new ArgumentError("Invalid transiton: " + param1);
         }
      }
      
      public function get §4!U§() : Function
      {
         return this.§9a§;
      }
      
      public function set §4!U§(param1:Function) : void
      {
         this.§1!6§ = "custom";
         this.§9a§ = param1;
      }
      
      public function get §!t§() : Number
      {
         return this.§#"w§;
      }
      
      public function get §-J§() : Number
      {
         return this.§3S§;
      }
      
      public function get delay() : Number
      {
         return this.§^#p§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§3S§ = this.§3S§ + this.§^#p§ - param1;
         this.§^#p§ = param1;
      }
      
      public function get repeatCount() : int
      {
         return this.§4P§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§4P§ = param1;
      }
      
      public function get §`!J§() : Number
      {
         return this.§-!5§;
      }
      
      public function set §`!J§(param1:Number) : void
      {
         this.§-!5§ = param1;
      }
      
      public function get reverse() : Boolean
      {
         return this.§"$@§;
      }
      
      public function set reverse(param1:Boolean) : void
      {
         this.§"$@§ = param1;
      }
      
      public function get §`$B§() : Boolean
      {
         return this.§`Y§;
      }
      
      public function set §`$B§(param1:Boolean) : void
      {
         this.§`Y§ = param1;
      }
      
      public function get onStart() : Function
      {
         return this.§=!Q§;
      }
      
      public function set onStart(param1:Function) : void
      {
         this.§=!Q§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§2"8§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§2"8§ = param1;
      }
      
      public function get §%#Y§() : Function
      {
         return this.§[#H§;
      }
      
      public function set §%#Y§(param1:Function) : void
      {
         this.§[#H§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§-!^§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§-!^§ = param1;
      }
      
      public function get §8!>§() : Array
      {
         return this.§[!D§;
      }
      
      public function set §8!>§(param1:Array) : void
      {
         this.§[!D§ = param1;
      }
      
      public function get §'#'§() : Array
      {
         return this.§`x§;
      }
      
      public function set §'#'§(param1:Array) : void
      {
         this.§`x§ = param1;
      }
      
      public function get §7#]§() : Array
      {
         return this.§6# §;
      }
      
      public function set §7#]§(param1:Array) : void
      {
         this.§6# § = param1;
      }
      
      public function get §`$%§() : Array
      {
         return this.§&h§;
      }
      
      public function set §`$%§(param1:Array) : void
      {
         this.§&h§ = param1;
      }
      
      public function get § "=§() : §4"h§
      {
         return this.§9@§;
      }
      
      public function set § "=§(param1:§4"h§) : void
      {
         this.§9@§ = param1;
      }
   }
}
