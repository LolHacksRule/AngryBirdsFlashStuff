package §_-qn§
{
   public class §_-Nh§ implements §_-qd§
   {
       
      
      private var §_-Kv§:Object;
      
      private var §catch§:String;
      
      private var §_-8O§:Vector.<String>;
      
      private var §_-MQ§:Vector.<Number>;
      
      private var §_-4b§:Vector.<Number>;
      
      private var §_-mb§:Function;
      
      private var §_-U9§:Function;
      
      private var §_-Q-§:Function;
      
      private var §_-Rv§:Array;
      
      private var §_-Yw§:Array;
      
      private var §_-nz§:Array;
      
      private var §_-Zb§:Number;
      
      private var §_-PK§:Number;
      
      private var §_-Q6§:Number;
      
      private var §_-sZ§:Boolean;
      
      public function §_-Nh§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§_-Kv§ = param1;
         this.§_-PK§ = 0;
         this.§_-Zb§ = Math.max(0.0001,param2);
         this.§_-Q6§ = 0;
         this.§catch§ = param3;
         this.§_-sZ§ = false;
         this.§_-8O§ = new Vector.<String>(0);
         this.§_-MQ§ = new Vector.<Number>(0);
         this.§_-4b§ = new Vector.<Number>(0);
      }
      
      public function §_-ov§(param1:String, param2:Number) : void
      {
         if(this.§_-Kv§ == null)
         {
            return;
         }
         this.§_-8O§.push(param1);
         this.§_-MQ§.push(Number.NaN);
         this.§_-4b§.push(param2);
      }
      
      public function §_-hY§(param1:Number) : void
      {
         this.§_-ov§("scaleX",param1);
         this.§_-ov§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§_-ov§("x",param1);
         this.§_-ov§("y",param2);
      }
      
      public function §_-XI§(param1:Number) : void
      {
         this.§_-ov§("alpha",param1);
      }
      
      public function §_-CR§(param1:Number) : void
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
         var _loc2_:Number = this.§_-PK§;
         this.§_-PK§ += param1;
         if(this.§_-PK§ < 0 || _loc2_ >= this.§_-Zb§)
         {
            return;
         }
         if(this.§_-pv§ != null && _loc2_ <= 0 && this.§_-PK§ >= 0)
         {
            this.§_-pv§.apply(null,this.§_-Rv§);
         }
         var _loc3_:Number = Math.min(this.§_-Zb§,this.§_-PK§) / this.§_-Zb§;
         var _loc4_:int = this.§_-MQ§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§_-MQ§[_loc5_]))
            {
               this.§_-MQ§[_loc5_] = this.§_-Kv§[this.§_-8O§[_loc5_]] as Number;
            }
            _loc6_ = this.§_-MQ§[_loc5_];
            _loc8_ = (_loc7_ = this.§_-4b§[_loc5_]) - _loc6_;
            _loc9_ = §_-2C§.§_-pn§(this.§catch§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§_-sZ§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§_-Kv§[this.§_-8O§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.onUpdate != null)
         {
            this.onUpdate.apply(null,this.§_-Yw§);
         }
         if(this.onComplete != null && _loc2_ < this.§_-Zb§ && this.§_-PK§ >= this.§_-Zb§)
         {
            this.onComplete.apply(null,this.§_-nz§);
         }
      }
      
      public function get §_-aE§() : Boolean
      {
         return this.§_-PK§ >= this.§_-Zb§;
      }
      
      public function get target() : Object
      {
         return this.§_-Kv§;
      }
      
      public function get §_-Se§() : String
      {
         return this.§catch§;
      }
      
      public function get §_-tb§() : Number
      {
         return this.§_-Zb§;
      }
      
      public function get §_-l-§() : Number
      {
         return this.§_-PK§;
      }
      
      public function get delay() : Number
      {
         return this.§_-Q6§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§_-PK§ = this.§_-PK§ + this.§_-Q6§ - param1;
         this.§_-Q6§ = param1;
      }
      
      public function get §_-T-§() : Boolean
      {
         return this.§_-sZ§;
      }
      
      public function set §_-T-§(param1:Boolean) : void
      {
         this.§_-sZ§ = param1;
      }
      
      public function get §_-pv§() : Function
      {
         return this.§_-mb§;
      }
      
      public function set §_-pv§(param1:Function) : void
      {
         this.§_-mb§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§_-U9§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§_-U9§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§_-Q-§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§_-Q-§ = param1;
      }
      
      public function get §_-mk§() : Array
      {
         return this.§_-Rv§;
      }
      
      public function set §_-mk§(param1:Array) : void
      {
         this.§_-Rv§ = param1;
      }
      
      public function get §_-Pg§() : Array
      {
         return this.§_-Yw§;
      }
      
      public function set §_-Pg§(param1:Array) : void
      {
         this.§_-Yw§ = param1;
      }
      
      public function get §_-Hq§() : Array
      {
         return this.§_-nz§;
      }
      
      public function set §_-Hq§(param1:Array) : void
      {
         this.§_-nz§ = param1;
      }
   }
}
