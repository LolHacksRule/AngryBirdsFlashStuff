package §+>§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §+t§ extends EventDispatcher implements §=!E§
   {
       
      
      private var §?Z§:Object;
      
      private var § F§:String;
      
      private var §8k§:Vector.<String>;
      
      private var §,q§:Vector.<Number>;
      
      private var §1W§:Vector.<Number>;
      
      private var §[B§:Function;
      
      private var §1!-§:Function;
      
      private var §9D§:Function;
      
      private var § !P§:Array;
      
      private var §9"§:Array;
      
      private var §<q§:Array;
      
      private var §]!T§:Number;
      
      private var §?!M§:Number;
      
      private var §!!+§:Number;
      
      private var §+T§:Boolean;
      
      public function §+t§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§?Z§ = param1;
         this.§?!M§ = 0;
         this.§]!T§ = Math.max(0.0001,param2);
         this.§!!+§ = 0;
         this.§ F§ = param3;
         this.§+T§ = false;
         this.§8k§ = new Vector.<String>(0);
         this.§,q§ = new Vector.<Number>(0);
         this.§1W§ = new Vector.<Number>(0);
      }
      
      public function §[![§(param1:String, param2:Number) : void
      {
         if(this.§?Z§ == null)
         {
            return;
         }
         this.§8k§.push(param1);
         this.§,q§.push(Number.NaN);
         this.§1W§.push(param2);
      }
      
      public function §9N§(param1:Number) : void
      {
         this.§[![§("scaleX",param1);
         this.§[![§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§[![§("x",param1);
         this.§[![§("y",param2);
      }
      
      public function §!#§(param1:Number) : void
      {
         this.§[![§("alpha",param1);
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
         var _loc2_:Number = this.§?!M§;
         this.§?!M§ += param1;
         if(this.§?!M§ < 0 || _loc2_ >= this.§]!T§)
         {
            return;
         }
         if(this.§>z§ != null && _loc2_ <= 0 && this.§?!M§ >= 0)
         {
            this.§>z§.apply(null,this.§ !P§);
         }
         var _loc3_:Number = Math.min(this.§]!T§,this.§?!M§) / this.§]!T§;
         var _loc4_:int = this.§,q§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§,q§[_loc5_]))
            {
               this.§,q§[_loc5_] = this.§?Z§[this.§8k§[_loc5_]] as Number;
            }
            _loc6_ = this.§,q§[_loc5_];
            _loc8_ = (_loc7_ = this.§1W§[_loc5_]) - _loc6_;
            _loc9_ = §4!7§.§[E§(this.§ F§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§+T§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§?Z§[this.§8k§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§&!6§ != null)
         {
            this.§&!6§.apply(null,this.§9"§);
         }
         if(_loc2_ < this.§]!T§ && this.§?!M§ >= this.§]!T§)
         {
            dispatchEvent(new Event(Event.§7W§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§<q§);
            }
         }
      }
      
      public function get §<!?§() : Boolean
      {
         return this.§?!M§ >= this.§]!T§;
      }
      
      public function get target() : Object
      {
         return this.§?Z§;
      }
      
      public function get §'!$§() : String
      {
         return this.§ F§;
      }
      
      public function get §^!$§() : Number
      {
         return this.§]!T§;
      }
      
      public function get §]8§() : Number
      {
         return this.§?!M§;
      }
      
      public function get delay() : Number
      {
         return this.§!!+§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§?!M§ = this.§?!M§ + this.§!!+§ - param1;
         this.§!!+§ = param1;
      }
      
      public function get §[!#§() : Boolean
      {
         return this.§+T§;
      }
      
      public function set §[!#§(param1:Boolean) : void
      {
         this.§+T§ = param1;
      }
      
      public function get §>z§() : Function
      {
         return this.§[B§;
      }
      
      public function set §>z§(param1:Function) : void
      {
         this.§[B§ = param1;
      }
      
      public function get §&!6§() : Function
      {
         return this.§1!-§;
      }
      
      public function set §&!6§(param1:Function) : void
      {
         this.§1!-§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§9D§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§9D§ = param1;
      }
      
      public function get §8!0§() : Array
      {
         return this.§ !P§;
      }
      
      public function set §8!0§(param1:Array) : void
      {
         this.§ !P§ = param1;
      }
      
      public function get §3!'§() : Array
      {
         return this.§9"§;
      }
      
      public function set §3!'§(param1:Array) : void
      {
         this.§9"§ = param1;
      }
      
      public function get §5n§() : Array
      {
         return this.§<q§;
      }
      
      public function set §5n§(param1:Array) : void
      {
         this.§<q§ = param1;
      }
   }
}
