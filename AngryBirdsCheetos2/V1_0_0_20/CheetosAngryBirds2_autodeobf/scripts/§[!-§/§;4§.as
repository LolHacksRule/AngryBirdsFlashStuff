package §[!-§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §;4§ extends EventDispatcher implements §>'§
   {
       
      
      private var §[!W§:Object;
      
      private var §9!2§:String;
      
      private var §^!Y§:Vector.<String>;
      
      private var §#I§:Vector.<Number>;
      
      private var §`!?§:Vector.<Number>;
      
      private var §#X§:Function;
      
      private var §"E§:Function;
      
      private var §%H§:Function;
      
      private var §-!A§:Array;
      
      private var §<!=§:Array;
      
      private var §"b§:Array;
      
      private var §!!^§:Number;
      
      private var §3T§:Number;
      
      private var §9T§:Number;
      
      private var §"!9§:Boolean;
      
      public function §;4§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§[!W§ = param1;
         this.§3T§ = 0;
         this.§!!^§ = Math.max(0.0001,param2);
         this.§9T§ = 0;
         this.§9!2§ = param3;
         this.§"!9§ = false;
         this.§^!Y§ = new Vector.<String>(0);
         this.§#I§ = new Vector.<Number>(0);
         this.§`!?§ = new Vector.<Number>(0);
      }
      
      public function §9d§(param1:String, param2:Number) : void
      {
         if(this.§[!W§ == null)
         {
            return;
         }
         this.§^!Y§.push(param1);
         this.§#I§.push(Number.NaN);
         this.§`!?§.push(param2);
      }
      
      public function §6!`§(param1:Number) : void
      {
         this.§9d§("scaleX",param1);
         this.§9d§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§9d§("x",param1);
         this.§9d§("y",param2);
      }
      
      public function §2!>§(param1:Number) : void
      {
         this.§9d§("alpha",param1);
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
         var _loc2_:Number = this.§3T§;
         this.§3T§ += param1;
         if(this.§3T§ < 0 || _loc2_ >= this.§!!^§)
         {
            return;
         }
         if(this.§@!W§ != null && _loc2_ <= 0 && this.§3T§ >= 0)
         {
            this.§@!W§.apply(null,this.§-!A§);
         }
         var _loc3_:Number = Math.min(this.§!!^§,this.§3T§) / this.§!!^§;
         var _loc4_:int = this.§#I§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§#I§[_loc5_]))
            {
               this.§#I§[_loc5_] = this.§[!W§[this.§^!Y§[_loc5_]] as Number;
            }
            _loc6_ = this.§#I§[_loc5_];
            _loc8_ = (_loc7_ = this.§`!?§[_loc5_]) - _loc6_;
            _loc9_ = §-1§.§6!0§(this.§9!2§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§"!9§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§[!W§[this.§^!Y§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§!,§ != null)
         {
            this.§!,§.apply(null,this.§<!=§);
         }
         if(_loc2_ < this.§!!^§ && this.§3T§ >= this.§!!^§)
         {
            dispatchEvent(new Event(Event.§8v§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§"b§);
            }
         }
      }
      
      public function get §9p§() : Boolean
      {
         return this.§3T§ >= this.§!!^§;
      }
      
      public function get target() : Object
      {
         return this.§[!W§;
      }
      
      public function get §+!?§() : String
      {
         return this.§9!2§;
      }
      
      public function get §4A§() : Number
      {
         return this.§!!^§;
      }
      
      public function get §]!h§() : Number
      {
         return this.§3T§;
      }
      
      public function get delay() : Number
      {
         return this.§9T§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§3T§ = this.§3T§ + this.§9T§ - param1;
         this.§9T§ = param1;
      }
      
      public function get §#z§() : Boolean
      {
         return this.§"!9§;
      }
      
      public function set §#z§(param1:Boolean) : void
      {
         this.§"!9§ = param1;
      }
      
      public function get §@!W§() : Function
      {
         return this.§#X§;
      }
      
      public function set §@!W§(param1:Function) : void
      {
         this.§#X§ = param1;
      }
      
      public function get §!,§() : Function
      {
         return this.§"E§;
      }
      
      public function set §!,§(param1:Function) : void
      {
         this.§"E§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§%H§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§%H§ = param1;
      }
      
      public function get §<2§() : Array
      {
         return this.§-!A§;
      }
      
      public function set §<2§(param1:Array) : void
      {
         this.§-!A§ = param1;
      }
      
      public function get §2!R§() : Array
      {
         return this.§<!=§;
      }
      
      public function set §2!R§(param1:Array) : void
      {
         this.§<!=§ = param1;
      }
      
      public function get §?!X§() : Array
      {
         return this.§"b§;
      }
      
      public function set §?!X§(param1:Array) : void
      {
         this.§"b§ = param1;
      }
   }
}
