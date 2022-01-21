package §]d§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §@!i§ extends EventDispatcher implements §;=§
   {
       
      
      private var §3!]§:Object;
      
      private var §,w§:String;
      
      private var §,@§:Vector.<String>;
      
      private var §;G§:Vector.<Number>;
      
      private var §@!o§:Vector.<Number>;
      
      private var §8P§:Function;
      
      private var §=!`§:Function;
      
      private var §-!=§:Function;
      
      private var §'`§:Array;
      
      private var §@!j§:Array;
      
      private var §=h§:Array;
      
      private var §0o§:Number;
      
      private var §[m§:Number;
      
      private var §!!W§:Number;
      
      private var §2A§:Boolean;
      
      public function §@!i§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§3!]§ = param1;
         this.§[m§ = 0;
         this.§0o§ = Math.max(0.0001,param2);
         this.§!!W§ = 0;
         this.§,w§ = param3;
         this.§2A§ = false;
         this.§,@§ = new Vector.<String>(0);
         this.§;G§ = new Vector.<Number>(0);
         this.§@!o§ = new Vector.<Number>(0);
      }
      
      public function §1!`§(param1:String, param2:Number) : void
      {
         if(this.§3!]§ == null)
         {
            return;
         }
         this.§,@§.push(param1);
         this.§;G§.push(Number.NaN);
         this.§@!o§.push(param2);
      }
      
      public function §-!R§(param1:Number) : void
      {
         this.§1!`§("scaleX",param1);
         this.§1!`§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§1!`§("x",param1);
         this.§1!`§("y",param2);
      }
      
      public function §%r§(param1:Number) : void
      {
         this.§1!`§("alpha",param1);
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
         var _loc2_:Number = this.§[m§;
         this.§[m§ += param1;
         if(this.§[m§ < 0 || _loc2_ >= this.§0o§)
         {
            return;
         }
         if(this.§4,§ != null && _loc2_ <= 0 && this.§[m§ >= 0)
         {
            this.§4,§.apply(null,this.§'`§);
         }
         var _loc3_:Number = Math.min(this.§0o§,this.§[m§) / this.§0o§;
         var _loc4_:int = this.§;G§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§;G§[_loc5_]))
            {
               this.§;G§[_loc5_] = this.§3!]§[this.§,@§[_loc5_]] as Number;
            }
            _loc6_ = this.§;G§[_loc5_];
            _loc8_ = (_loc7_ = this.§@!o§[_loc5_]) - _loc6_;
            _loc9_ = §1!l§.§#=§(this.§,w§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§2A§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§3!]§[this.§,@§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§=d§ != null)
         {
            this.§=d§.apply(null,this.§@!j§);
         }
         if(_loc2_ < this.§0o§ && this.§[m§ >= this.§0o§)
         {
            dispatchEvent(new Event(Event.§<x§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§=h§);
            }
         }
      }
      
      public function get §!O§() : Boolean
      {
         return this.§[m§ >= this.§0o§;
      }
      
      public function get target() : Object
      {
         return this.§3!]§;
      }
      
      public function get §[>§() : String
      {
         return this.§,w§;
      }
      
      public function get §4t§() : Number
      {
         return this.§0o§;
      }
      
      public function get §&P§() : Number
      {
         return this.§[m§;
      }
      
      public function get delay() : Number
      {
         return this.§!!W§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§[m§ = this.§[m§ + this.§!!W§ - param1;
         this.§!!W§ = param1;
      }
      
      public function get §!!$§() : Boolean
      {
         return this.§2A§;
      }
      
      public function set §!!$§(param1:Boolean) : void
      {
         this.§2A§ = param1;
      }
      
      public function get §4,§() : Function
      {
         return this.§8P§;
      }
      
      public function set §4,§(param1:Function) : void
      {
         this.§8P§ = param1;
      }
      
      public function get §=d§() : Function
      {
         return this.§=!`§;
      }
      
      public function set §=d§(param1:Function) : void
      {
         this.§=!`§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§-!=§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§-!=§ = param1;
      }
      
      public function get §[!@§() : Array
      {
         return this.§'`§;
      }
      
      public function set §[!@§(param1:Array) : void
      {
         this.§'`§ = param1;
      }
      
      public function get §1M§() : Array
      {
         return this.§@!j§;
      }
      
      public function set §1M§(param1:Array) : void
      {
         this.§@!j§ = param1;
      }
      
      public function get §3!n§() : Array
      {
         return this.§=h§;
      }
      
      public function set §3!n§(param1:Array) : void
      {
         this.§=h§ = param1;
      }
   }
}
