package §_-lh§
{
   public class §_-TH§ implements §_-UW§
   {
       
      
      private var §_-tB§:Object;
      
      private var §_-DC§:String;
      
      private var §_-E0§:Vector.<String>;
      
      private var §_-rc§:Vector.<Number>;
      
      private var §_-nQ§:Vector.<Number>;
      
      private var §_-6j§:Function;
      
      private var §_-CU§:Function;
      
      private var §_-8H§:Function;
      
      private var §_-V2§:Array;
      
      private var §_-ka§:Array;
      
      private var §_-S6§:Array;
      
      private var §_-x8§:Number;
      
      private var §_-0--§:Number;
      
      private var §_-9K§:Number;
      
      private var §_-Ak§:Boolean;
      
      public function §_-TH§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§_-tB§ = param1;
         this.§_-0--§ = 0;
         this.§_-x8§ = Math.max(0.0001,param2);
         this.§_-9K§ = 0;
         this.§_-DC§ = param3;
         this.§_-Ak§ = false;
         this.§_-E0§ = new Vector.<String>(0);
         this.§_-rc§ = new Vector.<Number>(0);
         this.§_-nQ§ = new Vector.<Number>(0);
      }
      
      public function §_-lo§(param1:String, param2:Number) : void
      {
         if(this.§_-tB§ == null)
         {
            return;
         }
         this.§_-E0§.push(param1);
         this.§_-rc§.push(Number.NaN);
         this.§_-nQ§.push(param2);
      }
      
      public function §_-5V§(param1:Number) : void
      {
         this.§_-lo§("scaleX",param1);
         this.§_-lo§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§_-lo§("x",param1);
         this.§_-lo§("y",param2);
      }
      
      public function §_-Ah§(param1:Number) : void
      {
         this.§_-lo§("alpha",param1);
      }
      
      public function §_-DS§(param1:Number) : void
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
         var _loc2_:Number = this.§_-0--§;
         this.§_-0--§ += param1;
         if(this.§_-0--§ < 0 || _loc2_ >= this.§_-x8§)
         {
            return;
         }
         if(this.§_-4b§ != null && _loc2_ <= 0 && this.§_-0--§ >= 0)
         {
            this.§_-4b§.apply(null,this.§_-V2§);
         }
         var _loc3_:Number = Math.min(this.§_-x8§,this.§_-0--§) / this.§_-x8§;
         var _loc4_:int = this.§_-rc§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§_-rc§[_loc5_]))
            {
               this.§_-rc§[_loc5_] = this.§_-tB§[this.§_-E0§[_loc5_]] as Number;
            }
            _loc6_ = this.§_-rc§[_loc5_];
            _loc8_ = (_loc7_ = this.§_-nQ§[_loc5_]) - _loc6_;
            _loc9_ = §_-Ol§.§_-k3§(this.§_-DC§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§_-Ak§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§_-tB§[this.§_-E0§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§_-IU§ != null)
         {
            this.§_-IU§.apply(null,this.§_-ka§);
         }
         if(this.onComplete != null && _loc2_ < this.§_-x8§ && this.§_-0--§ >= this.§_-x8§)
         {
            this.onComplete.apply(null,this.§_-S6§);
         }
      }
      
      public function get §_-sY§() : Boolean
      {
         return this.§_-0--§ >= this.§_-x8§;
      }
      
      public function get target() : Object
      {
         return this.§_-tB§;
      }
      
      public function get §_-zJ§() : String
      {
         return this.§_-DC§;
      }
      
      public function get §_-vF§() : Number
      {
         return this.§_-x8§;
      }
      
      public function get §_-Ho§() : Number
      {
         return this.§_-0--§;
      }
      
      public function get delay() : Number
      {
         return this.§_-9K§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§_-0--§ = this.§_-0--§ + this.§_-9K§ - param1;
         this.§_-9K§ = param1;
      }
      
      public function get §_-rF§() : Boolean
      {
         return this.§_-Ak§;
      }
      
      public function set §_-rF§(param1:Boolean) : void
      {
         this.§_-Ak§ = param1;
      }
      
      public function get §_-4b§() : Function
      {
         return this.§_-6j§;
      }
      
      public function set §_-4b§(param1:Function) : void
      {
         this.§_-6j§ = param1;
      }
      
      public function get §_-IU§() : Function
      {
         return this.§_-CU§;
      }
      
      public function set §_-IU§(param1:Function) : void
      {
         this.§_-CU§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§_-8H§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§_-8H§ = param1;
      }
      
      public function get override() : Array
      {
         return this.§_-V2§;
      }
      
      public function set override(param1:Array) : void
      {
         this.§_-V2§ = param1;
      }
      
      public function get §_-H5§() : Array
      {
         return this.§_-ka§;
      }
      
      public function set §_-H5§(param1:Array) : void
      {
         this.§_-ka§ = param1;
      }
      
      public function get §_-jy§() : Array
      {
         return this.§_-S6§;
      }
      
      public function set §_-jy§(param1:Array) : void
      {
         this.§_-S6§ = param1;
      }
   }
}
