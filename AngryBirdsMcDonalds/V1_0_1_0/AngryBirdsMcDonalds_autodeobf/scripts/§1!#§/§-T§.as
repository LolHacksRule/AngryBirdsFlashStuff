package §1!#§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §-T§ extends EventDispatcher implements §&A§
   {
       
      
      private var §[e§:Object;
      
      private var §&z§:String;
      
      private var §'!k§:Vector.<String>;
      
      private var §^!9§:Vector.<Number>;
      
      private var §!!+§:Vector.<Number>;
      
      private var §'!8§:Function;
      
      private var §?K§:Function;
      
      private var §3!a§:Function;
      
      private var §,F§:Array;
      
      private var §1J§:Array;
      
      private var §&!§:Array;
      
      private var §;!1§:Number;
      
      private var §-`§:Number;
      
      private var §8!;§:Number;
      
      private var §0!;§:Boolean;
      
      public function §-T§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§[e§ = param1;
         this.§-`§ = 0;
         this.§;!1§ = Math.max(0.0001,param2);
         this.§8!;§ = 0;
         this.§&z§ = param3;
         this.§0!;§ = false;
         this.§'!k§ = new Vector.<String>(0);
         this.§^!9§ = new Vector.<Number>(0);
         this.§!!+§ = new Vector.<Number>(0);
      }
      
      public function §5!i§(param1:String, param2:Number) : void
      {
         if(this.§[e§ == null)
         {
            return;
         }
         this.§'!k§.push(param1);
         this.§^!9§.push(Number.NaN);
         this.§!!+§.push(param2);
      }
      
      public function §,>§(param1:Number) : void
      {
         this.§5!i§("scaleX",param1);
         this.§5!i§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§5!i§("x",param1);
         this.§5!i§("y",param2);
      }
      
      public function §!!-§(param1:Number) : void
      {
         this.§5!i§("alpha",param1);
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
         var _loc2_:Number = this.§-`§;
         this.§-`§ += param1;
         if(this.§-`§ < 0 || _loc2_ >= this.§;!1§)
         {
            return;
         }
         if(this.§,t§ != null && _loc2_ <= 0 && this.§-`§ >= 0)
         {
            this.§,t§.apply(null,this.§,F§);
         }
         var _loc3_:Number = Math.min(this.§;!1§,this.§-`§) / this.§;!1§;
         var _loc4_:int = this.§^!9§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§^!9§[_loc5_]))
            {
               this.§^!9§[_loc5_] = this.§[e§[this.§'!k§[_loc5_]] as Number;
            }
            _loc6_ = this.§^!9§[_loc5_];
            _loc8_ = (_loc7_ = this.§!!+§[_loc5_]) - _loc6_;
            _loc9_ = §3f§.§,@§(this.§&z§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§0!;§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§[e§[this.§'!k§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§7!L§ != null)
         {
            this.§7!L§.apply(null,this.§1J§);
         }
         if(_loc2_ < this.§;!1§ && this.§-`§ >= this.§;!1§)
         {
            dispatchEvent(new Event(Event.§9Q§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§&!§);
            }
         }
      }
      
      public function get §3!W§() : Boolean
      {
         return this.§-`§ >= this.§;!1§;
      }
      
      public function get target() : Object
      {
         return this.§[e§;
      }
      
      public function get §;!_§() : String
      {
         return this.§&z§;
      }
      
      public function get §3v§() : Number
      {
         return this.§;!1§;
      }
      
      public function get §-a§() : Number
      {
         return this.§-`§;
      }
      
      public function get delay() : Number
      {
         return this.§8!;§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§-`§ = this.§-`§ + this.§8!;§ - param1;
         this.§8!;§ = param1;
      }
      
      public function get §0!U§() : Boolean
      {
         return this.§0!;§;
      }
      
      public function set §0!U§(param1:Boolean) : void
      {
         this.§0!;§ = param1;
      }
      
      public function get §,t§() : Function
      {
         return this.§'!8§;
      }
      
      public function set §,t§(param1:Function) : void
      {
         this.§'!8§ = param1;
      }
      
      public function get §7!L§() : Function
      {
         return this.§?K§;
      }
      
      public function set §7!L§(param1:Function) : void
      {
         this.§?K§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§3!a§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§3!a§ = param1;
      }
      
      public function get §^!+§() : Array
      {
         return this.§,F§;
      }
      
      public function set §^!+§(param1:Array) : void
      {
         this.§,F§ = param1;
      }
      
      public function get §&v§() : Array
      {
         return this.§1J§;
      }
      
      public function set §&v§(param1:Array) : void
      {
         this.§1J§ = param1;
      }
      
      public function get §;g§() : Array
      {
         return this.§&!§;
      }
      
      public function set §;g§(param1:Array) : void
      {
         this.§&!§ = param1;
      }
   }
}
