package §85§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §5S§ extends EventDispatcher implements §?!%§
   {
       
      
      private var §+F§:Object;
      
      private var §&!3§:String;
      
      private var §>!m§:Vector.<String>;
      
      private var §?N§:Vector.<Number>;
      
      private var §!!=§:Vector.<Number>;
      
      private var §07§:Function;
      
      private var §extends§:Function;
      
      private var §10§:Function;
      
      private var §3!1§:Array;
      
      private var §9u§:Array;
      
      private var §;!_§:Array;
      
      private var §[!q§:Number;
      
      private var §0Q§:Number;
      
      private var §+!e§:Number;
      
      private var §9!>§:Boolean;
      
      public function §5S§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§+F§ = param1;
         this.§0Q§ = 0;
         this.§[!q§ = Math.max(0.0001,param2);
         this.§+!e§ = 0;
         this.§&!3§ = param3;
         this.§9!>§ = false;
         this.§>!m§ = new Vector.<String>(0);
         this.§?N§ = new Vector.<Number>(0);
         this.§!!=§ = new Vector.<Number>(0);
      }
      
      public function §?!v§(param1:String, param2:Number) : void
      {
         if(this.§+F§ == null)
         {
            return;
         }
         this.§>!m§.push(param1);
         this.§?N§.push(Number.NaN);
         this.§!!=§.push(param2);
      }
      
      public function §+!S§(param1:Number) : void
      {
         this.§?!v§("scaleX",param1);
         this.§?!v§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§?!v§("x",param1);
         this.§?!v§("y",param2);
      }
      
      public function §<'§(param1:Number) : void
      {
         this.§?!v§("alpha",param1);
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
         var _loc2_:Number = this.§0Q§;
         this.§0Q§ += param1;
         if(this.§0Q§ < 0 || _loc2_ >= this.§[!q§)
         {
            return;
         }
         if(this.§&!@§ != null && _loc2_ <= 0 && this.§0Q§ >= 0)
         {
            this.§&!@§.apply(null,this.§3!1§);
         }
         var _loc3_:Number = Math.min(this.§[!q§,this.§0Q§) / this.§[!q§;
         var _loc4_:int = this.§?N§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§?N§[_loc5_]))
            {
               this.§?N§[_loc5_] = this.§+F§[this.§>!m§[_loc5_]] as Number;
            }
            _loc6_ = this.§?N§[_loc5_];
            _loc8_ = (_loc7_ = this.§!!=§[_loc5_]) - _loc6_;
            _loc9_ = §#!w§.§=D§(this.§&!3§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§9!>§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§+F§[this.§>!m§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§7R§ != null)
         {
            this.§7R§.apply(null,this.§9u§);
         }
         if(_loc2_ < this.§[!q§ && this.§0Q§ >= this.§[!q§)
         {
            dispatchEvent(new Event(Event.§%!W§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§;!_§);
            }
         }
      }
      
      public function get §&W§() : Boolean
      {
         return this.§0Q§ >= this.§[!q§;
      }
      
      public function get target() : Object
      {
         return this.§+F§;
      }
      
      public function get §%"$§() : String
      {
         return this.§&!3§;
      }
      
      public function get §6k§() : Number
      {
         return this.§[!q§;
      }
      
      public function get §[!v§() : Number
      {
         return this.§0Q§;
      }
      
      public function get delay() : Number
      {
         return this.§+!e§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§0Q§ = this.§0Q§ + this.§+!e§ - param1;
         this.§+!e§ = param1;
      }
      
      public function get §?!,§() : Boolean
      {
         return this.§9!>§;
      }
      
      public function set §?!,§(param1:Boolean) : void
      {
         this.§9!>§ = param1;
      }
      
      public function get §&!@§() : Function
      {
         return this.§07§;
      }
      
      public function set §&!@§(param1:Function) : void
      {
         this.§07§ = param1;
      }
      
      public function get §7R§() : Function
      {
         return this.§extends§;
      }
      
      public function set §7R§(param1:Function) : void
      {
         this.§extends§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§10§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§10§ = param1;
      }
      
      public function get §#L§() : Array
      {
         return this.§3!1§;
      }
      
      public function set §#L§(param1:Array) : void
      {
         this.§3!1§ = param1;
      }
      
      public function get §-i§() : Array
      {
         return this.§9u§;
      }
      
      public function set §-i§(param1:Array) : void
      {
         this.§9u§ = param1;
      }
      
      public function get §6W§() : Array
      {
         return this.§;!_§;
      }
      
      public function set §6W§(param1:Array) : void
      {
         this.§;!_§ = param1;
      }
   }
}
