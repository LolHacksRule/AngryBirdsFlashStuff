package §[!6§
{
   import § get§.§]D§;
   import §?"3§.§6!A§;
   import flash.geom.Point;
   
   public class §1[§ extends §]D§
   {
      
      public static const §7a§:Array = ["x","y"];
       
      
      protected var §#6§:Number;
      
      protected var §%!w§:Number;
      
      protected var _flags:uint = 0;
      
      protected var §<"$§:Point = null;
      
      protected var §2!d§:Boolean = false;
      
      protected var §2q§:Boolean = false;
      
      protected var §;`§:Number;
      
      protected var §?"#§:Number;
      
      public function §1[§()
      {
         super();
      }
      
      public static function §"!6§(param1:§6!A§) : void
      {
         param1.§3!3§(§1[§,Point,§7a§);
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§2!d§ = true;
            this.§#6§ = param2;
            this._flags |= !!param3 ? 1 : 0;
         }
         else if(param1 == "y")
         {
            this.§2q§ = true;
            this.§%!w§ = param2;
            this._flags |= !!param3 ? 4 : 0;
         }
      }
      
      override protected function newInstance() : §]D§
      {
         return new §1[§();
      }
      
      override public function get target() : Object
      {
         return this.§<"$§;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§2!d§ = true;
            this.§;`§ = param2;
            this._flags |= !!param3 ? 2 : 0;
         }
         else if(param1 == "y")
         {
            this.§2q§ = true;
            this.§?"#§ = param2;
            this._flags |= !!param3 ? 8 : 0;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§<"$§ = param1 as Point;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:Point = this.§<"$§;
         if(this.§2!d§)
         {
            if(isNaN(this.§#6§))
            {
               this.§#6§ = _loc1_.x;
            }
            else if((this._flags & 1) != 0)
            {
               this.§#6§ += _loc1_.x;
            }
            if(isNaN(this.§;`§))
            {
               this.§;`§ = _loc1_.x;
            }
            else if((this._flags & 2) != 0)
            {
               this.§;`§ += _loc1_.x;
            }
         }
         if(this.§2q§)
         {
            if(isNaN(this.§%!w§))
            {
               this.§%!w§ = _loc1_.y;
            }
            else if((this._flags & 4) != 0)
            {
               this.§%!w§ += _loc1_.y;
            }
            if(isNaN(this.§?"#§))
            {
               this.§?"#§ = _loc1_.y;
            }
            else if((this._flags & 8) != 0)
            {
               this.§?"#§ += _loc1_.y;
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:Point = this.§<"$§;
         var _loc3_:Number = 1 - param1;
         if(this.§2!d§)
         {
            _loc2_.x = this.§#6§ * _loc3_ + this.§;`§ * param1;
         }
         if(this.§2q§)
         {
            _loc2_.y = this.§%!w§ * _loc3_ + this.§?"#§ * param1;
         }
      }
      
      override protected function copyFrom(param1:§]D§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§1[§ = param1 as §1[§;
         this.§<"$§ = _loc2_.§<"$§;
         this.§#6§ = _loc2_.§#6§;
         this.§%!w§ = _loc2_.§%!w§;
         this.§;`§ = _loc2_.§;`§;
         this.§?"#§ = _loc2_.§?"#§;
         this.§2!d§ = _loc2_.§2!d§;
         this.§2q§ = _loc2_.§2q§;
         this._flags = _loc2_._flags;
      }
   }
}
