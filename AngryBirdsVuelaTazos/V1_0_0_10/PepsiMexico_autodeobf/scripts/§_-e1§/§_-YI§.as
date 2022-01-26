package §_-e1§
{
   import §_-9w§.§_-IH§;
   import §_-rM§.§_-1E§;
   import flash.display.MovieClip;
   
   public class §_-YI§ extends §_-IH§
   {
      
      public static const §_-3C§:Array = ["_frame"];
       
      
      protected var _flags:uint = 0;
      
      protected var §_-nk§:MovieClipParameter;
      
      protected var §_-CB§:MovieClip = null;
      
      protected var §_-nm§:MovieClipParameter;
      
      public function §_-YI§()
      {
         this.§_-nm§ = new MovieClipParameter();
         this.§_-nk§ = new MovieClipParameter();
         super();
      }
      
      public static function §_-Mv§(param1:§_-1E§) : void
      {
         param1.§_-v4§(§_-YI§,MovieClip,§_-3C§);
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§_-nk§.relativeFlags |= !!param3 ? 1 : 0;
            this.§_-nk§.frame = param2;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§_-CB§ = param1 as MovieClip;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§_-CB§;
         var _loc3_:MovieClipParameter = this.§_-nk§;
         var _loc4_:MovieClipParameter = this.§_-nm§;
         var _loc5_:uint = this._flags;
         var _loc6_:Number = 1 - param1;
         if((_loc5_ & 1) != 0)
         {
            _loc2_.gotoAndStop(Math.round(_loc4_.frame * _loc6_ + _loc3_.frame * param1));
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:MovieClip = this.§_-CB§;
         var _loc2_:MovieClipParameter = this.§_-nk§;
         var _loc3_:MovieClipParameter = this.§_-nm§;
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
         return this.§_-CB§;
      }
      
      override protected function newInstance() : §_-IH§
      {
         return new §_-YI§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§_-nm§.relativeFlags |= !!param3 ? 1 : 0;
            this.§_-nm§.frame = param2;
         }
      }
      
      override protected function copyFrom(param1:§_-IH§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-YI§ = param1 as §_-YI§;
         this.§_-CB§ = _loc2_.§_-CB§;
         this.§_-nm§.copyFrom(_loc2_.§_-nm§);
         this.§_-nk§.copyFrom(_loc2_.§_-nk§);
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
