package §-P§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §,"§ extends EventDispatcher implements §&s§
   {
       
      
      private var §6,§:Object;
      
      private var §use §:String;
      
      private var §1!2§:Vector.<String>;
      
      private var §9Y§:Vector.<Number>;
      
      private var §+!>§:Vector.<Number>;
      
      private var §!A§:Function;
      
      private var § T§:Function;
      
      private var §]2§:Function;
      
      private var §@h§:Array;
      
      private var §1!A§:Array;
      
      private var §6!&§:Array;
      
      private var §3!U§:Number;
      
      private var §1D§:Number;
      
      private var §?x§:Number;
      
      private var §@!F§:Boolean;
      
      public function §,"§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§6,§ = param1;
         this.§1D§ = 0;
         this.§3!U§ = Math.max(0.0001,param2);
         this.§?x§ = 0;
         this.§use § = param3;
         this.§@!F§ = false;
         this.§1!2§ = new Vector.<String>(0);
         this.§9Y§ = new Vector.<Number>(0);
         this.§+!>§ = new Vector.<Number>(0);
      }
      
      public function §"D§(param1:String, param2:Number) : void
      {
         if(this.§6,§ == null)
         {
            return;
         }
         this.§1!2§.push(param1);
         this.§9Y§.push(Number.NaN);
         this.§+!>§.push(param2);
      }
      
      public function §4E§(param1:Number) : void
      {
         this.§"D§("scaleX",param1);
         this.§"D§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§"D§("x",param1);
         this.§"D§("y",param2);
      }
      
      public function §'!;§(param1:Number) : void
      {
         this.§"D§("alpha",param1);
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
         var _loc2_:Number = this.§1D§;
         this.§1D§ += param1;
         if(this.§1D§ < 0 || _loc2_ >= this.§3!U§)
         {
            return;
         }
         if(this.§5g§ != null && _loc2_ <= 0 && this.§1D§ >= 0)
         {
            this.§5g§.apply(null,this.§@h§);
         }
         var _loc3_:Number = Math.min(this.§3!U§,this.§1D§) / this.§3!U§;
         var _loc4_:int = this.§9Y§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§9Y§[_loc5_]))
            {
               this.§9Y§[_loc5_] = this.§6,§[this.§1!2§[_loc5_]] as Number;
            }
            _loc6_ = this.§9Y§[_loc5_];
            _loc8_ = (_loc7_ = this.§+!>§[_loc5_]) - _loc6_;
            _loc9_ = §;3§.§&!&§(this.§use §);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§@!F§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§6,§[this.§1!2§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§8!5§ != null)
         {
            this.§8!5§.apply(null,this.§1!A§);
         }
         if(_loc2_ < this.§3!U§ && this.§1D§ >= this.§3!U§)
         {
            dispatchEvent(new Event(Event.§?i§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§6!&§);
            }
         }
      }
      
      public function get §!!4§() : Boolean
      {
         return this.§1D§ >= this.§3!U§;
      }
      
      public function get target() : Object
      {
         return this.§6,§;
      }
      
      public function get §!!d§() : String
      {
         return this.§use §;
      }
      
      public function get §!L§() : Number
      {
         return this.§3!U§;
      }
      
      public function get §4!c§() : Number
      {
         return this.§1D§;
      }
      
      public function get delay() : Number
      {
         return this.§?x§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§1D§ = this.§1D§ + this.§?x§ - param1;
         this.§?x§ = param1;
      }
      
      public function get §1A§() : Boolean
      {
         return this.§@!F§;
      }
      
      public function set §1A§(param1:Boolean) : void
      {
         this.§@!F§ = param1;
      }
      
      public function get §5g§() : Function
      {
         return this.§!A§;
      }
      
      public function set §5g§(param1:Function) : void
      {
         this.§!A§ = param1;
      }
      
      public function get §8!5§() : Function
      {
         return this.§ T§;
      }
      
      public function set §8!5§(param1:Function) : void
      {
         this.§ T§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§]2§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§]2§ = param1;
      }
      
      public function get §4!I§() : Array
      {
         return this.§@h§;
      }
      
      public function set §4!I§(param1:Array) : void
      {
         this.§@h§ = param1;
      }
      
      public function get §while§() : Array
      {
         return this.§1!A§;
      }
      
      public function set §while§(param1:Array) : void
      {
         this.§1!A§ = param1;
      }
      
      public function get §[i§() : Array
      {
         return this.§6!&§;
      }
      
      public function set §[i§(param1:Array) : void
      {
         this.§6!&§ = param1;
      }
   }
}
