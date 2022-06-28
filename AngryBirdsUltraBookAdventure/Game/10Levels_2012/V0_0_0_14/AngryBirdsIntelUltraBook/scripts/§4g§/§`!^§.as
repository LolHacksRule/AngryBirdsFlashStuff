package §4g§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §`!^§ extends EventDispatcher implements §@7§
   {
       
      
      private var §,t§:Object;
      
      private var §#;§:String;
      
      private var §!!`§:Vector.<String>;
      
      private var §>!'§:Vector.<Number>;
      
      private var § !!§:Vector.<Number>;
      
      private var §7^§:Function;
      
      private var §3!o§:Function;
      
      private var §9!0§:Function;
      
      private var §4G§:Array;
      
      private var §@Z§:Array;
      
      private var §4X§:Array;
      
      private var §]Z§:Number;
      
      private var §#!n§:Number;
      
      private var §%U§:Number;
      
      private var §9G§:Boolean;
      
      public function §`!^§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§,t§ = param1;
         this.§#!n§ = 0;
         this.§]Z§ = Math.max(0.0001,param2);
         this.§%U§ = 0;
         this.§#;§ = param3;
         this.§9G§ = false;
         this.§!!`§ = new Vector.<String>(0);
         this.§>!'§ = new Vector.<Number>(0);
         this.§ !!§ = new Vector.<Number>(0);
      }
      
      public function § try§(param1:String, param2:Number) : void
      {
         if(this.§,t§ == null)
         {
            return;
         }
         this.§!!`§.push(param1);
         this.§>!'§.push(Number.NaN);
         this.§ !!§.push(param2);
      }
      
      public function §`!D§(param1:Number) : void
      {
         this.§ try§("scaleX",param1);
         this.§ try§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§ try§("x",param1);
         this.§ try§("y",param2);
      }
      
      public function §'!P§(param1:Number) : void
      {
         this.§ try§("alpha",param1);
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
         var _loc2_:Number = this.§#!n§;
         this.§#!n§ += param1;
         if(this.§#!n§ < 0 || _loc2_ >= this.§]Z§)
         {
            return;
         }
         if(this.§?9§ != null && _loc2_ <= 0 && this.§#!n§ >= 0)
         {
            this.§?9§.apply(null,this.§4G§);
         }
         var _loc3_:Number = Math.min(this.§]Z§,this.§#!n§) / this.§]Z§;
         var _loc4_:int = this.§>!'§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§>!'§[_loc5_]))
            {
               this.§>!'§[_loc5_] = this.§,t§[this.§!!`§[_loc5_]] as Number;
            }
            _loc6_ = this.§>!'§[_loc5_];
            _loc8_ = (_loc7_ = this.§ !!§[_loc5_]) - _loc6_;
            _loc9_ = §0Y§.§[!l§(this.§#;§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§9G§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§,t§[this.§!!`§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§<!h§ != null)
         {
            this.§<!h§.apply(null,this.§@Z§);
         }
         if(_loc2_ < this.§]Z§ && this.§#!n§ >= this.§]Z§)
         {
            dispatchEvent(new Event(Event.§"!_§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§4X§);
            }
         }
      }
      
      public function get §^!_§() : Boolean
      {
         return this.§#!n§ >= this.§]Z§;
      }
      
      public function get target() : Object
      {
         return this.§,t§;
      }
      
      public function get §+!;§() : String
      {
         return this.§#;§;
      }
      
      public function get §9!t§() : Number
      {
         return this.§]Z§;
      }
      
      public function get §&a§() : Number
      {
         return this.§#!n§;
      }
      
      public function get delay() : Number
      {
         return this.§%U§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§#!n§ = this.§#!n§ + this.§%U§ - param1;
         this.§%U§ = param1;
      }
      
      public function get §?P§() : Boolean
      {
         return this.§9G§;
      }
      
      public function set §?P§(param1:Boolean) : void
      {
         this.§9G§ = param1;
      }
      
      public function get §?9§() : Function
      {
         return this.§7^§;
      }
      
      public function set §?9§(param1:Function) : void
      {
         this.§7^§ = param1;
      }
      
      public function get §<!h§() : Function
      {
         return this.§3!o§;
      }
      
      public function set §<!h§(param1:Function) : void
      {
         this.§3!o§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§9!0§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§9!0§ = param1;
      }
      
      public function get §"x§() : Array
      {
         return this.§4G§;
      }
      
      public function set §"x§(param1:Array) : void
      {
         this.§4G§ = param1;
      }
      
      public function get §=!M§() : Array
      {
         return this.§@Z§;
      }
      
      public function set §=!M§(param1:Array) : void
      {
         this.§@Z§ = param1;
      }
      
      public function get §@R§() : Array
      {
         return this.§4X§;
      }
      
      public function set §@R§(param1:Array) : void
      {
         this.§4X§ = param1;
      }
   }
}
