package §[!+§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §3O§ extends EventDispatcher implements §"N§
   {
       
      
      private var §@N§:Object;
      
      private var §4!3§:String;
      
      private var §5t§:Vector.<String>;
      
      private var §#!>§:Vector.<Number>;
      
      private var §#!D§:Vector.<Number>;
      
      private var §%!F§:Function;
      
      private var §,!H§:Function;
      
      private var §7!%§:Function;
      
      private var §3!<§:Array;
      
      private var §`!&§:Array;
      
      private var §1e§:Array;
      
      private var §1!J§:Number;
      
      private var §?-§:Number;
      
      private var §40§:Number;
      
      private var §3,§:Boolean;
      
      public function §3O§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§@N§ = param1;
         this.§?-§ = 0;
         this.§1!J§ = Math.max(0.0001,param2);
         this.§40§ = 0;
         this.§4!3§ = param3;
         this.§3,§ = false;
         this.§5t§ = new Vector.<String>(0);
         this.§#!>§ = new Vector.<Number>(0);
         this.§#!D§ = new Vector.<Number>(0);
      }
      
      public function § !$§(param1:String, param2:Number) : void
      {
         if(this.§@N§ == null)
         {
            return;
         }
         this.§5t§.push(param1);
         this.§#!>§.push(Number.NaN);
         this.§#!D§.push(param2);
      }
      
      public function §6T§(param1:Number) : void
      {
         this.§ !$§("scaleX",param1);
         this.§ !$§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§ !$§("x",param1);
         this.§ !$§("y",param2);
      }
      
      public function §2!-§(param1:Number) : void
      {
         this.§ !$§("alpha",param1);
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
         var _loc2_:Number = this.§?-§;
         this.§?-§ += param1;
         if(this.§?-§ < 0 || _loc2_ >= this.§1!J§)
         {
            return;
         }
         if(this.§^9§ != null && _loc2_ <= 0 && this.§?-§ >= 0)
         {
            this.§^9§.apply(null,this.§3!<§);
         }
         var _loc3_:Number = Math.min(this.§1!J§,this.§?-§) / this.§1!J§;
         var _loc4_:int = this.§#!>§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§#!>§[_loc5_]))
            {
               this.§#!>§[_loc5_] = this.§@N§[this.§5t§[_loc5_]] as Number;
            }
            _loc6_ = this.§#!>§[_loc5_];
            _loc8_ = (_loc7_ = this.§#!D§[_loc5_]) - _loc6_;
            _loc9_ = §^4§.§=!F§(this.§4!3§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§3,§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§@N§[this.§5t§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§5a§ != null)
         {
            this.§5a§.apply(null,this.§`!&§);
         }
         if(_loc2_ < this.§1!J§ && this.§?-§ >= this.§1!J§)
         {
            dispatchEvent(new Event(Event.§'D§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§1e§);
            }
         }
      }
      
      public function get §^l§() : Boolean
      {
         return this.§?-§ >= this.§1!J§;
      }
      
      public function get target() : Object
      {
         return this.§@N§;
      }
      
      public function get §6!A§() : String
      {
         return this.§4!3§;
      }
      
      public function get §9t§() : Number
      {
         return this.§1!J§;
      }
      
      public function get currentTime() : Number
      {
         return this.§?-§;
      }
      
      public function get delay() : Number
      {
         return this.§40§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§?-§ = this.§?-§ + this.§40§ - param1;
         this.§40§ = param1;
      }
      
      public function get §,h§() : Boolean
      {
         return this.§3,§;
      }
      
      public function set §,h§(param1:Boolean) : void
      {
         this.§3,§ = param1;
      }
      
      public function get §^9§() : Function
      {
         return this.§%!F§;
      }
      
      public function set §^9§(param1:Function) : void
      {
         this.§%!F§ = param1;
      }
      
      public function get §5a§() : Function
      {
         return this.§,!H§;
      }
      
      public function set §5a§(param1:Function) : void
      {
         this.§,!H§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§7!%§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§7!%§ = param1;
      }
      
      public function get §#!%§() : Array
      {
         return this.§3!<§;
      }
      
      public function set §#!%§(param1:Array) : void
      {
         this.§3!<§ = param1;
      }
      
      public function get §5#§() : Array
      {
         return this.§`!&§;
      }
      
      public function set §5#§(param1:Array) : void
      {
         this.§`!&§ = param1;
      }
      
      public function get §1!H§() : Array
      {
         return this.§1e§;
      }
      
      public function set §1!H§(param1:Array) : void
      {
         this.§1e§ = param1;
      }
   }
}
