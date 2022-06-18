package § +§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §#`§ extends EventDispatcher implements §8!-§
   {
       
      
      private var §@r§:Object;
      
      private var §7>§:String;
      
      private var §]!a§:Vector.<String>;
      
      private var §5!R§:Vector.<Number>;
      
      private var §`W§:Vector.<Number>;
      
      private var §;8§:Function;
      
      private var §8!6§:Function;
      
      private var §=6§:Function;
      
      private var §"@§:Array;
      
      private var §<!R§:Array;
      
      private var §?! §:Array;
      
      private var §[g§:Number;
      
      private var §#§:Number;
      
      private var §4!%§:Number;
      
      private var §"!L§:Boolean;
      
      public function §#`§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§@r§ = param1;
         this.§#§ = 0;
         this.§[g§ = Math.max(0.0001,param2);
         this.§4!%§ = 0;
         this.§7>§ = param3;
         this.§"!L§ = false;
         this.§]!a§ = new Vector.<String>(0);
         this.§5!R§ = new Vector.<Number>(0);
         this.§`W§ = new Vector.<Number>(0);
      }
      
      public function §2!O§(param1:String, param2:Number) : void
      {
         if(this.§@r§ == null)
         {
            return;
         }
         this.§]!a§.push(param1);
         this.§5!R§.push(Number.NaN);
         this.§`W§.push(param2);
      }
      
      public function §'!G§(param1:Number) : void
      {
         this.§2!O§("scaleX",param1);
         this.§2!O§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§2!O§("x",param1);
         this.§2!O§("y",param2);
      }
      
      public function §]"§(param1:Number) : void
      {
         this.§2!O§("alpha",param1);
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
         var _loc2_:Number = this.§#§;
         this.§#§ += param1;
         if(this.§#§ < 0 || _loc2_ >= this.§[g§)
         {
            return;
         }
         if(this.§0!0§ != null && _loc2_ <= 0 && this.§#§ >= 0)
         {
            this.§0!0§.apply(null,this.§"@§);
         }
         var _loc3_:Number = Math.min(this.§[g§,this.§#§) / this.§[g§;
         var _loc4_:int = this.§5!R§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§5!R§[_loc5_]))
            {
               this.§5!R§[_loc5_] = this.§@r§[this.§]!a§[_loc5_]] as Number;
            }
            _loc6_ = this.§5!R§[_loc5_];
            _loc8_ = (_loc7_ = this.§`W§[_loc5_]) - _loc6_;
            _loc9_ = §6!T§.§[!7§(this.§7>§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§"!L§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§@r§[this.§]!a§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§4d§ != null)
         {
            this.§4d§.apply(null,this.§<!R§);
         }
         if(_loc2_ < this.§[g§ && this.§#§ >= this.§[g§)
         {
            dispatchEvent(new Event(Event.§"!B§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§?! §);
            }
         }
      }
      
      public function get § q§() : Boolean
      {
         return this.§#§ >= this.§[g§;
      }
      
      public function get target() : Object
      {
         return this.§@r§;
      }
      
      public function get §1^§() : String
      {
         return this.§7>§;
      }
      
      public function get §^E§() : Number
      {
         return this.§[g§;
      }
      
      public function get §-!^§() : Number
      {
         return this.§#§;
      }
      
      public function get delay() : Number
      {
         return this.§4!%§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§#§ = this.§#§ + this.§4!%§ - param1;
         this.§4!%§ = param1;
      }
      
      public function get §;!S§() : Boolean
      {
         return this.§"!L§;
      }
      
      public function set §;!S§(param1:Boolean) : void
      {
         this.§"!L§ = param1;
      }
      
      public function get §0!0§() : Function
      {
         return this.§;8§;
      }
      
      public function set §0!0§(param1:Function) : void
      {
         this.§;8§ = param1;
      }
      
      public function get §4d§() : Function
      {
         return this.§8!6§;
      }
      
      public function set §4d§(param1:Function) : void
      {
         this.§8!6§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§=6§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§=6§ = param1;
      }
      
      public function get §"!_§() : Array
      {
         return this.§"@§;
      }
      
      public function set §"!_§(param1:Array) : void
      {
         this.§"@§ = param1;
      }
      
      public function get § K§() : Array
      {
         return this.§<!R§;
      }
      
      public function set § K§(param1:Array) : void
      {
         this.§<!R§ = param1;
      }
      
      public function get §<t§() : Array
      {
         return this.§?! §;
      }
      
      public function set §<t§(param1:Array) : void
      {
         this.§?! § = param1;
      }
   }
}
