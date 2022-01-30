package §!4§
{
   import § !R§.§5!-§;
   import §6!F§.§>!%§;
   import flash.geom.Point;
   
   public class §"!'§ extends §>!%§
   {
      
      public static const §&!]§:Array = ["x","y"];
       
      
      protected var §]k§:Number;
      
      protected var §<=§:Number;
      
      protected var _flags:uint = 0;
      
      protected var §>!C§:Point = null;
      
      protected var §=!B§:Boolean = false;
      
      protected var §=4§:Boolean = false;
      
      protected var §!!'§:Number;
      
      protected var §-!S§:Number;
      
      public function §"!'§()
      {
         super();
      }
      
      public static function §8!m§(param1:§5!-§) : void
      {
         param1.§&!Z§(§"!'§,Point,§&!]§);
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§=!B§ = true;
            this.§]k§ = param2;
            this._flags |= !!param3 ? 1 : 0;
         }
         else if(param1 == "y")
         {
            this.§=4§ = true;
            this.§<=§ = param2;
            this._flags |= !!param3 ? 4 : 0;
         }
      }
      
      override protected function newInstance() : §>!%§
      {
         return new §"!'§();
      }
      
      override public function get target() : Object
      {
         return this.§>!C§;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§=!B§ = true;
            this.§!!'§ = param2;
            this._flags |= !!param3 ? 2 : 0;
         }
         else if(param1 == "y")
         {
            this.§=4§ = true;
            this.§-!S§ = param2;
            this._flags |= !!param3 ? 8 : 0;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§>!C§ = param1 as Point;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:Point = this.§>!C§;
         if(this.§=!B§)
         {
            if(isNaN(this.§]k§))
            {
               this.§]k§ = _loc1_.x;
            }
            else if((this._flags & 1) != 0)
            {
               this.§]k§ += _loc1_.x;
            }
            if(isNaN(this.§!!'§))
            {
               this.§!!'§ = _loc1_.x;
            }
            else if((this._flags & 2) != 0)
            {
               this.§!!'§ += _loc1_.x;
            }
         }
         if(this.§=4§)
         {
            if(isNaN(this.§<=§))
            {
               this.§<=§ = _loc1_.y;
            }
            else if((this._flags & 4) != 0)
            {
               this.§<=§ += _loc1_.y;
            }
            if(isNaN(this.§-!S§))
            {
               this.§-!S§ = _loc1_.y;
            }
            else if((this._flags & 8) != 0)
            {
               this.§-!S§ += _loc1_.y;
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:Point = this.§>!C§;
         var _loc3_:Number = 1 - param1;
         if(this.§=!B§)
         {
            _loc2_.x = this.§]k§ * _loc3_ + this.§!!'§ * param1;
         }
         if(this.§=4§)
         {
            _loc2_.y = this.§<=§ * _loc3_ + this.§-!S§ * param1;
         }
      }
      
      override protected function copyFrom(param1:§>!%§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§"!'§ = param1 as §"!'§;
         this.§>!C§ = _loc2_.§>!C§;
         this.§]k§ = _loc2_.§]k§;
         this.§<=§ = _loc2_.§<=§;
         this.§!!'§ = _loc2_.§!!'§;
         this.§-!S§ = _loc2_.§-!S§;
         this.§=!B§ = _loc2_.§=!B§;
         this.§=4§ = _loc2_.§=4§;
         this._flags = _loc2_._flags;
      }
   }
}
