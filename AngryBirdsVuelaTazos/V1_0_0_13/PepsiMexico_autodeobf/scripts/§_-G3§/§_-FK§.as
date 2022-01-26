package §_-G3§
{
   import §_-OS§.§_-rl§;
   import §_-lV§.§_-ZS§;
   import flash.display.MovieClip;
   
   public class §_-FK§ extends §_-ZS§
   {
      
      public static const §_-Yh§:Array = ["_frame"];
       
      
      protected var _flags:uint = 0;
      
      protected var §_-6Q§:MovieClipParameter;
      
      protected var §_-YF§:MovieClip = null;
      
      protected var §_-bg§:MovieClipParameter;
      
      public function §_-FK§()
      {
         this.§_-bg§ = new MovieClipParameter();
         this.§_-6Q§ = new MovieClipParameter();
         super();
      }
      
      public static function §_-5B§(param1:§_-rl§) : void
      {
         param1.§_-P3§(§_-FK§,MovieClip,§_-Yh§);
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§_-6Q§.relativeFlags |= !!param3 ? 1 : 0;
            this.§_-6Q§.frame = param2;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§_-YF§ = param1 as MovieClip;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§_-YF§;
         var _loc3_:MovieClipParameter = this.§_-6Q§;
         var _loc4_:MovieClipParameter = this.§_-bg§;
         var _loc5_:uint = this._flags;
         var _loc6_:Number = 1 - param1;
         if((_loc5_ & 1) != 0)
         {
            _loc2_.gotoAndStop(Math.round(_loc4_.frame * _loc6_ + _loc3_.frame * param1));
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:MovieClip = this.§_-YF§;
         var _loc2_:MovieClipParameter = this.§_-6Q§;
         var _loc3_:MovieClipParameter = this.§_-bg§;
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
         return this.§_-YF§;
      }
      
      override protected function newInstance() : §_-ZS§
      {
         return new §_-FK§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§_-bg§.relativeFlags |= !!param3 ? 1 : 0;
            this.§_-bg§.frame = param2;
         }
      }
      
      override protected function copyFrom(param1:§_-ZS§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-FK§ = param1 as §_-FK§;
         this.§_-YF§ = _loc2_.§_-YF§;
         this.§_-bg§.copyFrom(_loc2_.§_-bg§);
         this.§_-6Q§.copyFrom(_loc2_.§_-6Q§);
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
