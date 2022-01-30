package §>!]§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §>!N§ extends EventDispatcher implements §6!B§
   {
       
      
      private var §7!_§:Object;
      
      private var §42§:String;
      
      private var §2!h§:Vector.<String>;
      
      private var §]j§:Vector.<Number>;
      
      private var §4J§:Vector.<Number>;
      
      private var §1@§:Function;
      
      private var §;!w§:Function;
      
      private var §@!C§:Function;
      
      private var §>+§:Array;
      
      private var §^!0§:Array;
      
      private var §5!m§:Array;
      
      private var §-U§:Number;
      
      private var §5a§:Number;
      
      private var §!" §:Number;
      
      private var §?!w§:Boolean;
      
      public function §>!N§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§7!_§ = param1;
         this.§5a§ = 0;
         this.§-U§ = Math.max(0.0001,param2);
         this.§!" § = 0;
         this.§42§ = param3;
         this.§?!w§ = false;
         this.§2!h§ = new Vector.<String>(0);
         this.§]j§ = new Vector.<Number>(0);
         this.§4J§ = new Vector.<Number>(0);
      }
      
      public function §&3§(param1:String, param2:Number) : void
      {
         if(this.§7!_§ == null)
         {
            return;
         }
         this.§2!h§.push(param1);
         this.§]j§.push(Number.NaN);
         this.§4J§.push(param2);
      }
      
      public function §<" §(param1:Number) : void
      {
         this.§&3§("scaleX",param1);
         this.§&3§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§&3§("x",param1);
         this.§&3§("y",param2);
      }
      
      public function §8^§(param1:Number) : void
      {
         this.§&3§("alpha",param1);
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
         var _loc2_:Number = this.§5a§;
         this.§5a§ += param1;
         if(this.§5a§ < 0 || _loc2_ >= this.§-U§)
         {
            return;
         }
         if(this.§,!a§ != null && _loc2_ <= 0 && this.§5a§ >= 0)
         {
            this.§,!a§.apply(null,this.§>+§);
         }
         var _loc3_:Number = Math.min(this.§-U§,this.§5a§) / this.§-U§;
         var _loc4_:int = this.§]j§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§]j§[_loc5_]))
            {
               this.§]j§[_loc5_] = this.§7!_§[this.§2!h§[_loc5_]] as Number;
            }
            _loc6_ = this.§]j§[_loc5_];
            _loc8_ = (_loc7_ = this.§4J§[_loc5_]) - _loc6_;
            _loc9_ = §?!M§.§`w§(this.§42§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§?!w§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§7!_§[this.§2!h§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§1!g§ != null)
         {
            this.§1!g§.apply(null,this.§^!0§);
         }
         if(_loc2_ < this.§-U§ && this.§5a§ >= this.§-U§)
         {
            dispatchEvent(new Event(Event.§=P§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§5!m§);
            }
         }
      }
      
      public function get §4!d§() : Boolean
      {
         return this.§5a§ >= this.§-U§;
      }
      
      public function get target() : Object
      {
         return this.§7!_§;
      }
      
      public function get §&d§() : String
      {
         return this.§42§;
      }
      
      public function get §9e§() : Number
      {
         return this.§-U§;
      }
      
      public function get §%t§() : Number
      {
         return this.§5a§;
      }
      
      public function get delay() : Number
      {
         return this.§!" §;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§5a§ = this.§5a§ + this.§!" § - param1;
         this.§!" § = param1;
      }
      
      public function get §-"'§() : Boolean
      {
         return this.§?!w§;
      }
      
      public function set §-"'§(param1:Boolean) : void
      {
         this.§?!w§ = param1;
      }
      
      public function get §,!a§() : Function
      {
         return this.§1@§;
      }
      
      public function set §,!a§(param1:Function) : void
      {
         this.§1@§ = param1;
      }
      
      public function get §1!g§() : Function
      {
         return this.§;!w§;
      }
      
      public function set §1!g§(param1:Function) : void
      {
         this.§;!w§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§@!C§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§@!C§ = param1;
      }
      
      public function get §-!x§() : Array
      {
         return this.§>+§;
      }
      
      public function set §-!x§(param1:Array) : void
      {
         this.§>+§ = param1;
      }
      
      public function get §8"§() : Array
      {
         return this.§^!0§;
      }
      
      public function set §8"§(param1:Array) : void
      {
         this.§^!0§ = param1;
      }
      
      public function get §?#§() : Array
      {
         return this.§5!m§;
      }
      
      public function set §?#§(param1:Array) : void
      {
         this.§5!m§ = param1;
      }
   }
}
