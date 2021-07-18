package §_-ix§
{
   import §_-V7§.§_-rJ§;
   import §_-wT§.§_-c9§;
   import flash.geom.Point;
   
   public class §_-5o§ extends §_-rJ§
   {
      
      public static const §_-5n§:Array = ["x","y"];
       
      
      protected var §_-zd§:Number;
      
      protected var §_-Ji§:Number;
      
      protected var _flags:uint = 0;
      
      protected var §_-9Z§:Point = null;
      
      protected var §_-Dd§:Boolean = false;
      
      protected var §_-lK§:Boolean = false;
      
      protected var §_-WJ§:Number;
      
      protected var §_-Jd§:Number;
      
      public function §_-5o§()
      {
         super();
      }
      
      public static function §_-mO§(param1:§_-c9§) : void
      {
         param1.§_-tG§(§_-5o§,Point,§_-5n§);
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§_-Dd§ = true;
            this.§_-zd§ = param2;
            this._flags |= !!param3 ? 1 : 0;
         }
         else if(param1 == "y")
         {
            this.§_-lK§ = true;
            this.§_-Ji§ = param2;
            this._flags |= !!param3 ? 4 : 0;
         }
      }
      
      override protected function newInstance() : §_-rJ§
      {
         return new §_-5o§();
      }
      
      override public function get target() : Object
      {
         return this.§_-9Z§;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§_-Dd§ = true;
            this.§_-WJ§ = param2;
            this._flags |= !!param3 ? 2 : 0;
         }
         else if(param1 == "y")
         {
            this.§_-lK§ = true;
            this.§_-Jd§ = param2;
            this._flags |= !!param3 ? 8 : 0;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§_-9Z§ = param1 as Point;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:Point = this.§_-9Z§;
         if(this.§_-Dd§)
         {
            if(isNaN(this.§_-zd§))
            {
               this.§_-zd§ = _loc1_.x;
            }
            else if((this._flags & 1) != 0)
            {
               this.§_-zd§ += _loc1_.x;
            }
            if(isNaN(this.§_-WJ§))
            {
               this.§_-WJ§ = _loc1_.x;
            }
            else if((this._flags & 2) != 0)
            {
               this.§_-WJ§ += _loc1_.x;
            }
         }
         if(this.§_-lK§)
         {
            if(isNaN(this.§_-Ji§))
            {
               this.§_-Ji§ = _loc1_.y;
            }
            else if((this._flags & 4) != 0)
            {
               this.§_-Ji§ += _loc1_.y;
            }
            if(isNaN(this.§_-Jd§))
            {
               this.§_-Jd§ = _loc1_.y;
            }
            else if((this._flags & 8) != 0)
            {
               this.§_-Jd§ += _loc1_.y;
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:Point = this.§_-9Z§;
         var _loc3_:Number = 1 - param1;
         if(this.§_-Dd§)
         {
            _loc2_.x = this.§_-zd§ * _loc3_ + this.§_-WJ§ * param1;
         }
         if(this.§_-lK§)
         {
            _loc2_.y = this.§_-Ji§ * _loc3_ + this.§_-Jd§ * param1;
         }
      }
      
      override protected function copyFrom(param1:§_-rJ§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-5o§ = param1 as §_-5o§;
         this.§_-9Z§ = _loc2_.§_-9Z§;
         this.§_-zd§ = _loc2_.§_-zd§;
         this.§_-Ji§ = _loc2_.§_-Ji§;
         this.§_-WJ§ = _loc2_.§_-WJ§;
         this.§_-Jd§ = _loc2_.§_-Jd§;
         this.§_-Dd§ = _loc2_.§_-Dd§;
         this.§_-lK§ = _loc2_.§_-lK§;
         this._flags = _loc2_._flags;
      }
   }
}
