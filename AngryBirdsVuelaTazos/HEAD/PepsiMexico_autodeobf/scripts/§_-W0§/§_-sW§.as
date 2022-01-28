package §_-W0§
{
   public class §_-sW§ implements §_-Ei§
   {
       
      
      private var §_-d8§:Object;
      
      private var §_-27§:String;
      
      private var §_-mJ§:Vector.<String>;
      
      private var §_-L9§:Vector.<Number>;
      
      private var §_-0s§:Vector.<Number>;
      
      private var §_-71§:Function;
      
      private var §_-iu§:Function;
      
      private var §_-oZ§:Function;
      
      private var §_-wN§:Array;
      
      private var §_-Sm§:Array;
      
      private var §_-o§:Array;
      
      private var §_-YK§:Number;
      
      private var §_-Tf§:Number;
      
      private var §_-SM§:Number;
      
      private var §_-YL§:Boolean;
      
      public function §_-sW§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§_-d8§ = param1;
         this.§_-Tf§ = 0;
         this.§_-YK§ = Math.max(0.0001,param2);
         this.§_-SM§ = 0;
         this.§_-27§ = param3;
         this.§_-YL§ = false;
         this.§_-mJ§ = new Vector.<String>(0);
         this.§_-L9§ = new Vector.<Number>(0);
         this.§_-0s§ = new Vector.<Number>(0);
      }
      
      public function §_-fg§(param1:String, param2:Number) : void
      {
         if(this.§_-d8§ == null)
         {
            return;
         }
         this.§_-mJ§.push(param1);
         this.§_-L9§.push(Number.NaN);
         this.§_-0s§.push(param2);
      }
      
      public function §_-BU§(param1:Number) : void
      {
         this.§_-fg§("scaleX",param1);
         this.§_-fg§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§_-fg§("x",param1);
         this.§_-fg§("y",param2);
      }
      
      public function §_-Ed§(param1:Number) : void
      {
         this.§_-fg§("alpha",param1);
      }
      
      public function §_-TL§(param1:Number) : void
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
         var _loc2_:Number = this.§_-Tf§;
         this.§_-Tf§ += param1;
         if(this.§_-Tf§ < 0 || _loc2_ >= this.§_-YK§)
         {
            return;
         }
         if(this.§_-Lb§ != null && _loc2_ <= 0 && this.§_-Tf§ >= 0)
         {
            this.§_-Lb§.apply(null,this.§_-wN§);
         }
         var _loc3_:Number = Math.min(this.§_-YK§,this.§_-Tf§) / this.§_-YK§;
         var _loc4_:int = this.§_-L9§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§_-L9§[_loc5_]))
            {
               this.§_-L9§[_loc5_] = this.§_-d8§[this.§_-mJ§[_loc5_]] as Number;
            }
            _loc6_ = this.§_-L9§[_loc5_];
            _loc8_ = (_loc7_ = this.§_-0s§[_loc5_]) - _loc6_;
            _loc9_ = §_-9x§.§_-Oi§(this.§_-27§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§_-YL§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§_-d8§[this.§_-mJ§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§_-Yl§ != null)
         {
            this.§_-Yl§.apply(null,this.§_-Sm§);
         }
         if(this.onComplete != null && _loc2_ < this.§_-YK§ && this.§_-Tf§ >= this.§_-YK§)
         {
            this.onComplete.apply(null,this.§_-o§);
         }
      }
      
      public function get §_-qD§() : Boolean
      {
         return this.§_-Tf§ >= this.§_-YK§;
      }
      
      public function get target() : Object
      {
         return this.§_-d8§;
      }
      
      public function get §_-wp§() : String
      {
         return this.§_-27§;
      }
      
      public function get §_-aW§() : Number
      {
         return this.§_-YK§;
      }
      
      public function get §_-0t§() : Number
      {
         return this.§_-Tf§;
      }
      
      public function get delay() : Number
      {
         return this.§_-SM§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§_-Tf§ = this.§_-Tf§ + this.§_-SM§ - param1;
         this.§_-SM§ = param1;
      }
      
      public function get §_-Bf§() : Boolean
      {
         return this.§_-YL§;
      }
      
      public function set §_-Bf§(param1:Boolean) : void
      {
         this.§_-YL§ = param1;
      }
      
      public function get §_-Lb§() : Function
      {
         return this.§_-71§;
      }
      
      public function set §_-Lb§(param1:Function) : void
      {
         this.§_-71§ = param1;
      }
      
      public function get §_-Yl§() : Function
      {
         return this.§_-iu§;
      }
      
      public function set §_-Yl§(param1:Function) : void
      {
         this.§_-iu§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§_-oZ§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§_-oZ§ = param1;
      }
      
      public function get §_-al§() : Array
      {
         return this.§_-wN§;
      }
      
      public function set §_-al§(param1:Array) : void
      {
         this.§_-wN§ = param1;
      }
      
      public function get §_-Tr§() : Array
      {
         return this.§_-Sm§;
      }
      
      public function set §_-Tr§(param1:Array) : void
      {
         this.§_-Sm§ = param1;
      }
      
      public function get §_-Qp§() : Array
      {
         return this.§_-o§;
      }
      
      public function set §_-Qp§(param1:Array) : void
      {
         this.§_-o§ = param1;
      }
   }
}
