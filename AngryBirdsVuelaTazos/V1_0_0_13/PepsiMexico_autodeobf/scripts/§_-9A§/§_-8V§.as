package §_-9A§
{
   public class §_-8V§ implements §_-ID§
   {
       
      
      private var §_-Wh§:Object;
      
      private var §_-yf§:String;
      
      private var §_-Vm§:Vector.<String>;
      
      private var §_-GD§:Vector.<Number>;
      
      private var §_-XX§:Vector.<Number>;
      
      private var §_-EX§:Function;
      
      private var §_-9S§:Function;
      
      private var §_-Vz§:Function;
      
      private var §_-ia§:Array;
      
      private var §_-3u§:Array;
      
      private var §_-gV§:Array;
      
      private var §_-pI§:Number;
      
      private var §_-w0§:Number;
      
      private var §_-N1§:Number;
      
      private var §_-RU§:Boolean;
      
      public function §_-8V§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§_-Wh§ = param1;
         this.§_-w0§ = 0;
         this.§_-pI§ = Math.max(0.0001,param2);
         this.§_-N1§ = 0;
         this.§_-yf§ = param3;
         this.§_-RU§ = false;
         this.§_-Vm§ = new Vector.<String>(0);
         this.§_-GD§ = new Vector.<Number>(0);
         this.§_-XX§ = new Vector.<Number>(0);
      }
      
      public function §_-IJ§(param1:String, param2:Number) : void
      {
         if(this.§_-Wh§ == null)
         {
            return;
         }
         this.§_-Vm§.push(param1);
         this.§_-GD§.push(Number.NaN);
         this.§_-XX§.push(param2);
      }
      
      public function §_-Yy§(param1:Number) : void
      {
         this.§_-IJ§("scaleX",param1);
         this.§_-IJ§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§_-IJ§("x",param1);
         this.§_-IJ§("y",param2);
      }
      
      public function §_-ge§(param1:Number) : void
      {
         this.§_-IJ§("alpha",param1);
      }
      
      public function §_-rp§(param1:Number) : void
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
         var _loc2_:Number = this.§_-w0§;
         this.§_-w0§ += param1;
         if(this.§_-w0§ < 0 || _loc2_ >= this.§_-pI§)
         {
            return;
         }
         if(this.§_-Jl§ != null && _loc2_ <= 0 && this.§_-w0§ >= 0)
         {
            this.§_-Jl§.apply(null,this.§_-ia§);
         }
         var _loc3_:Number = Math.min(this.§_-pI§,this.§_-w0§) / this.§_-pI§;
         var _loc4_:int = this.§_-GD§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§_-GD§[_loc5_]))
            {
               this.§_-GD§[_loc5_] = this.§_-Wh§[this.§_-Vm§[_loc5_]] as Number;
            }
            _loc6_ = this.§_-GD§[_loc5_];
            _loc8_ = (_loc7_ = this.§_-XX§[_loc5_]) - _loc6_;
            _loc9_ = §_-SK§.§_-5o§(this.§_-yf§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§_-RU§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§_-Wh§[this.§_-Vm§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.onUpdate != null)
         {
            this.onUpdate.apply(null,this.§_-3u§);
         }
         if(this.onComplete != null && _loc2_ < this.§_-pI§ && this.§_-w0§ >= this.§_-pI§)
         {
            this.onComplete.apply(null,this.§_-gV§);
         }
      }
      
      public function get §_-22§() : Boolean
      {
         return this.§_-w0§ >= this.§_-pI§;
      }
      
      public function get target() : Object
      {
         return this.§_-Wh§;
      }
      
      public function get §_-K6§() : String
      {
         return this.§_-yf§;
      }
      
      public function get §_-1g§() : Number
      {
         return this.§_-pI§;
      }
      
      public function get §_-Zs§() : Number
      {
         return this.§_-w0§;
      }
      
      public function get delay() : Number
      {
         return this.§_-N1§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§_-w0§ = this.§_-w0§ + this.§_-N1§ - param1;
         this.§_-N1§ = param1;
      }
      
      public function get §_-Fd§() : Boolean
      {
         return this.§_-RU§;
      }
      
      public function set §_-Fd§(param1:Boolean) : void
      {
         this.§_-RU§ = param1;
      }
      
      public function get §_-Jl§() : Function
      {
         return this.§_-EX§;
      }
      
      public function set §_-Jl§(param1:Function) : void
      {
         this.§_-EX§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§_-9S§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§_-9S§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§_-Vz§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§_-Vz§ = param1;
      }
      
      public function get §_-Vd§() : Array
      {
         return this.§_-ia§;
      }
      
      public function set §_-Vd§(param1:Array) : void
      {
         this.§_-ia§ = param1;
      }
      
      public function get §_-HF§() : Array
      {
         return this.§_-3u§;
      }
      
      public function set §_-HF§(param1:Array) : void
      {
         this.§_-3u§ = param1;
      }
      
      public function get §_-Su§() : Array
      {
         return this.§_-gV§;
      }
      
      public function set §_-Su§(param1:Array) : void
      {
         this.§_-gV§ = param1;
      }
   }
}
