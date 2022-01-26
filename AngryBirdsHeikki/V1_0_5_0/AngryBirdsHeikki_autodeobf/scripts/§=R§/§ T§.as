package §=R§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class § T§ extends EventDispatcher implements §3!N§
   {
       
      
      private var §;J§:Object;
      
      private var §'!H§:String;
      
      private var §2!H§:Vector.<String>;
      
      private var §@J§:Vector.<Number>;
      
      private var §-&§:Vector.<Number>;
      
      private var § +§:Function;
      
      private var §6!9§:Function;
      
      private var §finally§:Function;
      
      private var §^!<§:Array;
      
      private var §3!;§:Array;
      
      private var §<!A§:Array;
      
      private var §^R§:Number;
      
      private var §@'§:Number;
      
      private var §]H§:Number;
      
      private var §]2§:Boolean;
      
      public function § T§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§;J§ = param1;
         this.§@'§ = 0;
         this.§^R§ = Math.max(0.0001,param2);
         this.§]H§ = 0;
         this.§'!H§ = param3;
         this.§]2§ = false;
         this.§2!H§ = new Vector.<String>(0);
         this.§@J§ = new Vector.<Number>(0);
         this.§-&§ = new Vector.<Number>(0);
      }
      
      public function §`!B§(param1:String, param2:Number) : void
      {
         if(this.§;J§ == null)
         {
            return;
         }
         this.§2!H§.push(param1);
         this.§@J§.push(Number.NaN);
         this.§-&§.push(param2);
      }
      
      public function §99§(param1:Number) : void
      {
         this.§`!B§("scaleX",param1);
         this.§`!B§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§`!B§("x",param1);
         this.§`!B§("y",param2);
      }
      
      public function §@!P§(param1:Number) : void
      {
         this.§`!B§("alpha",param1);
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
         var _loc2_:Number = this.§@'§;
         this.§@'§ += param1;
         if(this.§@'§ < 0 || _loc2_ >= this.§^R§)
         {
            return;
         }
         if(this.§1U§ != null && _loc2_ <= 0 && this.§@'§ >= 0)
         {
            this.§1U§.apply(null,this.§^!<§);
         }
         var _loc3_:Number = Math.min(this.§^R§,this.§@'§) / this.§^R§;
         var _loc4_:int = this.§@J§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§@J§[_loc5_]))
            {
               this.§@J§[_loc5_] = this.§;J§[this.§2!H§[_loc5_]] as Number;
            }
            _loc6_ = this.§@J§[_loc5_];
            _loc8_ = (_loc7_ = this.§-&§[_loc5_]) - _loc6_;
            _loc9_ = §`%§.§,!U§(this.§'!H§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§]2§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§;J§[this.§2!H§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§3,§ != null)
         {
            this.§3,§.apply(null,this.§3!;§);
         }
         if(_loc2_ < this.§^R§ && this.§@'§ >= this.§^R§)
         {
            dispatchEvent(new Event(Event.§2!&§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§<!A§);
            }
         }
      }
      
      public function get §3!R§() : Boolean
      {
         return this.§@'§ >= this.§^R§;
      }
      
      public function get target() : Object
      {
         return this.§;J§;
      }
      
      public function get §4L§() : String
      {
         return this.§'!H§;
      }
      
      public function get §>! §() : Number
      {
         return this.§^R§;
      }
      
      public function get §"!3§() : Number
      {
         return this.§@'§;
      }
      
      public function get delay() : Number
      {
         return this.§]H§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§@'§ = this.§@'§ + this.§]H§ - param1;
         this.§]H§ = param1;
      }
      
      public function get § !§() : Boolean
      {
         return this.§]2§;
      }
      
      public function set § !§(param1:Boolean) : void
      {
         this.§]2§ = param1;
      }
      
      public function get §1U§() : Function
      {
         return this.§ +§;
      }
      
      public function set §1U§(param1:Function) : void
      {
         this.§ +§ = param1;
      }
      
      public function get §3,§() : Function
      {
         return this.§6!9§;
      }
      
      public function set §3,§(param1:Function) : void
      {
         this.§6!9§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§finally§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§finally§ = param1;
      }
      
      public function get §2J§() : Array
      {
         return this.§^!<§;
      }
      
      public function set §2J§(param1:Array) : void
      {
         this.§^!<§ = param1;
      }
      
      public function get §0Y§() : Array
      {
         return this.§3!;§;
      }
      
      public function set §0Y§(param1:Array) : void
      {
         this.§3!;§ = param1;
      }
      
      public function get §4g§() : Array
      {
         return this.§<!A§;
      }
      
      public function set §4g§(param1:Array) : void
      {
         this.§<!A§ = param1;
      }
   }
}
