package §_-BS§
{
   public class §_-mR§ implements §_-De§
   {
       
      
      private var §_-GK§:Object;
      
      private var §_-79§:String;
      
      private var §_-Zv§:Vector.<String>;
      
      private var §_-H7§:Vector.<Number>;
      
      private var §_-cY§:Vector.<Number>;
      
      private var §_-Ix§:Function;
      
      private var §_-Io§:Function;
      
      private var §_-lq§:Function;
      
      private var §_-EB§:Array;
      
      private var §_-ZR§:Array;
      
      private var §_-70§:Array;
      
      private var §else §:Number;
      
      private var §_-Ag§:Number;
      
      private var §_-FM§:Number;
      
      private var §_-yT§:Boolean;
      
      public function §_-mR§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§_-GK§ = param1;
         this.§_-Ag§ = 0;
         this.§else § = Math.max(0.0001,param2);
         this.§_-FM§ = 0;
         this.§_-79§ = param3;
         this.§_-yT§ = false;
         this.§_-Zv§ = new Vector.<String>(0);
         this.§_-H7§ = new Vector.<Number>(0);
         this.§_-cY§ = new Vector.<Number>(0);
      }
      
      public function §_-rl§(param1:String, param2:Number) : void
      {
         if(this.§_-GK§ == null)
         {
            return;
         }
         this.§_-Zv§.push(param1);
         this.§_-H7§.push(Number.NaN);
         this.§_-cY§.push(param2);
      }
      
      public function §_-vs§(param1:Number) : void
      {
         this.§_-rl§("scaleX",param1);
         this.§_-rl§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§_-rl§("x",param1);
         this.§_-rl§("y",param2);
      }
      
      public function §_-mU§(param1:Number) : void
      {
         this.§_-rl§("alpha",param1);
      }
      
      public function §_-cj§(param1:Number) : void
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
         var _loc2_:Number = this.§_-Ag§;
         this.§_-Ag§ += param1;
         if(this.§_-Ag§ < 0 || _loc2_ >= this.§else §)
         {
            return;
         }
         if(this.§_-66§ != null && _loc2_ <= 0 && this.§_-Ag§ >= 0)
         {
            this.§_-66§.apply(null,this.§_-EB§);
         }
         var _loc3_:Number = Math.min(this.§else §,this.§_-Ag§) / this.§else §;
         var _loc4_:int = this.§_-H7§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§_-H7§[_loc5_]))
            {
               this.§_-H7§[_loc5_] = this.§_-GK§[this.§_-Zv§[_loc5_]] as Number;
            }
            _loc6_ = this.§_-H7§[_loc5_];
            _loc8_ = (_loc7_ = this.§_-cY§[_loc5_]) - _loc6_;
            _loc9_ = §_-Nn§.§_-f1§(this.§_-79§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§_-yT§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§_-GK§[this.§_-Zv§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§_-h9§ != null)
         {
            this.§_-h9§.apply(null,this.§_-ZR§);
         }
         if(this.onComplete != null && _loc2_ < this.§else § && this.§_-Ag§ >= this.§else §)
         {
            this.onComplete.apply(null,this.§_-70§);
         }
      }
      
      public function get §_-ej§() : Boolean
      {
         return this.§_-Ag§ >= this.§else §;
      }
      
      public function get target() : Object
      {
         return this.§_-GK§;
      }
      
      public function get §_-0-J§() : String
      {
         return this.§_-79§;
      }
      
      public function get §_-eN§() : Number
      {
         return this.§else §;
      }
      
      public function get §_-bB§() : Number
      {
         return this.§_-Ag§;
      }
      
      public function get delay() : Number
      {
         return this.§_-FM§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§_-Ag§ = this.§_-Ag§ + this.§_-FM§ - param1;
         this.§_-FM§ = param1;
      }
      
      public function get §_-So§() : Boolean
      {
         return this.§_-yT§;
      }
      
      public function set §_-So§(param1:Boolean) : void
      {
         this.§_-yT§ = param1;
      }
      
      public function get §_-66§() : Function
      {
         return this.§_-Ix§;
      }
      
      public function set §_-66§(param1:Function) : void
      {
         this.§_-Ix§ = param1;
      }
      
      public function get §_-h9§() : Function
      {
         return this.§_-Io§;
      }
      
      public function set §_-h9§(param1:Function) : void
      {
         this.§_-Io§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§_-lq§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§_-lq§ = param1;
      }
      
      public function get §_-Py§() : Array
      {
         return this.§_-EB§;
      }
      
      public function set §_-Py§(param1:Array) : void
      {
         this.§_-EB§ = param1;
      }
      
      public function get §_-sC§() : Array
      {
         return this.§_-ZR§;
      }
      
      public function set §_-sC§(param1:Array) : void
      {
         this.§_-ZR§ = param1;
      }
      
      public function get §_-hN§() : Array
      {
         return this.§_-70§;
      }
      
      public function set §_-hN§(param1:Array) : void
      {
         this.§_-70§ = param1;
      }
   }
}
