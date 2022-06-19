package § "7§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §-" § extends EventDispatcher implements §1t§
   {
       
      
      private var §@"<§:Object;
      
      private var §&!?§:String;
      
      private var §]!$§:Vector.<String>;
      
      private var § !b§:Vector.<Number>;
      
      private var §>!$§:Vector.<Number>;
      
      private var §6k§:Function;
      
      private var §%d§:Function;
      
      private var §%s§:Function;
      
      private var §1[§:Array;
      
      private var §2" §:Array;
      
      private var §3"+§:Array;
      
      private var §%9§:Number;
      
      private var §9M§:Number;
      
      private var §]4§:Number;
      
      private var §3]§:Boolean;
      
      public function §-" §(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§@"<§ = param1;
         this.§9M§ = 0;
         this.§%9§ = Math.max(0.0001,param2);
         this.§]4§ = 0;
         this.§&!?§ = param3;
         this.§3]§ = false;
         this.§]!$§ = new Vector.<String>(0);
         this.§ !b§ = new Vector.<Number>(0);
         this.§>!$§ = new Vector.<Number>(0);
      }
      
      public function §>!J§(param1:String, param2:Number) : void
      {
         if(this.§@"<§ == null)
         {
            return;
         }
         this.§]!$§.push(param1);
         this.§ !b§.push(Number.NaN);
         this.§>!$§.push(param2);
      }
      
      public function §!x§(param1:Number) : void
      {
         this.§>!J§("scaleX",param1);
         this.§>!J§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§>!J§("x",param1);
         this.§>!J§("y",param2);
      }
      
      public function §#!!§(param1:Number) : void
      {
         this.§>!J§("alpha",param1);
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
         var _loc2_:Number = this.§9M§;
         this.§9M§ += param1;
         if(this.§9M§ < 0 || _loc2_ >= this.§%9§)
         {
            return;
         }
         if(this.§-h§ != null && _loc2_ <= 0 && this.§9M§ >= 0)
         {
            this.§-h§.apply(null,this.§1[§);
         }
         var _loc3_:Number = Math.min(this.§%9§,this.§9M§) / this.§%9§;
         var _loc4_:int = this.§ !b§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§ !b§[_loc5_]))
            {
               this.§ !b§[_loc5_] = this.§@"<§[this.§]!$§[_loc5_]] as Number;
            }
            _loc6_ = this.§ !b§[_loc5_];
            _loc8_ = (_loc7_ = this.§>!$§[_loc5_]) - _loc6_;
            _loc9_ = §<I§.§2!y§(this.§&!?§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§3]§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§@"<§[this.§]!$§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§#;§ != null)
         {
            this.§#;§.apply(null,this.§2" §);
         }
         if(_loc2_ < this.§%9§ && this.§9M§ >= this.§%9§)
         {
            dispatchEvent(new Event(Event.§4v§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§3"+§);
            }
         }
      }
      
      public function get §<T§() : Boolean
      {
         return this.§9M§ >= this.§%9§;
      }
      
      public function get target() : Object
      {
         return this.§@"<§;
      }
      
      public function get § !A§() : String
      {
         return this.§&!?§;
      }
      
      public function get §,[§() : Number
      {
         return this.§%9§;
      }
      
      public function get §>"6§() : Number
      {
         return this.§9M§;
      }
      
      public function get delay() : Number
      {
         return this.§]4§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§9M§ = this.§9M§ + this.§]4§ - param1;
         this.§]4§ = param1;
      }
      
      public function get §2!"§() : Boolean
      {
         return this.§3]§;
      }
      
      public function set §2!"§(param1:Boolean) : void
      {
         this.§3]§ = param1;
      }
      
      public function get §-h§() : Function
      {
         return this.§6k§;
      }
      
      public function set §-h§(param1:Function) : void
      {
         this.§6k§ = param1;
      }
      
      public function get §#;§() : Function
      {
         return this.§%d§;
      }
      
      public function set §#;§(param1:Function) : void
      {
         this.§%d§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§%s§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§%s§ = param1;
      }
      
      public function get §"!Q§() : Array
      {
         return this.§1[§;
      }
      
      public function set §"!Q§(param1:Array) : void
      {
         this.§1[§ = param1;
      }
      
      public function get §6!M§() : Array
      {
         return this.§2" §;
      }
      
      public function set §6!M§(param1:Array) : void
      {
         this.§2" § = param1;
      }
      
      public function get §9-§() : Array
      {
         return this.§3"+§;
      }
      
      public function set §9-§(param1:Array) : void
      {
         this.§3"+§ = param1;
      }
   }
}
