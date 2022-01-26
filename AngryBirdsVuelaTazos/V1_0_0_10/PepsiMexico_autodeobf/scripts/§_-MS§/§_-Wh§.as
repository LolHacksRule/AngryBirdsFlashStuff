package §_-MS§
{
   public class §_-Wh§ implements §_-xc§
   {
       
      
      private var §_-11§:Object;
      
      private var §_-8f§:String;
      
      private var §_-R§:Vector.<String>;
      
      private var §_-dP§:Vector.<Number>;
      
      private var §_-Hi§:Vector.<Number>;
      
      private var §_-tK§:Function;
      
      private var §_-3r§:Function;
      
      private var §_-8Y§:Function;
      
      private var §_-H§:Array;
      
      private var §_-8M§:Array;
      
      private var §_-xI§:Array;
      
      private var §_-Rw§:Number;
      
      private var §_-Mb§:Number;
      
      private var §_-wH§:Number;
      
      private var §_-a6§:Boolean;
      
      public function §_-Wh§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§_-11§ = param1;
         this.§_-Mb§ = 0;
         this.§_-Rw§ = Math.max(0.0001,param2);
         this.§_-wH§ = 0;
         this.§_-8f§ = param3;
         this.§_-a6§ = false;
         this.§_-R§ = new Vector.<String>(0);
         this.§_-dP§ = new Vector.<Number>(0);
         this.§_-Hi§ = new Vector.<Number>(0);
      }
      
      public function §_-jt§(param1:String, param2:Number) : void
      {
         if(this.§_-11§ == null)
         {
            return;
         }
         this.§_-R§.push(param1);
         this.§_-dP§.push(Number.NaN);
         this.§_-Hi§.push(param2);
      }
      
      public function §_-FN§(param1:Number) : void
      {
         this.§_-jt§("scaleX",param1);
         this.§_-jt§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§_-jt§("x",param1);
         this.§_-jt§("y",param2);
      }
      
      public function §_-5s§(param1:Number) : void
      {
         this.§_-jt§("alpha",param1);
      }
      
      public function §_-DV§(param1:Number) : void
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
         var _loc2_:Number = this.§_-Mb§;
         this.§_-Mb§ += param1;
         if(this.§_-Mb§ < 0 || _loc2_ >= this.§_-Rw§)
         {
            return;
         }
         if(this.§_-7n§ != null && _loc2_ <= 0 && this.§_-Mb§ >= 0)
         {
            this.§_-7n§.apply(null,this.§_-H§);
         }
         var _loc3_:Number = Math.min(this.§_-Rw§,this.§_-Mb§) / this.§_-Rw§;
         var _loc4_:int = this.§_-dP§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§_-dP§[_loc5_]))
            {
               this.§_-dP§[_loc5_] = this.§_-11§[this.§_-R§[_loc5_]] as Number;
            }
            _loc6_ = this.§_-dP§[_loc5_];
            _loc8_ = (_loc7_ = this.§_-Hi§[_loc5_]) - _loc6_;
            _loc9_ = §_-72§.§_-IU§(this.§_-8f§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§_-a6§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§_-11§[this.§_-R§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.onUpdate != null)
         {
            this.onUpdate.apply(null,this.§_-8M§);
         }
         if(this.onComplete != null && _loc2_ < this.§_-Rw§ && this.§_-Mb§ >= this.§_-Rw§)
         {
            this.onComplete.apply(null,this.§_-xI§);
         }
      }
      
      public function get §_-N1§() : Boolean
      {
         return this.§_-Mb§ >= this.§_-Rw§;
      }
      
      public function get target() : Object
      {
         return this.§_-11§;
      }
      
      public function get §_-83§() : String
      {
         return this.§_-8f§;
      }
      
      public function get §_-7K§() : Number
      {
         return this.§_-Rw§;
      }
      
      public function get §_-xC§() : Number
      {
         return this.§_-Mb§;
      }
      
      public function get delay() : Number
      {
         return this.§_-wH§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§_-Mb§ = this.§_-Mb§ + this.§_-wH§ - param1;
         this.§_-wH§ = param1;
      }
      
      public function get §_-JI§() : Boolean
      {
         return this.§_-a6§;
      }
      
      public function set §_-JI§(param1:Boolean) : void
      {
         this.§_-a6§ = param1;
      }
      
      public function get §_-7n§() : Function
      {
         return this.§_-tK§;
      }
      
      public function set §_-7n§(param1:Function) : void
      {
         this.§_-tK§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§_-3r§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§_-3r§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§_-8Y§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§_-8Y§ = param1;
      }
      
      public function get §_-RX§() : Array
      {
         return this.§_-H§;
      }
      
      public function set §_-RX§(param1:Array) : void
      {
         this.§_-H§ = param1;
      }
      
      public function get §_-at§() : Array
      {
         return this.§_-8M§;
      }
      
      public function set §_-at§(param1:Array) : void
      {
         this.§_-8M§ = param1;
      }
      
      public function get §_-6D§() : Array
      {
         return this.§_-xI§;
      }
      
      public function set §_-6D§(param1:Array) : void
      {
         this.§_-xI§ = param1;
      }
   }
}
