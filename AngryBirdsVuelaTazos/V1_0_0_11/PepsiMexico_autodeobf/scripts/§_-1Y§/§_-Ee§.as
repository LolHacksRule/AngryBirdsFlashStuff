package §_-1Y§
{
   import §_-D8§.§_-wR§;
   import §_-wn§.§_-S7§;
   import flash.display.MovieClip;
   
   public class §_-Ee§ extends §_-wR§
   {
      
      public static const §_-7T§:Array = ["_frame"];
       
      
      protected var _flags:uint = 0;
      
      protected var §_-Ia§:MovieClipParameter;
      
      protected var §_-x7§:MovieClip = null;
      
      protected var §_-gP§:MovieClipParameter;
      
      public function §_-Ee§()
      {
         this.§_-gP§ = new MovieClipParameter();
         this.§_-Ia§ = new MovieClipParameter();
         super();
      }
      
      public static function §_-Vo§(param1:§_-S7§) : void
      {
         param1.§_-UT§(§_-Ee§,MovieClip,§_-7T§);
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§_-Ia§.relativeFlags |= !!param3 ? 1 : 0;
            this.§_-Ia§.frame = param2;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§_-x7§ = param1 as MovieClip;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§_-x7§;
         var _loc3_:MovieClipParameter = this.§_-Ia§;
         var _loc4_:MovieClipParameter = this.§_-gP§;
         var _loc5_:uint = this._flags;
         var _loc6_:Number = 1 - param1;
         if((_loc5_ & 1) != 0)
         {
            _loc2_.gotoAndStop(Math.round(_loc4_.frame * _loc6_ + _loc3_.frame * param1));
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:MovieClip = this.§_-x7§;
         var _loc2_:MovieClipParameter = this.§_-Ia§;
         var _loc3_:MovieClipParameter = this.§_-gP§;
         var _loc4_:uint;
         if(((_loc4_ = this._flags) & 1) != 0)
         {
            if(isNaN(_loc3_.frame))
            {
               _loc3_.frame = _loc1_.currentFrame;
            }
            else if((_loc3_.relativeFlags & 1) != 0)
            {
               _loc3_.frame += _loc1_.currentFrame;
            }
            if(isNaN(_loc2_.frame))
            {
               _loc2_.frame = _loc1_.currentFrame;
            }
            else if((_loc2_.relativeFlags & 1) != 0)
            {
               _loc2_.frame += _loc1_.currentFrame;
            }
         }
      }
      
      override public function get target() : Object
      {
         return this.§_-x7§;
      }
      
      override protected function newInstance() : §_-wR§
      {
         return new §_-Ee§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§_-gP§.relativeFlags |= !!param3 ? 1 : 0;
            this.§_-gP§.frame = param2;
         }
      }
      
      override protected function copyFrom(param1:§_-wR§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-Ee§ = param1 as §_-Ee§;
         this.§_-x7§ = _loc2_.§_-x7§;
         this.§_-gP§.copyFrom(_loc2_.§_-gP§);
         this.§_-Ia§.copyFrom(_loc2_.§_-Ia§);
         this._flags = _loc2_._flags;
      }
   }
}

class MovieClipParameter
{
    
   
   public var relativeFlags:uint = 0;
   
   public var frame:Number;
   
   function MovieClipParameter()
   {
      super();
   }
   
   public function copyFrom(param1:MovieClipParameter) : void
   {
      this.relativeFlags = param1.relativeFlags;
      this.frame = param1.frame;
   }
}
