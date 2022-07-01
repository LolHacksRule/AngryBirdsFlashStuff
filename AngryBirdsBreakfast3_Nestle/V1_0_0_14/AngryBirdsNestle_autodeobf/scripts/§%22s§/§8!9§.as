package §"s§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §8!9§ extends EventDispatcher implements §<!A§
   {
       
      
      private var §'X§:Object;
      
      private var §0!Z§:String;
      
      private var §1!=§:Vector.<String>;
      
      private var §!q§:Vector.<Number>;
      
      private var §6!d§:Vector.<Number>;
      
      private var §]v§:Function;
      
      private var §=! §:Function;
      
      private var §1!e§:Function;
      
      private var §<!w§:Array;
      
      private var §@!B§:Array;
      
      private var §'!d§:Array;
      
      private var §8!T§:Number;
      
      private var §`,§:Number;
      
      private var §9!E§:Number;
      
      private var §3"7§:Boolean;
      
      public function §8!9§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§'X§ = param1;
         this.§`,§ = 0;
         this.§8!T§ = Math.max(0.0001,param2);
         this.§9!E§ = 0;
         this.§0!Z§ = param3;
         this.§3"7§ = false;
         this.§1!=§ = new Vector.<String>(0);
         this.§!q§ = new Vector.<Number>(0);
         this.§6!d§ = new Vector.<Number>(0);
      }
      
      public function §<!d§(param1:String, param2:Number) : void
      {
         if(this.§'X§ == null)
         {
            return;
         }
         this.§1!=§.push(param1);
         this.§!q§.push(Number.NaN);
         this.§6!d§.push(param2);
      }
      
      public function §#!8§(param1:Number) : void
      {
         this.§<!d§("scaleX",param1);
         this.§<!d§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§<!d§("x",param1);
         this.§<!d§("y",param2);
      }
      
      public function §2]§(param1:Number) : void
      {
         this.§<!d§("alpha",param1);
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
         var _loc2_:Number = this.§`,§;
         this.§`,§ += param1;
         if(this.§`,§ < 0 || _loc2_ >= this.§8!T§)
         {
            return;
         }
         if(this.§-!;§ != null && _loc2_ <= 0 && this.§`,§ >= 0)
         {
            this.§-!;§.apply(null,this.§<!w§);
         }
         var _loc3_:Number = Math.min(this.§8!T§,this.§`,§) / this.§8!T§;
         var _loc4_:int = this.§!q§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§!q§[_loc5_]))
            {
               this.§!q§[_loc5_] = this.§'X§[this.§1!=§[_loc5_]] as Number;
            }
            _loc6_ = this.§!q§[_loc5_];
            _loc8_ = (_loc7_ = this.§6!d§[_loc5_]) - _loc6_;
            _loc9_ = §6%§.§,h§(this.§0!Z§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§3"7§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§'X§[this.§1!=§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§;!e§ != null)
         {
            this.§;!e§.apply(null,this.§@!B§);
         }
         if(_loc2_ < this.§8!T§ && this.§`,§ >= this.§8!T§)
         {
            dispatchEvent(new Event(Event.§2"+§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§'!d§);
            }
         }
      }
      
      public function get §6!3§() : Boolean
      {
         return this.§`,§ >= this.§8!T§;
      }
      
      public function get target() : Object
      {
         return this.§'X§;
      }
      
      public function get §9L§() : String
      {
         return this.§0!Z§;
      }
      
      public function get §8a§() : Number
      {
         return this.§8!T§;
      }
      
      public function get §#4§() : Number
      {
         return this.§`,§;
      }
      
      public function get delay() : Number
      {
         return this.§9!E§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§`,§ = this.§`,§ + this.§9!E§ - param1;
         this.§9!E§ = param1;
      }
      
      public function get §1!n§() : Boolean
      {
         return this.§3"7§;
      }
      
      public function set §1!n§(param1:Boolean) : void
      {
         this.§3"7§ = param1;
      }
      
      public function get §-!;§() : Function
      {
         return this.§]v§;
      }
      
      public function set §-!;§(param1:Function) : void
      {
         this.§]v§ = param1;
      }
      
      public function get §;!e§() : Function
      {
         return this.§=! §;
      }
      
      public function set §;!e§(param1:Function) : void
      {
         this.§=! § = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§1!e§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§1!e§ = param1;
      }
      
      public function get §%5§() : Array
      {
         return this.§<!w§;
      }
      
      public function set §%5§(param1:Array) : void
      {
         this.§<!w§ = param1;
      }
      
      public function get §#!^§() : Array
      {
         return this.§@!B§;
      }
      
      public function set §#!^§(param1:Array) : void
      {
         this.§@!B§ = param1;
      }
      
      public function get §6+§() : Array
      {
         return this.§'!d§;
      }
      
      public function set §6+§(param1:Array) : void
      {
         this.§'!d§ = param1;
      }
   }
}
