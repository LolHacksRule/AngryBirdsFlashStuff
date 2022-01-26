package §""§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §3!0§ extends EventDispatcher implements §"!A§
   {
       
      
      private var §">§:Object;
      
      private var §5O§:String;
      
      private var §3W§:Vector.<String>;
      
      private var §[5§:Vector.<Number>;
      
      private var §6J§:Vector.<Number>;
      
      private var §%G§:Function;
      
      private var §2w§:Function;
      
      private var §6;§:Function;
      
      private var §%!1§:Array;
      
      private var §"!@§:Array;
      
      private var §9O§:Array;
      
      private var §;!8§:Number;
      
      private var §8F§:Number;
      
      private var §1!<§:Number;
      
      private var §"!>§:Boolean;
      
      public function §3!0§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§">§ = param1;
         this.§8F§ = 0;
         this.§;!8§ = Math.max(0.0001,param2);
         this.§1!<§ = 0;
         this.§5O§ = param3;
         this.§"!>§ = false;
         this.§3W§ = new Vector.<String>(0);
         this.§[5§ = new Vector.<Number>(0);
         this.§6J§ = new Vector.<Number>(0);
      }
      
      public function §0"§(param1:String, param2:Number) : void
      {
         if(this.§">§ == null)
         {
            return;
         }
         this.§3W§.push(param1);
         this.§[5§.push(Number.NaN);
         this.§6J§.push(param2);
      }
      
      public function §-s§(param1:Number) : void
      {
         this.§0"§("scaleX",param1);
         this.§0"§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§0"§("x",param1);
         this.§0"§("y",param2);
      }
      
      public function §[!!§(param1:Number) : void
      {
         this.§0"§("alpha",param1);
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
         var _loc2_:Number = this.§8F§;
         this.§8F§ += param1;
         if(this.§8F§ < 0 || _loc2_ >= this.§;!8§)
         {
            return;
         }
         if(this.§ E§ != null && _loc2_ <= 0 && this.§8F§ >= 0)
         {
            this.§ E§.apply(null,this.§%!1§);
         }
         var _loc3_:Number = Math.min(this.§;!8§,this.§8F§) / this.§;!8§;
         var _loc4_:int = this.§[5§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§[5§[_loc5_]))
            {
               this.§[5§[_loc5_] = this.§">§[this.§3W§[_loc5_]] as Number;
            }
            _loc6_ = this.§[5§[_loc5_];
            _loc8_ = (_loc7_ = this.§6J§[_loc5_]) - _loc6_;
            _loc9_ = §4w§.§=b§(this.§5O§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§"!>§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§">§[this.§3W§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§ O§ != null)
         {
            this.§ O§.apply(null,this.§"!@§);
         }
         if(_loc2_ < this.§;!8§ && this.§8F§ >= this.§;!8§)
         {
            dispatchEvent(new Event(Event.§=O§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§9O§);
            }
         }
      }
      
      public function get §`R§() : Boolean
      {
         return this.§8F§ >= this.§;!8§;
      }
      
      public function get target() : Object
      {
         return this.§">§;
      }
      
      public function get §,H§() : String
      {
         return this.§5O§;
      }
      
      public function get §?l§() : Number
      {
         return this.§;!8§;
      }
      
      public function get currentTime() : Number
      {
         return this.§8F§;
      }
      
      public function get delay() : Number
      {
         return this.§1!<§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§8F§ = this.§8F§ + this.§1!<§ - param1;
         this.§1!<§ = param1;
      }
      
      public function get §6c§() : Boolean
      {
         return this.§"!>§;
      }
      
      public function set §6c§(param1:Boolean) : void
      {
         this.§"!>§ = param1;
      }
      
      public function get § E§() : Function
      {
         return this.§%G§;
      }
      
      public function set § E§(param1:Function) : void
      {
         this.§%G§ = param1;
      }
      
      public function get § O§() : Function
      {
         return this.§2w§;
      }
      
      public function set § O§(param1:Function) : void
      {
         this.§2w§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§6;§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§6;§ = param1;
      }
      
      public function get §use §() : Array
      {
         return this.§%!1§;
      }
      
      public function set §use §(param1:Array) : void
      {
         this.§%!1§ = param1;
      }
      
      public function get §??§() : Array
      {
         return this.§"!@§;
      }
      
      public function set §??§(param1:Array) : void
      {
         this.§"!@§ = param1;
      }
      
      public function get §-F§() : Array
      {
         return this.§9O§;
      }
      
      public function set §-F§(param1:Array) : void
      {
         this.§9O§ = param1;
      }
   }
}
