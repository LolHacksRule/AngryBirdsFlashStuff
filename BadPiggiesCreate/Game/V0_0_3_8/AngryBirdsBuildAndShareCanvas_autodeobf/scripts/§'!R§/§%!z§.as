package §'!R§
{
   import §9!j§.§'"#§;
   import §>O§.§4!!§;
   import flash.geom.Point;
   
   public class §%!z§ extends §4!!§
   {
      
      public static const §&!@§:Array = ["x","y"];
       
      
      protected var §@d§:Number;
      
      protected var §^[§:Number;
      
      protected var _flags:uint = 0;
      
      protected var §,@§:Point = null;
      
      protected var §,]§:Boolean = false;
      
      protected var §<!G§:Boolean = false;
      
      protected var §'!d§:Number;
      
      protected var §@![§:Number;
      
      public function §%!z§()
      {
         super();
      }
      
      public static function §"!%§(param1:§'"#§) : void
      {
         param1.§0;§(§%!z§,Point,§&!@§);
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§,]§ = true;
            this.§@d§ = param2;
            this._flags |= !!param3 ? 1 : 0;
         }
         else if(param1 == "y")
         {
            this.§<!G§ = true;
            this.§^[§ = param2;
            this._flags |= !!param3 ? 4 : 0;
         }
      }
      
      override protected function newInstance() : §4!!§
      {
         return new §%!z§();
      }
      
      override public function get target() : Object
      {
         return this.§,@§;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§,]§ = true;
            this.§'!d§ = param2;
            this._flags |= !!param3 ? 2 : 0;
         }
         else if(param1 == "y")
         {
            this.§<!G§ = true;
            this.§@![§ = param2;
            this._flags |= !!param3 ? 8 : 0;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§,@§ = param1 as Point;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:Point = this.§,@§;
         if(this.§,]§)
         {
            if(isNaN(this.§@d§))
            {
               this.§@d§ = _loc1_.x;
            }
            else if((this._flags & 1) != 0)
            {
               this.§@d§ += _loc1_.x;
            }
            if(isNaN(this.§'!d§))
            {
               this.§'!d§ = _loc1_.x;
            }
            else if((this._flags & 2) != 0)
            {
               this.§'!d§ += _loc1_.x;
            }
         }
         if(this.§<!G§)
         {
            if(isNaN(this.§^[§))
            {
               this.§^[§ = _loc1_.y;
            }
            else if((this._flags & 4) != 0)
            {
               this.§^[§ += _loc1_.y;
            }
            if(isNaN(this.§@![§))
            {
               this.§@![§ = _loc1_.y;
            }
            else if((this._flags & 8) != 0)
            {
               this.§@![§ += _loc1_.y;
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:Point = this.§,@§;
         var _loc3_:Number = 1 - param1;
         if(this.§,]§)
         {
            _loc2_.x = this.§@d§ * _loc3_ + this.§'!d§ * param1;
         }
         if(this.§<!G§)
         {
            _loc2_.y = this.§^[§ * _loc3_ + this.§@![§ * param1;
         }
      }
      
      override protected function copyFrom(param1:§4!!§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§%!z§ = param1 as §%!z§;
         this.§,@§ = _loc2_.§,@§;
         this.§@d§ = _loc2_.§@d§;
         this.§^[§ = _loc2_.§^[§;
         this.§'!d§ = _loc2_.§'!d§;
         this.§@![§ = _loc2_.§@![§;
         this.§,]§ = _loc2_.§,]§;
         this.§<!G§ = _loc2_.§<!G§;
         this._flags = _loc2_._flags;
      }
   }
}
