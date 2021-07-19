package §,M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §@-§ extends EventDispatcher implements §6!G§
   {
       
      
      private var §'Q§:Object;
      
      private var §6!J§:String;
      
      private var §3j§:Vector.<String>;
      
      private var §7!3§:Vector.<Number>;
      
      private var §"!3§:Vector.<Number>;
      
      private var §2'§:Function;
      
      private var §7p§:Function;
      
      private var §,3§:Function;
      
      private var §7v§:Array;
      
      private var §with§:Array;
      
      private var §@!U§:Array;
      
      private var §1!S§:Number;
      
      private var §?!'§:Number;
      
      private var §]A§:Number;
      
      private var §[S§:Boolean;
      
      public function §@-§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§'Q§ = param1;
         this.§?!'§ = 0;
         this.§1!S§ = Math.max(0.0001,param2);
         this.§]A§ = 0;
         this.§6!J§ = param3;
         this.§[S§ = false;
         this.§3j§ = new Vector.<String>(0);
         this.§7!3§ = new Vector.<Number>(0);
         this.§"!3§ = new Vector.<Number>(0);
      }
      
      public function §-!6§(param1:String, param2:Number) : void
      {
         if(this.§'Q§ == null)
         {
            return;
         }
         this.§3j§.push(param1);
         this.§7!3§.push(Number.NaN);
         this.§"!3§.push(param2);
      }
      
      public function §+!d§(param1:Number) : void
      {
         this.§-!6§("scaleX",param1);
         this.§-!6§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§-!6§("x",param1);
         this.§-!6§("y",param2);
      }
      
      public function §0!'§(param1:Number) : void
      {
         this.§-!6§("alpha",param1);
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
         var _loc2_:Number = this.§?!'§;
         this.§?!'§ += param1;
         if(this.§?!'§ < 0 || _loc2_ >= this.§1!S§)
         {
            return;
         }
         if(this.§!'§ != null && _loc2_ <= 0 && this.§?!'§ >= 0)
         {
            this.§!'§.apply(null,this.§7v§);
         }
         var _loc3_:Number = Math.min(this.§1!S§,this.§?!'§) / this.§1!S§;
         var _loc4_:int = this.§7!3§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§7!3§[_loc5_]))
            {
               this.§7!3§[_loc5_] = this.§'Q§[this.§3j§[_loc5_]] as Number;
            }
            _loc6_ = this.§7!3§[_loc5_];
            _loc8_ = (_loc7_ = this.§"!3§[_loc5_]) - _loc6_;
            _loc9_ = §0!J§.§`!;§(this.§6!J§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§[S§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§'Q§[this.§3j§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§&!7§ != null)
         {
            this.§&!7§.apply(null,this.§with§);
         }
         if(_loc2_ < this.§1!S§ && this.§?!'§ >= this.§1!S§)
         {
            dispatchEvent(new Event(Event.§9Y§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§@!U§);
            }
         }
      }
      
      public function get §5@§() : Boolean
      {
         return this.§?!'§ >= this.§1!S§;
      }
      
      public function get target() : Object
      {
         return this.§'Q§;
      }
      
      public function get §#!O§() : String
      {
         return this.§6!J§;
      }
      
      public function get §2c§() : Number
      {
         return this.§1!S§;
      }
      
      public function get §7-§() : Number
      {
         return this.§?!'§;
      }
      
      public function get delay() : Number
      {
         return this.§]A§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§?!'§ = this.§?!'§ + this.§]A§ - param1;
         this.§]A§ = param1;
      }
      
      public function get §2p§() : Boolean
      {
         return this.§[S§;
      }
      
      public function set §2p§(param1:Boolean) : void
      {
         this.§[S§ = param1;
      }
      
      public function get §!'§() : Function
      {
         return this.§2'§;
      }
      
      public function set §!'§(param1:Function) : void
      {
         this.§2'§ = param1;
      }
      
      public function get §&!7§() : Function
      {
         return this.§7p§;
      }
      
      public function set §&!7§(param1:Function) : void
      {
         this.§7p§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§,3§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§,3§ = param1;
      }
      
      public function get §7i§() : Array
      {
         return this.§7v§;
      }
      
      public function set §7i§(param1:Array) : void
      {
         this.§7v§ = param1;
      }
      
      public function get §+!D§() : Array
      {
         return this.§with§;
      }
      
      public function set §+!D§(param1:Array) : void
      {
         this.§with§ = param1;
      }
      
      public function get §`2§() : Array
      {
         return this.§@!U§;
      }
      
      public function set §`2§(param1:Array) : void
      {
         this.§@!U§ = param1;
      }
   }
}
