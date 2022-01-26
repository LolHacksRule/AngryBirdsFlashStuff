package §_-ur§
{
   import §_-60§.§_-5r§;
   import §_-Og§.§_-bt§;
   import flash.display.MovieClip;
   
   public class §_-rH§ extends §_-5r§
   {
      
      public static const §_-rV§:Array = ["_frame"];
       
      
      protected var _flags:uint = 0;
      
      protected var §_-32§:MovieClipParameter;
      
      protected var §_-Db§:MovieClip = null;
      
      protected var §_-7A§:MovieClipParameter;
      
      public function §_-rH§()
      {
         this.§_-7A§ = new MovieClipParameter();
         this.§_-32§ = new MovieClipParameter();
         super();
      }
      
      public static function §_-0m§(param1:§_-bt§) : void
      {
         param1.§_-MU§(§_-rH§,MovieClip,§_-rV§);
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§_-32§.relativeFlags |= !!param3 ? 1 : 0;
            this.§_-32§.frame = param2;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§_-Db§ = param1 as MovieClip;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§_-Db§;
         var _loc3_:MovieClipParameter = this.§_-32§;
         var _loc4_:MovieClipParameter = this.§_-7A§;
         var _loc5_:uint = this._flags;
         var _loc6_:Number = 1 - param1;
         if((_loc5_ & 1) != 0)
         {
            _loc2_.gotoAndStop(Math.round(_loc4_.frame * _loc6_ + _loc3_.frame * param1));
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:MovieClip = this.§_-Db§;
         var _loc2_:MovieClipParameter = this.§_-32§;
         var _loc3_:MovieClipParameter = this.§_-7A§;
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
         return this.§_-Db§;
      }
      
      override protected function newInstance() : §_-5r§
      {
         return new §_-rH§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§_-7A§.relativeFlags |= !!param3 ? 1 : 0;
            this.§_-7A§.frame = param2;
         }
      }
      
      override protected function copyFrom(param1:§_-5r§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-rH§ = param1 as §_-rH§;
         this.§_-Db§ = _loc2_.§_-Db§;
         this.§_-7A§.copyFrom(_loc2_.§_-7A§);
         this.§_-32§.copyFrom(_loc2_.§_-32§);
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
