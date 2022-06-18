package §,!5§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §>!?§ extends EventDispatcher implements §"e§
   {
       
      
      private var override:Object;
      
      private var §1h§:String;
      
      private var §8[§:Vector.<String>;
      
      private var §2"§:Vector.<Number>;
      
      private var §<!5§:Vector.<Number>;
      
      private var §8!§:Function;
      
      private var §?@§:Function;
      
      private var §,!F§:Function;
      
      private var §8!0§:Array;
      
      private var §7'§:Array;
      
      private var §`!%§:Array;
      
      private var § O§:Number;
      
      private var §+Q§:Number;
      
      private var §'s§:Number;
      
      private var §,M§:Boolean;
      
      public function §>!?§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.override = param1;
         this.§+Q§ = 0;
         this.§ O§ = Math.max(0.0001,param2);
         this.§'s§ = 0;
         this.§1h§ = param3;
         this.§,M§ = false;
         this.§8[§ = new Vector.<String>(0);
         this.§2"§ = new Vector.<Number>(0);
         this.§<!5§ = new Vector.<Number>(0);
      }
      
      public function §1v§(param1:String, param2:Number) : void
      {
         if(this.override == null)
         {
            return;
         }
         this.§8[§.push(param1);
         this.§2"§.push(Number.NaN);
         this.§<!5§.push(param2);
      }
      
      public function §>!=§(param1:Number) : void
      {
         this.§1v§("scaleX",param1);
         this.§1v§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§1v§("x",param1);
         this.§1v§("y",param2);
      }
      
      public function §1J§(param1:Number) : void
      {
         this.§1v§("alpha",param1);
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
         var _loc2_:Number = this.§+Q§;
         this.§+Q§ += param1;
         if(this.§+Q§ < 0 || _loc2_ >= this.§ O§)
         {
            return;
         }
         if(this.§"!#§ != null && _loc2_ <= 0 && this.§+Q§ >= 0)
         {
            this.§"!#§.apply(null,this.§8!0§);
         }
         var _loc3_:Number = Math.min(this.§ O§,this.§+Q§) / this.§ O§;
         var _loc4_:int = this.§2"§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§2"§[_loc5_]))
            {
               this.§2"§[_loc5_] = this.override[this.§8[§[_loc5_]] as Number;
            }
            _loc6_ = this.§2"§[_loc5_];
            _loc8_ = (_loc7_ = this.§<!5§[_loc5_]) - _loc6_;
            _loc9_ = §]!G§.§6O§(this.§1h§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§,M§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.override[this.§8[§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§8F§ != null)
         {
            this.§8F§.apply(null,this.§7'§);
         }
         if(_loc2_ < this.§ O§ && this.§+Q§ >= this.§ O§)
         {
            dispatchEvent(new Event(Event.§%O§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§`!%§);
            }
         }
      }
      
      public function get §2Z§() : Boolean
      {
         return this.§+Q§ >= this.§ O§;
      }
      
      public function get target() : Object
      {
         return this.override;
      }
      
      public function get §4!1§() : String
      {
         return this.§1h§;
      }
      
      public function get §?r§() : Number
      {
         return this.§ O§;
      }
      
      public function get currentTime() : Number
      {
         return this.§+Q§;
      }
      
      public function get delay() : Number
      {
         return this.§'s§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§+Q§ = this.§+Q§ + this.§'s§ - param1;
         this.§'s§ = param1;
      }
      
      public function get §&!F§() : Boolean
      {
         return this.§,M§;
      }
      
      public function set §&!F§(param1:Boolean) : void
      {
         this.§,M§ = param1;
      }
      
      public function get §"!#§() : Function
      {
         return this.§8!§;
      }
      
      public function set §"!#§(param1:Function) : void
      {
         this.§8!§ = param1;
      }
      
      public function get §8F§() : Function
      {
         return this.§?@§;
      }
      
      public function set §8F§(param1:Function) : void
      {
         this.§?@§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§,!F§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§,!F§ = param1;
      }
      
      public function get §5x§() : Array
      {
         return this.§8!0§;
      }
      
      public function set §5x§(param1:Array) : void
      {
         this.§8!0§ = param1;
      }
      
      public function get §=Z§() : Array
      {
         return this.§7'§;
      }
      
      public function set §=Z§(param1:Array) : void
      {
         this.§7'§ = param1;
      }
      
      public function get §@P§() : Array
      {
         return this.§`!%§;
      }
      
      public function set §@P§(param1:Array) : void
      {
         this.§`!%§ = param1;
      }
   }
}
