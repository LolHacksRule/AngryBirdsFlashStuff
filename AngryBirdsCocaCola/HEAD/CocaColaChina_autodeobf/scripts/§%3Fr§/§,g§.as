package §?r§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §,g§ extends EventDispatcher implements §`C§
   {
       
      
      private var §@7§:Object;
      
      private var §>x§:String;
      
      private var §3e§:Vector.<String>;
      
      private var §#v§:Vector.<Number>;
      
      private var §7T§:Vector.<Number>;
      
      private var §9@§:Function;
      
      private var §;v§:Function;
      
      private var §&!R§:Function;
      
      private var §>!>§:Array;
      
      private var §+!5§:Array;
      
      private var §^![§:Array;
      
      private var §,d§:Number;
      
      private var §]!H§:Number;
      
      private var §++§:Number;
      
      private var § J§:Boolean;
      
      public function §,g§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§@7§ = param1;
         this.§]!H§ = 0;
         this.§,d§ = Math.max(0.0001,param2);
         this.§++§ = 0;
         this.§>x§ = param3;
         this.§ J§ = false;
         this.§3e§ = new Vector.<String>(0);
         this.§#v§ = new Vector.<Number>(0);
         this.§7T§ = new Vector.<Number>(0);
      }
      
      public function §;A§(param1:String, param2:Number) : void
      {
         if(this.§@7§ == null)
         {
            return;
         }
         this.§3e§.push(param1);
         this.§#v§.push(Number.NaN);
         this.§7T§.push(param2);
      }
      
      public function §=!1§(param1:Number) : void
      {
         this.§;A§("scaleX",param1);
         this.§;A§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§;A§("x",param1);
         this.§;A§("y",param2);
      }
      
      public function §8H§(param1:Number) : void
      {
         this.§;A§("alpha",param1);
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
         var _loc2_:Number = this.§]!H§;
         this.§]!H§ += param1;
         if(this.§]!H§ < 0 || _loc2_ >= this.§,d§)
         {
            return;
         }
         if(this.§=§ != null && _loc2_ <= 0 && this.§]!H§ >= 0)
         {
            this.§=§.apply(null,this.§>!>§);
         }
         var _loc3_:Number = Math.min(this.§,d§,this.§]!H§) / this.§,d§;
         var _loc4_:int = this.§#v§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§#v§[_loc5_]))
            {
               this.§#v§[_loc5_] = this.§@7§[this.§3e§[_loc5_]] as Number;
            }
            _loc6_ = this.§#v§[_loc5_];
            _loc8_ = (_loc7_ = this.§7T§[_loc5_]) - _loc6_;
            _loc9_ = §^n§.§+!,§(this.§>x§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§ J§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§@7§[this.§3e§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§8A§ != null)
         {
            this.§8A§.apply(null,this.§+!5§);
         }
         if(_loc2_ < this.§,d§ && this.§]!H§ >= this.§,d§)
         {
            dispatchEvent(new Event(Event.§6=§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§^![§);
            }
         }
      }
      
      public function get §&>§() : Boolean
      {
         return this.§]!H§ >= this.§,d§;
      }
      
      public function get target() : Object
      {
         return this.§@7§;
      }
      
      public function get §!Q§() : String
      {
         return this.§>x§;
      }
      
      public function get §;!T§() : Number
      {
         return this.§,d§;
      }
      
      public function get §1O§() : Number
      {
         return this.§]!H§;
      }
      
      public function get delay() : Number
      {
         return this.§++§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§]!H§ = this.§]!H§ + this.§++§ - param1;
         this.§++§ = param1;
      }
      
      public function get §3h§() : Boolean
      {
         return this.§ J§;
      }
      
      public function set §3h§(param1:Boolean) : void
      {
         this.§ J§ = param1;
      }
      
      public function get §=§() : Function
      {
         return this.§9@§;
      }
      
      public function set §=§(param1:Function) : void
      {
         this.§9@§ = param1;
      }
      
      public function get §8A§() : Function
      {
         return this.§;v§;
      }
      
      public function set §8A§(param1:Function) : void
      {
         this.§;v§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§&!R§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§&!R§ = param1;
      }
      
      public function get §4!_§() : Array
      {
         return this.§>!>§;
      }
      
      public function set §4!_§(param1:Array) : void
      {
         this.§>!>§ = param1;
      }
      
      public function get §9!<§() : Array
      {
         return this.§+!5§;
      }
      
      public function set §9!<§(param1:Array) : void
      {
         this.§+!5§ = param1;
      }
      
      public function get §?P§() : Array
      {
         return this.§^![§;
      }
      
      public function set §?P§(param1:Array) : void
      {
         this.§^![§ = param1;
      }
   }
}
