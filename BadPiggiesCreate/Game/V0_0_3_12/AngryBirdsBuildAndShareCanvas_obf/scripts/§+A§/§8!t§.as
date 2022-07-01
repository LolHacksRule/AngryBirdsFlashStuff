package §+A§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §8!t§ extends EventDispatcher implements §,T§
   {
       
      
      private var §%"6§:Object;
      
      private var §0!j§:String;
      
      private var §@!E§:Vector.<String>;
      
      private var §1!$§:Vector.<Number>;
      
      private var §,!2§:Vector.<Number>;
      
      private var §]N§:Function;
      
      private var §!!?§:Function;
      
      private var §-!t§:Function;
      
      private var §4"&§:Array;
      
      private var §^!%§:Array;
      
      private var §^! §:Array;
      
      private var §^!`§:Number;
      
      private var §+>§:Number;
      
      private var §>!G§:Number;
      
      private var §;!r§:Boolean;
      
      public function §8!t§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§%"6§ = param1;
         this.§+>§ = 0;
         this.§^!`§ = Math.max(0.0001,param2);
         this.§>!G§ = 0;
         this.§0!j§ = param3;
         this.§;!r§ = false;
         this.§@!E§ = new Vector.<String>(0);
         this.§1!$§ = new Vector.<Number>(0);
         this.§,!2§ = new Vector.<Number>(0);
      }
      
      public function §?x§(param1:String, param2:Number) : void
      {
         if(this.§%"6§ == null)
         {
            return;
         }
         this.§@!E§.push(param1);
         this.§1!$§.push(Number.NaN);
         this.§,!2§.push(param2);
      }
      
      public function §#"9§(param1:Number) : void
      {
         this.§?x§("scaleX",param1);
         this.§?x§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§?x§("x",param1);
         this.§?x§("y",param2);
      }
      
      public function §,P§(param1:Number) : void
      {
         this.§?x§("alpha",param1);
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
         var _loc2_:Number = this.§+>§;
         this.§+>§ += param1;
         if(this.§+>§ < 0 || _loc2_ >= this.§^!`§)
         {
            return;
         }
         if(this.§#"3§ != null && _loc2_ <= 0 && this.§+>§ >= 0)
         {
            this.§#"3§.apply(null,this.§4"&§);
         }
         var _loc3_:Number = Math.min(this.§^!`§,this.§+>§) / this.§^!`§;
         var _loc4_:int = this.§1!$§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§1!$§[_loc5_]))
            {
               this.§1!$§[_loc5_] = this.§%"6§[this.§@!E§[_loc5_]] as Number;
            }
            _loc6_ = this.§1!$§[_loc5_];
            _loc8_ = (_loc7_ = this.§,!2§[_loc5_]) - _loc6_;
            _loc9_ = §'!V§.§;!N§(this.§0!j§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§;!r§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§%"6§[this.§@!E§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.onUpdate != null)
         {
            this.onUpdate.apply(null,this.§^!%§);
         }
         if(_loc2_ < this.§^!`§ && this.§+>§ >= this.§^!`§)
         {
            dispatchEvent(new Event(Event.§<">§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§^! §);
            }
         }
      }
      
      public function get §>H§() : Boolean
      {
         return this.§+>§ >= this.§^!`§;
      }
      
      public function get target() : Object
      {
         return this.§%"6§;
      }
      
      public function get §<"<§() : String
      {
         return this.§0!j§;
      }
      
      public function get §[E§() : Number
      {
         return this.§^!`§;
      }
      
      public function get §5!F§() : Number
      {
         return this.§+>§;
      }
      
      public function get delay() : Number
      {
         return this.§>!G§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§+>§ = this.§+>§ + this.§>!G§ - param1;
         this.§>!G§ = param1;
      }
      
      public function get §%!F§() : Boolean
      {
         return this.§;!r§;
      }
      
      public function set §%!F§(param1:Boolean) : void
      {
         this.§;!r§ = param1;
      }
      
      public function get §#"3§() : Function
      {
         return this.§]N§;
      }
      
      public function set §#"3§(param1:Function) : void
      {
         this.§]N§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§!!?§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§!!?§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§-!t§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§-!t§ = param1;
      }
      
      public function get §9n§() : Array
      {
         return this.§4"&§;
      }
      
      public function set §9n§(param1:Array) : void
      {
         this.§4"&§ = param1;
      }
      
      public function get §[!4§() : Array
      {
         return this.§^!%§;
      }
      
      public function set §[!4§(param1:Array) : void
      {
         this.§^!%§ = param1;
      }
      
      public function get §#!T§() : Array
      {
         return this.§^! §;
      }
      
      public function set §#!T§(param1:Array) : void
      {
         this.§^! § = param1;
      }
   }
}
