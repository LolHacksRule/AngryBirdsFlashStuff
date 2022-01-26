package §_-1Q§
{
   public class §_-kt§ implements §_-G7§
   {
       
      
      private var §_-Cc§:Object;
      
      private var override:String;
      
      private var §_-sP§:Vector.<String>;
      
      private var §_-lb§:Vector.<Number>;
      
      private var §_-Tx§:Vector.<Number>;
      
      private var §_-27§:Function;
      
      private var §_-ID§:Function;
      
      private var §_-O§:Function;
      
      private var §_-eq§:Array;
      
      private var §_-oq§:Array;
      
      private var §_-7s§:Array;
      
      private var §_-tw§:Number;
      
      private var §_-yH§:Number;
      
      private var §_-BH§:Number;
      
      private var §_-b5§:Boolean;
      
      public function §_-kt§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§_-Cc§ = param1;
         this.§_-yH§ = 0;
         this.§_-tw§ = Math.max(0.0001,param2);
         this.§_-BH§ = 0;
         this.override = param3;
         this.§_-b5§ = false;
         this.§_-sP§ = new Vector.<String>(0);
         this.§_-lb§ = new Vector.<Number>(0);
         this.§_-Tx§ = new Vector.<Number>(0);
      }
      
      public function §_-We§(param1:String, param2:Number) : void
      {
         if(this.§_-Cc§ == null)
         {
            return;
         }
         this.§_-sP§.push(param1);
         this.§_-lb§.push(Number.NaN);
         this.§_-Tx§.push(param2);
      }
      
      public function §_-Rp§(param1:Number) : void
      {
         this.§_-We§("scaleX",param1);
         this.§_-We§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§_-We§("x",param1);
         this.§_-We§("y",param2);
      }
      
      public function §_-7N§(param1:Number) : void
      {
         this.§_-We§("alpha",param1);
      }
      
      public function §_-IE§(param1:Number) : void
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
         var _loc2_:Number = this.§_-yH§;
         this.§_-yH§ += param1;
         if(this.§_-yH§ < 0 || _loc2_ >= this.§_-tw§)
         {
            return;
         }
         if(this.§_-m8§ != null && _loc2_ <= 0 && this.§_-yH§ >= 0)
         {
            this.§_-m8§.apply(null,this.§_-eq§);
         }
         var _loc3_:Number = Math.min(this.§_-tw§,this.§_-yH§) / this.§_-tw§;
         var _loc4_:int = this.§_-lb§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§_-lb§[_loc5_]))
            {
               this.§_-lb§[_loc5_] = this.§_-Cc§[this.§_-sP§[_loc5_]] as Number;
            }
            _loc6_ = this.§_-lb§[_loc5_];
            _loc8_ = (_loc7_ = this.§_-Tx§[_loc5_]) - _loc6_;
            _loc9_ = §_-qy§.§_-g1§(this.override);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§_-b5§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§_-Cc§[this.§_-sP§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.onUpdate != null)
         {
            this.onUpdate.apply(null,this.§_-oq§);
         }
         if(this.onComplete != null && _loc2_ < this.§_-tw§ && this.§_-yH§ >= this.§_-tw§)
         {
            this.onComplete.apply(null,this.§_-7s§);
         }
      }
      
      public function get §_-ZY§() : Boolean
      {
         return this.§_-yH§ >= this.§_-tw§;
      }
      
      public function get target() : Object
      {
         return this.§_-Cc§;
      }
      
      public function get §_-vE§() : String
      {
         return this.override;
      }
      
      public function get §_-UL§() : Number
      {
         return this.§_-tw§;
      }
      
      public function get §_-mm§() : Number
      {
         return this.§_-yH§;
      }
      
      public function get delay() : Number
      {
         return this.§_-BH§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§_-yH§ = this.§_-yH§ + this.§_-BH§ - param1;
         this.§_-BH§ = param1;
      }
      
      public function get §_-P0§() : Boolean
      {
         return this.§_-b5§;
      }
      
      public function set §_-P0§(param1:Boolean) : void
      {
         this.§_-b5§ = param1;
      }
      
      public function get §_-m8§() : Function
      {
         return this.§_-27§;
      }
      
      public function set §_-m8§(param1:Function) : void
      {
         this.§_-27§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§_-ID§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§_-ID§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§_-O§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§_-O§ = param1;
      }
      
      public function get §_-R§() : Array
      {
         return this.§_-eq§;
      }
      
      public function set §_-R§(param1:Array) : void
      {
         this.§_-eq§ = param1;
      }
      
      public function get §_-xX§() : Array
      {
         return this.§_-oq§;
      }
      
      public function set §_-xX§(param1:Array) : void
      {
         this.§_-oq§ = param1;
      }
      
      public function get §_-O-§() : Array
      {
         return this.§_-7s§;
      }
      
      public function set §_-O-§(param1:Array) : void
      {
         this.§_-7s§ = param1;
      }
   }
}
