package §1"#§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §&k§ extends EventDispatcher implements §>"3§
   {
       
      
      private var §!!0§:Object;
      
      private var §]z§:String;
      
      private var §;!r§:Vector.<String>;
      
      private var §"t§:Vector.<Number>;
      
      private var §,!8§:Vector.<Number>;
      
      private var §0"$§:Function;
      
      private var §2!j§:Function;
      
      private var §6l§:Function;
      
      private var §[!o§:Array;
      
      private var §%!P§:Array;
      
      private var §^K§:Array;
      
      private var §6"&§:Number;
      
      private var §>!F§:Number;
      
      private var §>"!§:Number;
      
      private var §?!;§:Boolean;
      
      public function §&k§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§!!0§ = param1;
         this.§>!F§ = 0;
         this.§6"&§ = Math.max(0.0001,param2);
         this.§>"!§ = 0;
         this.§]z§ = param3;
         this.§?!;§ = false;
         this.§;!r§ = new Vector.<String>(0);
         this.§"t§ = new Vector.<Number>(0);
         this.§,!8§ = new Vector.<Number>(0);
      }
      
      public function §<@§(param1:String, param2:Number) : void
      {
         if(this.§!!0§ == null)
         {
            return;
         }
         this.§;!r§.push(param1);
         this.§"t§.push(Number.NaN);
         this.§,!8§.push(param2);
      }
      
      public function §#![§(param1:Number) : void
      {
         this.§<@§("scaleX",param1);
         this.§<@§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§<@§("x",param1);
         this.§<@§("y",param2);
      }
      
      public function §-s§(param1:Number) : void
      {
         this.§<@§("alpha",param1);
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
         var _loc2_:Number = this.§>!F§;
         this.§>!F§ += param1;
         if(this.§>!F§ < 0 || _loc2_ >= this.§6"&§)
         {
            return;
         }
         if(this.§#!d§ != null && _loc2_ <= 0 && this.§>!F§ >= 0)
         {
            this.§#!d§.apply(null,this.§[!o§);
         }
         var _loc3_:Number = Math.min(this.§6"&§,this.§>!F§) / this.§6"&§;
         var _loc4_:int = this.§"t§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§"t§[_loc5_]))
            {
               this.§"t§[_loc5_] = this.§!!0§[this.§;!r§[_loc5_]] as Number;
            }
            _loc6_ = this.§"t§[_loc5_];
            _loc8_ = (_loc7_ = this.§,!8§[_loc5_]) - _loc6_;
            _loc9_ = §6!A§.§[C§(this.§]z§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§?!;§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§!!0§[this.§;!r§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§7!r§ != null)
         {
            this.§7!r§.apply(null,this.§%!P§);
         }
         if(_loc2_ < this.§6"&§ && this.§>!F§ >= this.§6"&§)
         {
            dispatchEvent(new Event(Event.§3!Y§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§^K§);
            }
         }
      }
      
      public function get § !i§() : Boolean
      {
         return this.§>!F§ >= this.§6"&§;
      }
      
      public function get target() : Object
      {
         return this.§!!0§;
      }
      
      public function get §"!A§() : String
      {
         return this.§]z§;
      }
      
      public function get §=0§() : Number
      {
         return this.§6"&§;
      }
      
      public function get §'S§() : Number
      {
         return this.§>!F§;
      }
      
      public function get delay() : Number
      {
         return this.§>"!§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§>!F§ = this.§>!F§ + this.§>"!§ - param1;
         this.§>"!§ = param1;
      }
      
      public function get §5!T§() : Boolean
      {
         return this.§?!;§;
      }
      
      public function set §5!T§(param1:Boolean) : void
      {
         this.§?!;§ = param1;
      }
      
      public function get §#!d§() : Function
      {
         return this.§0"$§;
      }
      
      public function set §#!d§(param1:Function) : void
      {
         this.§0"$§ = param1;
      }
      
      public function get §7!r§() : Function
      {
         return this.§2!j§;
      }
      
      public function set §7!r§(param1:Function) : void
      {
         this.§2!j§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§6l§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§6l§ = param1;
      }
      
      public function get §,"0§() : Array
      {
         return this.§[!o§;
      }
      
      public function set §,"0§(param1:Array) : void
      {
         this.§[!o§ = param1;
      }
      
      public function get § o§() : Array
      {
         return this.§%!P§;
      }
      
      public function set § o§(param1:Array) : void
      {
         this.§%!P§ = param1;
      }
      
      public function get §&y§() : Array
      {
         return this.§^K§;
      }
      
      public function set §&y§(param1:Array) : void
      {
         this.§^K§ = param1;
      }
   }
}
