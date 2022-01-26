package §_-nZ§
{
   import §_-9w§.§_-IH§;
   import §_-rM§.§_-1E§;
   import flash.geom.Point;
   
   public class §_-qJ§ extends §_-IH§
   {
      
      public static const §_-3C§:Array = ["x","y"];
       
      
      protected var §_-ib§:Number;
      
      protected var §_-I6§:Number;
      
      protected var _flags:uint = 0;
      
      protected var §_-CB§:Point = null;
      
      protected var §_-jK§:Boolean = false;
      
      protected var §_-8l§:Boolean = false;
      
      protected var §_-Qw§:Number;
      
      protected var §_-F1§:Number;
      
      public function §_-qJ§()
      {
         super();
      }
      
      public static function §_-Mv§(param1:§_-1E§) : void
      {
         param1.§_-v4§(§_-qJ§,Point,§_-3C§);
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§_-jK§ = true;
            this.§_-ib§ = param2;
            this._flags |= !!param3 ? 1 : 0;
         }
         else if(param1 == "y")
         {
            this.§_-8l§ = true;
            this.§_-I6§ = param2;
            this._flags |= !!param3 ? 4 : 0;
         }
      }
      
      override protected function newInstance() : §_-IH§
      {
         return new §_-qJ§();
      }
      
      override public function get target() : Object
      {
         return this.§_-CB§;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§_-jK§ = true;
            this.§_-Qw§ = param2;
            this._flags |= !!param3 ? 2 : 0;
         }
         else if(param1 == "y")
         {
            this.§_-8l§ = true;
            this.§_-F1§ = param2;
            this._flags |= !!param3 ? 8 : 0;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§_-CB§ = param1 as Point;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:Point = this.§_-CB§;
         if(this.§_-jK§)
         {
            if(isNaN(this.§_-ib§))
            {
               this.§_-ib§ = _loc1_.x;
            }
            else if((this._flags & 1) != 0)
            {
               this.§_-ib§ += _loc1_.x;
            }
            if(isNaN(this.§_-Qw§))
            {
               this.§_-Qw§ = _loc1_.x;
            }
            else if((this._flags & 2) != 0)
            {
               this.§_-Qw§ += _loc1_.x;
            }
         }
         if(this.§_-8l§)
         {
            if(isNaN(this.§_-I6§))
            {
               this.§_-I6§ = _loc1_.y;
            }
            else if((this._flags & 4) != 0)
            {
               this.§_-I6§ += _loc1_.y;
            }
            if(isNaN(this.§_-F1§))
            {
               this.§_-F1§ = _loc1_.y;
            }
            else if((this._flags & 8) != 0)
            {
               this.§_-F1§ += _loc1_.y;
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:Point = this.§_-CB§;
         var _loc3_:Number = 1 - param1;
         if(this.§_-jK§)
         {
            _loc2_.x = this.§_-ib§ * _loc3_ + this.§_-Qw§ * param1;
         }
         if(this.§_-8l§)
         {
            _loc2_.y = this.§_-I6§ * _loc3_ + this.§_-F1§ * param1;
         }
      }
      
      override protected function copyFrom(param1:§_-IH§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-qJ§ = param1 as §_-qJ§;
         this.§_-CB§ = _loc2_.§_-CB§;
         this.§_-ib§ = _loc2_.§_-ib§;
         this.§_-I6§ = _loc2_.§_-I6§;
         this.§_-Qw§ = _loc2_.§_-Qw§;
         this.§_-F1§ = _loc2_.§_-F1§;
         this.§_-jK§ = _loc2_.§_-jK§;
         this.§_-8l§ = _loc2_.§_-8l§;
         this._flags = _loc2_._flags;
      }
   }
}
