package §&x§
{
   import §"E§.§&!h§;
   import §0§.§#![§;
   import flash.geom.Point;
   
   public class §%p§ extends §#![§
   {
      
      public static const §66§:Array = ["x","y"];
       
      
      protected var §?@§:Number;
      
      protected var §=!G§:Number;
      
      protected var _flags:uint = 0;
      
      protected var §[l§:Point = null;
      
      protected var §'=§:Boolean = false;
      
      protected var §@!5§:Boolean = false;
      
      protected var §=L§:Number;
      
      protected var §4E§:Number;
      
      public function §%p§()
      {
         super();
      }
      
      public static function §;-§(param1:§&!h§) : void
      {
         param1.§1"3§(§%p§,Point,§66§);
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§'=§ = true;
            this.§?@§ = param2;
            this._flags |= !!param3 ? 1 : 0;
         }
         else if(param1 == "y")
         {
            this.§@!5§ = true;
            this.§=!G§ = param2;
            this._flags |= !!param3 ? 4 : 0;
         }
      }
      
      override protected function newInstance() : §#![§
      {
         return new §%p§();
      }
      
      override public function get target() : Object
      {
         return this.§[l§;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§'=§ = true;
            this.§=L§ = param2;
            this._flags |= !!param3 ? 2 : 0;
         }
         else if(param1 == "y")
         {
            this.§@!5§ = true;
            this.§4E§ = param2;
            this._flags |= !!param3 ? 8 : 0;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§[l§ = param1 as Point;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:Point = this.§[l§;
         if(this.§'=§)
         {
            if(isNaN(this.§?@§))
            {
               this.§?@§ = _loc1_.x;
            }
            else if((this._flags & 1) != 0)
            {
               this.§?@§ += _loc1_.x;
            }
            if(isNaN(this.§=L§))
            {
               this.§=L§ = _loc1_.x;
            }
            else if((this._flags & 2) != 0)
            {
               this.§=L§ += _loc1_.x;
            }
         }
         if(this.§@!5§)
         {
            if(isNaN(this.§=!G§))
            {
               this.§=!G§ = _loc1_.y;
            }
            else if((this._flags & 4) != 0)
            {
               this.§=!G§ += _loc1_.y;
            }
            if(isNaN(this.§4E§))
            {
               this.§4E§ = _loc1_.y;
            }
            else if((this._flags & 8) != 0)
            {
               this.§4E§ += _loc1_.y;
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:Point = this.§[l§;
         var _loc3_:Number = 1 - param1;
         if(this.§'=§)
         {
            _loc2_.x = this.§?@§ * _loc3_ + this.§=L§ * param1;
         }
         if(this.§@!5§)
         {
            _loc2_.y = this.§=!G§ * _loc3_ + this.§4E§ * param1;
         }
      }
      
      override protected function copyFrom(param1:§#![§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§%p§ = param1 as §%p§;
         this.§[l§ = _loc2_.§[l§;
         this.§?@§ = _loc2_.§?@§;
         this.§=!G§ = _loc2_.§=!G§;
         this.§=L§ = _loc2_.§=L§;
         this.§4E§ = _loc2_.§4E§;
         this.§'=§ = _loc2_.§'=§;
         this.§@!5§ = _loc2_.§@!5§;
         this._flags = _loc2_._flags;
      }
   }
}
