package §_-iA§
{
   public class §_-6-§ implements §_-vS§
   {
       
      
      private var §_-Ul§:Object;
      
      private var §_-P§:String;
      
      private var §_-sH§:Vector.<String>;
      
      private var §_-SF§:Vector.<Number>;
      
      private var §_-5b§:Vector.<Number>;
      
      private var §_-MW§:Function;
      
      private var §_-SY§:Function;
      
      private var §_-Eb§:Function;
      
      private var §_-MN§:Array;
      
      private var §_-CK§:Array;
      
      private var §_-mC§:Array;
      
      private var §_-VQ§:Number;
      
      private var §_-f7§:Number;
      
      private var §_-Ju§:Number;
      
      private var §_-AV§:Boolean;
      
      public function §_-6-§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§_-Ul§ = param1;
         this.§_-f7§ = 0;
         this.§_-VQ§ = Math.max(0.0001,param2);
         this.§_-Ju§ = 0;
         this.§_-P§ = param3;
         this.§_-AV§ = false;
         this.§_-sH§ = new Vector.<String>(0);
         this.§_-SF§ = new Vector.<Number>(0);
         this.§_-5b§ = new Vector.<Number>(0);
      }
      
      public function §_-EM§(param1:String, param2:Number) : void
      {
         if(this.§_-Ul§ == null)
         {
            return;
         }
         this.§_-sH§.push(param1);
         this.§_-SF§.push(Number.NaN);
         this.§_-5b§.push(param2);
      }
      
      public function §_-TI§(param1:Number) : void
      {
         this.§_-EM§("scaleX",param1);
         this.§_-EM§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§_-EM§("x",param1);
         this.§_-EM§("y",param2);
      }
      
      public function §_-l9§(param1:Number) : void
      {
         this.§_-EM§("alpha",param1);
      }
      
      public function §_-An§(param1:Number) : void
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
         var _loc2_:Number = this.§_-f7§;
         this.§_-f7§ += param1;
         if(this.§_-f7§ < 0 || _loc2_ >= this.§_-VQ§)
         {
            return;
         }
         if(this.§_-bD§ != null && _loc2_ <= 0 && this.§_-f7§ >= 0)
         {
            this.§_-bD§.apply(null,this.§_-MN§);
         }
         var _loc3_:Number = Math.min(this.§_-VQ§,this.§_-f7§) / this.§_-VQ§;
         var _loc4_:int = this.§_-SF§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§_-SF§[_loc5_]))
            {
               this.§_-SF§[_loc5_] = this.§_-Ul§[this.§_-sH§[_loc5_]] as Number;
            }
            _loc6_ = this.§_-SF§[_loc5_];
            _loc8_ = (_loc7_ = this.§_-5b§[_loc5_]) - _loc6_;
            _loc9_ = §_-IR§.§_-q8§(this.§_-P§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§_-AV§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§_-Ul§[this.§_-sH§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.onUpdate != null)
         {
            this.onUpdate.apply(null,this.§_-CK§);
         }
         if(this.onComplete != null && _loc2_ < this.§_-VQ§ && this.§_-f7§ >= this.§_-VQ§)
         {
            this.onComplete.apply(null,this.§_-mC§);
         }
      }
      
      public function get §_-9e§() : Boolean
      {
         return this.§_-f7§ >= this.§_-VQ§;
      }
      
      public function get target() : Object
      {
         return this.§_-Ul§;
      }
      
      public function get §_-Ja§() : String
      {
         return this.§_-P§;
      }
      
      public function get §_-Re§() : Number
      {
         return this.§_-VQ§;
      }
      
      public function get §_-V9§() : Number
      {
         return this.§_-f7§;
      }
      
      public function get delay() : Number
      {
         return this.§_-Ju§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§_-f7§ = this.§_-f7§ + this.§_-Ju§ - param1;
         this.§_-Ju§ = param1;
      }
      
      public function get §_-HI§() : Boolean
      {
         return this.§_-AV§;
      }
      
      public function set §_-HI§(param1:Boolean) : void
      {
         this.§_-AV§ = param1;
      }
      
      public function get §_-bD§() : Function
      {
         return this.§_-MW§;
      }
      
      public function set §_-bD§(param1:Function) : void
      {
         this.§_-MW§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§_-SY§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§_-SY§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§_-Eb§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§_-Eb§ = param1;
      }
      
      public function get §_-lq§() : Array
      {
         return this.§_-MN§;
      }
      
      public function set §_-lq§(param1:Array) : void
      {
         this.§_-MN§ = param1;
      }
      
      public function get §_-ty§() : Array
      {
         return this.§_-CK§;
      }
      
      public function set §_-ty§(param1:Array) : void
      {
         this.§_-CK§ = param1;
      }
      
      public function get §_-Ag§() : Array
      {
         return this.§_-mC§;
      }
      
      public function set §_-Ag§(param1:Array) : void
      {
         this.§_-mC§ = param1;
      }
   }
}
