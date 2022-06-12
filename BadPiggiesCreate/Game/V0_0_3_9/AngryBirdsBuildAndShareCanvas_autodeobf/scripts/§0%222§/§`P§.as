package §0"2§
{
   import §?u§.§]%§;
   import §^!B§.§1!P§;
   import flash.geom.Point;
   
   public class §`P§ extends §]%§
   {
      
      public static const §]!$§:Array = ["x","y"];
       
      
      protected var §;3§:Number;
      
      protected var §,k§:Number;
      
      protected var _flags:uint = 0;
      
      protected var §@u§:Point = null;
      
      protected var §!"$§:Boolean = false;
      
      protected var §<;§:Boolean = false;
      
      protected var §[!L§:Number;
      
      protected var §6!3§:Number;
      
      public function §`P§()
      {
         super();
      }
      
      public static function §5"+§(param1:§1!P§) : void
      {
         param1.§]!Y§(§`P§,Point,§]!$§);
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§!"$§ = true;
            this.§;3§ = param2;
            this._flags |= !!param3 ? 1 : 0;
         }
         else if(param1 == "y")
         {
            this.§<;§ = true;
            this.§,k§ = param2;
            this._flags |= !!param3 ? 4 : 0;
         }
      }
      
      override protected function newInstance() : §]%§
      {
         return new §`P§();
      }
      
      override public function get target() : Object
      {
         return this.§@u§;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§!"$§ = true;
            this.§[!L§ = param2;
            this._flags |= !!param3 ? 2 : 0;
         }
         else if(param1 == "y")
         {
            this.§<;§ = true;
            this.§6!3§ = param2;
            this._flags |= !!param3 ? 8 : 0;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§@u§ = param1 as Point;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:Point = this.§@u§;
         if(this.§!"$§)
         {
            if(isNaN(this.§;3§))
            {
               this.§;3§ = _loc1_.x;
            }
            else if((this._flags & 1) != 0)
            {
               this.§;3§ += _loc1_.x;
            }
            if(isNaN(this.§[!L§))
            {
               this.§[!L§ = _loc1_.x;
            }
            else if((this._flags & 2) != 0)
            {
               this.§[!L§ += _loc1_.x;
            }
         }
         if(this.§<;§)
         {
            if(isNaN(this.§,k§))
            {
               this.§,k§ = _loc1_.y;
            }
            else if((this._flags & 4) != 0)
            {
               this.§,k§ += _loc1_.y;
            }
            if(isNaN(this.§6!3§))
            {
               this.§6!3§ = _loc1_.y;
            }
            else if((this._flags & 8) != 0)
            {
               this.§6!3§ += _loc1_.y;
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:Point = this.§@u§;
         var _loc3_:Number = 1 - param1;
         if(this.§!"$§)
         {
            _loc2_.x = this.§;3§ * _loc3_ + this.§[!L§ * param1;
         }
         if(this.§<;§)
         {
            _loc2_.y = this.§,k§ * _loc3_ + this.§6!3§ * param1;
         }
      }
      
      override protected function copyFrom(param1:§]%§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§`P§ = param1 as §`P§;
         this.§@u§ = _loc2_.§@u§;
         this.§;3§ = _loc2_.§;3§;
         this.§,k§ = _loc2_.§,k§;
         this.§[!L§ = _loc2_.§[!L§;
         this.§6!3§ = _loc2_.§6!3§;
         this.§!"$§ = _loc2_.§!"$§;
         this.§<;§ = _loc2_.§<;§;
         this._flags = _loc2_._flags;
      }
   }
}
