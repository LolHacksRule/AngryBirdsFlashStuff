package §_-kc§
{
   public class §_-cJ§ implements §_-EV§
   {
       
      
      private var §_-0V§:Object;
      
      private var §_-rL§:String;
      
      private var §_-9o§:Vector.<String>;
      
      private var §_-OY§:Vector.<Number>;
      
      private var §_-aH§:Vector.<Number>;
      
      private var §_-MR§:Function;
      
      private var §_-JB§:Function;
      
      private var §_-J2§:Function;
      
      private var §_-n5§:Array;
      
      private var §_-iR§:Array;
      
      private var §_-4k§:Array;
      
      private var §_-wW§:Number;
      
      private var §_-tY§:Number;
      
      private var §_-AD§:Number;
      
      private var §_-ug§:Boolean;
      
      public function §_-cJ§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§_-0V§ = param1;
         this.§_-tY§ = 0;
         this.§_-wW§ = Math.max(0.0001,param2);
         this.§_-AD§ = 0;
         this.§_-rL§ = param3;
         this.§_-ug§ = false;
         this.§_-9o§ = new Vector.<String>(0);
         this.§_-OY§ = new Vector.<Number>(0);
         this.§_-aH§ = new Vector.<Number>(0);
      }
      
      public function §_-ZQ§(param1:String, param2:Number) : void
      {
         if(this.§_-0V§ == null)
         {
            return;
         }
         this.§_-9o§.push(param1);
         this.§_-OY§.push(Number.NaN);
         this.§_-aH§.push(param2);
      }
      
      public function §_-XA§(param1:Number) : void
      {
         this.§_-ZQ§("scaleX",param1);
         this.§_-ZQ§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§_-ZQ§("x",param1);
         this.§_-ZQ§("y",param2);
      }
      
      public function §_-pT§(param1:Number) : void
      {
         this.§_-ZQ§("alpha",param1);
      }
      
      public function §_-XZ§(param1:Number) : void
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
         var _loc2_:Number = this.§_-tY§;
         this.§_-tY§ += param1;
         if(this.§_-tY§ < 0 || _loc2_ >= this.§_-wW§)
         {
            return;
         }
         if(this.§_-It§ != null && _loc2_ <= 0 && this.§_-tY§ >= 0)
         {
            this.§_-It§.apply(null,this.§_-n5§);
         }
         var _loc3_:Number = Math.min(this.§_-wW§,this.§_-tY§) / this.§_-wW§;
         var _loc4_:int = this.§_-OY§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§_-OY§[_loc5_]))
            {
               this.§_-OY§[_loc5_] = this.§_-0V§[this.§_-9o§[_loc5_]] as Number;
            }
            _loc6_ = this.§_-OY§[_loc5_];
            _loc8_ = (_loc7_ = this.§_-aH§[_loc5_]) - _loc6_;
            _loc9_ = §_-mM§.§_-v9§(this.§_-rL§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§_-ug§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§_-0V§[this.§_-9o§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.onUpdate != null)
         {
            this.onUpdate.apply(null,this.§_-iR§);
         }
         if(this.onComplete != null && _loc2_ < this.§_-wW§ && this.§_-tY§ >= this.§_-wW§)
         {
            this.onComplete.apply(null,this.§_-4k§);
         }
      }
      
      public function get §_-Kc§() : Boolean
      {
         return this.§_-tY§ >= this.§_-wW§;
      }
      
      public function get target() : Object
      {
         return this.§_-0V§;
      }
      
      public function get §_-nX§() : String
      {
         return this.§_-rL§;
      }
      
      public function get §_-ms§() : Number
      {
         return this.§_-wW§;
      }
      
      public function get §_-QZ§() : Number
      {
         return this.§_-tY§;
      }
      
      public function get delay() : Number
      {
         return this.§_-AD§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§_-tY§ = this.§_-tY§ + this.§_-AD§ - param1;
         this.§_-AD§ = param1;
      }
      
      public function get §_-Es§() : Boolean
      {
         return this.§_-ug§;
      }
      
      public function set §_-Es§(param1:Boolean) : void
      {
         this.§_-ug§ = param1;
      }
      
      public function get §_-It§() : Function
      {
         return this.§_-MR§;
      }
      
      public function set §_-It§(param1:Function) : void
      {
         this.§_-MR§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§_-JB§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§_-JB§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§_-J2§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§_-J2§ = param1;
      }
      
      public function get §_-JT§() : Array
      {
         return this.§_-n5§;
      }
      
      public function set §_-JT§(param1:Array) : void
      {
         this.§_-n5§ = param1;
      }
      
      public function get §_-pb§() : Array
      {
         return this.§_-iR§;
      }
      
      public function set §_-pb§(param1:Array) : void
      {
         this.§_-iR§ = param1;
      }
      
      public function get §_-Uo§() : Array
      {
         return this.§_-4k§;
      }
      
      public function set §_-Uo§(param1:Array) : void
      {
         this.§_-4k§ = param1;
      }
   }
}
