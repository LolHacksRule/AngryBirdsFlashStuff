package §_-Rz§
{
   import §_-60§.§_-5r§;
   import §_-Og§.§_-bt§;
   import flash.geom.Point;
   
   public class §_-89§ extends §_-5r§
   {
      
      public static const §_-rV§:Array = ["x","y"];
       
      
      protected var §_-K7§:Number;
      
      protected var §_-gu§:Number;
      
      protected var _flags:uint = 0;
      
      protected var §_-Db§:Point = null;
      
      protected var §_-fW§:Boolean = false;
      
      protected var §_-1s§:Boolean = false;
      
      protected var §_-cI§:Number;
      
      protected var §_-Hg§:Number;
      
      public function §_-89§()
      {
         super();
      }
      
      public static function §_-0m§(param1:§_-bt§) : void
      {
         param1.§_-MU§(§_-89§,Point,§_-rV§);
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§_-fW§ = true;
            this.§_-K7§ = param2;
            this._flags |= !!param3 ? 1 : 0;
         }
         else if(param1 == "y")
         {
            this.§_-1s§ = true;
            this.§_-gu§ = param2;
            this._flags |= !!param3 ? 4 : 0;
         }
      }
      
      override protected function newInstance() : §_-5r§
      {
         return new §_-89§();
      }
      
      override public function get target() : Object
      {
         return this.§_-Db§;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§_-fW§ = true;
            this.§_-cI§ = param2;
            this._flags |= !!param3 ? 2 : 0;
         }
         else if(param1 == "y")
         {
            this.§_-1s§ = true;
            this.§_-Hg§ = param2;
            this._flags |= !!param3 ? 8 : 0;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§_-Db§ = param1 as Point;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:Point = this.§_-Db§;
         if(this.§_-fW§)
         {
            if(isNaN(this.§_-K7§))
            {
               this.§_-K7§ = _loc1_.x;
            }
            else if((this._flags & 1) != 0)
            {
               this.§_-K7§ += _loc1_.x;
            }
            if(isNaN(this.§_-cI§))
            {
               this.§_-cI§ = _loc1_.x;
            }
            else if((this._flags & 2) != 0)
            {
               this.§_-cI§ += _loc1_.x;
            }
         }
         if(this.§_-1s§)
         {
            if(isNaN(this.§_-gu§))
            {
               this.§_-gu§ = _loc1_.y;
            }
            else if((this._flags & 4) != 0)
            {
               this.§_-gu§ += _loc1_.y;
            }
            if(isNaN(this.§_-Hg§))
            {
               this.§_-Hg§ = _loc1_.y;
            }
            else if((this._flags & 8) != 0)
            {
               this.§_-Hg§ += _loc1_.y;
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:Point = this.§_-Db§;
         var _loc3_:Number = 1 - param1;
         if(this.§_-fW§)
         {
            _loc2_.x = this.§_-K7§ * _loc3_ + this.§_-cI§ * param1;
         }
         if(this.§_-1s§)
         {
            _loc2_.y = this.§_-gu§ * _loc3_ + this.§_-Hg§ * param1;
         }
      }
      
      override protected function copyFrom(param1:§_-5r§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-89§ = param1 as §_-89§;
         this.§_-Db§ = _loc2_.§_-Db§;
         this.§_-K7§ = _loc2_.§_-K7§;
         this.§_-gu§ = _loc2_.§_-gu§;
         this.§_-cI§ = _loc2_.§_-cI§;
         this.§_-Hg§ = _loc2_.§_-Hg§;
         this.§_-fW§ = _loc2_.§_-fW§;
         this.§_-1s§ = _loc2_.§_-1s§;
         this._flags = _loc2_._flags;
      }
   }
}
