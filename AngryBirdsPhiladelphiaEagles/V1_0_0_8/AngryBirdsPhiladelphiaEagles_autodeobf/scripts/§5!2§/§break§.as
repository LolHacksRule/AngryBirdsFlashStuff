package §5!2§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §break§ extends EventDispatcher implements §5>§
   {
       
      
      private var §3j§:Object;
      
      private var §2n§:String;
      
      private var §3!4§:Vector.<String>;
      
      private var §!V§:Vector.<Number>;
      
      private var §&!E§:Vector.<Number>;
      
      private var §#e§:Function;
      
      private var §3!$§:Function;
      
      private var §&!L§:Function;
      
      private var §^l§:Array;
      
      private var §'c§:Array;
      
      private var §2!7§:Array;
      
      private var §4!C§:Number;
      
      private var §5]§:Number;
      
      private var §=!#§:Number;
      
      private var §5x§:Boolean;
      
      public function §break§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§3j§ = param1;
         this.§5]§ = 0;
         this.§4!C§ = Math.max(0.0001,param2);
         this.§=!#§ = 0;
         this.§2n§ = param3;
         this.§5x§ = false;
         this.§3!4§ = new Vector.<String>(0);
         this.§!V§ = new Vector.<Number>(0);
         this.§&!E§ = new Vector.<Number>(0);
      }
      
      public function §&!+§(param1:String, param2:Number) : void
      {
         if(this.§3j§ == null)
         {
            return;
         }
         this.§3!4§.push(param1);
         this.§!V§.push(Number.NaN);
         this.§&!E§.push(param2);
      }
      
      public function §4!L§(param1:Number) : void
      {
         this.§&!+§("scaleX",param1);
         this.§&!+§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§&!+§("x",param1);
         this.§&!+§("y",param2);
      }
      
      public function §>!;§(param1:Number) : void
      {
         this.§&!+§("alpha",param1);
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
         var _loc2_:Number = this.§5]§;
         this.§5]§ += param1;
         if(this.§5]§ < 0 || _loc2_ >= this.§4!C§)
         {
            return;
         }
         if(this.§&!1§ != null && _loc2_ <= 0 && this.§5]§ >= 0)
         {
            this.§&!1§.apply(null,this.§^l§);
         }
         var _loc3_:Number = Math.min(this.§4!C§,this.§5]§) / this.§4!C§;
         var _loc4_:int = this.§!V§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§!V§[_loc5_]))
            {
               this.§!V§[_loc5_] = this.§3j§[this.§3!4§[_loc5_]] as Number;
            }
            _loc6_ = this.§!V§[_loc5_];
            _loc8_ = (_loc7_ = this.§&!E§[_loc5_]) - _loc6_;
            _loc9_ = §0!C§.§3!8§(this.§2n§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§5x§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§3j§[this.§3!4§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§;B§ != null)
         {
            this.§;B§.apply(null,this.§'c§);
         }
         if(_loc2_ < this.§4!C§ && this.§5]§ >= this.§4!C§)
         {
            dispatchEvent(new Event(Event.§>r§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§2!7§);
            }
         }
      }
      
      public function get §=>§() : Boolean
      {
         return this.§5]§ >= this.§4!C§;
      }
      
      public function get target() : Object
      {
         return this.§3j§;
      }
      
      public function get §-g§() : String
      {
         return this.§2n§;
      }
      
      public function get §1!H§() : Number
      {
         return this.§4!C§;
      }
      
      public function get §5V§() : Number
      {
         return this.§5]§;
      }
      
      public function get delay() : Number
      {
         return this.§=!#§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§5]§ = this.§5]§ + this.§=!#§ - param1;
         this.§=!#§ = param1;
      }
      
      public function get §2o§() : Boolean
      {
         return this.§5x§;
      }
      
      public function set §2o§(param1:Boolean) : void
      {
         this.§5x§ = param1;
      }
      
      public function get §&!1§() : Function
      {
         return this.§#e§;
      }
      
      public function set §&!1§(param1:Function) : void
      {
         this.§#e§ = param1;
      }
      
      public function get §;B§() : Function
      {
         return this.§3!$§;
      }
      
      public function set §;B§(param1:Function) : void
      {
         this.§3!$§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§&!L§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§&!L§ = param1;
      }
      
      public function get § M§() : Array
      {
         return this.§^l§;
      }
      
      public function set § M§(param1:Array) : void
      {
         this.§^l§ = param1;
      }
      
      public function get §>!2§() : Array
      {
         return this.§'c§;
      }
      
      public function set §>!2§(param1:Array) : void
      {
         this.§'c§ = param1;
      }
      
      public function get §;=§() : Array
      {
         return this.§2!7§;
      }
      
      public function set §;=§(param1:Array) : void
      {
         this.§2!7§ = param1;
      }
   }
}
