package §1"§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §^-§ extends EventDispatcher implements §&+§
   {
       
      
      private var §9#§:Object;
      
      private var § ! §:String;
      
      private var §2O§:Vector.<String>;
      
      private var §`>§:Vector.<Number>;
      
      private var §;h§:Vector.<Number>;
      
      private var §>!F§:Function;
      
      private var §;!R§:Function;
      
      private var §%!g§:Function;
      
      private var §1!G§:Array;
      
      private var §'!N§:Array;
      
      private var §;x§:Array;
      
      private var §<!E§:Number;
      
      private var §+C§:Number;
      
      private var §4!$§:Number;
      
      private var §6!d§:Boolean;
      
      public function §^-§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§9#§ = param1;
         this.§+C§ = 0;
         this.§<!E§ = Math.max(0.0001,param2);
         this.§4!$§ = 0;
         this.§ ! § = param3;
         this.§6!d§ = false;
         this.§2O§ = new Vector.<String>(0);
         this.§`>§ = new Vector.<Number>(0);
         this.§;h§ = new Vector.<Number>(0);
      }
      
      public function § !x§(param1:String, param2:Number) : void
      {
         if(this.§9#§ == null)
         {
            return;
         }
         this.§2O§.push(param1);
         this.§`>§.push(Number.NaN);
         this.§;h§.push(param2);
      }
      
      public function §#q§(param1:Number) : void
      {
         this.§ !x§("scaleX",param1);
         this.§ !x§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§ !x§("x",param1);
         this.§ !x§("y",param2);
      }
      
      public function §^"§(param1:Number) : void
      {
         this.§ !x§("alpha",param1);
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
         var _loc2_:Number = this.§+C§;
         this.§+C§ += param1;
         if(this.§+C§ < 0 || _loc2_ >= this.§<!E§)
         {
            return;
         }
         if(this.§?1§ != null && _loc2_ <= 0 && this.§+C§ >= 0)
         {
            this.§?1§.apply(null,this.§1!G§);
         }
         var _loc3_:Number = Math.min(this.§<!E§,this.§+C§) / this.§<!E§;
         var _loc4_:int = this.§`>§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§`>§[_loc5_]))
            {
               this.§`>§[_loc5_] = this.§9#§[this.§2O§[_loc5_]] as Number;
            }
            _loc6_ = this.§`>§[_loc5_];
            _loc8_ = (_loc7_ = this.§;h§[_loc5_]) - _loc6_;
            _loc9_ = §<! §.§&r§(this.§ ! §);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§6!d§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§9#§[this.§2O§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.onUpdate != null)
         {
            this.onUpdate.apply(null,this.§'!N§);
         }
         if(_loc2_ < this.§<!E§ && this.§+C§ >= this.§<!E§)
         {
            dispatchEvent(new Event(Event.§5F§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§;x§);
            }
         }
      }
      
      public function get §0v§() : Boolean
      {
         return this.§+C§ >= this.§<!E§;
      }
      
      public function get target() : Object
      {
         return this.§9#§;
      }
      
      public function get §!7§() : String
      {
         return this.§ ! §;
      }
      
      public function get §#"§() : Number
      {
         return this.§<!E§;
      }
      
      public function get §2!p§() : Number
      {
         return this.§+C§;
      }
      
      public function get delay() : Number
      {
         return this.§4!$§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§+C§ = this.§+C§ + this.§4!$§ - param1;
         this.§4!$§ = param1;
      }
      
      public function get §>7§() : Boolean
      {
         return this.§6!d§;
      }
      
      public function set §>7§(param1:Boolean) : void
      {
         this.§6!d§ = param1;
      }
      
      public function get §?1§() : Function
      {
         return this.§>!F§;
      }
      
      public function set §?1§(param1:Function) : void
      {
         this.§>!F§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§;!R§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§;!R§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§%!g§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§%!g§ = param1;
      }
      
      public function get §6!;§() : Array
      {
         return this.§1!G§;
      }
      
      public function set §6!;§(param1:Array) : void
      {
         this.§1!G§ = param1;
      }
      
      public function get §;M§() : Array
      {
         return this.§'!N§;
      }
      
      public function set §;M§(param1:Array) : void
      {
         this.§'!N§ = param1;
      }
      
      public function get §@!H§() : Array
      {
         return this.§;x§;
      }
      
      public function set §@!H§(param1:Array) : void
      {
         this.§;x§ = param1;
      }
   }
}
