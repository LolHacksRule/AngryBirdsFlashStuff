package §8!R§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §^I§ extends EventDispatcher implements §8$§
   {
       
      
      private var §9!J§:Object;
      
      private var §[!&§:String;
      
      private var §>o§:Vector.<String>;
      
      private var §;n§:Vector.<Number>;
      
      private var §#2§:Vector.<Number>;
      
      private var §^6§:Function;
      
      private var §#K§:Function;
      
      private var §=!9§:Function;
      
      private var §`K§:Array;
      
      private var §#p§:Array;
      
      private var §%d§:Array;
      
      private var §3!Q§:Number;
      
      private var §?!=§:Number;
      
      private var §9E§:Number;
      
      private var §=!!§:Boolean;
      
      public function §^I§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§9!J§ = param1;
         this.§?!=§ = 0;
         this.§3!Q§ = Math.max(0.0001,param2);
         this.§9E§ = 0;
         this.§[!&§ = param3;
         this.§=!!§ = false;
         this.§>o§ = new Vector.<String>(0);
         this.§;n§ = new Vector.<Number>(0);
         this.§#2§ = new Vector.<Number>(0);
      }
      
      public function §[H§(param1:String, param2:Number) : void
      {
         if(this.§9!J§ == null)
         {
            return;
         }
         this.§>o§.push(param1);
         this.§;n§.push(Number.NaN);
         this.§#2§.push(param2);
      }
      
      public function §^L§(param1:Number) : void
      {
         this.§[H§("scaleX",param1);
         this.§[H§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§[H§("x",param1);
         this.§[H§("y",param2);
      }
      
      public function §&!!§(param1:Number) : void
      {
         this.§[H§("alpha",param1);
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
         var _loc2_:Number = this.§?!=§;
         this.§?!=§ += param1;
         if(this.§?!=§ < 0 || _loc2_ >= this.§3!Q§)
         {
            return;
         }
         if(this.§1![§ != null && _loc2_ <= 0 && this.§?!=§ >= 0)
         {
            this.§1![§.apply(null,this.§`K§);
         }
         var _loc3_:Number = Math.min(this.§3!Q§,this.§?!=§) / this.§3!Q§;
         var _loc4_:int = this.§;n§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§;n§[_loc5_]))
            {
               this.§;n§[_loc5_] = this.§9!J§[this.§>o§[_loc5_]] as Number;
            }
            _loc6_ = this.§;n§[_loc5_];
            _loc8_ = (_loc7_ = this.§#2§[_loc5_]) - _loc6_;
            _loc9_ = §5!8§.§`!G§(this.§[!&§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§=!!§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§9!J§[this.§>o§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§%F§ != null)
         {
            this.§%F§.apply(null,this.§#p§);
         }
         if(_loc2_ < this.§3!Q§ && this.§?!=§ >= this.§3!Q§)
         {
            dispatchEvent(new Event(Event.§?!V§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§%d§);
            }
         }
      }
      
      public function get §!!+§() : Boolean
      {
         return this.§?!=§ >= this.§3!Q§;
      }
      
      public function get target() : Object
      {
         return this.§9!J§;
      }
      
      public function get §0§() : String
      {
         return this.§[!&§;
      }
      
      public function get §3E§() : Number
      {
         return this.§3!Q§;
      }
      
      public function get §3H§() : Number
      {
         return this.§?!=§;
      }
      
      public function get delay() : Number
      {
         return this.§9E§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§?!=§ = this.§?!=§ + this.§9E§ - param1;
         this.§9E§ = param1;
      }
      
      public function get §=!X§() : Boolean
      {
         return this.§=!!§;
      }
      
      public function set §=!X§(param1:Boolean) : void
      {
         this.§=!!§ = param1;
      }
      
      public function get §1![§() : Function
      {
         return this.§^6§;
      }
      
      public function set §1![§(param1:Function) : void
      {
         this.§^6§ = param1;
      }
      
      public function get §%F§() : Function
      {
         return this.§#K§;
      }
      
      public function set §%F§(param1:Function) : void
      {
         this.§#K§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§=!9§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§=!9§ = param1;
      }
      
      public function get §<j§() : Array
      {
         return this.§`K§;
      }
      
      public function set §<j§(param1:Array) : void
      {
         this.§`K§ = param1;
      }
      
      public function get §@!Q§() : Array
      {
         return this.§#p§;
      }
      
      public function set §@!Q§(param1:Array) : void
      {
         this.§#p§ = param1;
      }
      
      public function get §!!6§() : Array
      {
         return this.§%d§;
      }
      
      public function set §!!6§(param1:Array) : void
      {
         this.§%d§ = param1;
      }
   }
}
