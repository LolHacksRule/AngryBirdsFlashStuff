package §_-GY§
{
   import §_-V9§.§_-oT§;
   import §_-Ye§.§_-CT§;
   import §_-Ye§.§_-cP§;
   import §_-gQ§.§_-KD§;
   import §_-mb§.§_-GZ§;
   import §_-yp§.Texture;
   import §_-yp§.§_-fI§;
   import flash.display.Bitmap;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-4W§ extends §_-Bf§
   {
       
      
      private var §_-eE§:Texture;
      
      private var §_-sP§:String;
      
      private var §_-HU§:Boolean;
      
      private var §_-nH§:Boolean;
      
      private var §_-ZP§:§_-GZ§;
      
      private var §_-uv§:String;
      
      public function §_-4W§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§_-3B§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         super(_loc5_,_loc6_);
         §_-MU§.premultipliedAlpha = param1.premultipliedAlpha;
         §_-MU§.setTexCoords(0,0,0);
         §_-MU§.setTexCoords(1,1,0);
         §_-MU§.setTexCoords(2,0,1);
         §_-MU§.setTexCoords(3,1,1);
         this.§_-eE§ = param1;
         if(!param3)
         {
            this.§_-sP§ = !!§_-cP§.§_-PM§ ? §_-fI§.NONE : §_-fI§.§_-a3§;
         }
         else
         {
            this.§_-sP§ = !!§_-cP§.§_-PM§ ? §_-fI§.§_-a3§ : §_-fI§.§_-Xr§;
         }
         this.§_-HU§ = param2;
         this.§_-nH§ = this.§_-HU§;
         this.§_-uv§ = §_-zj§(this.§_-eE§.mipMapping,this.§_-eE§.repeat,this.§_-sP§,this.§_-HU§);
      }
      
      public static function §_-E6§(param1:Bitmap) : §_-4W§
      {
         return new §_-4W§(Texture.§_-E6§(param1));
      }
      
      public static function each(param1:§_-cP§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:String = null;
         var _loc12_:§_-KD§ = null;
         var _loc13_:String = null;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = false;
         var _loc16_:String = null;
         var _loc17_:Array = null;
         var _loc2_:* = "m44 op, va0, vc0  \n" + "mov v0, va1.xy       \n";
         var _loc3_:* = "m44 op, va0, vc0  \n" + "mov v0, va1.xy       \n" + "mov v1, va2       \n";
         var _loc4_:* = "tex ft1, v0, fs1 <???> \n" + "mov oc, ft1 \n";
         var _loc5_:* = "tex ft1, v0, fs1 <???> \n" + "mul ft2, ft1, v1       \n" + "mul oc, ft2, fc0       \n";
         var _loc6_:Object = {
            "0":_loc2_,
            "1":_loc3_
         };
         var _loc7_:Object = {
            "0":_loc4_,
            "1":_loc5_
         };
         var _loc8_:§_-KD§ = new §_-KD§();
         var _loc9_:Array = [§_-fI§.NONE,§_-fI§.§_-a3§,§_-fI§.§_-Xr§];
         for each(_loc10_ in [false,true])
         {
            _loc11_ = "0";
            if(_loc10_)
            {
               _loc11_ = "1";
            }
            (_loc12_ = new §_-KD§()).§_-9Y§(Context3DProgramType.VERTEX,_loc6_[_loc11_]);
            _loc13_ = _loc7_[_loc11_];
            for each(_loc14_ in [true,false])
            {
               for each(_loc15_ in [true,false])
               {
                  for each(_loc16_ in _loc9_)
                  {
                     _loc17_ = ["2d",!!_loc14_ ? "repeat" : "clamp"];
                     if(_loc16_ == §_-fI§.NONE)
                     {
                        _loc17_.push("nearest",!!_loc15_ ? "mipnearest" : "mipnone");
                     }
                     else if(_loc16_ == §_-fI§.§_-a3§)
                     {
                        _loc17_.push("linear",!!_loc15_ ? "mipnearest" : "mipnone");
                     }
                     else
                     {
                        _loc17_.push("linear",!!_loc15_ ? "miplinear" : "mipnone");
                     }
                     _loc8_.§_-9Y§(Context3DProgramType.FRAGMENT,_loc13_.replace("???",_loc17_.join()));
                     param1.§_-JK§(§_-zj§(_loc15_,_loc14_,_loc16_,_loc10_),_loc12_.§_-qx§,_loc8_.§_-qx§);
                  }
               }
            }
         }
      }
      
      public static function §_-zj§(param1:Boolean = true, param2:Boolean = false, param3:String = "bilinear", param4:Boolean = false) : String
      {
         var _loc5_:* = "image|";
         if(!param1)
         {
            _loc5_ += "N";
         }
         if(param2)
         {
            _loc5_ += "R";
         }
         if(param3 != §_-fI§.§_-a3§)
         {
            _loc5_ += param3.charAt(0);
         }
         if(param4)
         {
            _loc5_ += "C";
         }
         return _loc5_;
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §_-MU§.setTexCoords(param1,param2.x,param2.y);
         §_-Dn§ = true;
      }
      
      public function getTexCoords(param1:int) : Point
      {
         return §_-MU§.getTexCoords(param1);
      }
      
      override public function get vertexData() : §_-GZ§
      {
         if(!this.§_-ZP§)
         {
            this.§_-ZP§ = this.§_-eE§.adjustVertexData(§_-MU§);
         }
         return this.§_-ZP§;
      }
      
      public function get texture() : Texture
      {
         return this.§_-eE§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§_-eE§)
         {
            this.§_-eE§ = param1;
            _loc2_ = param1.§_-3B§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(param1.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(param1.height);
            §_-ir§(_loc3_,_loc4_);
            §_-MU§.premultipliedAlpha = this.§_-eE§.premultipliedAlpha;
            §_-Dn§ = true;
         }
         this.§_-ZP§ = null;
      }
      
      public function get smoothing() : String
      {
         return this.§_-sP§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§_-fI§.§_-N7§(param1))
         {
            if(param1 == this.§_-sP§)
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§_-sP§ = param1;
            this.§_-uv§ = §_-zj§(this.§_-eE§.mipMapping,this.§_-eE§.repeat,this.§_-sP§,this.§_-HU§);
         }
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§_-HU§ = this.§_-nH§;
         }
         else
         {
            this.§_-HU§ = true;
         }
         this.§_-uv§ = §_-zj§(this.§_-eE§.mipMapping,this.§_-eE§.repeat,this.§_-sP§,this.§_-HU§);
         §_-MU§.setUniformColor(param1);
         this.§_-ZP§ = null;
         §_-Dn§ = true;
      }
      
      public function get §_-0-E§() : Boolean
      {
         return this.§_-HU§;
      }
      
      override public function render(param1:§_-CT§, param2:Number) : void
      {
         param2 *= this.alpha;
         var _loc3_:Context3D = §_-cP§.§_-eZ§;
         if(_loc3_ == null)
         {
            throw new §_-oT§();
         }
         §_-UL§();
         var _loc4_:Boolean;
         var _loc5_:Vector.<Number> = !!(_loc4_ = this.§_-eE§.premultipliedAlpha) ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         param1.§_-NO§(_loc4_);
         param1.setProgram(§_-cP§.§_-004§.§_-Bj§(this.§_-uv§));
         param1.setTextureAt(§_-CT§.§_-w4§,this.§_-eE§.base);
         _loc3_.setVertexBufferAt(0,§_-lm§,§_-GZ§.§_-Wu§,Context3DVertexBufferFormat.FLOAT_3);
         _loc3_.setVertexBufferAt(1,§_-sD§,§_-GZ§.§_-Os§,Context3DVertexBufferFormat.FLOAT_2);
         if(this.§_-HU§)
         {
            _loc3_.setVertexBufferAt(2,§_-sD§,§_-GZ§.§_-hv§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-hA§,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc3_.drawTriangles(§_-RH§,§_-sf§ * 6,2);
         _loc3_.setVertexBufferAt(0,null);
         _loc3_.setVertexBufferAt(1,null);
         if(this.§_-HU§)
         {
            _loc3_.setVertexBufferAt(2,null);
         }
      }
   }
}
