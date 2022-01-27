package §4!h§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §6!@§ extends EventDispatcher implements §'!;§
   {
       
      
      private var §?!§:Object;
      
      private var §&!E§:String;
      
      private var §64§:Vector.<String>;
      
      private var §;![§:Vector.<Number>;
      
      private var §>!=§:Vector.<Number>;
      
      private var §!!C§:Function;
      
      private var §each §:Function;
      
      private var § "1§:Function;
      
      private var §#!F§:Array;
      
      private var §,!Z§:Array;
      
      private var §[!"§:Array;
      
      private var §;!a§:Number;
      
      private var §1S§:Number;
      
      private var §9"'§:Number;
      
      private var §&"G§:Boolean;
      
      public function §6!@§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§?!§ = param1;
         this.§1S§ = 0;
         this.§;!a§ = Math.max(0.0001,param2);
         this.§9"'§ = 0;
         this.§&!E§ = param3;
         this.§&"G§ = false;
         this.§64§ = new Vector.<String>(0);
         this.§;![§ = new Vector.<Number>(0);
         this.§>!=§ = new Vector.<Number>(0);
      }
      
      public function §0!;§(param1:String, param2:Number) : void
      {
         if(this.§?!§ == null)
         {
            return;
         }
         this.§64§.push(param1);
         this.§;![§.push(Number.NaN);
         this.§>!=§.push(param2);
      }
      
      public function §2g§(param1:Number) : void
      {
         this.§0!;§("scaleX",param1);
         this.§0!;§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§0!;§("x",param1);
         this.§0!;§("y",param2);
      }
      
      public function §`!x§(param1:Number) : void
      {
         this.§0!;§("alpha",param1);
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
         var _loc2_:Number = this.§1S§;
         this.§1S§ += param1;
         if(this.§1S§ < 0 || _loc2_ >= this.§;!a§)
         {
            return;
         }
         if(this.§3!6§ != null && _loc2_ <= 0 && this.§1S§ >= 0)
         {
            this.§3!6§.apply(null,this.§#!F§);
         }
         var _loc3_:Number = Math.min(this.§;!a§,this.§1S§) / this.§;!a§;
         var _loc4_:int = this.§;![§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§;![§[_loc5_]))
            {
               this.§;![§[_loc5_] = this.§?!§[this.§64§[_loc5_]] as Number;
            }
            _loc6_ = this.§;![§[_loc5_];
            _loc8_ = (_loc7_ = this.§>!=§[_loc5_]) - _loc6_;
            _loc9_ = §2!&§.§ w§(this.§&!E§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§&"G§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§?!§[this.§64§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§9!'§ != null)
         {
            this.§9!'§.apply(null,this.§,!Z§);
         }
         if(_loc2_ < this.§;!a§ && this.§1S§ >= this.§;!a§)
         {
            dispatchEvent(new Event(Event.§@" §));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§[!"§);
            }
         }
      }
      
      public function get §&!W§() : Boolean
      {
         return this.§1S§ >= this.§;!a§;
      }
      
      public function get target() : Object
      {
         return this.§?!§;
      }
      
      public function get §2"E§() : String
      {
         return this.§&!E§;
      }
      
      public function get §4B§() : Number
      {
         return this.§;!a§;
      }
      
      public function get §!p§() : Number
      {
         return this.§1S§;
      }
      
      public function get delay() : Number
      {
         return this.§9"'§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§1S§ = this.§1S§ + this.§9"'§ - param1;
         this.§9"'§ = param1;
      }
      
      public function get §9[§() : Boolean
      {
         return this.§&"G§;
      }
      
      public function set §9[§(param1:Boolean) : void
      {
         this.§&"G§ = param1;
      }
      
      public function get §3!6§() : Function
      {
         return this.§!!C§;
      }
      
      public function set §3!6§(param1:Function) : void
      {
         this.§!!C§ = param1;
      }
      
      public function get §9!'§() : Function
      {
         return this.§each §;
      }
      
      public function set §9!'§(param1:Function) : void
      {
         this.§each § = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§ "1§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§ "1§ = param1;
      }
      
      public function get §[+§() : Array
      {
         return this.§#!F§;
      }
      
      public function set §[+§(param1:Array) : void
      {
         this.§#!F§ = param1;
      }
      
      public function get §5!Y§() : Array
      {
         return this.§,!Z§;
      }
      
      public function set §5!Y§(param1:Array) : void
      {
         this.§,!Z§ = param1;
      }
      
      public function get §4"9§() : Array
      {
         return this.§[!"§;
      }
      
      public function set §4"9§(param1:Array) : void
      {
         this.§[!"§ = param1;
      }
   }
}
