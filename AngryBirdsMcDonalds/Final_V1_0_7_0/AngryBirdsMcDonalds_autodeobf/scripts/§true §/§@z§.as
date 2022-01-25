package §true §
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §@z§ extends EventDispatcher implements §3t§
   {
       
      
      private var §]A§:Object;
      
      private var §5!G§:String;
      
      private var §#!Z§:Vector.<String>;
      
      private var §]s§:Vector.<Number>;
      
      private var §3!Q§:Vector.<Number>;
      
      private var §6>§:Function;
      
      private var §1!c§:Function;
      
      private var §%S§:Function;
      
      private var §[z§:Array;
      
      private var §0H§:Array;
      
      private var §[!,§:Array;
      
      private var §,!g§:Number;
      
      private var §9!`§:Number;
      
      private var §+L§:Number;
      
      private var §"!0§:Boolean;
      
      public function §@z§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§]A§ = param1;
         this.§9!`§ = 0;
         this.§,!g§ = Math.max(0.0001,param2);
         this.§+L§ = 0;
         this.§5!G§ = param3;
         this.§"!0§ = false;
         this.§#!Z§ = new Vector.<String>(0);
         this.§]s§ = new Vector.<Number>(0);
         this.§3!Q§ = new Vector.<Number>(0);
      }
      
      public function §"!9§(param1:String, param2:Number) : void
      {
         if(this.§]A§ == null)
         {
            return;
         }
         this.§#!Z§.push(param1);
         this.§]s§.push(Number.NaN);
         this.§3!Q§.push(param2);
      }
      
      public function §!!G§(param1:Number) : void
      {
         this.§"!9§("scaleX",param1);
         this.§"!9§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§"!9§("x",param1);
         this.§"!9§("y",param2);
      }
      
      public function §+2§(param1:Number) : void
      {
         this.§"!9§("alpha",param1);
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
         var _loc2_:Number = this.§9!`§;
         this.§9!`§ += param1;
         if(this.§9!`§ < 0 || _loc2_ >= this.§,!g§)
         {
            return;
         }
         if(this.§^!B§ != null && _loc2_ <= 0 && this.§9!`§ >= 0)
         {
            this.§^!B§.apply(null,this.§[z§);
         }
         var _loc3_:Number = Math.min(this.§,!g§,this.§9!`§) / this.§,!g§;
         var _loc4_:int = this.§]s§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§]s§[_loc5_]))
            {
               this.§]s§[_loc5_] = this.§]A§[this.§#!Z§[_loc5_]] as Number;
            }
            _loc6_ = this.§]s§[_loc5_];
            _loc8_ = (_loc7_ = this.§3!Q§[_loc5_]) - _loc6_;
            _loc9_ = §0g§.§+!0§(this.§5!G§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§"!0§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§]A§[this.§#!Z§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§!9§ != null)
         {
            this.§!9§.apply(null,this.§0H§);
         }
         if(_loc2_ < this.§,!g§ && this.§9!`§ >= this.§,!g§)
         {
            dispatchEvent(new Event(Event.§#3§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§[!,§);
            }
         }
      }
      
      public function get §2A§() : Boolean
      {
         return this.§9!`§ >= this.§,!g§;
      }
      
      public function get target() : Object
      {
         return this.§]A§;
      }
      
      public function get §<w§() : String
      {
         return this.§5!G§;
      }
      
      public function get §,v§() : Number
      {
         return this.§,!g§;
      }
      
      public function get §2!F§() : Number
      {
         return this.§9!`§;
      }
      
      public function get delay() : Number
      {
         return this.§+L§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§9!`§ = this.§9!`§ + this.§+L§ - param1;
         this.§+L§ = param1;
      }
      
      public function get § !Y§() : Boolean
      {
         return this.§"!0§;
      }
      
      public function set § !Y§(param1:Boolean) : void
      {
         this.§"!0§ = param1;
      }
      
      public function get §^!B§() : Function
      {
         return this.§6>§;
      }
      
      public function set §^!B§(param1:Function) : void
      {
         this.§6>§ = param1;
      }
      
      public function get §!9§() : Function
      {
         return this.§1!c§;
      }
      
      public function set §!9§(param1:Function) : void
      {
         this.§1!c§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§%S§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§%S§ = param1;
      }
      
      public function get §@T§() : Array
      {
         return this.§[z§;
      }
      
      public function set §@T§(param1:Array) : void
      {
         this.§[z§ = param1;
      }
      
      public function get §3!V§() : Array
      {
         return this.§0H§;
      }
      
      public function set §3!V§(param1:Array) : void
      {
         this.§0H§ = param1;
      }
      
      public function get §;!E§() : Array
      {
         return this.§[!,§;
      }
      
      public function set §;!E§(param1:Array) : void
      {
         this.§[!,§ = param1;
      }
   }
}
