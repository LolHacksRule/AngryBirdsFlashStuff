package §;"K§
{
   import §1P§.Event;
   import §1P§.EventDispatcher;
   
   public class §7"k§ extends EventDispatcher implements §5#$§
   {
      
      private static var §2#t§:Vector.<§7"k§> = new Vector.<§7"k§>(0);
       
      
      private var §,!T§:Object;
      
      private var §0##§:Function;
      
      private var §!#;§:String;
      
      private var §[#p§:Vector.<String>;
      
      private var §%!u§:Vector.<Number>;
      
      private var §3#>§:Vector.<Number>;
      
      private var §1#%§:Function;
      
      private var §@#a§:Function;
      
      private var §0#^§:Function;
      
      private var §<$4§:Function;
      
      private var §=$ §:Array;
      
      private var §?!5§:Array;
      
      private var §>!^§:Array;
      
      private var §`#L§:Array;
      
      private var §0"u§:Number;
      
      private var §##"§:Number;
      
      private var §;;§:Number;
      
      private var §]!2§:Boolean;
      
      private var §,!"§:§7"k§;
      
      private var §1#t§:int;
      
      private var §&#s§:Number;
      
      private var §#"g§:Boolean;
      
      private var §^8§:int;
      
      public function §7"k§(param1:Object, param2:Number, param3:Object = "linear")
      {
         super();
         this.reset(param1,param2,param3);
      }
      
      static function §=+§(param1:Object, param2:Number, param3:Object = "linear") : §7"k§
      {
         if(§2#t§.length)
         {
            return §2#t§.pop().reset(param1,param2,param3);
         }
         return new §7"k§(param1,param2,param3);
      }
      
      static function §"#p§(param1:§7"k§) : void
      {
         param1.§1#%§ = param1.§@#a§ = param1.§0#^§ = param1.§<$4§ = null;
         param1.§=$ § = param1.§?!5§ = param1.§>!^§ = param1.§`#L§ = null;
         param1.§,!T§ = null;
         param1.§0##§ = null;
         param1.removeEventListeners();
         §2#t§.push(param1);
      }
      
      public function reset(param1:Object, param2:Number, param3:Object = "linear") : §7"k§
      {
         this.§,!T§ = param1;
         this.§##"§ = 0;
         this.§0"u§ = Math.max(0.0001,param2);
         this.§;;§ = this.§&#s§ = 0;
         this.§1#%§ = this.§@#a§ = this.§<$4§ = null;
         this.§=$ § = this.§?!5§ = this.§`#L§ = null;
         this.§]!2§ = this.§#"g§ = false;
         this.§1#t§ = 1;
         this.§^8§ = -1;
         if(param3 is String)
         {
            this.§`#b§ = param3 as String;
         }
         else
         {
            if(!(param3 is Function))
            {
               throw new ArgumentError("Transition must be either a string or a function");
            }
            this.§6_§ = param3 as Function;
         }
         if(this.§[#p§)
         {
            this.§[#p§.length = 0;
         }
         else
         {
            this.§[#p§ = new Vector.<String>(0);
         }
         if(this.§%!u§)
         {
            this.§%!u§.length = 0;
         }
         else
         {
            this.§%!u§ = new Vector.<Number>(0);
         }
         if(this.§3#>§)
         {
            this.§3#>§.length = 0;
         }
         else
         {
            this.§3#>§ = new Vector.<Number>(0);
         }
         return this;
      }
      
      public function §>"`§(param1:String, param2:Number) : void
      {
         if(this.§,!T§ == null)
         {
            return;
         }
         this.§[#p§.push(param1);
         this.§%!u§.push(Number.NaN);
         this.§3#>§.push(param2);
      }
      
      public function §,!6§(param1:Number) : void
      {
         this.§>"`§("scaleX",param1);
         this.§>"`§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§>"`§("x",param1);
         this.§>"`§("y",param2);
      }
      
      public function §,§(param1:Number) : void
      {
         this.§>"`§("alpha",param1);
      }
      
      public function §2!X§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Function = null;
         var _loc15_:Array = null;
         if(param1 == 0 || this.§1#t§ == 1 && this.§##"§ == this.§0"u§)
         {
            return;
         }
         var _loc3_:Number = this.§##"§;
         var _loc4_:Number = this.§0"u§ - this.§##"§;
         var _loc5_:Number = param1 > _loc4_ ? Number(param1 - _loc4_) : Number(0);
         this.§##"§ = Math.min(this.§0"u§,this.§##"§ + param1);
         if(this.§##"§ <= 0)
         {
            return;
         }
         if(this.§^8§ < 0 && _loc3_ <= 0 && this.§##"§ > 0)
         {
            ++this.§^8§;
            if(this.§1#%§ != null)
            {
               this.§1#%§.apply(null,this.§=$ §);
            }
         }
         var _loc6_:Number = this.§##"§ / this.§0"u§;
         var _loc7_:Boolean = this.§#"g§ && this.§^8§ % 2 == 1;
         var _loc8_:int = this.§%!u§.length;
         _loc2_ = 0;
         while(_loc2_ < _loc8_)
         {
            if(isNaN(this.§%!u§[_loc2_]))
            {
               this.§%!u§[_loc2_] = this.§,!T§[this.§[#p§[_loc2_]] as Number;
            }
            _loc9_ = this.§%!u§[_loc2_];
            _loc11_ = (_loc10_ = this.§3#>§[_loc2_]) - _loc9_;
            _loc12_ = !!_loc7_ ? Number(this.§0##§(1 - _loc6_)) : Number(this.§0##§(_loc6_));
            _loc13_ = _loc9_ + _loc12_ * _loc11_;
            if(this.§]!2§)
            {
               _loc13_ = Math.round(_loc13_);
            }
            this.§,!T§[this.§[#p§[_loc2_]] = _loc13_;
            _loc2_++;
         }
         if(this.§@#a§ != null)
         {
            this.§@#a§.apply(null,this.§?!5§);
         }
         if(_loc3_ < this.§0"u§ && this.§##"§ >= this.§0"u§)
         {
            if(this.§1#t§ == 0 || this.§1#t§ > 1)
            {
               this.§##"§ = -this.§&#s§;
               ++this.§^8§;
               if(this.§1#t§ > 1)
               {
                  --this.§1#t§;
               }
               if(this.§0#^§ != null)
               {
                  this.§0#^§.apply(null,this.§>!^§);
               }
            }
            else
            {
               _loc14_ = this.§<$4§;
               _loc15_ = this.§`#L§;
               §4#h§(Event.§ #X§);
               if(_loc14_ != null)
               {
                  _loc14_.apply(null,_loc15_);
               }
            }
         }
         if(_loc5_)
         {
            this.§2!X§(_loc5_);
         }
      }
      
      public function get §6#N§() : Boolean
      {
         return this.§##"§ >= this.§0"u§ && this.§1#t§ == 1;
      }
      
      public function get target() : Object
      {
         return this.§,!T§;
      }
      
      public function get §`#b§() : String
      {
         return this.§!#;§;
      }
      
      public function set §`#b§(param1:String) : void
      {
         this.§!#;§ = param1;
         this.§0##§ = §!l§.§<#9§(param1);
         if(this.§0##§ == null)
         {
            throw new ArgumentError("Invalid transiton: " + param1);
         }
      }
      
      public function get §6_§() : Function
      {
         return this.§0##§;
      }
      
      public function set §6_§(param1:Function) : void
      {
         this.§!#;§ = "custom";
         this.§0##§ = param1;
      }
      
      public function get §9!=§() : Number
      {
         return this.§0"u§;
      }
      
      public function get §5#9§() : Number
      {
         return this.§##"§;
      }
      
      public function get delay() : Number
      {
         return this.§;;§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§##"§ = this.§##"§ + this.§;;§ - param1;
         this.§;;§ = param1;
      }
      
      public function get repeatCount() : int
      {
         return this.§1#t§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§1#t§ = param1;
      }
      
      public function get §%!s§() : Number
      {
         return this.§&#s§;
      }
      
      public function set §%!s§(param1:Number) : void
      {
         this.§&#s§ = param1;
      }
      
      public function get reverse() : Boolean
      {
         return this.§#"g§;
      }
      
      public function set reverse(param1:Boolean) : void
      {
         this.§#"g§ = param1;
      }
      
      public function get §-#B§() : Boolean
      {
         return this.§]!2§;
      }
      
      public function set §-#B§(param1:Boolean) : void
      {
         this.§]!2§ = param1;
      }
      
      public function get onStart() : Function
      {
         return this.§1#%§;
      }
      
      public function set onStart(param1:Function) : void
      {
         this.§1#%§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§@#a§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§@#a§ = param1;
      }
      
      public function get §1",§() : Function
      {
         return this.§0#^§;
      }
      
      public function set §1",§(param1:Function) : void
      {
         this.§0#^§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§<$4§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§<$4§ = param1;
      }
      
      public function get §7$&§() : Array
      {
         return this.§=$ §;
      }
      
      public function set §7$&§(param1:Array) : void
      {
         this.§=$ § = param1;
      }
      
      public function get §2#z§() : Array
      {
         return this.§?!5§;
      }
      
      public function set §2#z§(param1:Array) : void
      {
         this.§?!5§ = param1;
      }
      
      public function get §#o§() : Array
      {
         return this.§>!^§;
      }
      
      public function set §#o§(param1:Array) : void
      {
         this.§>!^§ = param1;
      }
      
      public function get §9#l§() : Array
      {
         return this.§`#L§;
      }
      
      public function set §9#l§(param1:Array) : void
      {
         this.§`#L§ = param1;
      }
      
      public function get §7#q§() : §7"k§
      {
         return this.§,!"§;
      }
      
      public function set §7#q§(param1:§7"k§) : void
      {
         this.§,!"§ = param1;
      }
   }
}
