package §!`§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §>!§ extends EventDispatcher implements §%9§
   {
       
      
      private var §8S§:Object;
      
      private var §3!H§:String;
      
      private var §2!'§:Vector.<String>;
      
      private var §5v§:Vector.<Number>;
      
      private var §5V§:Vector.<Number>;
      
      private var §-3§:Function;
      
      private var §!d§:Function;
      
      private var §1A§:Function;
      
      private var §"!&§:Array;
      
      private var §3!L§:Array;
      
      private var §#!7§:Array;
      
      private var §5P§:Number;
      
      private var §`c§:Number;
      
      private var §'!D§:Number;
      
      private var §<X§:Boolean;
      
      public function §>!§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§8S§ = param1;
         this.§`c§ = 0;
         this.§5P§ = Math.max(0.0001,param2);
         this.§'!D§ = 0;
         this.§3!H§ = param3;
         this.§<X§ = false;
         this.§2!'§ = new Vector.<String>(0);
         this.§5v§ = new Vector.<Number>(0);
         this.§5V§ = new Vector.<Number>(0);
      }
      
      public function §77§(param1:String, param2:Number) : void
      {
         if(this.§8S§ == null)
         {
            return;
         }
         this.§2!'§.push(param1);
         this.§5v§.push(Number.NaN);
         this.§5V§.push(param2);
      }
      
      public function §9F§(param1:Number) : void
      {
         this.§77§("scaleX",param1);
         this.§77§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§77§("x",param1);
         this.§77§("y",param2);
      }
      
      public function § !M§(param1:Number) : void
      {
         this.§77§("alpha",param1);
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
         var _loc2_:Number = this.§`c§;
         this.§`c§ += param1;
         if(this.§`c§ < 0 || _loc2_ >= this.§5P§)
         {
            return;
         }
         if(this.§"!7§ != null && _loc2_ <= 0 && this.§`c§ >= 0)
         {
            this.§"!7§.apply(null,this.§"!&§);
         }
         var _loc3_:Number = Math.min(this.§5P§,this.§`c§) / this.§5P§;
         var _loc4_:int = this.§5v§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§5v§[_loc5_]))
            {
               this.§5v§[_loc5_] = this.§8S§[this.§2!'§[_loc5_]] as Number;
            }
            _loc6_ = this.§5v§[_loc5_];
            _loc8_ = (_loc7_ = this.§5V§[_loc5_]) - _loc6_;
            _loc9_ = §&!@§.§^n§(this.§3!H§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§<X§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§8S§[this.§2!'§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§-!M§ != null)
         {
            this.§-!M§.apply(null,this.§3!L§);
         }
         if(_loc2_ < this.§5P§ && this.§`c§ >= this.§5P§)
         {
            dispatchEvent(new Event(Event.§,m§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§#!7§);
            }
         }
      }
      
      public function get §,y§() : Boolean
      {
         return this.§`c§ >= this.§5P§;
      }
      
      public function get target() : Object
      {
         return this.§8S§;
      }
      
      public function get § Y§() : String
      {
         return this.§3!H§;
      }
      
      public function get §[@§() : Number
      {
         return this.§5P§;
      }
      
      public function get §=d§() : Number
      {
         return this.§`c§;
      }
      
      public function get delay() : Number
      {
         return this.§'!D§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§`c§ = this.§`c§ + this.§'!D§ - param1;
         this.§'!D§ = param1;
      }
      
      public function get §[Y§() : Boolean
      {
         return this.§<X§;
      }
      
      public function set §[Y§(param1:Boolean) : void
      {
         this.§<X§ = param1;
      }
      
      public function get §"!7§() : Function
      {
         return this.§-3§;
      }
      
      public function set §"!7§(param1:Function) : void
      {
         this.§-3§ = param1;
      }
      
      public function get §-!M§() : Function
      {
         return this.§!d§;
      }
      
      public function set §-!M§(param1:Function) : void
      {
         this.§!d§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§1A§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§1A§ = param1;
      }
      
      public function get §;-§() : Array
      {
         return this.§"!&§;
      }
      
      public function set §;-§(param1:Array) : void
      {
         this.§"!&§ = param1;
      }
      
      public function get §?T§() : Array
      {
         return this.§3!L§;
      }
      
      public function set §?T§(param1:Array) : void
      {
         this.§3!L§ = param1;
      }
      
      public function get §%!C§() : Array
      {
         return this.§#!7§;
      }
      
      public function set §%!C§(param1:Array) : void
      {
         this.§#!7§ = param1;
      }
   }
}
