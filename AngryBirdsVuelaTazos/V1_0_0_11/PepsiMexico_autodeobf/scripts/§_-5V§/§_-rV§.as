package §_-5V§
{
   import §_-D8§.§_-wR§;
   import §_-wn§.§_-S7§;
   import flash.geom.Point;
   
   public class §_-rV§ extends §_-wR§
   {
      
      public static const §_-7T§:Array = ["x","y"];
       
      
      protected var §_-EG§:Number;
      
      protected var §_-fT§:Number;
      
      protected var _flags:uint = 0;
      
      protected var §_-x7§:Point = null;
      
      protected var §_-Ye§:Boolean = false;
      
      protected var §_-ts§:Boolean = false;
      
      protected var §_-r2§:Number;
      
      protected var §_-rS§:Number;
      
      public function §_-rV§()
      {
         super();
      }
      
      public static function §_-Vo§(param1:§_-S7§) : void
      {
         param1.§_-UT§(§_-rV§,Point,§_-7T§);
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§_-Ye§ = true;
            this.§_-EG§ = param2;
            this._flags |= !!param3 ? 1 : 0;
         }
         else if(param1 == "y")
         {
            this.§_-ts§ = true;
            this.§_-fT§ = param2;
            this._flags |= !!param3 ? 4 : 0;
         }
      }
      
      override protected function newInstance() : §_-wR§
      {
         return new §_-rV§();
      }
      
      override public function get target() : Object
      {
         return this.§_-x7§;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§_-Ye§ = true;
            this.§_-r2§ = param2;
            this._flags |= !!param3 ? 2 : 0;
         }
         else if(param1 == "y")
         {
            this.§_-ts§ = true;
            this.§_-rS§ = param2;
            this._flags |= !!param3 ? 8 : 0;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§_-x7§ = param1 as Point;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:Point = this.§_-x7§;
         if(this.§_-Ye§)
         {
            if(isNaN(this.§_-EG§))
            {
               this.§_-EG§ = _loc1_.x;
            }
            else if((this._flags & 1) != 0)
            {
               this.§_-EG§ += _loc1_.x;
            }
            if(isNaN(this.§_-r2§))
            {
               this.§_-r2§ = _loc1_.x;
            }
            else if((this._flags & 2) != 0)
            {
               this.§_-r2§ += _loc1_.x;
            }
         }
         if(this.§_-ts§)
         {
            if(isNaN(this.§_-fT§))
            {
               this.§_-fT§ = _loc1_.y;
            }
            else if((this._flags & 4) != 0)
            {
               this.§_-fT§ += _loc1_.y;
            }
            if(isNaN(this.§_-rS§))
            {
               this.§_-rS§ = _loc1_.y;
            }
            else if((this._flags & 8) != 0)
            {
               this.§_-rS§ += _loc1_.y;
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:Point = this.§_-x7§;
         var _loc3_:Number = 1 - param1;
         if(this.§_-Ye§)
         {
            _loc2_.x = this.§_-EG§ * _loc3_ + this.§_-r2§ * param1;
         }
         if(this.§_-ts§)
         {
            _loc2_.y = this.§_-fT§ * _loc3_ + this.§_-rS§ * param1;
         }
      }
      
      override protected function copyFrom(param1:§_-wR§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-rV§ = param1 as §_-rV§;
         this.§_-x7§ = _loc2_.§_-x7§;
         this.§_-EG§ = _loc2_.§_-EG§;
         this.§_-fT§ = _loc2_.§_-fT§;
         this.§_-r2§ = _loc2_.§_-r2§;
         this.§_-rS§ = _loc2_.§_-rS§;
         this.§_-Ye§ = _loc2_.§_-Ye§;
         this.§_-ts§ = _loc2_.§_-ts§;
         this._flags = _loc2_._flags;
      }
   }
}
