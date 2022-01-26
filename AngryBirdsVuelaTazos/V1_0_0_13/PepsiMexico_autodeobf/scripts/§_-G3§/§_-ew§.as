package §_-G3§
{
   import §_-OS§.§_-rl§;
   import §_-lV§.§_-ZS§;
   import flash.display.DisplayObject;
   import flash.filters.BevelFilter;
   import flash.filters.BitmapFilter;
   import flash.filters.BlurFilter;
   import flash.filters.ColorMatrixFilter;
   import flash.filters.ConvolutionFilter;
   import flash.filters.DisplacementMapFilter;
   import flash.filters.DropShadowFilter;
   import flash.filters.GlowFilter;
   import flash.filters.GradientBevelFilter;
   import flash.filters.GradientGlowFilter;
   import flash.filters.ShaderFilter;
   
   public class §_-ew§ extends §_-ZS§
   {
      
      public static const §_-Yh§:Array = ["x","y","z","scaleX","scaleY","scaleZ","rotation","rotationX","rotationY","rotationZ","alpha","width","height","_bevelFilter","_blurFilter","_colorMatrixFilter","_convolutionFilter","_displacementMapFilter","_dropShadowFilter","_glowFilter","_gradientBevelFilter","_gradientGlowFilter","_shaderFilter"];
       
      
      protected var _flags:uint = 0;
      
      protected var §_-6Q§:DisplayObjectParameter;
      
      protected var §_-YF§:DisplayObject = null;
      
      protected var §_-bg§:DisplayObjectParameter;
      
      public function §_-ew§()
      {
         this.§_-bg§ = new DisplayObjectParameter();
         this.§_-6Q§ = new DisplayObjectParameter();
         super();
      }
      
      public static function §_-5B§(param1:§_-rl§) : void
      {
         param1.§_-P3§(§_-ew§,DisplayObject,§_-Yh§);
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         if(param1 == "_blurFilter")
         {
            this.§_-Yn§(param2 as BitmapFilter,BlurFilter);
            return;
         }
         if(param1 == "_glowFilter")
         {
            this.§_-Yn§(param2 as BitmapFilter,GlowFilter);
            return;
         }
         if(param1 == "_dropShadowFilter")
         {
            this.§_-Yn§(param2 as BitmapFilter,DropShadowFilter);
            return;
         }
         if(param1 == "_colorMatrixFilter")
         {
            this.§_-Yn§(param2 as BitmapFilter,ColorMatrixFilter);
            return;
         }
         if(param1 == "_bevelFilter")
         {
            this.§_-Yn§(param2 as BitmapFilter,BevelFilter);
            return;
         }
         if(param1 == "_gradientGlowFilter")
         {
            this.§_-Yn§(param2 as BitmapFilter,GradientGlowFilter);
            return;
         }
         if(param1 == "_gradientBevelFilter")
         {
            this.§_-Yn§(param2 as BitmapFilter,GradientBevelFilter);
            return;
         }
         if(param1 == "_convolutionFilter")
         {
            this.§_-Yn§(param2 as BitmapFilter,ConvolutionFilter);
            return;
         }
         if(param1 == "_displacementMapFilter")
         {
            this.§_-Yn§(param2 as BitmapFilter,DisplacementMapFilter);
            return;
         }
         if(param1 == "_shaderFilter")
         {
            this.§_-Yn§(param2 as BitmapFilter,ShaderFilter);
            return;
         }
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this._flags |= 1;
            this.§_-6Q§.relativeFlags |= !!param3 ? 1 : 0;
            this.§_-6Q§.x = param2;
         }
         else if(param1 == "y")
         {
            this._flags |= 2;
            this.§_-6Q§.relativeFlags |= !!param3 ? 2 : 0;
            this.§_-6Q§.y = param2;
         }
         else if(param1 == "z")
         {
            this._flags |= 4;
            this.§_-6Q§.relativeFlags |= !!param3 ? 4 : 0;
            this.§_-6Q§.z = param2;
         }
         else if(param1 == "scaleX")
         {
            this._flags |= 8;
            this.§_-6Q§.relativeFlags |= !!param3 ? 8 : 0;
            this.§_-6Q§.scaleX = param2;
         }
         else if(param1 == "scaleY")
         {
            this._flags |= 16;
            this.§_-6Q§.relativeFlags |= !!param3 ? 16 : 0;
            this.§_-6Q§.scaleY = param2;
         }
         else if(param1 == "scaleZ")
         {
            this._flags |= 32;
            this.§_-6Q§.relativeFlags |= !!param3 ? 32 : 0;
            this.§_-6Q§.scaleZ = param2;
         }
         else if(param1 == "rotation")
         {
            this._flags |= 64;
            this.§_-6Q§.relativeFlags |= !!param3 ? 64 : 0;
            this.§_-6Q§.rotation = param2;
         }
         else if(param1 == "rotationX")
         {
            this._flags |= 128;
            this.§_-6Q§.relativeFlags |= !!param3 ? 128 : 0;
            this.§_-6Q§.rotationX = param2;
         }
         else if(param1 == "rotationY")
         {
            this._flags |= 256;
            this.§_-6Q§.relativeFlags |= !!param3 ? 256 : 0;
            this.§_-6Q§.rotationY = param2;
         }
         else if(param1 == "rotationZ")
         {
            this._flags |= 512;
            this.§_-6Q§.relativeFlags |= !!param3 ? 512 : 0;
            this.§_-6Q§.rotationZ = param2;
         }
         else if(param1 == "alpha")
         {
            this._flags |= 1024;
            this.§_-6Q§.relativeFlags |= !!param3 ? 1024 : 0;
            this.§_-6Q§.alpha = param2;
         }
         else if(param1 == "width")
         {
            this._flags |= 2048;
            this.§_-6Q§.relativeFlags |= !!param3 ? 2048 : 0;
            this.§_-6Q§.width = param2;
         }
         else if(param1 == "height")
         {
            this._flags |= 4096;
            this.§_-6Q§.relativeFlags |= !!param3 ? 4096 : 0;
            this.§_-6Q§.height = param2;
         }
      }
      
      protected function §_-Yn§(param1:BitmapFilter, param2:Class) : void
      {
         var _loc3_:Array = this.§_-YF§.filters;
         var _loc4_:uint = _loc3_.length;
         var _loc5_:uint = 0;
         while(_loc5_ < _loc4_)
         {
            if(_loc3_[_loc5_] is param2)
            {
               _loc3_[_loc5_] = param1;
               this.§_-YF§.filters = _loc3_;
               return;
            }
            _loc5_++;
         }
         _loc3_.push(param1);
         this.§_-YF§.filters = _loc3_;
      }
      
      override public function get target() : Object
      {
         return this.§_-YF§;
      }
      
      protected function §_-23§(param1:Class) : BitmapFilter
      {
         var _loc2_:BitmapFilter = null;
         var _loc3_:Array = this.§_-YF§.filters;
         var _loc4_:uint = _loc3_.length;
         var _loc5_:uint = 0;
         while(_loc5_ < _loc4_)
         {
            if((_loc2_ = _loc3_[_loc5_] as BitmapFilter) is param1)
            {
               return _loc2_;
            }
            _loc5_++;
         }
         _loc2_ = new param1();
         _loc3_.push(_loc2_);
         this.§_-YF§.filters = _loc3_;
         return _loc2_;
      }
      
      override protected function newInstance() : §_-ZS§
      {
         return new §_-ew§();
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(param1 == "x")
         {
            this._flags |= 1;
            this.§_-bg§.relativeFlags |= !!param3 ? 1 : 0;
            this.§_-bg§.x = param2;
         }
         else if(param1 == "y")
         {
            this._flags |= 2;
            this.§_-bg§.relativeFlags |= !!param3 ? 2 : 0;
            this.§_-bg§.y = param2;
         }
         else if(param1 == "z")
         {
            this._flags |= 4;
            this.§_-bg§.relativeFlags |= !!param3 ? 4 : 0;
            this.§_-bg§.z = param2;
         }
         else if(param1 == "scaleX")
         {
            this._flags |= 8;
            this.§_-bg§.relativeFlags |= !!param3 ? 8 : 0;
            this.§_-bg§.scaleX = param2;
         }
         else if(param1 == "scaleY")
         {
            this._flags |= 16;
            this.§_-bg§.relativeFlags |= !!param3 ? 16 : 0;
            this.§_-bg§.scaleY = param2;
         }
         else if(param1 == "scaleZ")
         {
            this._flags |= 32;
            this.§_-bg§.relativeFlags |= !!param3 ? 32 : 0;
            this.§_-bg§.scaleZ = param2;
         }
         else if(param1 == "rotation")
         {
            this._flags |= 64;
            this.§_-bg§.relativeFlags |= !!param3 ? 64 : 0;
            this.§_-bg§.rotation = param2;
         }
         else if(param1 == "rotationX")
         {
            this._flags |= 128;
            this.§_-bg§.relativeFlags |= !!param3 ? 128 : 0;
            this.§_-bg§.rotationX = param2;
         }
         else if(param1 == "rotationY")
         {
            this._flags |= 256;
            this.§_-bg§.relativeFlags |= !!param3 ? 256 : 0;
            this.§_-bg§.rotationY = param2;
         }
         else if(param1 == "rotationZ")
         {
            this._flags |= 512;
            this.§_-bg§.relativeFlags |= !!param3 ? 512 : 0;
            this.§_-bg§.rotationZ = param2;
         }
         else if(param1 == "alpha")
         {
            this._flags |= 1024;
            this.§_-bg§.relativeFlags |= !!param3 ? 1024 : 0;
            this.§_-bg§.alpha = param2;
         }
         else if(param1 == "width")
         {
            this._flags |= 2048;
            this.§_-bg§.relativeFlags |= !!param3 ? 2048 : 0;
            this.§_-bg§.width = param2;
         }
         else if(param1 == "height")
         {
            this._flags |= 4096;
            this.§_-bg§.relativeFlags |= !!param3 ? 4096 : 0;
            this.§_-bg§.height = param2;
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc2_:DisplayObject = this.§_-YF§;
         var _loc3_:DisplayObjectParameter = this.§_-6Q§;
         var _loc4_:DisplayObjectParameter = this.§_-bg§;
         var _loc5_:uint = this._flags;
         var _loc6_:Number = 1 - param1;
         if((_loc5_ & 1) != 0)
         {
            _loc2_.x = _loc4_.x * _loc6_ + _loc3_.x * param1;
         }
         if((_loc5_ & 2) != 0)
         {
            _loc2_.y = _loc4_.y * _loc6_ + _loc3_.y * param1;
         }
         if((_loc5_ & 4) != 0)
         {
            _loc2_.z = _loc4_.z * _loc6_ + _loc3_.z * param1;
         }
         if((_loc5_ & 56) != 0)
         {
            if((_loc5_ & 8) != 0)
            {
               _loc2_.scaleX = _loc4_.scaleX * _loc6_ + _loc3_.scaleX * param1;
            }
            if((_loc5_ & 16) != 0)
            {
               _loc2_.scaleY = _loc4_.scaleY * _loc6_ + _loc3_.scaleY * param1;
            }
            if((_loc5_ & 32) != 0)
            {
               _loc2_.scaleZ = _loc4_.scaleZ * _loc6_ + _loc3_.scaleZ * param1;
            }
         }
         if((_loc5_ & 960) != 0)
         {
            if((_loc5_ & 64) != 0)
            {
               _loc2_.rotation = _loc4_.rotation * _loc6_ + _loc3_.rotation * param1;
            }
            if((_loc5_ & 128) != 0)
            {
               _loc2_.rotationX = _loc4_.rotationX * _loc6_ + _loc3_.rotationX * param1;
            }
            if((_loc5_ & 256) != 0)
            {
               _loc2_.rotationY = _loc4_.rotationY * _loc6_ + _loc3_.rotationY * param1;
            }
            if((_loc5_ & 512) != 0)
            {
               _loc2_.rotationZ = _loc4_.rotationZ * _loc6_ + _loc3_.rotationZ * param1;
            }
         }
         if((_loc5_ & 7168) != 0)
         {
            if((_loc5_ & 1024) != 0)
            {
               _loc2_.alpha = _loc4_.alpha * _loc6_ + _loc3_.alpha * param1;
            }
            if((_loc5_ & 2048) != 0)
            {
               _loc2_.width = _loc4_.width * _loc6_ + _loc3_.width * param1;
            }
            if((_loc5_ & 4096) != 0)
            {
               _loc2_.height = _loc4_.height * _loc6_ + _loc3_.height * param1;
            }
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§_-YF§ = param1 as DisplayObject;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:DisplayObject = this.§_-YF§;
         var _loc2_:DisplayObjectParameter = this.§_-6Q§;
         var _loc3_:DisplayObjectParameter = this.§_-bg§;
         var _loc4_:uint;
         if(((_loc4_ = this._flags) & 1) != 0)
         {
            if(isNaN(_loc3_.x))
            {
               _loc3_.x = _loc1_.x;
            }
            else if((_loc3_.relativeFlags & 1) != 0)
            {
               _loc3_.x += _loc1_.x;
            }
            if(isNaN(_loc2_.x))
            {
               _loc2_.x = _loc1_.x;
            }
            else if((_loc2_.relativeFlags & 1) != 0)
            {
               _loc2_.x += _loc1_.x;
            }
         }
         if((_loc4_ & 2) != 0)
         {
            if(isNaN(_loc3_.y))
            {
               _loc3_.y = _loc1_.y;
            }
            else if((_loc3_.relativeFlags & 2) != 0)
            {
               _loc3_.y += _loc1_.y;
            }
            if(isNaN(_loc2_.y))
            {
               _loc2_.y = _loc1_.y;
            }
            else if((_loc2_.relativeFlags & 2) != 0)
            {
               _loc2_.y += _loc1_.y;
            }
         }
         if((_loc4_ & 4) != 0)
         {
            if(isNaN(_loc3_.z))
            {
               _loc3_.z = _loc1_.z;
            }
            else if((_loc3_.relativeFlags & 4) != 0)
            {
               _loc3_.z += _loc1_.z;
            }
            if(isNaN(_loc2_.z))
            {
               _loc2_.z = _loc1_.z;
            }
            else if((_loc2_.relativeFlags & 4) != 0)
            {
               _loc2_.z += _loc1_.z;
            }
         }
         if((_loc4_ & 8) != 0)
         {
            if(isNaN(_loc3_.scaleX))
            {
               _loc3_.scaleX = _loc1_.scaleX;
            }
            else if((_loc3_.relativeFlags & 8) != 0)
            {
               _loc3_.scaleX += _loc1_.scaleX;
            }
            if(isNaN(_loc2_.scaleX))
            {
               _loc2_.scaleX = _loc1_.scaleX;
            }
            else if((_loc2_.relativeFlags & 8) != 0)
            {
               _loc2_.scaleX += _loc1_.scaleX;
            }
         }
         if((_loc4_ & 16) != 0)
         {
            if(isNaN(_loc3_.scaleY))
            {
               _loc3_.scaleY = _loc1_.scaleY;
            }
            else if((_loc3_.relativeFlags & 16) != 0)
            {
               _loc3_.scaleY += _loc1_.scaleY;
            }
            if(isNaN(_loc2_.scaleY))
            {
               _loc2_.scaleY = _loc1_.scaleY;
            }
            else if((_loc2_.relativeFlags & 16) != 0)
            {
               _loc2_.scaleY += _loc1_.scaleY;
            }
         }
         if((_loc4_ & 32) != 0)
         {
            if(isNaN(_loc3_.scaleZ))
            {
               _loc3_.scaleZ = _loc1_.scaleZ;
            }
            else if((_loc3_.relativeFlags & 32) != 0)
            {
               _loc3_.scaleZ += _loc1_.scaleZ;
            }
            if(isNaN(_loc2_.scaleZ))
            {
               _loc2_.scaleZ = _loc1_.scaleZ;
            }
            else if((_loc2_.relativeFlags & 32) != 0)
            {
               _loc2_.scaleZ += _loc1_.scaleZ;
            }
         }
         if((_loc4_ & 64) != 0)
         {
            if(isNaN(_loc3_.rotation))
            {
               _loc3_.rotation = _loc1_.rotation;
            }
            else if((_loc3_.relativeFlags & 64) != 0)
            {
               _loc3_.rotation += _loc1_.rotation;
            }
            if(isNaN(_loc2_.rotation))
            {
               _loc2_.rotation = _loc1_.rotation;
            }
            else if((_loc2_.relativeFlags & 64) != 0)
            {
               _loc2_.rotation += _loc1_.rotation;
            }
         }
         if((_loc4_ & 128) != 0)
         {
            if(isNaN(_loc3_.rotationX))
            {
               _loc3_.rotationX = _loc1_.rotationX;
            }
            else if((_loc3_.relativeFlags & 128) != 0)
            {
               _loc3_.rotationX += _loc1_.rotationX;
            }
            if(isNaN(_loc2_.rotationX))
            {
               _loc2_.rotationX = _loc1_.rotationX;
            }
            else if((_loc2_.relativeFlags & 128) != 0)
            {
               _loc2_.rotationX += _loc1_.rotationX;
            }
         }
         if((_loc4_ & 256) != 0)
         {
            if(isNaN(_loc3_.rotationY))
            {
               _loc3_.rotationY = _loc1_.rotationY;
            }
            else if((_loc3_.relativeFlags & 256) != 0)
            {
               _loc3_.rotationY += _loc1_.rotationY;
            }
            if(isNaN(_loc2_.rotationY))
            {
               _loc2_.rotationY = _loc1_.rotationY;
            }
            else if((_loc2_.relativeFlags & 256) != 0)
            {
               _loc2_.rotationY += _loc1_.rotationY;
            }
         }
         if((_loc4_ & 512) != 0)
         {
            if(isNaN(_loc3_.rotationZ))
            {
               _loc3_.rotationZ = _loc1_.rotationZ;
            }
            else if((_loc3_.relativeFlags & 512) != 0)
            {
               _loc3_.rotationZ += _loc1_.rotationZ;
            }
            if(isNaN(_loc2_.rotationZ))
            {
               _loc2_.rotationZ = _loc1_.rotationZ;
            }
            else if((_loc2_.relativeFlags & 512) != 0)
            {
               _loc2_.rotationZ += _loc1_.rotationZ;
            }
         }
         if((_loc4_ & 1024) != 0)
         {
            if(isNaN(_loc3_.alpha))
            {
               _loc3_.alpha = _loc1_.alpha;
            }
            else if((_loc3_.relativeFlags & 1024) != 0)
            {
               _loc3_.alpha += _loc1_.alpha;
            }
            if(isNaN(_loc2_.alpha))
            {
               _loc2_.alpha = _loc1_.alpha;
            }
            else if((_loc2_.relativeFlags & 1024) != 0)
            {
               _loc2_.alpha += _loc1_.alpha;
            }
         }
         if((_loc4_ & 2048) != 0)
         {
            if(isNaN(_loc3_.width))
            {
               _loc3_.width = _loc1_.width;
            }
            else if((_loc3_.relativeFlags & 2048) != 0)
            {
               _loc3_.width += _loc1_.width;
            }
            if(isNaN(_loc2_.width))
            {
               _loc2_.width = _loc1_.width;
            }
            else if((_loc2_.relativeFlags & 2048) != 0)
            {
               _loc2_.width += _loc1_.width;
            }
         }
         if((_loc4_ & 4096) != 0)
         {
            if(isNaN(_loc3_.height))
            {
               _loc3_.height = _loc1_.height;
            }
            else if((_loc3_.relativeFlags & 4096) != 0)
            {
               _loc3_.height += _loc1_.height;
            }
            if(isNaN(_loc2_.height))
            {
               _loc2_.height = _loc1_.height;
            }
            else if((_loc2_.relativeFlags & 4096) != 0)
            {
               _loc2_.height += _loc1_.height;
            }
         }
      }
      
      override public function getObject(param1:String) : Object
      {
         if(param1 == "_blurFilter")
         {
            return this.§_-23§(BlurFilter);
         }
         if(param1 == "_glowFilter")
         {
            return this.§_-23§(GlowFilter);
         }
         if(param1 == "_dropShadowFilter")
         {
            return this.§_-23§(DropShadowFilter);
         }
         if(param1 == "_colorMatrixFilter")
         {
            return this.§_-23§(ColorMatrixFilter);
         }
         if(param1 == "_bevelFilter")
         {
            return this.§_-23§(BevelFilter);
         }
         if(param1 == "_gradientGlowFilter")
         {
            return this.§_-23§(GradientGlowFilter);
         }
         if(param1 == "_gradientBevelFilter")
         {
            return this.§_-23§(GradientBevelFilter);
         }
         if(param1 == "_convolutionFilter")
         {
            return this.§_-23§(ConvolutionFilter);
         }
         if(param1 == "_displacementMapFilter")
         {
            return this.§_-23§(DisplacementMapFilter);
         }
         if(param1 == "_shaderFilter")
         {
            return this.§_-23§(ShaderFilter);
         }
         return null;
      }
      
      override protected function copyFrom(param1:§_-ZS§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-ew§ = param1 as §_-ew§;
         this.§_-YF§ = _loc2_.§_-YF§;
         this.§_-bg§.copyFrom(_loc2_.§_-bg§);
         this.§_-6Q§.copyFrom(_loc2_.§_-6Q§);
         this._flags = _loc2_._flags;
      }
   }
}

class DisplayObjectParameter
{
    
   
   public var width:Number;
   
   public var scaleX:Number;
   
   public var scaleY:Number;
   
   public var scaleZ:Number;
   
   public var rotationX:Number;
   
   public var rotationY:Number;
   
   public var rotationZ:Number;
   
   public var alpha:Number;
   
   public var relativeFlags:uint = 0;
   
   public var height:Number;
   
   public var x:Number;
   
   public var y:Number;
   
   public var z:Number;
   
   public var rotation:Number;
   
   function DisplayObjectParameter()
   {
      super();
   }
   
   public function copyFrom(param1:DisplayObjectParameter) : void
   {
      this.relativeFlags = param1.relativeFlags;
      this.x = param1.x;
      this.y = param1.y;
      this.z = param1.z;
      this.scaleX = param1.scaleX;
      this.scaleY = param1.scaleY;
      this.scaleZ = param1.scaleZ;
      this.rotation = param1.rotation;
      this.rotationX = param1.rotationX;
      this.rotationY = param1.rotationY;
      this.rotationZ = param1.rotationZ;
      this.alpha = param1.alpha;
      this.width = param1.width;
      this.height = param1.height;
   }
}
