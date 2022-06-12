package §%x§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §"^§ extends EventDispatcher implements §^!5§
   {
       
      
      private var §^!X§:Object;
      
      private var §@"-§:String;
      
      private var §="&§:Vector.<String>;
      
      private var §'f§:Vector.<Number>;
      
      private var §`C§:Vector.<Number>;
      
      private var §+!B§:Function;
      
      private var §!"§:Function;
      
      private var § C§:Function;
      
      private var §3!S§:Array;
      
      private var §#!4§:Array;
      
      private var §=!H§:Array;
      
      private var §5"2§:Number;
      
      private var §!e§:Number;
      
      private var §"Y§:Number;
      
      private var §2!r§:Boolean;
      
      public function §"^§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§^!X§ = param1;
         this.§!e§ = 0;
         this.§5"2§ = Math.max(0.0001,param2);
         this.§"Y§ = 0;
         this.§@"-§ = param3;
         this.§2!r§ = false;
         this.§="&§ = new Vector.<String>(0);
         this.§'f§ = new Vector.<Number>(0);
         this.§`C§ = new Vector.<Number>(0);
      }
      
      public function §8i§(param1:String, param2:Number) : void
      {
         if(this.§^!X§ == null)
         {
            return;
         }
         this.§="&§.push(param1);
         this.§'f§.push(Number.NaN);
         this.§`C§.push(param2);
      }
      
      public function §]!Z§(param1:Number) : void
      {
         this.§8i§("scaleX",param1);
         this.§8i§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§8i§("x",param1);
         this.§8i§("y",param2);
      }
      
      public function §7^§(param1:Number) : void
      {
         this.§8i§("alpha",param1);
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
         var _loc2_:Number = this.§!e§;
         this.§!e§ += param1;
         if(this.§!e§ < 0 || _loc2_ >= this.§5"2§)
         {
            return;
         }
         if(this.§-w§ != null && _loc2_ <= 0 && this.§!e§ >= 0)
         {
            this.§-w§.apply(null,this.§3!S§);
         }
         var _loc3_:Number = Math.min(this.§5"2§,this.§!e§) / this.§5"2§;
         var _loc4_:int = this.§'f§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§'f§[_loc5_]))
            {
               this.§'f§[_loc5_] = this.§^!X§[this.§="&§[_loc5_]] as Number;
            }
            _loc6_ = this.§'f§[_loc5_];
            _loc8_ = (_loc7_ = this.§`C§[_loc5_]) - _loc6_;
            _loc9_ = §6!Z§.§2!V§(this.§@"-§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§2!r§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§^!X§[this.§="&§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.onUpdate != null)
         {
            this.onUpdate.apply(null,this.§#!4§);
         }
         if(_loc2_ < this.§5"2§ && this.§!e§ >= this.§5"2§)
         {
            dispatchEvent(new Event(Event.§@!i§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§=!H§);
            }
         }
      }
      
      public function get §?" §() : Boolean
      {
         return this.§!e§ >= this.§5"2§;
      }
      
      public function get target() : Object
      {
         return this.§^!X§;
      }
      
      public function get §4P§() : String
      {
         return this.§@"-§;
      }
      
      public function get §@P§() : Number
      {
         return this.§5"2§;
      }
      
      public function get §'7§() : Number
      {
         return this.§!e§;
      }
      
      public function get delay() : Number
      {
         return this.§"Y§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§!e§ = this.§!e§ + this.§"Y§ - param1;
         this.§"Y§ = param1;
      }
      
      public function get §3!0§() : Boolean
      {
         return this.§2!r§;
      }
      
      public function set §3!0§(param1:Boolean) : void
      {
         this.§2!r§ = param1;
      }
      
      public function get §-w§() : Function
      {
         return this.§+!B§;
      }
      
      public function set §-w§(param1:Function) : void
      {
         this.§+!B§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§!"§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§!"§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§ C§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§ C§ = param1;
      }
      
      public function get §7m§() : Array
      {
         return this.§3!S§;
      }
      
      public function set §7m§(param1:Array) : void
      {
         this.§3!S§ = param1;
      }
      
      public function get §4"4§() : Array
      {
         return this.§#!4§;
      }
      
      public function set §4"4§(param1:Array) : void
      {
         this.§#!4§ = param1;
      }
      
      public function get §="'§() : Array
      {
         return this.§=!H§;
      }
      
      public function set §="'§(param1:Array) : void
      {
         this.§=!H§ = param1;
      }
   }
}
