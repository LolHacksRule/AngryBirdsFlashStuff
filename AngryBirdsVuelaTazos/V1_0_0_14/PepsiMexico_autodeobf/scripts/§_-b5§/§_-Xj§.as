package §_-b5§
{
   import §_-1y§.§_-Z6§;
   import §_-CG§.§_-gk§;
   import §_-DQ§.Texture;
   import §_-DQ§.§_-mG§;
   import §_-Qj§.§_-vg§;
   import §_-fI§.§_-6W§;
   import §_-fI§.§_-BI§;
   import flash.display.Bitmap;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-Xj§ extends §_-HK§
   {
       
      
      private var §_-Ix§:Texture;
      
      private var §_-Uv§:String;
      
      private var §_-Vb§:Boolean;
      
      private var §_-EU§:Boolean;
      
      private var §_-pd§:§_-gk§;
      
      private var §_-TS§:String;
      
      public function §_-Xj§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param1)
         {
            _loc5_ = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
            _loc6_ = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
            super(_loc5_,_loc6_);
            §_-T6§.premultipliedAlpha = param1.premultipliedAlpha;
            §_-T6§.setTexCoords(0,0,0);
            §_-T6§.setTexCoords(1,1,0);
            §_-T6§.setTexCoords(2,0,1);
            §_-T6§.setTexCoords(3,1,1);
            this.§_-Ix§ = param1;
            if(!param3)
            {
               this.§_-Uv§ = !!§_-BI§.§_-Hp§ ? §_-mG§.NONE : §_-mG§.§_-Fp§;
            }
            else
            {
               this.§_-Uv§ = !!§_-BI§.§_-Hp§ ? §_-mG§.§_-Fp§ : §_-mG§.§_-cy§;
            }
            this.§_-Vb§ = param2;
            this.§_-EU§ = this.§_-Vb§;
            this.§_-TS§ = §_-Ri§(this.§_-Ix§.mipMapping,this.§_-Ix§.repeat,this.§_-Uv§,this.§_-Vb§);
            return;
         }
         throw new ArgumentError("Texture cannot be null");
      }
      
      public static function §_-NP§(param1:Bitmap) : §_-Xj§
      {
         return new §_-Xj§(Texture.§_-NP§(param1));
      }
      
      public static function §_-pG§(param1:§_-BI§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:String = null;
         var _loc12_:§_-vg§ = null;
         var _loc13_:String = null;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = false;
         var _loc16_:String = null;
         var _loc17_:Array = null;
         var _loc2_:* = "m44 op, va0, vc0  \n" + "mov v0, va1       \n";
         var _loc3_:* = "m44 op, va0, vc0  \n" + "mov v0, va1       \n" + "mov v1, va2       \n";
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
         var _loc8_:§_-vg§ = new §_-vg§();
         var _loc9_:Array = [§_-mG§.NONE,§_-mG§.§_-Fp§,§_-mG§.§_-cy§];
         for each(_loc10_ in [false,true])
         {
            _loc11_ = "0";
            if(_loc10_)
            {
               _loc11_ = "1";
            }
            (_loc12_ = new §_-vg§()).§_-u7§(Context3DProgramType.VERTEX,_loc6_[_loc11_]);
            _loc13_ = _loc7_[_loc11_];
            for each(_loc14_ in [true,false])
            {
               for each(_loc15_ in [true,false])
               {
                  for each(_loc16_ in _loc9_)
                  {
                     _loc17_ = ["2d",!!_loc14_ ? "repeat" : "clamp"];
                     if(_loc16_ == §_-mG§.NONE)
                     {
                        _loc17_.push("nearest",!!_loc15_ ? "mipnearest" : "mipnone");
                     }
                     else if(_loc16_ == §_-mG§.§_-Fp§)
                     {
                        _loc17_.push("linear",!!_loc15_ ? "mipnearest" : "mipnone");
                     }
                     else
                     {
                        _loc17_.push("linear",!!_loc15_ ? "miplinear" : "mipnone");
                     }
                     _loc8_.§_-u7§(Context3DProgramType.FRAGMENT,_loc13_.replace("???",_loc17_.join()));
                     param1.§_-e8§(§_-Ri§(_loc15_,_loc14_,_loc16_,_loc10_),_loc12_.§_-JU§,_loc8_.§_-JU§);
                  }
               }
            }
         }
      }
      
      public static function §_-Ri§(param1:Boolean = true, param2:Boolean = false, param3:String = "bilinear", param4:Boolean = false) : String
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
         if(param3 != §_-mG§.§_-Fp§)
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
         §_-T6§.setTexCoords(param1,param2.x,param2.y);
         §_-KF§ = true;
      }
      
      public function getTexCoords(param1:int) : Point
      {
         return §_-T6§.getTexCoords(param1);
      }
      
      override public function get vertexData() : §_-gk§
      {
         if(!this.§_-pd§)
         {
            this.§_-pd§ = this.§_-Ix§.adjustVertexData(§_-T6§);
         }
         return this.§_-pd§;
      }
      
      public function get texture() : Texture
      {
         return this.§_-Ix§;
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
         if(param1 != this.§_-Ix§)
         {
            this.§_-Ix§ = param1;
            _loc2_ = param1.frame;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(param1.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(param1.height);
            §_-ra§(_loc3_,_loc4_);
            §_-T6§.premultipliedAlpha = this.§_-Ix§.premultipliedAlpha;
            §_-KF§ = true;
         }
         this.§_-pd§ = null;
      }
      
      public function get smoothing() : String
      {
         return this.§_-Uv§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§_-mG§.§_-PF§(param1))
         {
            if(param1 == this.§_-Uv§)
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§_-Uv§ = param1;
            this.§_-TS§ = §_-Ri§(this.§_-Ix§.mipMapping,this.§_-Ix§.repeat,this.§_-Uv§,this.§_-Vb§);
         }
      }
      
      public function §_-9c§(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§_-Vb§ = this.§_-EU§;
         }
         else
         {
            this.§_-Vb§ = true;
         }
         this.§_-TS§ = §_-Ri§(this.§_-Ix§.mipMapping,this.§_-Ix§.repeat,this.§_-Uv§,this.§_-Vb§);
         §_-T6§.setUniformColor(param1);
         this.§_-pd§ = null;
         §_-KF§ = true;
      }
      
      public function get §_-F5§() : Boolean
      {
         return this.§_-Vb§;
      }
      
      override public function render(param1:§_-6W§, param2:Number) : void
      {
         param2 *= this.alpha;
         var _loc3_:Context3D = §_-BI§.§_-Pw§;
         if(_loc3_ == null)
         {
            throw new §_-Z6§();
         }
         §_-79§();
         var _loc4_:Boolean;
         var _loc5_:Vector.<Number> = !!(_loc4_ = this.§_-Ix§.premultipliedAlpha) ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         param1.§_-oD§(_loc4_);
         param1.setProgram(§_-BI§.§_-44§.§_-Ew§(this.§_-TS§));
         param1.setTextureAt(§_-6W§.§_-HQ§,this.§_-Ix§.base);
         _loc3_.setVertexBufferAt(0,§_-MM§,§_-gk§.§_-bD§,Context3DVertexBufferFormat.FLOAT_3);
         _loc3_.setVertexBufferAt(1,§_-Wd§,§_-gk§.§_-am§,Context3DVertexBufferFormat.FLOAT_2);
         if(this.§_-Vb§)
         {
            _loc3_.setVertexBufferAt(2,§_-Wd§,§_-gk§.§_-JD§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-tN§,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc3_.drawTriangles(§_-Et§,§_-nO§ * 6,2);
         _loc3_.setVertexBufferAt(0,null);
         _loc3_.setVertexBufferAt(1,null);
         if(this.§_-Vb§)
         {
            _loc3_.setVertexBufferAt(2,null);
         }
      }
   }
}
