package §9!B§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §5!D§ extends EventDispatcher implements § _§
   {
       
      
      private var §9U§:Object;
      
      private var §#1§:String;
      
      private var §>!0§:Vector.<String>;
      
      private var §@&§:Vector.<Number>;
      
      private var §^!d§:Vector.<Number>;
      
      private var §0!3§:Function;
      
      private var §1q§:Function;
      
      private var §try§:Function;
      
      private var §4!'§:Array;
      
      private var §&!]§:Array;
      
      private var §@T§:Array;
      
      private var §"!D§:Number;
      
      private var §]!b§:Number;
      
      private var §]!6§:Number;
      
      private var §7?§:Boolean;
      
      public function §5!D§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§9U§ = param1;
         this.§]!b§ = 0;
         this.§"!D§ = Math.max(0.0001,param2);
         this.§]!6§ = 0;
         this.§#1§ = param3;
         this.§7?§ = false;
         this.§>!0§ = new Vector.<String>(0);
         this.§@&§ = new Vector.<Number>(0);
         this.§^!d§ = new Vector.<Number>(0);
      }
      
      public function §;!d§(param1:String, param2:Number) : void
      {
         if(this.§9U§ == null)
         {
            return;
         }
         this.§>!0§.push(param1);
         this.§@&§.push(Number.NaN);
         this.§^!d§.push(param2);
      }
      
      public function §3!>§(param1:Number) : void
      {
         this.§;!d§("scaleX",param1);
         this.§;!d§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§;!d§("x",param1);
         this.§;!d§("y",param2);
      }
      
      public function §3y§(param1:Number) : void
      {
         this.§;!d§("alpha",param1);
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
         var _loc2_:Number = this.§]!b§;
         this.§]!b§ += param1;
         if(this.§]!b§ < 0 || _loc2_ >= this.§"!D§)
         {
            return;
         }
         if(this.§@!]§ != null && _loc2_ <= 0 && this.§]!b§ >= 0)
         {
            this.§@!]§.apply(null,this.§4!'§);
         }
         var _loc3_:Number = Math.min(this.§"!D§,this.§]!b§) / this.§"!D§;
         var _loc4_:int = this.§@&§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§@&§[_loc5_]))
            {
               this.§@&§[_loc5_] = this.§9U§[this.§>!0§[_loc5_]] as Number;
            }
            _loc6_ = this.§@&§[_loc5_];
            _loc8_ = (_loc7_ = this.§^!d§[_loc5_]) - _loc6_;
            _loc9_ = §[g§.§!!A§(this.§#1§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§7?§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§9U§[this.§>!0§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§^O§ != null)
         {
            this.§^O§.apply(null,this.§&!]§);
         }
         if(_loc2_ < this.§"!D§ && this.§]!b§ >= this.§"!D§)
         {
            dispatchEvent(new Event(Event.§;8§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§@T§);
            }
         }
      }
      
      public function get §1]§() : Boolean
      {
         return this.§]!b§ >= this.§"!D§;
      }
      
      public function get target() : Object
      {
         return this.§9U§;
      }
      
      public function get §6!u§() : String
      {
         return this.§#1§;
      }
      
      public function get §,!Q§() : Number
      {
         return this.§"!D§;
      }
      
      public function get §+L§() : Number
      {
         return this.§]!b§;
      }
      
      public function get delay() : Number
      {
         return this.§]!6§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§]!b§ = this.§]!b§ + this.§]!6§ - param1;
         this.§]!6§ = param1;
      }
      
      public function get §@F§() : Boolean
      {
         return this.§7?§;
      }
      
      public function set §@F§(param1:Boolean) : void
      {
         this.§7?§ = param1;
      }
      
      public function get §@!]§() : Function
      {
         return this.§0!3§;
      }
      
      public function set §@!]§(param1:Function) : void
      {
         this.§0!3§ = param1;
      }
      
      public function get §^O§() : Function
      {
         return this.§1q§;
      }
      
      public function set §^O§(param1:Function) : void
      {
         this.§1q§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§try§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§try§ = param1;
      }
      
      public function get §?0§() : Array
      {
         return this.§4!'§;
      }
      
      public function set §?0§(param1:Array) : void
      {
         this.§4!'§ = param1;
      }
      
      public function get §!k§() : Array
      {
         return this.§&!]§;
      }
      
      public function set §!k§(param1:Array) : void
      {
         this.§&!]§ = param1;
      }
      
      public function get §]=§() : Array
      {
         return this.§@T§;
      }
      
      public function set §]=§(param1:Array) : void
      {
         this.§@T§ = param1;
      }
   }
}
