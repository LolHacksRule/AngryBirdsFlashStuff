package § F§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §^!'§ extends EventDispatcher implements §9U§
   {
       
      
      private var §3!2§:Object;
      
      private var §-!D§:String;
      
      private var §!i§:Vector.<String>;
      
      private var §3!=§:Vector.<Number>;
      
      private var §^m§:Vector.<Number>;
      
      private var §`M§:Function;
      
      private var §]5§:Function;
      
      private var §@F§:Function;
      
      private var §8l§:Array;
      
      private var §'E§:Array;
      
      private var §8!0§:Array;
      
      private var §58§:Number;
      
      private var §?4§:Number;
      
      private var §<!C§:Number;
      
      private var §,p§:Boolean;
      
      public function §^!'§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§3!2§ = param1;
         this.§?4§ = 0;
         this.§58§ = Math.max(0.0001,param2);
         this.§<!C§ = 0;
         this.§-!D§ = param3;
         this.§,p§ = false;
         this.§!i§ = new Vector.<String>(0);
         this.§3!=§ = new Vector.<Number>(0);
         this.§^m§ = new Vector.<Number>(0);
      }
      
      public function §]A§(param1:String, param2:Number) : void
      {
         if(this.§3!2§ == null)
         {
            return;
         }
         this.§!i§.push(param1);
         this.§3!=§.push(Number.NaN);
         this.§^m§.push(param2);
      }
      
      public function §6L§(param1:Number) : void
      {
         this.§]A§("scaleX",param1);
         this.§]A§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§]A§("x",param1);
         this.§]A§("y",param2);
      }
      
      public function §8H§(param1:Number) : void
      {
         this.§]A§("alpha",param1);
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
         var _loc2_:Number = this.§?4§;
         this.§?4§ += param1;
         if(this.§?4§ < 0 || _loc2_ >= this.§58§)
         {
            return;
         }
         if(this.§!E§ != null && _loc2_ <= 0 && this.§?4§ >= 0)
         {
            this.§!E§.apply(null,this.§8l§);
         }
         var _loc3_:Number = Math.min(this.§58§,this.§?4§) / this.§58§;
         var _loc4_:int = this.§3!=§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§3!=§[_loc5_]))
            {
               this.§3!=§[_loc5_] = this.§3!2§[this.§!i§[_loc5_]] as Number;
            }
            _loc6_ = this.§3!=§[_loc5_];
            _loc8_ = (_loc7_ = this.§^m§[_loc5_]) - _loc6_;
            _loc9_ = §<!>§.§'S§(this.§-!D§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§,p§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§3!2§[this.§!i§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§,K§ != null)
         {
            this.§,K§.apply(null,this.§'E§);
         }
         if(_loc2_ < this.§58§ && this.§?4§ >= this.§58§)
         {
            dispatchEvent(new Event(Event.§<!D§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§8!0§);
            }
         }
      }
      
      public function get §7L§() : Boolean
      {
         return this.§?4§ >= this.§58§;
      }
      
      public function get target() : Object
      {
         return this.§3!2§;
      }
      
      public function get § P§() : String
      {
         return this.§-!D§;
      }
      
      public function get §6<§() : Number
      {
         return this.§58§;
      }
      
      public function get currentTime() : Number
      {
         return this.§?4§;
      }
      
      public function get delay() : Number
      {
         return this.§<!C§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§?4§ = this.§?4§ + this.§<!C§ - param1;
         this.§<!C§ = param1;
      }
      
      public function get §^N§() : Boolean
      {
         return this.§,p§;
      }
      
      public function set §^N§(param1:Boolean) : void
      {
         this.§,p§ = param1;
      }
      
      public function get §!E§() : Function
      {
         return this.§`M§;
      }
      
      public function set §!E§(param1:Function) : void
      {
         this.§`M§ = param1;
      }
      
      public function get §,K§() : Function
      {
         return this.§]5§;
      }
      
      public function set §,K§(param1:Function) : void
      {
         this.§]5§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§@F§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§@F§ = param1;
      }
      
      public function get § Z§() : Array
      {
         return this.§8l§;
      }
      
      public function set § Z§(param1:Array) : void
      {
         this.§8l§ = param1;
      }
      
      public function get §7`§() : Array
      {
         return this.§'E§;
      }
      
      public function set §7`§(param1:Array) : void
      {
         this.§'E§ = param1;
      }
      
      public function get §1h§() : Array
      {
         return this.§8!0§;
      }
      
      public function set §1h§(param1:Array) : void
      {
         this.§8!0§ = param1;
      }
   }
}
