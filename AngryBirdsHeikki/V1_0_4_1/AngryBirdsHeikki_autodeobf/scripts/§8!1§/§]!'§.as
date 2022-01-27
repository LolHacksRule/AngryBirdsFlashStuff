package §8!1§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §]!'§ extends EventDispatcher implements § _§
   {
       
      
      private var §2[§:Object;
      
      private var §2!'§:String;
      
      private var §+!J§:Vector.<String>;
      
      private var §]E§:Vector.<Number>;
      
      private var §1t§:Vector.<Number>;
      
      private var §9!H§:Function;
      
      private var §1!T§:Function;
      
      private var §0s§:Function;
      
      private var §^z§:Array;
      
      private var §?&§:Array;
      
      private var §'[§:Array;
      
      private var §<o§:Number;
      
      private var §+!"§:Number;
      
      private var §>+§:Number;
      
      private var § n§:Boolean;
      
      public function §]!'§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§2[§ = param1;
         this.§+!"§ = 0;
         this.§<o§ = Math.max(0.0001,param2);
         this.§>+§ = 0;
         this.§2!'§ = param3;
         this.§ n§ = false;
         this.§+!J§ = new Vector.<String>(0);
         this.§]E§ = new Vector.<Number>(0);
         this.§1t§ = new Vector.<Number>(0);
      }
      
      public function §"!§(param1:String, param2:Number) : void
      {
         if(this.§2[§ == null)
         {
            return;
         }
         this.§+!J§.push(param1);
         this.§]E§.push(Number.NaN);
         this.§1t§.push(param2);
      }
      
      public function §4Y§(param1:Number) : void
      {
         this.§"!§("scaleX",param1);
         this.§"!§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§"!§("x",param1);
         this.§"!§("y",param2);
      }
      
      public function §?G§(param1:Number) : void
      {
         this.§"!§("alpha",param1);
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
         var _loc2_:Number = this.§+!"§;
         this.§+!"§ += param1;
         if(this.§+!"§ < 0 || _loc2_ >= this.§<o§)
         {
            return;
         }
         if(this.§!!_§ != null && _loc2_ <= 0 && this.§+!"§ >= 0)
         {
            this.§!!_§.apply(null,this.§^z§);
         }
         var _loc3_:Number = Math.min(this.§<o§,this.§+!"§) / this.§<o§;
         var _loc4_:int = this.§]E§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§]E§[_loc5_]))
            {
               this.§]E§[_loc5_] = this.§2[§[this.§+!J§[_loc5_]] as Number;
            }
            _loc6_ = this.§]E§[_loc5_];
            _loc8_ = (_loc7_ = this.§1t§[_loc5_]) - _loc6_;
            _loc9_ = §4$§.§ Q§(this.§2!'§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§ n§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§2[§[this.§+!J§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§6J§ != null)
         {
            this.§6J§.apply(null,this.§?&§);
         }
         if(_loc2_ < this.§<o§ && this.§+!"§ >= this.§<o§)
         {
            dispatchEvent(new Event(Event.§?!E§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§'[§);
            }
         }
      }
      
      public function get §>N§() : Boolean
      {
         return this.§+!"§ >= this.§<o§;
      }
      
      public function get target() : Object
      {
         return this.§2[§;
      }
      
      public function get §]e§() : String
      {
         return this.§2!'§;
      }
      
      public function get §7!?§() : Number
      {
         return this.§<o§;
      }
      
      public function get §@!-§() : Number
      {
         return this.§+!"§;
      }
      
      public function get delay() : Number
      {
         return this.§>+§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§+!"§ = this.§+!"§ + this.§>+§ - param1;
         this.§>+§ = param1;
      }
      
      public function get §3!E§() : Boolean
      {
         return this.§ n§;
      }
      
      public function set §3!E§(param1:Boolean) : void
      {
         this.§ n§ = param1;
      }
      
      public function get §!!_§() : Function
      {
         return this.§9!H§;
      }
      
      public function set §!!_§(param1:Function) : void
      {
         this.§9!H§ = param1;
      }
      
      public function get §6J§() : Function
      {
         return this.§1!T§;
      }
      
      public function set §6J§(param1:Function) : void
      {
         this.§1!T§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§0s§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§0s§ = param1;
      }
      
      public function get §5!H§() : Array
      {
         return this.§^z§;
      }
      
      public function set §5!H§(param1:Array) : void
      {
         this.§^z§ = param1;
      }
      
      public function get §`'§() : Array
      {
         return this.§?&§;
      }
      
      public function set §`'§(param1:Array) : void
      {
         this.§?&§ = param1;
      }
      
      public function get §5!C§() : Array
      {
         return this.§'[§;
      }
      
      public function set §5!C§(param1:Array) : void
      {
         this.§'[§ = param1;
      }
   }
}
