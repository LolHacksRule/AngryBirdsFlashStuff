package §9!G§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §-u§ extends EventDispatcher implements §8W§
   {
       
      
      private var §;Z§:Object;
      
      private var § ?§:String;
      
      private var §[!2§:Vector.<String>;
      
      private var §?%§:Vector.<Number>;
      
      private var §2"7§:Vector.<Number>;
      
      private var §]W§:Function;
      
      private var §5K§:Function;
      
      private var §&!Q§:Function;
      
      private var §`!S§:Array;
      
      private var §2!S§:Array;
      
      private var §`!n§:Array;
      
      private var §&!B§:Number;
      
      private var §@z§:Number;
      
      private var §7%§:Number;
      
      private var §9!`§:Boolean;
      
      public function §-u§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§;Z§ = param1;
         this.§@z§ = 0;
         this.§&!B§ = Math.max(0.0001,param2);
         this.§7%§ = 0;
         this.§ ?§ = param3;
         this.§9!`§ = false;
         this.§[!2§ = new Vector.<String>(0);
         this.§?%§ = new Vector.<Number>(0);
         this.§2"7§ = new Vector.<Number>(0);
      }
      
      public function §+j§(param1:String, param2:Number) : void
      {
         if(this.§;Z§ == null)
         {
            return;
         }
         this.§[!2§.push(param1);
         this.§?%§.push(Number.NaN);
         this.§2"7§.push(param2);
      }
      
      public function §,!3§(param1:Number) : void
      {
         this.§+j§("scaleX",param1);
         this.§+j§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§+j§("x",param1);
         this.§+j§("y",param2);
      }
      
      public function §&!O§(param1:Number) : void
      {
         this.§+j§("alpha",param1);
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
         var _loc2_:Number = this.§@z§;
         this.§@z§ += param1;
         if(this.§@z§ < 0 || _loc2_ >= this.§&!B§)
         {
            return;
         }
         if(this.§4"-§ != null && _loc2_ <= 0 && this.§@z§ >= 0)
         {
            this.§4"-§.apply(null,this.§`!S§);
         }
         var _loc3_:Number = Math.min(this.§&!B§,this.§@z§) / this.§&!B§;
         var _loc4_:int = this.§?%§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§?%§[_loc5_]))
            {
               this.§?%§[_loc5_] = this.§;Z§[this.§[!2§[_loc5_]] as Number;
            }
            _loc6_ = this.§?%§[_loc5_];
            _loc8_ = (_loc7_ = this.§2"7§[_loc5_]) - _loc6_;
            _loc9_ = §#z§.§7!V§(this.§ ?§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§9!`§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§;Z§[this.§[!2§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.onUpdate != null)
         {
            this.onUpdate.apply(null,this.§2!S§);
         }
         if(_loc2_ < this.§&!B§ && this.§@z§ >= this.§&!B§)
         {
            dispatchEvent(new Event(Event.§,!c§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§`!n§);
            }
         }
      }
      
      public function get §-!d§() : Boolean
      {
         return this.§@z§ >= this.§&!B§;
      }
      
      public function get target() : Object
      {
         return this.§;Z§;
      }
      
      public function get §%"#§() : String
      {
         return this.§ ?§;
      }
      
      public function get §4^§() : Number
      {
         return this.§&!B§;
      }
      
      public function get §%<§() : Number
      {
         return this.§@z§;
      }
      
      public function get delay() : Number
      {
         return this.§7%§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§@z§ = this.§@z§ + this.§7%§ - param1;
         this.§7%§ = param1;
      }
      
      public function get § C§() : Boolean
      {
         return this.§9!`§;
      }
      
      public function set § C§(param1:Boolean) : void
      {
         this.§9!`§ = param1;
      }
      
      public function get §4"-§() : Function
      {
         return this.§]W§;
      }
      
      public function set §4"-§(param1:Function) : void
      {
         this.§]W§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§5K§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§5K§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§&!Q§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§&!Q§ = param1;
      }
      
      public function get §+!]§() : Array
      {
         return this.§`!S§;
      }
      
      public function set §+!]§(param1:Array) : void
      {
         this.§`!S§ = param1;
      }
      
      public function get §9!U§() : Array
      {
         return this.§2!S§;
      }
      
      public function set §9!U§(param1:Array) : void
      {
         this.§2!S§ = param1;
      }
      
      public function get §[!m§() : Array
      {
         return this.§`!n§;
      }
      
      public function set §[!m§(param1:Array) : void
      {
         this.§`!n§ = param1;
      }
   }
}
