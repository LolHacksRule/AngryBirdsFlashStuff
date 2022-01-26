package §_-dY§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §_-qI§ extends EventDispatcher implements §default§
   {
       
      
      private var §_-wF§:Object;
      
      private var §_-Yb§:String;
      
      private var §_-8Z§:Vector.<String>;
      
      private var §_-WA§:Vector.<Number>;
      
      private var §_-NL§:Vector.<Number>;
      
      private var §_-Od§:Function;
      
      private var §_-Wd§:Function;
      
      private var §_-PU§:Function;
      
      private var §_-nE§:Array;
      
      private var §_-C2§:Array;
      
      private var §_-PS§:Array;
      
      private var §_-0-W§:Number;
      
      private var §_-0-1§:Number;
      
      private var §_-yS§:Number;
      
      private var §_-I8§:Boolean;
      
      public function §_-qI§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§_-wF§ = param1;
         this.§_-0-1§ = 0;
         this.§_-0-W§ = Math.max(0.0001,param2);
         this.§_-yS§ = 0;
         this.§_-Yb§ = param3;
         this.§_-I8§ = false;
         this.§_-8Z§ = new Vector.<String>(0);
         this.§_-WA§ = new Vector.<Number>(0);
         this.§_-NL§ = new Vector.<Number>(0);
      }
      
      public function §_-Lg§(param1:String, param2:Number) : void
      {
         if(this.§_-wF§ == null)
         {
            return;
         }
         this.§_-8Z§.push(param1);
         this.§_-WA§.push(Number.NaN);
         this.§_-NL§.push(param2);
      }
      
      public function §_-dZ§(param1:Number) : void
      {
         this.§_-Lg§("scaleX",param1);
         this.§_-Lg§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§_-Lg§("x",param1);
         this.§_-Lg§("y",param2);
      }
      
      public function §_-6w§(param1:Number) : void
      {
         this.§_-Lg§("alpha",param1);
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
         var _loc2_:Number = this.§_-0-1§;
         this.§_-0-1§ += param1;
         if(this.§_-0-1§ < 0 || _loc2_ >= this.§_-0-W§)
         {
            return;
         }
         if(this.§_-9G§ != null && _loc2_ <= 0 && this.§_-0-1§ >= 0)
         {
            this.§_-9G§.apply(null,this.§_-nE§);
         }
         var _loc3_:Number = Math.min(this.§_-0-W§,this.§_-0-1§) / this.§_-0-W§;
         var _loc4_:int = this.§_-WA§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§_-WA§[_loc5_]))
            {
               this.§_-WA§[_loc5_] = this.§_-wF§[this.§_-8Z§[_loc5_]] as Number;
            }
            _loc6_ = this.§_-WA§[_loc5_];
            _loc8_ = (_loc7_ = this.§_-NL§[_loc5_]) - _loc6_;
            _loc9_ = §_-0-P§.§_-Hb§(this.§_-Yb§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§_-I8§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§_-wF§[this.§_-8Z§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§_-R§ != null)
         {
            this.§_-R§.apply(null,this.§_-C2§);
         }
         if(_loc2_ < this.§_-0-W§ && this.§_-0-1§ >= this.§_-0-W§)
         {
            dispatchEvent(new Event(Event.§_-VS§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§_-PS§);
            }
         }
      }
      
      public function get §_-7i§() : Boolean
      {
         return this.§_-0-1§ >= this.§_-0-W§;
      }
      
      public function get target() : Object
      {
         return this.§_-wF§;
      }
      
      public function get §_-lM§() : String
      {
         return this.§_-Yb§;
      }
      
      public function get §_-Ig§() : Number
      {
         return this.§_-0-W§;
      }
      
      public function get §_-cT§() : Number
      {
         return this.§_-0-1§;
      }
      
      public function get delay() : Number
      {
         return this.§_-yS§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§_-0-1§ = this.§_-0-1§ + this.§_-yS§ - param1;
         this.§_-yS§ = param1;
      }
      
      public function get §_-wu§() : Boolean
      {
         return this.§_-I8§;
      }
      
      public function set §_-wu§(param1:Boolean) : void
      {
         this.§_-I8§ = param1;
      }
      
      public function get §_-9G§() : Function
      {
         return this.§_-Od§;
      }
      
      public function set §_-9G§(param1:Function) : void
      {
         this.§_-Od§ = param1;
      }
      
      public function get §_-R§() : Function
      {
         return this.§_-Wd§;
      }
      
      public function set §_-R§(param1:Function) : void
      {
         this.§_-Wd§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§_-PU§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§_-PU§ = param1;
      }
      
      public function get §_-SV§() : Array
      {
         return this.§_-nE§;
      }
      
      public function set §_-SV§(param1:Array) : void
      {
         this.§_-nE§ = param1;
      }
      
      public function get §_-eL§() : Array
      {
         return this.§_-C2§;
      }
      
      public function set §_-eL§(param1:Array) : void
      {
         this.§_-C2§ = param1;
      }
      
      public function get §_-Zl§() : Array
      {
         return this.§_-PS§;
      }
      
      public function set §_-Zl§(param1:Array) : void
      {
         this.§_-PS§ = param1;
      }
   }
}
