package §7u§
{
   import § !3§.§1!§;
   import §#!,§.§='§;
   import flash.geom.Point;
   
   public class §+!0§ extends §1!§
   {
      
      public static const §@L§:Array = ["x","y"];
       
      
      protected var §4g§:Number;
      
      protected var §6![§:Number;
      
      protected var _flags:uint = 0;
      
      protected var §-"7§:Point = null;
      
      protected var §7,§:Boolean = false;
      
      protected var §?!M§:Boolean = false;
      
      protected var §<!8§:Number;
      
      protected var §>!,§:Number;
      
      public function §+!0§()
      {
         super();
      }
      
      public static function §3a§(param1:§='§) : void
      {
         param1.§^",§(§+!0§,Point,§@L§);
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§7,§ = true;
            this.§4g§ = param2;
            this._flags |= !!param3 ? 1 : 0;
         }
         else if(param1 == "y")
         {
            this.§?!M§ = true;
            this.§6![§ = param2;
            this._flags |= !!param3 ? 4 : 0;
         }
      }
      
      override protected function newInstance() : §1!§
      {
         return new §+!0§();
      }
      
      override public function get target() : Object
      {
         return this.§-"7§;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§7,§ = true;
            this.§<!8§ = param2;
            this._flags |= !!param3 ? 2 : 0;
         }
         else if(param1 == "y")
         {
            this.§?!M§ = true;
            this.§>!,§ = param2;
            this._flags |= !!param3 ? 8 : 0;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§-"7§ = param1 as Point;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:Point = this.§-"7§;
         if(this.§7,§)
         {
            if(isNaN(this.§4g§))
            {
               this.§4g§ = _loc1_.x;
            }
            else if((this._flags & 1) != 0)
            {
               this.§4g§ += _loc1_.x;
            }
            if(isNaN(this.§<!8§))
            {
               this.§<!8§ = _loc1_.x;
            }
            else if((this._flags & 2) != 0)
            {
               this.§<!8§ += _loc1_.x;
            }
         }
         if(this.§?!M§)
         {
            if(isNaN(this.§6![§))
            {
               this.§6![§ = _loc1_.y;
            }
            else if((this._flags & 4) != 0)
            {
               this.§6![§ += _loc1_.y;
            }
            if(isNaN(this.§>!,§))
            {
               this.§>!,§ = _loc1_.y;
            }
            else if((this._flags & 8) != 0)
            {
               this.§>!,§ += _loc1_.y;
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:Point = this.§-"7§;
         var _loc3_:Number = 1 - param1;
         if(this.§7,§)
         {
            _loc2_.x = this.§4g§ * _loc3_ + this.§<!8§ * param1;
         }
         if(this.§?!M§)
         {
            _loc2_.y = this.§6![§ * _loc3_ + this.§>!,§ * param1;
         }
      }
      
      override protected function copyFrom(param1:§1!§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§+!0§ = param1 as §+!0§;
         this.§-"7§ = _loc2_.§-"7§;
         this.§4g§ = _loc2_.§4g§;
         this.§6![§ = _loc2_.§6![§;
         this.§<!8§ = _loc2_.§<!8§;
         this.§>!,§ = _loc2_.§>!,§;
         this.§7,§ = _loc2_.§7,§;
         this.§?!M§ = _loc2_.§?!M§;
         this._flags = _loc2_._flags;
      }
   }
}
