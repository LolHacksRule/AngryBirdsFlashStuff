package §&!2§
{
   import §5#m§.Event;
   import §5#m§.EventDispatcher;
   
   public class §-!N§ extends EventDispatcher implements §;"=§
   {
      
      private static var §5$1§:Vector.<§-!N§> = new Vector.<§-!N§>(0);
       
      
      private var §%"P§:Object;
      
      private var §%"@§:Function;
      
      private var §[Z§:String;
      
      private var §29§:Vector.<String>;
      
      private var §=N§:Vector.<Number>;
      
      private var §'#O§:Vector.<Number>;
      
      private var §,!Z§:Function;
      
      private var §!"@§:Function;
      
      private var §["K§:Function;
      
      private var §+"3§:Function;
      
      private var §%"%§:Array;
      
      private var §;$#§:Array;
      
      private var §[#-§:Array;
      
      private var §4!6§:Array;
      
      private var §+!`§:Number;
      
      private var § $'§:Number;
      
      private var §=";§:Number;
      
      private var §"$9§:Boolean;
      
      private var §2V§:§-!N§;
      
      private var §>"o§:int;
      
      private var §"_§:Number;
      
      private var §+#P§:Boolean;
      
      private var §,#E§:int;
      
      public function §-!N§(param1:Object, param2:Number, param3:Object = "linear")
      {
         super();
         this.reset(param1,param2,param3);
      }
      
      static function §]"r§(param1:Object, param2:Number, param3:Object = "linear") : §-!N§
      {
         if(§5$1§.length)
         {
            return §5$1§.pop().reset(param1,param2,param3);
         }
         return new §-!N§(param1,param2,param3);
      }
      
      static function §0"<§(param1:§-!N§) : void
      {
         param1.§,!Z§ = param1.§!"@§ = param1.§["K§ = param1.§+"3§ = null;
         param1.§%"%§ = param1.§;$#§ = param1.§[#-§ = param1.§4!6§ = null;
         param1.§%"P§ = null;
         param1.§%"@§ = null;
         param1.removeEventListeners();
         §5$1§.push(param1);
      }
      
      public function reset(param1:Object, param2:Number, param3:Object = "linear") : §-!N§
      {
         this.§%"P§ = param1;
         this.§ $'§ = 0;
         this.§+!`§ = Math.max(0.0001,param2);
         this.§=";§ = this.§"_§ = 0;
         this.§,!Z§ = this.§!"@§ = this.§+"3§ = null;
         this.§%"%§ = this.§;$#§ = this.§4!6§ = null;
         this.§"$9§ = this.§+#P§ = false;
         this.§>"o§ = 1;
         this.§,#E§ = -1;
         if(param3 is String)
         {
            this.§]F§ = param3 as String;
         }
         else
         {
            if(!(param3 is Function))
            {
               throw new ArgumentError("Transition must be either a string or a function");
            }
            this.§5!]§ = param3 as Function;
         }
         if(this.§29§)
         {
            this.§29§.length = 0;
         }
         else
         {
            this.§29§ = new Vector.<String>(0);
         }
         if(this.§=N§)
         {
            this.§=N§.length = 0;
         }
         else
         {
            this.§=N§ = new Vector.<Number>(0);
         }
         if(this.§'#O§)
         {
            this.§'#O§.length = 0;
         }
         else
         {
            this.§'#O§ = new Vector.<Number>(0);
         }
         return this;
      }
      
      public function §+O§(param1:String, param2:Number) : void
      {
         if(this.§%"P§ == null)
         {
            return;
         }
         this.§29§.push(param1);
         this.§=N§.push(Number.NaN);
         this.§'#O§.push(param2);
      }
      
      public function §@#Z§(param1:Number) : void
      {
         this.§+O§("scaleX",param1);
         this.§+O§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§+O§("x",param1);
         this.§+O§("y",param2);
      }
      
      public function §<"?§(param1:Number) : void
      {
         this.§+O§("alpha",param1);
      }
      
      public function §'#F§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Function = null;
         var _loc15_:Array = null;
         if(param1 == 0 || this.§>"o§ == 1 && this.§ $'§ == this.§+!`§)
         {
            return;
         }
         var _loc3_:Number = this.§ $'§;
         var _loc4_:Number = this.§+!`§ - this.§ $'§;
         var _loc5_:Number = param1 > _loc4_ ? Number(param1 - _loc4_) : Number(0);
         this.§ $'§ = Math.min(this.§+!`§,this.§ $'§ + param1);
         if(this.§ $'§ <= 0)
         {
            return;
         }
         if(this.§,#E§ < 0 && _loc3_ <= 0 && this.§ $'§ > 0)
         {
            ++this.§,#E§;
            if(this.§,!Z§ != null)
            {
               this.§,!Z§.apply(null,this.§%"%§);
            }
         }
         var _loc6_:Number = this.§ $'§ / this.§+!`§;
         var _loc7_:Boolean = this.§+#P§ && this.§,#E§ % 2 == 1;
         var _loc8_:int = this.§=N§.length;
         _loc2_ = 0;
         while(_loc2_ < _loc8_)
         {
            if(isNaN(this.§=N§[_loc2_]))
            {
               this.§=N§[_loc2_] = this.§%"P§[this.§29§[_loc2_]] as Number;
            }
            _loc9_ = this.§=N§[_loc2_];
            _loc11_ = (_loc10_ = this.§'#O§[_loc2_]) - _loc9_;
            _loc12_ = !!_loc7_ ? Number(this.§%"@§(1 - _loc6_)) : Number(this.§%"@§(_loc6_));
            _loc13_ = _loc9_ + _loc12_ * _loc11_;
            if(this.§"$9§)
            {
               _loc13_ = Math.round(_loc13_);
            }
            this.§%"P§[this.§29§[_loc2_]] = _loc13_;
            _loc2_++;
         }
         if(this.§!"@§ != null)
         {
            this.§!"@§.apply(null,this.§;$#§);
         }
         if(_loc3_ < this.§+!`§ && this.§ $'§ >= this.§+!`§)
         {
            if(this.§>"o§ == 0 || this.§>"o§ > 1)
            {
               this.§ $'§ = -this.§"_§;
               ++this.§,#E§;
               if(this.§>"o§ > 1)
               {
                  --this.§>"o§;
               }
               if(this.§["K§ != null)
               {
                  this.§["K§.apply(null,this.§[#-§);
               }
            }
            else
            {
               _loc14_ = this.§+"3§;
               _loc15_ = this.§4!6§;
               §89§(Event.§7">§);
               if(_loc14_ != null)
               {
                  _loc14_.apply(null,_loc15_);
               }
            }
         }
         if(_loc5_)
         {
            this.§'#F§(_loc5_);
         }
      }
      
      public function get §'#[§() : Boolean
      {
         return this.§ $'§ >= this.§+!`§ && this.§>"o§ == 1;
      }
      
      public function get target() : Object
      {
         return this.§%"P§;
      }
      
      public function get §]F§() : String
      {
         return this.§[Z§;
      }
      
      public function set §]F§(param1:String) : void
      {
         this.§[Z§ = param1;
         this.§%"@§ = §@#z§.§+"!§(param1);
         if(this.§%"@§ == null)
         {
            throw new ArgumentError("Invalid transiton: " + param1);
         }
      }
      
      public function get §5!]§() : Function
      {
         return this.§%"@§;
      }
      
      public function set §5!]§(param1:Function) : void
      {
         this.§[Z§ = "custom";
         this.§%"@§ = param1;
      }
      
      public function get §5"Q§() : Number
      {
         return this.§+!`§;
      }
      
      public function get §-#M§() : Number
      {
         return this.§ $'§;
      }
      
      public function get delay() : Number
      {
         return this.§=";§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§ $'§ = this.§ $'§ + this.§=";§ - param1;
         this.§=";§ = param1;
      }
      
      public function get repeatCount() : int
      {
         return this.§>"o§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§>"o§ = param1;
      }
      
      public function get §'#K§() : Number
      {
         return this.§"_§;
      }
      
      public function set §'#K§(param1:Number) : void
      {
         this.§"_§ = param1;
      }
      
      public function get reverse() : Boolean
      {
         return this.§+#P§;
      }
      
      public function set reverse(param1:Boolean) : void
      {
         this.§+#P§ = param1;
      }
      
      public function get §'"T§() : Boolean
      {
         return this.§"$9§;
      }
      
      public function set §'"T§(param1:Boolean) : void
      {
         this.§"$9§ = param1;
      }
      
      public function get onStart() : Function
      {
         return this.§,!Z§;
      }
      
      public function set onStart(param1:Function) : void
      {
         this.§,!Z§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§!"@§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§!"@§ = param1;
      }
      
      public function get §3"%§() : Function
      {
         return this.§["K§;
      }
      
      public function set §3"%§(param1:Function) : void
      {
         this.§["K§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§+"3§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§+"3§ = param1;
      }
      
      public function get §+#R§() : Array
      {
         return this.§%"%§;
      }
      
      public function set §+#R§(param1:Array) : void
      {
         this.§%"%§ = param1;
      }
      
      public function get §4+§() : Array
      {
         return this.§;$#§;
      }
      
      public function set §4+§(param1:Array) : void
      {
         this.§;$#§ = param1;
      }
      
      public function get §,?§() : Array
      {
         return this.§[#-§;
      }
      
      public function set §,?§(param1:Array) : void
      {
         this.§[#-§ = param1;
      }
      
      public function get §>!E§() : Array
      {
         return this.§4!6§;
      }
      
      public function set §>!E§(param1:Array) : void
      {
         this.§4!6§ = param1;
      }
      
      public function get § $B§() : §-!N§
      {
         return this.§2V§;
      }
      
      public function set § $B§(param1:§-!N§) : void
      {
         this.§2V§ = param1;
      }
   }
}
