package §@@§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §=-§ extends EventDispatcher implements §6!%§
   {
       
      
      private var §0!C§:Object;
      
      private var §']§:String;
      
      private var §4!,§:Vector.<String>;
      
      private var §3Y§:Vector.<Number>;
      
      private var §6K§:Vector.<Number>;
      
      private var §-Z§:Function;
      
      private var § e§:Function;
      
      private var §#Q§:Function;
      
      private var §%!!§:Array;
      
      private var §"!A§:Array;
      
      private var §>!Z§:Array;
      
      private var §]!,§:Number;
      
      private var §+!B§:Number;
      
      private var §]p§:Number;
      
      private var §=B§:Boolean;
      
      public function §=-§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§0!C§ = param1;
         this.§+!B§ = 0;
         this.§]!,§ = Math.max(0.0001,param2);
         this.§]p§ = 0;
         this.§']§ = param3;
         this.§=B§ = false;
         this.§4!,§ = new Vector.<String>(0);
         this.§3Y§ = new Vector.<Number>(0);
         this.§6K§ = new Vector.<Number>(0);
      }
      
      public function §[B§(param1:String, param2:Number) : void
      {
         if(this.§0!C§ == null)
         {
            return;
         }
         this.§4!,§.push(param1);
         this.§3Y§.push(Number.NaN);
         this.§6K§.push(param2);
      }
      
      public function §0!@§(param1:Number) : void
      {
         this.§[B§("scaleX",param1);
         this.§[B§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§[B§("x",param1);
         this.§[B§("y",param2);
      }
      
      public function §7G§(param1:Number) : void
      {
         this.§[B§("alpha",param1);
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
         var _loc2_:Number = this.§+!B§;
         this.§+!B§ += param1;
         if(this.§+!B§ < 0 || _loc2_ >= this.§]!,§)
         {
            return;
         }
         if(this.§-C§ != null && _loc2_ <= 0 && this.§+!B§ >= 0)
         {
            this.§-C§.apply(null,this.§%!!§);
         }
         var _loc3_:Number = Math.min(this.§]!,§,this.§+!B§) / this.§]!,§;
         var _loc4_:int = this.§3Y§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§3Y§[_loc5_]))
            {
               this.§3Y§[_loc5_] = this.§0!C§[this.§4!,§[_loc5_]] as Number;
            }
            _loc6_ = this.§3Y§[_loc5_];
            _loc8_ = (_loc7_ = this.§6K§[_loc5_]) - _loc6_;
            _loc9_ = §>!§.§[!O§(this.§']§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§=B§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§0!C§[this.§4!,§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§!a§ != null)
         {
            this.§!a§.apply(null,this.§"!A§);
         }
         if(_loc2_ < this.§]!,§ && this.§+!B§ >= this.§]!,§)
         {
            dispatchEvent(new Event(Event.§?s§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§>!Z§);
            }
         }
      }
      
      public function get §@!G§() : Boolean
      {
         return this.§+!B§ >= this.§]!,§;
      }
      
      public function get target() : Object
      {
         return this.§0!C§;
      }
      
      public function get §>! §() : String
      {
         return this.§']§;
      }
      
      public function get §^!+§() : Number
      {
         return this.§]!,§;
      }
      
      public function get §3!#§() : Number
      {
         return this.§+!B§;
      }
      
      public function get delay() : Number
      {
         return this.§]p§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§+!B§ = this.§+!B§ + this.§]p§ - param1;
         this.§]p§ = param1;
      }
      
      public function get §"=§() : Boolean
      {
         return this.§=B§;
      }
      
      public function set §"=§(param1:Boolean) : void
      {
         this.§=B§ = param1;
      }
      
      public function get §-C§() : Function
      {
         return this.§-Z§;
      }
      
      public function set §-C§(param1:Function) : void
      {
         this.§-Z§ = param1;
      }
      
      public function get §!a§() : Function
      {
         return this.§ e§;
      }
      
      public function set §!a§(param1:Function) : void
      {
         this.§ e§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§#Q§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§#Q§ = param1;
      }
      
      public function get §-!W§() : Array
      {
         return this.§%!!§;
      }
      
      public function set §-!W§(param1:Array) : void
      {
         this.§%!!§ = param1;
      }
      
      public function get §'!'§() : Array
      {
         return this.§"!A§;
      }
      
      public function set §'!'§(param1:Array) : void
      {
         this.§"!A§ = param1;
      }
      
      public function get §;!W§() : Array
      {
         return this.§>!Z§;
      }
      
      public function set §;!W§(param1:Array) : void
      {
         this.§>!Z§ = param1;
      }
   }
}
