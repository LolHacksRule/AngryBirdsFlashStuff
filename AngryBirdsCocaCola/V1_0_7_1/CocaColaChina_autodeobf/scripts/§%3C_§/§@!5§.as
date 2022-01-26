package §<_§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §@!5§ extends EventDispatcher implements §?!0§
   {
       
      
      private var §&>§:Object;
      
      private var §;!T§:String;
      
      private var §1O§:Vector.<String>;
      
      private var §%N§:Vector.<Number>;
      
      private var §,g§:Vector.<Number>;
      
      private var §@7§:Function;
      
      private var §>x§:Function;
      
      private var §3e§:Function;
      
      private var §#v§:Array;
      
      private var §7T§:Array;
      
      private var §9@§:Array;
      
      private var §%!0§:Number;
      
      private var final:Number;
      
      private var §++§:Number;
      
      private var §;v§:Boolean;
      
      public function §@!5§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§&>§ = param1;
         this.final = 0;
         this.§%!0§ = Math.max(0.0001,param2);
         this.§++§ = 0;
         this.§;!T§ = param3;
         this.§;v§ = false;
         this.§1O§ = new Vector.<String>(0);
         this.§%N§ = new Vector.<Number>(0);
         this.§,g§ = new Vector.<Number>(0);
      }
      
      public function §&!R§(param1:String, param2:Number) : void
      {
         if(this.§&>§ == null)
         {
            return;
         }
         this.§1O§.push(param1);
         this.§%N§.push(Number.NaN);
         this.§,g§.push(param2);
      }
      
      public function §>!>§(param1:Number) : void
      {
         this.§&!R§("scaleX",param1);
         this.§&!R§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§&!R§("x",param1);
         this.§&!R§("y",param2);
      }
      
      public function §+!5§(param1:Number) : void
      {
         this.§&!R§("alpha",param1);
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
         var _loc2_:Number = this.final;
         this.final += param1;
         if(this.final < 0 || _loc2_ >= this.§%!0§)
         {
            return;
         }
         if(this.§;A§ != null && _loc2_ <= 0 && this.final >= 0)
         {
            this.§;A§.apply(null,this.§#v§);
         }
         var _loc3_:Number = Math.min(this.§%!0§,this.final) / this.§%!0§;
         var _loc4_:int = this.§%N§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§%N§[_loc5_]))
            {
               this.§%N§[_loc5_] = this.§&>§[this.§1O§[_loc5_]] as Number;
            }
            _loc6_ = this.§%N§[_loc5_];
            _loc8_ = (_loc7_ = this.§,g§[_loc5_]) - _loc6_;
            _loc9_ = §3h§.§?Y§(this.§;!T§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§;v§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§&>§[this.§1O§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§8A§ != null)
         {
            this.§8A§.apply(null,this.§7T§);
         }
         if(_loc2_ < this.§%!0§ && this.final >= this.§%!0§)
         {
            dispatchEvent(new Event(Event.§[-§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§9@§);
            }
         }
      }
      
      public function get §]!H§() : Boolean
      {
         return this.final >= this.§%!0§;
      }
      
      public function get target() : Object
      {
         return this.§&>§;
      }
      
      public function get §^![§() : String
      {
         return this.§;!T§;
      }
      
      public function get §,d§() : Number
      {
         return this.§%!0§;
      }
      
      public function get §=K§() : Number
      {
         return this.final;
      }
      
      public function get delay() : Number
      {
         return this.§++§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.final = this.final + this.§++§ - param1;
         this.§++§ = param1;
      }
      
      public function get § J§() : Boolean
      {
         return this.§;v§;
      }
      
      public function set § J§(param1:Boolean) : void
      {
         this.§;v§ = param1;
      }
      
      public function get §;A§() : Function
      {
         return this.§@7§;
      }
      
      public function set §;A§(param1:Function) : void
      {
         this.§@7§ = param1;
      }
      
      public function get §8A§() : Function
      {
         return this.§>x§;
      }
      
      public function set §8A§(param1:Function) : void
      {
         this.§>x§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§3e§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§3e§ = param1;
      }
      
      public function get §=!1§() : Array
      {
         return this.§#v§;
      }
      
      public function set §=!1§(param1:Array) : void
      {
         this.§#v§ = param1;
      }
      
      public function get §8H§() : Array
      {
         return this.§7T§;
      }
      
      public function set §8H§(param1:Array) : void
      {
         this.§7T§ = param1;
      }
      
      public function get §!Q§() : Array
      {
         return this.§9@§;
      }
      
      public function set §!Q§(param1:Array) : void
      {
         this.§9@§ = param1;
      }
   }
}
