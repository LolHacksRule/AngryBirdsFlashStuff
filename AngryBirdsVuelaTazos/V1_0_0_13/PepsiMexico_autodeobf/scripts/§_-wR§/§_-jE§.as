package §_-wR§
{
   import §_-OS§.§_-rl§;
   import §_-lV§.§_-ZS§;
   import flash.geom.Point;
   
   public class §_-jE§ extends §_-ZS§
   {
      
      public static const §_-Yh§:Array = ["x","y"];
       
      
      protected var §_-D4§:Number;
      
      protected var §_-Xf§:Number;
      
      protected var _flags:uint = 0;
      
      protected var §_-YF§:Point = null;
      
      protected var §_-5W§:Boolean = false;
      
      protected var §_-yx§:Boolean = false;
      
      protected var §_-o7§:Number;
      
      protected var §_-Vr§:Number;
      
      public function §_-jE§()
      {
         super();
      }
      
      public static function §_-5B§(param1:§_-rl§) : void
      {
         param1.§_-P3§(§_-jE§,Point,§_-Yh§);
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§_-5W§ = true;
            this.§_-D4§ = param2;
            this._flags |= !!param3 ? 1 : 0;
         }
         else if(param1 == "y")
         {
            this.§_-yx§ = true;
            this.§_-Xf§ = param2;
            this._flags |= !!param3 ? 4 : 0;
         }
      }
      
      override protected function newInstance() : §_-ZS§
      {
         return new §_-jE§();
      }
      
      override public function get target() : Object
      {
         return this.§_-YF§;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§_-5W§ = true;
            this.§_-o7§ = param2;
            this._flags |= !!param3 ? 2 : 0;
         }
         else if(param1 == "y")
         {
            this.§_-yx§ = true;
            this.§_-Vr§ = param2;
            this._flags |= !!param3 ? 8 : 0;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§_-YF§ = param1 as Point;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:Point = this.§_-YF§;
         if(this.§_-5W§)
         {
            if(isNaN(this.§_-D4§))
            {
               this.§_-D4§ = _loc1_.x;
            }
            else if((this._flags & 1) != 0)
            {
               this.§_-D4§ += _loc1_.x;
            }
            if(isNaN(this.§_-o7§))
            {
               this.§_-o7§ = _loc1_.x;
            }
            else if((this._flags & 2) != 0)
            {
               this.§_-o7§ += _loc1_.x;
            }
         }
         if(this.§_-yx§)
         {
            if(isNaN(this.§_-Xf§))
            {
               this.§_-Xf§ = _loc1_.y;
            }
            else if((this._flags & 4) != 0)
            {
               this.§_-Xf§ += _loc1_.y;
            }
            if(isNaN(this.§_-Vr§))
            {
               this.§_-Vr§ = _loc1_.y;
            }
            else if((this._flags & 8) != 0)
            {
               this.§_-Vr§ += _loc1_.y;
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:Point = this.§_-YF§;
         var _loc3_:Number = 1 - param1;
         if(this.§_-5W§)
         {
            _loc2_.x = this.§_-D4§ * _loc3_ + this.§_-o7§ * param1;
         }
         if(this.§_-yx§)
         {
            _loc2_.y = this.§_-Xf§ * _loc3_ + this.§_-Vr§ * param1;
         }
      }
      
      override protected function copyFrom(param1:§_-ZS§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-jE§ = param1 as §_-jE§;
         this.§_-YF§ = _loc2_.§_-YF§;
         this.§_-D4§ = _loc2_.§_-D4§;
         this.§_-Xf§ = _loc2_.§_-Xf§;
         this.§_-o7§ = _loc2_.§_-o7§;
         this.§_-Vr§ = _loc2_.§_-Vr§;
         this.§_-5W§ = _loc2_.§_-5W§;
         this.§_-yx§ = _loc2_.§_-yx§;
         this._flags = _loc2_._flags;
      }
   }
}
