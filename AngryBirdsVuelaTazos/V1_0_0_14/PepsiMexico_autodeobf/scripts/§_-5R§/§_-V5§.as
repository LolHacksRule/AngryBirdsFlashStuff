package §_-5R§
{
   import §_-C5§.§_-3l§;
   import §_-DH§.§_-tv§;
   import flash.geom.Point;
   
   public class §_-V5§ extends §_-tv§
   {
      
      public static const §_-lA§:Array = ["x","y"];
       
      
      protected var §_-ge§:Number;
      
      protected var §_-qL§:Number;
      
      protected var _flags:uint = 0;
      
      protected var §_-lg§:Point = null;
      
      protected var §_-wI§:Boolean = false;
      
      protected var §_-ay§:Boolean = false;
      
      protected var §_-bz§:Number;
      
      protected var §_-zS§:Number;
      
      public function §_-V5§()
      {
         super();
      }
      
      public static function §_-FR§(param1:§_-3l§) : void
      {
         param1.§_-8Z§(§_-V5§,Point,§_-lA§);
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§_-wI§ = true;
            this.§_-ge§ = param2;
            this._flags |= !!param3 ? 1 : 0;
         }
         else if(param1 == "y")
         {
            this.§_-ay§ = true;
            this.§_-qL§ = param2;
            this._flags |= !!param3 ? 4 : 0;
         }
      }
      
      override protected function newInstance() : §_-tv§
      {
         return new §_-V5§();
      }
      
      override public function get target() : Object
      {
         return this.§_-lg§;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§_-wI§ = true;
            this.§_-bz§ = param2;
            this._flags |= !!param3 ? 2 : 0;
         }
         else if(param1 == "y")
         {
            this.§_-ay§ = true;
            this.§_-zS§ = param2;
            this._flags |= !!param3 ? 8 : 0;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§_-lg§ = param1 as Point;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:Point = this.§_-lg§;
         if(this.§_-wI§)
         {
            if(isNaN(this.§_-ge§))
            {
               this.§_-ge§ = _loc1_.x;
            }
            else if((this._flags & 1) != 0)
            {
               this.§_-ge§ += _loc1_.x;
            }
            if(isNaN(this.§_-bz§))
            {
               this.§_-bz§ = _loc1_.x;
            }
            else if((this._flags & 2) != 0)
            {
               this.§_-bz§ += _loc1_.x;
            }
         }
         if(this.§_-ay§)
         {
            if(isNaN(this.§_-qL§))
            {
               this.§_-qL§ = _loc1_.y;
            }
            else if((this._flags & 4) != 0)
            {
               this.§_-qL§ += _loc1_.y;
            }
            if(isNaN(this.§_-zS§))
            {
               this.§_-zS§ = _loc1_.y;
            }
            else if((this._flags & 8) != 0)
            {
               this.§_-zS§ += _loc1_.y;
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:Point = this.§_-lg§;
         var _loc3_:Number = 1 - param1;
         if(this.§_-wI§)
         {
            _loc2_.x = this.§_-ge§ * _loc3_ + this.§_-bz§ * param1;
         }
         if(this.§_-ay§)
         {
            _loc2_.y = this.§_-qL§ * _loc3_ + this.§_-zS§ * param1;
         }
      }
      
      override protected function copyFrom(param1:§_-tv§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-V5§ = param1 as §_-V5§;
         this.§_-lg§ = _loc2_.§_-lg§;
         this.§_-ge§ = _loc2_.§_-ge§;
         this.§_-qL§ = _loc2_.§_-qL§;
         this.§_-bz§ = _loc2_.§_-bz§;
         this.§_-zS§ = _loc2_.§_-zS§;
         this.§_-wI§ = _loc2_.§_-wI§;
         this.§_-ay§ = _loc2_.§_-ay§;
         this._flags = _loc2_._flags;
      }
   }
}
