package §"[§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §-§ extends EventDispatcher implements §1%§
   {
       
      
      private var §4!-§:Object;
      
      private var §?k§:String;
      
      private var §6H§:Vector.<String>;
      
      private var §]K§:Vector.<Number>;
      
      private var §^!9§:Vector.<Number>;
      
      private var § >§:Function;
      
      private var §[!K§:Function;
      
      private var §>u§:Function;
      
      private var §each §:Array;
      
      private var §8n§:Array;
      
      private var §?!'§:Array;
      
      private var §`!F§:Number;
      
      private var §4;§:Number;
      
      private var §3!5§:Number;
      
      private var §?7§:Boolean;
      
      public function §-§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§4!-§ = param1;
         this.§4;§ = 0;
         this.§`!F§ = Math.max(0.0001,param2);
         this.§3!5§ = 0;
         this.§?k§ = param3;
         this.§?7§ = false;
         this.§6H§ = new Vector.<String>(0);
         this.§]K§ = new Vector.<Number>(0);
         this.§^!9§ = new Vector.<Number>(0);
      }
      
      public function §?!0§(param1:String, param2:Number) : void
      {
         if(this.§4!-§ == null)
         {
            return;
         }
         this.§6H§.push(param1);
         this.§]K§.push(Number.NaN);
         this.§^!9§.push(param2);
      }
      
      public function §&`§(param1:Number) : void
      {
         this.§?!0§("scaleX",param1);
         this.§?!0§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§?!0§("x",param1);
         this.§?!0§("y",param2);
      }
      
      public function §"9§(param1:Number) : void
      {
         this.§?!0§("alpha",param1);
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
         var _loc2_:Number = this.§4;§;
         this.§4;§ += param1;
         if(this.§4;§ < 0 || _loc2_ >= this.§`!F§)
         {
            return;
         }
         if(this.§&Q§ != null && _loc2_ <= 0 && this.§4;§ >= 0)
         {
            this.§&Q§.apply(null,this.§each §);
         }
         var _loc3_:Number = Math.min(this.§`!F§,this.§4;§) / this.§`!F§;
         var _loc4_:int = this.§]K§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§]K§[_loc5_]))
            {
               this.§]K§[_loc5_] = this.§4!-§[this.§6H§[_loc5_]] as Number;
            }
            _loc6_ = this.§]K§[_loc5_];
            _loc8_ = (_loc7_ = this.§^!9§[_loc5_]) - _loc6_;
            _loc9_ = §@-§.§5S§(this.§?k§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§?7§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§4!-§[this.§6H§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§,N§ != null)
         {
            this.§,N§.apply(null,this.§8n§);
         }
         if(_loc2_ < this.§`!F§ && this.§4;§ >= this.§`!F§)
         {
            dispatchEvent(new Event(Event.§!q§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§?!'§);
            }
         }
      }
      
      public function get §,w§() : Boolean
      {
         return this.§4;§ >= this.§`!F§;
      }
      
      public function get target() : Object
      {
         return this.§4!-§;
      }
      
      public function get §%O§() : String
      {
         return this.§?k§;
      }
      
      public function get §,F§() : Number
      {
         return this.§`!F§;
      }
      
      public function get currentTime() : Number
      {
         return this.§4;§;
      }
      
      public function get delay() : Number
      {
         return this.§3!5§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§4;§ = this.§4;§ + this.§3!5§ - param1;
         this.§3!5§ = param1;
      }
      
      public function get §8a§() : Boolean
      {
         return this.§?7§;
      }
      
      public function set §8a§(param1:Boolean) : void
      {
         this.§?7§ = param1;
      }
      
      public function get §&Q§() : Function
      {
         return this.§ >§;
      }
      
      public function set §&Q§(param1:Function) : void
      {
         this.§ >§ = param1;
      }
      
      public function get §,N§() : Function
      {
         return this.§[!K§;
      }
      
      public function set §,N§(param1:Function) : void
      {
         this.§[!K§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§>u§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§>u§ = param1;
      }
      
      public function get §+E§() : Array
      {
         return this.§each §;
      }
      
      public function set §+E§(param1:Array) : void
      {
         this.§each § = param1;
      }
      
      public function get §6a§() : Array
      {
         return this.§8n§;
      }
      
      public function set §6a§(param1:Array) : void
      {
         this.§8n§ = param1;
      }
      
      public function get §,!%§() : Array
      {
         return this.§?!'§;
      }
      
      public function set §,!%§(param1:Array) : void
      {
         this.§?!'§ = param1;
      }
   }
}
