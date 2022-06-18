package §package§
{
   import §<!S§.Event;
   import §<!S§.EventDispatcher;
   
   public class §[#`§ extends EventDispatcher implements §1#;§
   {
      
      private static var §0#M§:Vector.<§[#`§> = new Vector.<§[#`§>(0);
       
      
      private var §7N§:Object;
      
      private var §?"Q§:Function;
      
      private var §@"Q§:String;
      
      private var § ,§:Vector.<String>;
      
      private var §64§:Vector.<Number>;
      
      private var §,k§:Vector.<Number>;
      
      private var §]!T§:Function;
      
      private var §!#+§:Function;
      
      private var §7"n§:Function;
      
      private var §"#L§:Function;
      
      private var §0#N§:Array;
      
      private var §5$=§:Array;
      
      private var §@P§:Array;
      
      private var §&!$§:Array;
      
      private var §!!R§:Number;
      
      private var §8$>§:Number;
      
      private var §6"e§:Number;
      
      private var §?"f§:Boolean;
      
      private var §,$C§:§[#`§;
      
      private var §^#3§:int;
      
      private var §9#Q§:Number;
      
      private var §+#&§:Boolean;
      
      private var §]o§:int;
      
      public function §[#`§(param1:Object, param2:Number, param3:Object = "linear")
      {
         super();
         this.reset(param1,param2,param3);
      }
      
      static function §!4§(param1:Object, param2:Number, param3:Object = "linear") : §[#`§
      {
         if(§0#M§.length)
         {
            return §0#M§.pop().reset(param1,param2,param3);
         }
         return new §[#`§(param1,param2,param3);
      }
      
      static function §-!3§(param1:§[#`§) : void
      {
         param1.§]!T§ = param1.§!#+§ = param1.§7"n§ = param1.§"#L§ = null;
         param1.§0#N§ = param1.§5$=§ = param1.§@P§ = param1.§&!$§ = null;
         param1.§7N§ = null;
         param1.§?"Q§ = null;
         param1.removeEventListeners();
         §0#M§.push(param1);
      }
      
      public function reset(param1:Object, param2:Number, param3:Object = "linear") : §[#`§
      {
         this.§7N§ = param1;
         this.§8$>§ = 0;
         this.§!!R§ = Math.max(0.0001,param2);
         this.§6"e§ = this.§9#Q§ = 0;
         this.§]!T§ = this.§!#+§ = this.§"#L§ = null;
         this.§0#N§ = this.§5$=§ = this.§&!$§ = null;
         this.§?"f§ = this.§+#&§ = false;
         this.§^#3§ = 1;
         this.§]o§ = -1;
         if(param3 is String)
         {
            this.§#!n§ = param3 as String;
         }
         else if(param3 is Function)
         {
            this.§8!8§ = param3 as Function;
         }
         else
         {
            throw new ArgumentError("Transition must be either a string or a function");
         }
         if(this.§ ,§)
         {
            this.§ ,§.length = 0;
         }
         else
         {
            this.§ ,§ = new Vector.<String>(0);
         }
         if(this.§64§)
         {
            this.§64§.length = 0;
         }
         else
         {
            this.§64§ = new Vector.<Number>(0);
         }
         if(this.§,k§)
         {
            this.§,k§.length = 0;
         }
         else
         {
            this.§,k§ = new Vector.<Number>(0);
         }
         return this;
      }
      
      public function §'#v§(param1:String, param2:Number) : void
      {
         if(this.§7N§ == null)
         {
            return;
         }
         this.§ ,§.push(param1);
         this.§64§.push(Number.NaN);
         this.§,k§.push(param2);
      }
      
      public function § !_§(param1:Number) : void
      {
         this.§'#v§("scaleX",param1);
         this.§'#v§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§'#v§("x",param1);
         this.§'#v§("y",param2);
      }
      
      public function §0!J§(param1:Number) : void
      {
         this.§'#v§("alpha",param1);
      }
      
      public function §["[§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Function = null;
         var _loc15_:Array = null;
         if(param1 == 0 || this.§^#3§ == 1 && this.§8$>§ == this.§!!R§)
         {
            return;
         }
         var _loc3_:Number = this.§8$>§;
         var _loc4_:Number = this.§!!R§ - this.§8$>§;
         var _loc5_:Number = param1 > _loc4_ ? Number(param1 - _loc4_) : Number(0);
         this.§8$>§ = Math.min(this.§!!R§,this.§8$>§ + param1);
         if(this.§8$>§ <= 0)
         {
            return;
         }
         if(this.§]o§ < 0 && _loc3_ <= 0 && this.§8$>§ > 0)
         {
            ++this.§]o§;
            if(this.§]!T§ != null)
            {
               this.§]!T§.apply(null,this.§0#N§);
            }
         }
         var _loc6_:Number = this.§8$>§ / this.§!!R§;
         var _loc7_:Boolean = this.§+#&§ && this.§]o§ % 2 == 1;
         var _loc8_:int = this.§64§.length;
         _loc2_ = 0;
         while(_loc2_ < _loc8_)
         {
            if(isNaN(this.§64§[_loc2_]))
            {
               this.§64§[_loc2_] = this.§7N§[this.§ ,§[_loc2_]] as Number;
            }
            _loc9_ = this.§64§[_loc2_];
            _loc11_ = this.§,k§[_loc2_] - _loc9_;
            _loc12_ = !!_loc7_ ? Number(this.§?"Q§(1 - _loc6_)) : Number(this.§?"Q§(_loc6_));
            _loc13_ = _loc9_ + _loc12_ * _loc11_;
            if(this.§?"f§)
            {
               _loc13_ = Math.round(_loc13_);
            }
            this.§7N§[this.§ ,§[_loc2_]] = _loc13_;
            _loc2_++;
         }
         if(this.§!#+§ != null)
         {
            this.§!#+§.apply(null,this.§5$=§);
         }
         if(_loc3_ < this.§!!R§ && this.§8$>§ >= this.§!!R§)
         {
            if(this.§^#3§ == 0 || this.§^#3§ > 1)
            {
               this.§8$>§ = -this.§9#Q§;
               ++this.§]o§;
               if(this.§^#3§ > 1)
               {
                  --this.§^#3§;
               }
               if(this.§7"n§ != null)
               {
                  this.§7"n§.apply(null,this.§@P§);
               }
            }
            else
            {
               _loc14_ = this.§"#L§;
               _loc15_ = this.§&!$§;
               §5#^§(Event.§`!5§);
               if(_loc14_ != null)
               {
                  _loc14_.apply(null,_loc15_);
               }
            }
         }
         if(_loc5_)
         {
            this.§["[§(_loc5_);
         }
      }
      
      public function get §?#^§() : Boolean
      {
         return this.§8$>§ >= this.§!!R§ && this.§^#3§ == 1;
      }
      
      public function get target() : Object
      {
         return this.§7N§;
      }
      
      public function get §#!n§() : String
      {
         return this.§@"Q§;
      }
      
      public function set §#!n§(param1:String) : void
      {
         this.§@"Q§ = param1;
         this.§?"Q§ = §4!1§.§;#C§(param1);
         if(this.§?"Q§ == null)
         {
            throw new ArgumentError("Invalid transiton: " + param1);
         }
      }
      
      public function get §8!8§() : Function
      {
         return this.§?"Q§;
      }
      
      public function set §8!8§(param1:Function) : void
      {
         this.§@"Q§ = "custom";
         this.§?"Q§ = param1;
      }
      
      public function get §9b§() : Number
      {
         return this.§!!R§;
      }
      
      public function get §3!j§() : Number
      {
         return this.§8$>§;
      }
      
      public function get delay() : Number
      {
         return this.§6"e§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§8$>§ = this.§8$>§ + this.§6"e§ - param1;
         this.§6"e§ = param1;
      }
      
      public function get repeatCount() : int
      {
         return this.§^#3§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§^#3§ = param1;
      }
      
      public function get §4"3§() : Number
      {
         return this.§9#Q§;
      }
      
      public function set §4"3§(param1:Number) : void
      {
         this.§9#Q§ = param1;
      }
      
      public function get reverse() : Boolean
      {
         return this.§+#&§;
      }
      
      public function set reverse(param1:Boolean) : void
      {
         this.§+#&§ = param1;
      }
      
      public function get §="f§() : Boolean
      {
         return this.§?"f§;
      }
      
      public function set §="f§(param1:Boolean) : void
      {
         this.§?"f§ = param1;
      }
      
      public function get onStart() : Function
      {
         return this.§]!T§;
      }
      
      public function set onStart(param1:Function) : void
      {
         this.§]!T§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§!#+§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§!#+§ = param1;
      }
      
      public function get §0a§() : Function
      {
         return this.§7"n§;
      }
      
      public function set §0a§(param1:Function) : void
      {
         this.§7"n§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§"#L§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§"#L§ = param1;
      }
      
      public function get §+#r§() : Array
      {
         return this.§0#N§;
      }
      
      public function set §+#r§(param1:Array) : void
      {
         this.§0#N§ = param1;
      }
      
      public function get §]#t§() : Array
      {
         return this.§5$=§;
      }
      
      public function set §]#t§(param1:Array) : void
      {
         this.§5$=§ = param1;
      }
      
      public function get §>q§() : Array
      {
         return this.§@P§;
      }
      
      public function set §>q§(param1:Array) : void
      {
         this.§@P§ = param1;
      }
      
      public function get §3'§() : Array
      {
         return this.§&!$§;
      }
      
      public function set §3'§(param1:Array) : void
      {
         this.§&!$§ = param1;
      }
      
      public function get §9!K§() : §[#`§
      {
         return this.§,$C§;
      }
      
      public function set §9!K§(param1:§[#`§) : void
      {
         this.§,$C§ = param1;
      }
   }
}
