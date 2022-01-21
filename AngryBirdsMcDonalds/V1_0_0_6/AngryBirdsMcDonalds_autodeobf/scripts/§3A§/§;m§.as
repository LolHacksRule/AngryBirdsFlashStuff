package §3A§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §;m§ extends EventDispatcher implements §,!L§
   {
       
      
      private var §+!N§:Object;
      
      private var §>!f§:String;
      
      private var §8!m§:Vector.<String>;
      
      private var §7Y§:Vector.<Number>;
      
      private var §3!h§:Vector.<Number>;
      
      private var §<_§:Function;
      
      private var §=g§:Function;
      
      private var §]!K§:Function;
      
      private var §38§:Array;
      
      private var §7§:Array;
      
      private var §@j§:Array;
      
      private var §if §:Number;
      
      private var §@!+§:Number;
      
      private var §?d§:Number;
      
      private var §<n§:Boolean;
      
      public function §;m§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§+!N§ = param1;
         this.§@!+§ = 0;
         this.§if § = Math.max(0.0001,param2);
         this.§?d§ = 0;
         this.§>!f§ = param3;
         this.§<n§ = false;
         this.§8!m§ = new Vector.<String>(0);
         this.§7Y§ = new Vector.<Number>(0);
         this.§3!h§ = new Vector.<Number>(0);
      }
      
      public function §@h§(param1:String, param2:Number) : void
      {
         if(this.§+!N§ == null)
         {
            return;
         }
         this.§8!m§.push(param1);
         this.§7Y§.push(Number.NaN);
         this.§3!h§.push(param2);
      }
      
      public function §<4§(param1:Number) : void
      {
         this.§@h§("scaleX",param1);
         this.§@h§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§@h§("x",param1);
         this.§@h§("y",param2);
      }
      
      public function §9T§(param1:Number) : void
      {
         this.§@h§("alpha",param1);
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
         var _loc2_:Number = this.§@!+§;
         this.§@!+§ += param1;
         if(this.§@!+§ < 0 || _loc2_ >= this.§if §)
         {
            return;
         }
         if(this.§]!^§ != null && _loc2_ <= 0 && this.§@!+§ >= 0)
         {
            this.§]!^§.apply(null,this.§38§);
         }
         var _loc3_:Number = Math.min(this.§if §,this.§@!+§) / this.§if §;
         var _loc4_:int = this.§7Y§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§7Y§[_loc5_]))
            {
               this.§7Y§[_loc5_] = this.§+!N§[this.§8!m§[_loc5_]] as Number;
            }
            _loc6_ = this.§7Y§[_loc5_];
            _loc8_ = (_loc7_ = this.§3!h§[_loc5_]) - _loc6_;
            _loc9_ = §#k§.§2C§(this.§>!f§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§<n§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§+!N§[this.§8!m§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§!o§ != null)
         {
            this.§!o§.apply(null,this.§7§);
         }
         if(_loc2_ < this.§if § && this.§@!+§ >= this.§if §)
         {
            dispatchEvent(new Event(Event.§#G§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§@j§);
            }
         }
      }
      
      public function get §[;§() : Boolean
      {
         return this.§@!+§ >= this.§if §;
      }
      
      public function get target() : Object
      {
         return this.§+!N§;
      }
      
      public function get §[L§() : String
      {
         return this.§>!f§;
      }
      
      public function get §,!1§() : Number
      {
         return this.§if §;
      }
      
      public function get §+!h§() : Number
      {
         return this.§@!+§;
      }
      
      public function get delay() : Number
      {
         return this.§?d§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§@!+§ = this.§@!+§ + this.§?d§ - param1;
         this.§?d§ = param1;
      }
      
      public function get §@=§() : Boolean
      {
         return this.§<n§;
      }
      
      public function set §@=§(param1:Boolean) : void
      {
         this.§<n§ = param1;
      }
      
      public function get §]!^§() : Function
      {
         return this.§<_§;
      }
      
      public function set §]!^§(param1:Function) : void
      {
         this.§<_§ = param1;
      }
      
      public function get §!o§() : Function
      {
         return this.§=g§;
      }
      
      public function set §!o§(param1:Function) : void
      {
         this.§=g§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§]!K§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§]!K§ = param1;
      }
      
      public function get §-!_§() : Array
      {
         return this.§38§;
      }
      
      public function set §-!_§(param1:Array) : void
      {
         this.§38§ = param1;
      }
      
      public function get §2!!§() : Array
      {
         return this.§7§;
      }
      
      public function set §2!!§(param1:Array) : void
      {
         this.§7§ = param1;
      }
      
      public function get §0U§() : Array
      {
         return this.§@j§;
      }
      
      public function set §0U§(param1:Array) : void
      {
         this.§@j§ = param1;
      }
   }
}
