package §,!"§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §^!X§ extends EventDispatcher implements §+!3§
   {
       
      
      private var §^e§:Object;
      
      private var §^f§:String;
      
      private var §+v§:Vector.<String>;
      
      private var §%!F§:Vector.<Number>;
      
      private var §7"J§:Vector.<Number>;
      
      private var §[!N§:Function;
      
      private var §;-§:Function;
      
      private var §6!_§:Function;
      
      private var §,!0§:Array;
      
      private var §1!S§:Array;
      
      private var §=!=§:Array;
      
      private var §1"?§:Number;
      
      private var §6+§:Number;
      
      private var §;`§:Number;
      
      private var §!",§:Boolean;
      
      public function §^!X§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§^e§ = param1;
         this.§6+§ = 0;
         this.§1"?§ = Math.max(0.0001,param2);
         this.§;`§ = 0;
         this.§^f§ = param3;
         this.§!",§ = false;
         this.§+v§ = new Vector.<String>(0);
         this.§%!F§ = new Vector.<Number>(0);
         this.§7"J§ = new Vector.<Number>(0);
      }
      
      public function §!!m§(param1:String, param2:Number) : void
      {
         if(this.§^e§ == null)
         {
            return;
         }
         this.§+v§.push(param1);
         this.§%!F§.push(Number.NaN);
         this.§7"J§.push(param2);
      }
      
      public function §[![§(param1:Number) : void
      {
         this.§!!m§("scaleX",param1);
         this.§!!m§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§!!m§("x",param1);
         this.§!!m§("y",param2);
      }
      
      public function §'e§(param1:Number) : void
      {
         this.§!!m§("alpha",param1);
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
         var _loc2_:Number = this.§6+§;
         this.§6+§ += param1;
         if(this.§6+§ < 0 || _loc2_ >= this.§1"?§)
         {
            return;
         }
         if(this.§7!A§ != null && _loc2_ <= 0 && this.§6+§ >= 0)
         {
            this.§7!A§.apply(null,this.§,!0§);
         }
         var _loc3_:Number = Math.min(this.§1"?§,this.§6+§) / this.§1"?§;
         var _loc4_:int = this.§%!F§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§%!F§[_loc5_]))
            {
               this.§%!F§[_loc5_] = this.§^e§[this.§+v§[_loc5_]] as Number;
            }
            _loc6_ = this.§%!F§[_loc5_];
            _loc8_ = (_loc7_ = this.§7"J§[_loc5_]) - _loc6_;
            _loc9_ = §"X§.§<!#§(this.§^f§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§!",§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§^e§[this.§+v§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§5H§ != null)
         {
            this.§5H§.apply(null,this.§1!S§);
         }
         if(_loc2_ < this.§1"?§ && this.§6+§ >= this.§1"?§)
         {
            dispatchEvent(new Event(Event.§5!o§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§=!=§);
            }
         }
      }
      
      public function get §!r§() : Boolean
      {
         return this.§6+§ >= this.§1"?§;
      }
      
      public function get target() : Object
      {
         return this.§^e§;
      }
      
      public function get §94§() : String
      {
         return this.§^f§;
      }
      
      public function get §=g§() : Number
      {
         return this.§1"?§;
      }
      
      public function get §+X§() : Number
      {
         return this.§6+§;
      }
      
      public function get delay() : Number
      {
         return this.§;`§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§6+§ = this.§6+§ + this.§;`§ - param1;
         this.§;`§ = param1;
      }
      
      public function get §'"H§() : Boolean
      {
         return this.§!",§;
      }
      
      public function set §'"H§(param1:Boolean) : void
      {
         this.§!",§ = param1;
      }
      
      public function get §7!A§() : Function
      {
         return this.§[!N§;
      }
      
      public function set §7!A§(param1:Function) : void
      {
         this.§[!N§ = param1;
      }
      
      public function get §5H§() : Function
      {
         return this.§;-§;
      }
      
      public function set §5H§(param1:Function) : void
      {
         this.§;-§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§6!_§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§6!_§ = param1;
      }
      
      public function get §-x§() : Array
      {
         return this.§,!0§;
      }
      
      public function set §-x§(param1:Array) : void
      {
         this.§,!0§ = param1;
      }
      
      public function get §!!R§() : Array
      {
         return this.§1!S§;
      }
      
      public function set §!!R§(param1:Array) : void
      {
         this.§1!S§ = param1;
      }
      
      public function get §?§() : Array
      {
         return this.§=!=§;
      }
      
      public function set §?§(param1:Array) : void
      {
         this.§=!=§ = param1;
      }
   }
}
