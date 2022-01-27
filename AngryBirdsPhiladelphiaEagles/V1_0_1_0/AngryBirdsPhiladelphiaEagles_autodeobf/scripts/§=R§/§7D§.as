package §=R§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §7D§ extends EventDispatcher implements §6I§
   {
       
      
      private var §9Q§:Object;
      
      private var §[V§:String;
      
      private var §9!,§:Vector.<String>;
      
      private var §2!#§:Vector.<Number>;
      
      private var §7!<§:Vector.<Number>;
      
      private var §-X§:Function;
      
      private var §?U§:Function;
      
      private var §=!5§:Function;
      
      private var §1L§:Array;
      
      private var §<;§:Array;
      
      private var §3!N§:Array;
      
      private var §=c§:Number;
      
      private var §<[§:Number;
      
      private var §@!8§:Number;
      
      private var §!Z§:Boolean;
      
      public function §7D§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§9Q§ = param1;
         this.§<[§ = 0;
         this.§=c§ = Math.max(0.0001,param2);
         this.§@!8§ = 0;
         this.§[V§ = param3;
         this.§!Z§ = false;
         this.§9!,§ = new Vector.<String>(0);
         this.§2!#§ = new Vector.<Number>(0);
         this.§7!<§ = new Vector.<Number>(0);
      }
      
      public function §0!P§(param1:String, param2:Number) : void
      {
         if(this.§9Q§ == null)
         {
            return;
         }
         this.§9!,§.push(param1);
         this.§2!#§.push(Number.NaN);
         this.§7!<§.push(param2);
      }
      
      public function §!V§(param1:Number) : void
      {
         this.§0!P§("scaleX",param1);
         this.§0!P§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§0!P§("x",param1);
         this.§0!P§("y",param2);
      }
      
      public function §7<§(param1:Number) : void
      {
         this.§0!P§("alpha",param1);
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
         var _loc2_:Number = this.§<[§;
         this.§<[§ += param1;
         if(this.§<[§ < 0 || _loc2_ >= this.§=c§)
         {
            return;
         }
         if(this.§ !O§ != null && _loc2_ <= 0 && this.§<[§ >= 0)
         {
            this.§ !O§.apply(null,this.§1L§);
         }
         var _loc3_:Number = Math.min(this.§=c§,this.§<[§) / this.§=c§;
         var _loc4_:int = this.§2!#§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§2!#§[_loc5_]))
            {
               this.§2!#§[_loc5_] = this.§9Q§[this.§9!,§[_loc5_]] as Number;
            }
            _loc6_ = this.§2!#§[_loc5_];
            _loc8_ = (_loc7_ = this.§7!<§[_loc5_]) - _loc6_;
            _loc9_ = §1S§.§9! §(this.§[V§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§!Z§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§9Q§[this.§9!,§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§6`§ != null)
         {
            this.§6`§.apply(null,this.§<;§);
         }
         if(_loc2_ < this.§=c§ && this.§<[§ >= this.§=c§)
         {
            dispatchEvent(new Event(Event.§^4§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§3!N§);
            }
         }
      }
      
      public function get §4^§() : Boolean
      {
         return this.§<[§ >= this.§=c§;
      }
      
      public function get target() : Object
      {
         return this.§9Q§;
      }
      
      public function get §9$§() : String
      {
         return this.§[V§;
      }
      
      public function get §0!L§() : Number
      {
         return this.§=c§;
      }
      
      public function get §&Q§() : Number
      {
         return this.§<[§;
      }
      
      public function get delay() : Number
      {
         return this.§@!8§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§<[§ = this.§<[§ + this.§@!8§ - param1;
         this.§@!8§ = param1;
      }
      
      public function get §;u§() : Boolean
      {
         return this.§!Z§;
      }
      
      public function set §;u§(param1:Boolean) : void
      {
         this.§!Z§ = param1;
      }
      
      public function get § !O§() : Function
      {
         return this.§-X§;
      }
      
      public function set § !O§(param1:Function) : void
      {
         this.§-X§ = param1;
      }
      
      public function get §6`§() : Function
      {
         return this.§?U§;
      }
      
      public function set §6`§(param1:Function) : void
      {
         this.§?U§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§=!5§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§=!5§ = param1;
      }
      
      public function get §@d§() : Array
      {
         return this.§1L§;
      }
      
      public function set §@d§(param1:Array) : void
      {
         this.§1L§ = param1;
      }
      
      public function get §[!F§() : Array
      {
         return this.§<;§;
      }
      
      public function set §[!F§(param1:Array) : void
      {
         this.§<;§ = param1;
      }
      
      public function get §4F§() : Array
      {
         return this.§3!N§;
      }
      
      public function set §4F§(param1:Array) : void
      {
         this.§3!N§ = param1;
      }
   }
}
