package §;!+§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §,!a§ extends EventDispatcher implements §?d§
   {
       
      
      private var §2Z§:Object;
      
      private var §=!Z§:String;
      
      private var §3$§:Vector.<String>;
      
      private var §4!T§:Vector.<Number>;
      
      private var §-B§:Vector.<Number>;
      
      private var §7!Z§:Function;
      
      private var §8k§:Function;
      
      private var §&!A§:Function;
      
      private var §%e§:Array;
      
      private var §-X§:Array;
      
      private var §[8§:Array;
      
      private var §@!E§:Number;
      
      private var §[T§:Number;
      
      private var §=u§:Number;
      
      private var §-!]§:Boolean;
      
      public function §,!a§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§2Z§ = param1;
         this.§[T§ = 0;
         this.§@!E§ = Math.max(0.0001,param2);
         this.§=u§ = 0;
         this.§=!Z§ = param3;
         this.§-!]§ = false;
         this.§3$§ = new Vector.<String>(0);
         this.§4!T§ = new Vector.<Number>(0);
         this.§-B§ = new Vector.<Number>(0);
      }
      
      public function §<T§(param1:String, param2:Number) : void
      {
         if(this.§2Z§ == null)
         {
            return;
         }
         this.§3$§.push(param1);
         this.§4!T§.push(Number.NaN);
         this.§-B§.push(param2);
      }
      
      public function §-L§(param1:Number) : void
      {
         this.§<T§("scaleX",param1);
         this.§<T§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§<T§("x",param1);
         this.§<T§("y",param2);
      }
      
      public function §02§(param1:Number) : void
      {
         this.§<T§("alpha",param1);
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
         var _loc2_:Number = this.§[T§;
         this.§[T§ += param1;
         if(this.§[T§ < 0 || _loc2_ >= this.§@!E§)
         {
            return;
         }
         if(this.§>b§ != null && _loc2_ <= 0 && this.§[T§ >= 0)
         {
            this.§>b§.apply(null,this.§%e§);
         }
         var _loc3_:Number = Math.min(this.§@!E§,this.§[T§) / this.§@!E§;
         var _loc4_:int = this.§4!T§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§4!T§[_loc5_]))
            {
               this.§4!T§[_loc5_] = this.§2Z§[this.§3$§[_loc5_]] as Number;
            }
            _loc6_ = this.§4!T§[_loc5_];
            _loc8_ = (_loc7_ = this.§-B§[_loc5_]) - _loc6_;
            _loc9_ = §]I§.§1B§(this.§=!Z§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§-!]§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§2Z§[this.§3$§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§<9§ != null)
         {
            this.§<9§.apply(null,this.§-X§);
         }
         if(_loc2_ < this.§@!E§ && this.§[T§ >= this.§@!E§)
         {
            dispatchEvent(new Event(Event.§4f§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§[8§);
            }
         }
      }
      
      public function get §1!B§() : Boolean
      {
         return this.§[T§ >= this.§@!E§;
      }
      
      public function get target() : Object
      {
         return this.§2Z§;
      }
      
      public function get §#<§() : String
      {
         return this.§=!Z§;
      }
      
      public function get §?!I§() : Number
      {
         return this.§@!E§;
      }
      
      public function get §3S§() : Number
      {
         return this.§[T§;
      }
      
      public function get delay() : Number
      {
         return this.§=u§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§[T§ = this.§[T§ + this.§=u§ - param1;
         this.§=u§ = param1;
      }
      
      public function get §+W§() : Boolean
      {
         return this.§-!]§;
      }
      
      public function set §+W§(param1:Boolean) : void
      {
         this.§-!]§ = param1;
      }
      
      public function get §>b§() : Function
      {
         return this.§7!Z§;
      }
      
      public function set §>b§(param1:Function) : void
      {
         this.§7!Z§ = param1;
      }
      
      public function get §<9§() : Function
      {
         return this.§8k§;
      }
      
      public function set §<9§(param1:Function) : void
      {
         this.§8k§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§&!A§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§&!A§ = param1;
      }
      
      public function get §;$§() : Array
      {
         return this.§%e§;
      }
      
      public function set §;$§(param1:Array) : void
      {
         this.§%e§ = param1;
      }
      
      public function get §?C§() : Array
      {
         return this.§-X§;
      }
      
      public function set §?C§(param1:Array) : void
      {
         this.§-X§ = param1;
      }
      
      public function get §6!B§() : Array
      {
         return this.§[8§;
      }
      
      public function set §6!B§(param1:Array) : void
      {
         this.§[8§ = param1;
      }
   }
}
