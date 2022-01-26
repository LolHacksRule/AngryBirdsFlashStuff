package §_-wp§
{
   import §_-V7§.§_-rJ§;
   import §_-wT§.§_-c9§;
   import flash.display.MovieClip;
   
   public class §_-nL§ extends §_-rJ§
   {
      
      public static const §_-5n§:Array = ["_frame"];
       
      
      protected var _flags:uint = 0;
      
      protected var §_-3D§:MovieClipParameter;
      
      protected var §_-9Z§:MovieClip = null;
      
      protected var §_-CQ§:MovieClipParameter;
      
      public function §_-nL§()
      {
         this.§_-CQ§ = new MovieClipParameter();
         this.§_-3D§ = new MovieClipParameter();
         super();
      }
      
      public static function §_-mO§(param1:§_-c9§) : void
      {
         param1.§_-tG§(§_-nL§,MovieClip,§_-5n§);
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§_-3D§.relativeFlags |= !!param3 ? 1 : 0;
            this.§_-3D§.frame = param2;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§_-9Z§ = param1 as MovieClip;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§_-9Z§;
         var _loc3_:MovieClipParameter = this.§_-3D§;
         var _loc4_:MovieClipParameter = this.§_-CQ§;
         var _loc5_:uint = this._flags;
         var _loc6_:Number = 1 - param1;
         if((_loc5_ & 1) != 0)
         {
            _loc2_.gotoAndStop(Math.round(_loc4_.frame * _loc6_ + _loc3_.frame * param1));
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:MovieClip = this.§_-9Z§;
         var _loc2_:MovieClipParameter = this.§_-3D§;
         var _loc3_:MovieClipParameter = this.§_-CQ§;
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
         return this.§_-9Z§;
      }
      
      override protected function newInstance() : §_-rJ§
      {
         return new §_-nL§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§_-CQ§.relativeFlags |= !!param3 ? 1 : 0;
            this.§_-CQ§.frame = param2;
         }
      }
      
      override protected function copyFrom(param1:§_-rJ§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-nL§ = param1 as §_-nL§;
         this.§_-9Z§ = _loc2_.§_-9Z§;
         this.§_-CQ§.copyFrom(_loc2_.§_-CQ§);
         this.§_-3D§.copyFrom(_loc2_.§_-3D§);
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
