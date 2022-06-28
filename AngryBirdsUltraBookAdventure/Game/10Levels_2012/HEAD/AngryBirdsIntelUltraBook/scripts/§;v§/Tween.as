package §;v§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class Tween extends EventDispatcher implements §!!8§
   {
       
      
      private var §`N§:Object;
      
      private var §`f§:String;
      
      private var §#e§:Vector.<String>;
      
      private var §+!L§:Vector.<Number>;
      
      private var §4!a§:Vector.<Number>;
      
      private var §%4§:Function;
      
      private var §#0§:Function;
      
      private var §1!1§:Function;
      
      private var §3,§:Array;
      
      private var §!<§:Array;
      
      private var §+!-§:Array;
      
      private var §`!j§:Number;
      
      private var §'D§:Number;
      
      private var §=8§:Number;
      
      private var §?q§:Boolean;
      
      public function Tween(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§`N§ = param1;
         this.§'D§ = 0;
         this.§`!j§ = Math.max(0.0001,param2);
         this.§=8§ = 0;
         this.§`f§ = param3;
         this.§?q§ = false;
         this.§#e§ = new Vector.<String>(0);
         this.§+!L§ = new Vector.<Number>(0);
         this.§4!a§ = new Vector.<Number>(0);
      }
      
      public function animate(param1:String, param2:Number) : void
      {
         if(this.§`N§ == null)
         {
            return;
         }
         this.§#e§.push(param1);
         this.§+!L§.push(Number.NaN);
         this.§4!a§.push(param2);
      }
      
      public function §8k§(param1:Number) : void
      {
         this.animate("scaleX",param1);
         this.animate("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.animate("x",param1);
         this.animate("y",param2);
      }
      
      public function §&`§(param1:Number) : void
      {
         this.animate("alpha",param1);
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
         var _loc2_:Number = this.§'D§;
         this.§'D§ += param1;
         if(this.§'D§ < 0 || _loc2_ >= this.§`!j§)
         {
            return;
         }
         if(this.§`7§ != null && _loc2_ <= 0 && this.§'D§ >= 0)
         {
            this.§`7§.apply(null,this.§3,§);
         }
         var _loc3_:Number = Math.min(this.§`!j§,this.§'D§) / this.§`!j§;
         var _loc4_:int = this.§+!L§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§+!L§[_loc5_]))
            {
               this.§+!L§[_loc5_] = this.§`N§[this.§#e§[_loc5_]] as Number;
            }
            _loc6_ = this.§+!L§[_loc5_];
            _loc7_ = this.§4!a§[_loc5_];
            _loc8_ = _loc7_ - _loc6_;
            _loc9_ = Transitions.§]S§(this.§`f§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§?q§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§`N§[this.§#e§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§0>§ != null)
         {
            this.§0>§.apply(null,this.§!<§);
         }
         if(_loc2_ < this.§`!j§ && this.§'D§ >= this.§`!j§)
         {
            dispatchEvent(new Event(Event.§4P§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§+!-§);
            }
         }
      }
      
      public function get §8&§() : Boolean
      {
         return this.§'D§ >= this.§`!j§;
      }
      
      public function get target() : Object
      {
         return this.§`N§;
      }
      
      public function get §!!V§() : String
      {
         return this.§`f§;
      }
      
      public function get §2L§() : Number
      {
         return this.§`!j§;
      }
      
      public function get §#!@§() : Number
      {
         return this.§'D§;
      }
      
      public function get delay() : Number
      {
         return this.§=8§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§'D§ = this.§'D§ + this.§=8§ - param1;
         this.§=8§ = param1;
      }
      
      public function get §0n§() : Boolean
      {
         return this.§?q§;
      }
      
      public function set §0n§(param1:Boolean) : void
      {
         this.§?q§ = param1;
      }
      
      public function get §`7§() : Function
      {
         return this.§%4§;
      }
      
      public function set §`7§(param1:Function) : void
      {
         this.§%4§ = param1;
      }
      
      public function get §0>§() : Function
      {
         return this.§#0§;
      }
      
      public function set §0>§(param1:Function) : void
      {
         this.§#0§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§1!1§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§1!1§ = param1;
      }
      
      public function get §7!4§() : Array
      {
         return this.§3,§;
      }
      
      public function set §7!4§(param1:Array) : void
      {
         this.§3,§ = param1;
      }
      
      public function get §]!X§() : Array
      {
         return this.§!<§;
      }
      
      public function set §]!X§(param1:Array) : void
      {
         this.§!<§ = param1;
      }
      
      public function get §%M§() : Array
      {
         return this.§+!-§;
      }
      
      public function set §%M§(param1:Array) : void
      {
         this.§+!-§ = param1;
      }
   }
}
