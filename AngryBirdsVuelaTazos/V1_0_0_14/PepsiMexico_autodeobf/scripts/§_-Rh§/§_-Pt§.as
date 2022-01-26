package §_-Rh§
{
   import §_-C5§.§_-3l§;
   import §_-DH§.§_-tv§;
   import flash.display.MovieClip;
   
   public class §_-Pt§ extends §_-tv§
   {
      
      public static const §_-lA§:Array = ["_frame"];
       
      
      protected var _flags:uint = 0;
      
      protected var §_-OR§:MovieClipParameter;
      
      protected var §_-lg§:MovieClip = null;
      
      protected var §_-Ov§:MovieClipParameter;
      
      public function §_-Pt§()
      {
         this.§_-Ov§ = new MovieClipParameter();
         this.§_-OR§ = new MovieClipParameter();
         super();
      }
      
      public static function §_-FR§(param1:§_-3l§) : void
      {
         param1.§_-8Z§(§_-Pt§,MovieClip,§_-lA§);
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§_-OR§.relativeFlags |= !!param3 ? 1 : 0;
            this.§_-OR§.frame = param2;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§_-lg§ = param1 as MovieClip;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§_-lg§;
         var _loc3_:MovieClipParameter = this.§_-OR§;
         var _loc4_:MovieClipParameter = this.§_-Ov§;
         var _loc5_:uint = this._flags;
         var _loc6_:Number = 1 - param1;
         if((_loc5_ & 1) != 0)
         {
            _loc2_.gotoAndStop(Math.round(_loc4_.frame * _loc6_ + _loc3_.frame * param1));
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:MovieClip = this.§_-lg§;
         var _loc2_:MovieClipParameter = this.§_-OR§;
         var _loc3_:MovieClipParameter = this.§_-Ov§;
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
         return this.§_-lg§;
      }
      
      override protected function newInstance() : §_-tv§
      {
         return new §_-Pt§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "_frame")
         {
            this._flags |= 1;
            this.§_-Ov§.relativeFlags |= !!param3 ? 1 : 0;
            this.§_-Ov§.frame = param2;
         }
      }
      
      override protected function copyFrom(param1:§_-tv§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-Pt§ = param1 as §_-Pt§;
         this.§_-lg§ = _loc2_.§_-lg§;
         this.§_-Ov§.copyFrom(_loc2_.§_-Ov§);
         this.§_-OR§.copyFrom(_loc2_.§_-OR§);
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
