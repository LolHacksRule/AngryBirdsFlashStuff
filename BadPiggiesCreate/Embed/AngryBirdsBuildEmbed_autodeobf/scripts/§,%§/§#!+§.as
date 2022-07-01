package §,%§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §#!+§ extends EventDispatcher implements §&!Z§
   {
       
      
      private var §8!$§:Object;
      
      private var §%Q§:String;
      
      private var §"t§:Vector.<String>;
      
      private var §?!Y§:Vector.<Number>;
      
      private var §?!§:Vector.<Number>;
      
      private var §>!n§:Function;
      
      private var §&!+§:Function;
      
      private var §2S§:Function;
      
      private var §%K§:Array;
      
      private var §7x§:Array;
      
      private var §@!k§:Array;
      
      private var § @§:Number;
      
      private var §<!J§:Number;
      
      private var § V§:Number;
      
      private var §]@§:Boolean;
      
      public function §#!+§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§8!$§ = param1;
         this.§<!J§ = 0;
         this.§ @§ = Math.max(0.0001,param2);
         this.§ V§ = 0;
         this.§%Q§ = param3;
         this.§]@§ = false;
         this.§"t§ = new Vector.<String>(0);
         this.§?!Y§ = new Vector.<Number>(0);
         this.§?!§ = new Vector.<Number>(0);
      }
      
      public function §+-§(param1:String, param2:Number) : void
      {
         if(this.§8!$§ == null)
         {
            return;
         }
         this.§"t§.push(param1);
         this.§?!Y§.push(Number.NaN);
         this.§?!§.push(param2);
      }
      
      public function §[E§(param1:Number) : void
      {
         this.§+-§("scaleX",param1);
         this.§+-§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§+-§("x",param1);
         this.§+-§("y",param2);
      }
      
      public function §9!7§(param1:Number) : void
      {
         this.§+-§("alpha",param1);
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
         var _loc2_:Number = this.§<!J§;
         this.§<!J§ += param1;
         if(this.§<!J§ < 0 || _loc2_ >= this.§ @§)
         {
            return;
         }
         if(this.§17§ != null && _loc2_ <= 0 && this.§<!J§ >= 0)
         {
            this.§17§.apply(null,this.§%K§);
         }
         var _loc3_:Number = Math.min(this.§ @§,this.§<!J§) / this.§ @§;
         var _loc4_:int = this.§?!Y§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§?!Y§[_loc5_]))
            {
               this.§?!Y§[_loc5_] = this.§8!$§[this.§"t§[_loc5_]] as Number;
            }
            _loc6_ = this.§?!Y§[_loc5_];
            _loc8_ = (_loc7_ = this.§?!§[_loc5_]) - _loc6_;
            _loc9_ = §7^§.§&1§(this.§%Q§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§]@§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§8!$§[this.§"t§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.onUpdate != null)
         {
            this.onUpdate.apply(null,this.§7x§);
         }
         if(_loc2_ < this.§ @§ && this.§<!J§ >= this.§ @§)
         {
            dispatchEvent(new Event(Event.§%%§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§@!k§);
            }
         }
      }
      
      public function get §`Q§() : Boolean
      {
         return this.§<!J§ >= this.§ @§;
      }
      
      public function get target() : Object
      {
         return this.§8!$§;
      }
      
      public function get §3!b§() : String
      {
         return this.§%Q§;
      }
      
      public function get §=W§() : Number
      {
         return this.§ @§;
      }
      
      public function get currentTime() : Number
      {
         return this.§<!J§;
      }
      
      public function get delay() : Number
      {
         return this.§ V§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§<!J§ = this.§<!J§ + this.§ V§ - param1;
         this.§ V§ = param1;
      }
      
      public function get §=!]§() : Boolean
      {
         return this.§]@§;
      }
      
      public function set §=!]§(param1:Boolean) : void
      {
         this.§]@§ = param1;
      }
      
      public function get §17§() : Function
      {
         return this.§>!n§;
      }
      
      public function set §17§(param1:Function) : void
      {
         this.§>!n§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§&!+§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§&!+§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§2S§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§2S§ = param1;
      }
      
      public function get §<t§() : Array
      {
         return this.§%K§;
      }
      
      public function set §<t§(param1:Array) : void
      {
         this.§%K§ = param1;
      }
      
      public function get §1!V§() : Array
      {
         return this.§7x§;
      }
      
      public function set §1!V§(param1:Array) : void
      {
         this.§7x§ = param1;
      }
      
      public function get §%!t§() : Array
      {
         return this.§@!k§;
      }
      
      public function set §%!t§(param1:Array) : void
      {
         this.§@!k§ = param1;
      }
   }
}
