package §1v§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §@4§ extends EventDispatcher implements §,!Y§
   {
       
      
      private var §%j§:Object;
      
      private var §0!S§:String;
      
      private var §&N§:Vector.<String>;
      
      private var §3!]§:Vector.<Number>;
      
      private var §`!>§:Vector.<Number>;
      
      private var §+!E§:Function;
      
      private var §[^§:Function;
      
      private var §]b§:Function;
      
      private var §8!Z§:Array;
      
      private var § O§:Array;
      
      private var §2M§:Array;
      
      private var §9p§:Number;
      
      private var §4o§:Number;
      
      private var §"!S§:Number;
      
      private var §@Q§:Boolean;
      
      public function §@4§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§%j§ = param1;
         this.§4o§ = 0;
         this.§9p§ = Math.max(0.0001,param2);
         this.§"!S§ = 0;
         this.§0!S§ = param3;
         this.§@Q§ = false;
         this.§&N§ = new Vector.<String>(0);
         this.§3!]§ = new Vector.<Number>(0);
         this.§`!>§ = new Vector.<Number>(0);
      }
      
      public function §#5§(param1:String, param2:Number) : void
      {
         if(this.§%j§ == null)
         {
            return;
         }
         this.§&N§.push(param1);
         this.§3!]§.push(Number.NaN);
         this.§`!>§.push(param2);
      }
      
      public function § n§(param1:Number) : void
      {
         this.§#5§("scaleX",param1);
         this.§#5§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§#5§("x",param1);
         this.§#5§("y",param2);
      }
      
      public function §7x§(param1:Number) : void
      {
         this.§#5§("alpha",param1);
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
         var _loc2_:Number = this.§4o§;
         this.§4o§ += param1;
         if(this.§4o§ < 0 || _loc2_ >= this.§9p§)
         {
            return;
         }
         if(this.§#7§ != null && _loc2_ <= 0 && this.§4o§ >= 0)
         {
            this.§#7§.apply(null,this.§8!Z§);
         }
         var _loc3_:Number = Math.min(this.§9p§,this.§4o§) / this.§9p§;
         var _loc4_:int = this.§3!]§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§3!]§[_loc5_]))
            {
               this.§3!]§[_loc5_] = this.§%j§[this.§&N§[_loc5_]] as Number;
            }
            _loc6_ = this.§3!]§[_loc5_];
            _loc8_ = (_loc7_ = this.§`!>§[_loc5_]) - _loc6_;
            _loc9_ = §-!c§.§5!A§(this.§0!S§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§@Q§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§%j§[this.§&N§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§4!?§ != null)
         {
            this.§4!?§.apply(null,this.§ O§);
         }
         if(_loc2_ < this.§9p§ && this.§4o§ >= this.§9p§)
         {
            dispatchEvent(new Event(Event.§]T§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§2M§);
            }
         }
      }
      
      public function get §8c§() : Boolean
      {
         return this.§4o§ >= this.§9p§;
      }
      
      public function get target() : Object
      {
         return this.§%j§;
      }
      
      public function get get() : String
      {
         return this.§0!S§;
      }
      
      public function get §[O§() : Number
      {
         return this.§9p§;
      }
      
      public function get §@a§() : Number
      {
         return this.§4o§;
      }
      
      public function get delay() : Number
      {
         return this.§"!S§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§4o§ = this.§4o§ + this.§"!S§ - param1;
         this.§"!S§ = param1;
      }
      
      public function get §[!I§() : Boolean
      {
         return this.§@Q§;
      }
      
      public function set §[!I§(param1:Boolean) : void
      {
         this.§@Q§ = param1;
      }
      
      public function get §#7§() : Function
      {
         return this.§+!E§;
      }
      
      public function set §#7§(param1:Function) : void
      {
         this.§+!E§ = param1;
      }
      
      public function get §4!?§() : Function
      {
         return this.§[^§;
      }
      
      public function set §4!?§(param1:Function) : void
      {
         this.§[^§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§]b§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§]b§ = param1;
      }
      
      public function get §<W§() : Array
      {
         return this.§8!Z§;
      }
      
      public function set §<W§(param1:Array) : void
      {
         this.§8!Z§ = param1;
      }
      
      public function get §?H§() : Array
      {
         return this.§ O§;
      }
      
      public function set §?H§(param1:Array) : void
      {
         this.§ O§ = param1;
      }
      
      public function get §-H§() : Array
      {
         return this.§2M§;
      }
      
      public function set §-H§(param1:Array) : void
      {
         this.§2M§ = param1;
      }
   }
}
