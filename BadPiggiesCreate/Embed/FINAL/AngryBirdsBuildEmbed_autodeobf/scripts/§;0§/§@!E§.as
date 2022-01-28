package §;0§
{
   import §3§.§8Y§;
   import §]s§.§&[§;
   import flash.geom.Point;
   
   public class §@!E§ extends §8Y§
   {
      
      public static const §03§:Array = ["x","y"];
       
      
      protected var §;k§:Number;
      
      protected var §<h§:Number;
      
      protected var _flags:uint = 0;
      
      protected var §?!p§:Point = null;
      
      protected var §^!p§:Boolean = false;
      
      protected var §@!<§:Boolean = false;
      
      protected var §'!u§:Number;
      
      protected var §-!%§:Number;
      
      public function §@!E§()
      {
         super();
      }
      
      public static function §-V§(param1:§&[§) : void
      {
         param1.§6p§(§@!E§,Point,§03§);
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§^!p§ = true;
            this.§;k§ = param2;
            this._flags |= !!param3 ? 1 : 0;
         }
         else if(param1 == "y")
         {
            this.§@!<§ = true;
            this.§<h§ = param2;
            this._flags |= !!param3 ? 4 : 0;
         }
      }
      
      override protected function newInstance() : §8Y§
      {
         return new §@!E§();
      }
      
      override public function get target() : Object
      {
         return this.§?!p§;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§^!p§ = true;
            this.§'!u§ = param2;
            this._flags |= !!param3 ? 2 : 0;
         }
         else if(param1 == "y")
         {
            this.§@!<§ = true;
            this.§-!%§ = param2;
            this._flags |= !!param3 ? 8 : 0;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§?!p§ = param1 as Point;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:Point = this.§?!p§;
         if(this.§^!p§)
         {
            if(isNaN(this.§;k§))
            {
               this.§;k§ = _loc1_.x;
            }
            else if((this._flags & 1) != 0)
            {
               this.§;k§ += _loc1_.x;
            }
            if(isNaN(this.§'!u§))
            {
               this.§'!u§ = _loc1_.x;
            }
            else if((this._flags & 2) != 0)
            {
               this.§'!u§ += _loc1_.x;
            }
         }
         if(this.§@!<§)
         {
            if(isNaN(this.§<h§))
            {
               this.§<h§ = _loc1_.y;
            }
            else if((this._flags & 4) != 0)
            {
               this.§<h§ += _loc1_.y;
            }
            if(isNaN(this.§-!%§))
            {
               this.§-!%§ = _loc1_.y;
            }
            else if((this._flags & 8) != 0)
            {
               this.§-!%§ += _loc1_.y;
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:Point = this.§?!p§;
         var _loc3_:Number = 1 - param1;
         if(this.§^!p§)
         {
            _loc2_.x = this.§;k§ * _loc3_ + this.§'!u§ * param1;
         }
         if(this.§@!<§)
         {
            _loc2_.y = this.§<h§ * _loc3_ + this.§-!%§ * param1;
         }
      }
      
      override protected function copyFrom(param1:§8Y§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§@!E§ = param1 as §@!E§;
         this.§?!p§ = _loc2_.§?!p§;
         this.§;k§ = _loc2_.§;k§;
         this.§<h§ = _loc2_.§<h§;
         this.§'!u§ = _loc2_.§'!u§;
         this.§-!%§ = _loc2_.§-!%§;
         this.§^!p§ = _loc2_.§^!p§;
         this.§@!<§ = _loc2_.§@!<§;
         this._flags = _loc2_._flags;
      }
   }
}
