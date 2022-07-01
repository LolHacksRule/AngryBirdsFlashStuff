package §-1§
{
   import §7!N§.§]!U§;
   import §=!N§.§%!O§;
   import flash.geom.Point;
   
   public class §?+§ extends §%!O§
   {
      
      public static const §4!n§:Array = ["x","y"];
       
      
      protected var §?r§:Number;
      
      protected var §]u§:Number;
      
      protected var _flags:uint = 0;
      
      protected var §&J§:Point = null;
      
      protected var §<u§:Boolean = false;
      
      protected var §7!K§:Boolean = false;
      
      protected var §%H§:Number;
      
      protected var §@!k§:Number;
      
      public function §?+§()
      {
         super();
      }
      
      public static function §=f§(param1:§]!U§) : void
      {
         param1.§+s§(§?+§,Point,§4!n§);
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§<u§ = true;
            this.§?r§ = param2;
            this._flags |= !!param3 ? 1 : 0;
         }
         else if(param1 == "y")
         {
            this.§7!K§ = true;
            this.§]u§ = param2;
            this._flags |= !!param3 ? 4 : 0;
         }
      }
      
      override protected function newInstance() : §%!O§
      {
         return new §?+§();
      }
      
      override public function get target() : Object
      {
         return this.§&J§;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this.§<u§ = true;
            this.§%H§ = param2;
            this._flags |= !!param3 ? 2 : 0;
         }
         else if(param1 == "y")
         {
            this.§7!K§ = true;
            this.§@!k§ = param2;
            this._flags |= !!param3 ? 8 : 0;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§&J§ = param1 as Point;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:Point = this.§&J§;
         if(this.§<u§)
         {
            if(isNaN(this.§?r§))
            {
               this.§?r§ = _loc1_.x;
            }
            else if((this._flags & 1) != 0)
            {
               this.§?r§ += _loc1_.x;
            }
            if(isNaN(this.§%H§))
            {
               this.§%H§ = _loc1_.x;
            }
            else if((this._flags & 2) != 0)
            {
               this.§%H§ += _loc1_.x;
            }
         }
         if(this.§7!K§)
         {
            if(isNaN(this.§]u§))
            {
               this.§]u§ = _loc1_.y;
            }
            else if((this._flags & 4) != 0)
            {
               this.§]u§ += _loc1_.y;
            }
            if(isNaN(this.§@!k§))
            {
               this.§@!k§ = _loc1_.y;
            }
            else if((this._flags & 8) != 0)
            {
               this.§@!k§ += _loc1_.y;
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:Point = this.§&J§;
         var _loc3_:Number = 1 - param1;
         if(this.§<u§)
         {
            _loc2_.x = this.§?r§ * _loc3_ + this.§%H§ * param1;
         }
         if(this.§7!K§)
         {
            _loc2_.y = this.§]u§ * _loc3_ + this.§@!k§ * param1;
         }
      }
      
      override protected function copyFrom(param1:§%!O§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§?+§ = param1 as §?+§;
         this.§&J§ = _loc2_.§&J§;
         this.§?r§ = _loc2_.§?r§;
         this.§]u§ = _loc2_.§]u§;
         this.§%H§ = _loc2_.§%H§;
         this.§@!k§ = _loc2_.§@!k§;
         this.§<u§ = _loc2_.§<u§;
         this.§7!K§ = _loc2_.§7!K§;
         this._flags = _loc2_._flags;
      }
   }
}
