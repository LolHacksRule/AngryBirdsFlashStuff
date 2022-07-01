package §4"6§
{
   import §8=§.§4"+§;
   import §<!3§.§"`§;
   import flash.geom.Point;
   
   public class §=!h§ extends §4"+§
   {
      
      public static const §0!V§:Array = ["x","y"];
       
      
      protected var §%§:Number;
      
      protected var §`!l§:Number;
      
      protected var _flags:uint = 0;
      
      protected var §"!c§:Point = null;
      
      protected var §8!H§:Boolean = false;
      
      protected var §@"=§:Boolean = false;
      
      protected var §=§:Number;
      
      protected var §&c§:Number;
      
      public function §=!h§()
      {
         super();
      }
      
      public static function §>!X§(param1:§"`§) : void
      {
         param1.§5!j§(§=!h§,Point,§0!V§);
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§8!H§ = true;
            this.§%§ = param2;
            this._flags |= !!param3 ? 1 : 0;
         }
         else if(param1 == "y")
         {
            this.§@"=§ = true;
            this.§`!l§ = param2;
            this._flags |= !!param3 ? 4 : 0;
         }
      }
      
      override protected function newInstance() : §4"+§
      {
         return new §=!h§();
      }
      
      override public function get target() : Object
      {
         return this.§"!c§;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§8!H§ = true;
            this.§=§ = param2;
            this._flags |= !!param3 ? 2 : 0;
         }
         else if(param1 == "y")
         {
            this.§@"=§ = true;
            this.§&c§ = param2;
            this._flags |= !!param3 ? 8 : 0;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§"!c§ = param1 as Point;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:Point = this.§"!c§;
         if(this.§8!H§)
         {
            if(isNaN(this.§%§))
            {
               this.§%§ = _loc1_.x;
            }
            else if((this._flags & 1) != 0)
            {
               this.§%§ += _loc1_.x;
            }
            if(isNaN(this.§=§))
            {
               this.§=§ = _loc1_.x;
            }
            else if((this._flags & 2) != 0)
            {
               this.§=§ += _loc1_.x;
            }
         }
         if(this.§@"=§)
         {
            if(isNaN(this.§`!l§))
            {
               this.§`!l§ = _loc1_.y;
            }
            else if((this._flags & 4) != 0)
            {
               this.§`!l§ += _loc1_.y;
            }
            if(isNaN(this.§&c§))
            {
               this.§&c§ = _loc1_.y;
            }
            else if((this._flags & 8) != 0)
            {
               this.§&c§ += _loc1_.y;
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:Point = this.§"!c§;
         var _loc3_:Number = 1 - param1;
         if(this.§8!H§)
         {
            _loc2_.x = this.§%§ * _loc3_ + this.§=§ * param1;
         }
         if(this.§@"=§)
         {
            _loc2_.y = this.§`!l§ * _loc3_ + this.§&c§ * param1;
         }
      }
      
      override protected function copyFrom(param1:§4"+§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§=!h§ = param1 as §=!h§;
         this.§"!c§ = _loc2_.§"!c§;
         this.§%§ = _loc2_.§%§;
         this.§`!l§ = _loc2_.§`!l§;
         this.§=§ = _loc2_.§=§;
         this.§&c§ = _loc2_.§&c§;
         this.§8!H§ = _loc2_.§8!H§;
         this.§@"=§ = _loc2_.§@"=§;
         this._flags = _loc2_._flags;
      }
   }
}
