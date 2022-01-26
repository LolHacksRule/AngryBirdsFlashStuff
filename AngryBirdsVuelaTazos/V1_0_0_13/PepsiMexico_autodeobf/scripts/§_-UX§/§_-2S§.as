package §_-UX§
{
   import §_-Cy§.Texture;
   import §_-Cy§.§_-qF§;
   import §_-JR§.§_-t2§;
   import §_-JR§.§_-yh§;
   import §_-OE§.§_-tC§;
   import §_-kX§.§_-hW§;
   import §_-ls§.§_-YQ§;
   import flash.display.Bitmap;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-2S§ extends §_-go§
   {
       
      
      private var §_-lT§:Texture;
      
      private var §_-QX§:String;
      
      private var §_-46§:Boolean;
      
      private var §_-pN§:Boolean;
      
      private var §_-Cc§:§_-hW§;
      
      private var §_-EM§:String;
      
      public function §_-2S§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param1)
         {
            _loc5_ = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
            _loc6_ = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
            super(_loc5_,_loc6_);
            §_-fM§.premultipliedAlpha = param1.premultipliedAlpha;
            §_-fM§.setTexCoords(0,0,0);
            §_-fM§.setTexCoords(1,1,0);
            §_-fM§.setTexCoords(2,0,1);
            §_-fM§.setTexCoords(3,1,1);
            this.§_-lT§ = param1;
            if(!param3)
            {
               this.§_-QX§ = !!§_-yh§.§_-Yt§ ? §_-qF§.NONE : §_-qF§.§_-iU§;
            }
            else
            {
               this.§_-QX§ = !!§_-yh§.§_-Yt§ ? §_-qF§.§_-iU§ : §_-qF§.§_-OV§;
            }
            this.§_-46§ = param2;
            this.§_-pN§ = this.§_-46§;
            this.§_-EM§ = §_-O9§(this.§_-lT§.mipMapping,this.§_-lT§.repeat,this.§_-QX§,this.§_-46§);
            return;
         }
         throw new ArgumentError("Texture cannot be null");
      }
      
      public static function §_-WB§(param1:Bitmap) : §_-2S§
      {
         return new §_-2S§(Texture.§_-WB§(param1));
      }
      
      public static function §_-P5§(param1:§_-yh§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:String = null;
         var _loc12_:§_-tC§ = null;
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
         var _loc8_:§_-tC§ = new §_-tC§();
         var _loc9_:Array = [§_-qF§.NONE,§_-qF§.§_-iU§,§_-qF§.§_-OV§];
         for each(_loc10_ in [false,true])
         {
            _loc11_ = "0";
            if(_loc10_)
            {
               _loc11_ = "1";
            }
            (_loc12_ = new §_-tC§()).§_-S2§(Context3DProgramType.VERTEX,_loc6_[_loc11_]);
            _loc13_ = _loc7_[_loc11_];
            for each(_loc14_ in [true,false])
            {
               for each(_loc15_ in [true,false])
               {
                  for each(_loc16_ in _loc9_)
                  {
                     _loc17_ = ["2d",!!_loc14_ ? "repeat" : "clamp"];
                     if(_loc16_ == §_-qF§.NONE)
                     {
                        _loc17_.push("nearest",!!_loc15_ ? "mipnearest" : "mipnone");
                     }
                     else if(_loc16_ == §_-qF§.§_-iU§)
                     {
                        _loc17_.push("linear",!!_loc15_ ? "mipnearest" : "mipnone");
                     }
                     else
                     {
                        _loc17_.push("linear",!!_loc15_ ? "miplinear" : "mipnone");
                     }
                     _loc8_.§_-S2§(Context3DProgramType.FRAGMENT,_loc13_.replace("???",_loc17_.join()));
                     param1.§_-ce§(§_-O9§(_loc15_,_loc14_,_loc16_,_loc10_),_loc12_.§_-8F§,_loc8_.§_-8F§);
                  }
               }
            }
         }
      }
      
      public static function §_-O9§(param1:Boolean = true, param2:Boolean = false, param3:String = "bilinear", param4:Boolean = false) : String
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
         if(param3 != §_-qF§.§_-iU§)
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
         §_-fM§.setTexCoords(param1,param2.x,param2.y);
         §_-sF§ = true;
      }
      
      public function getTexCoords(param1:int) : Point
      {
         return §_-fM§.getTexCoords(param1);
      }
      
      override public function get vertexData() : §_-hW§
      {
         if(!this.§_-Cc§)
         {
            this.§_-Cc§ = this.§_-lT§.adjustVertexData(§_-fM§);
         }
         return this.§_-Cc§;
      }
      
      public function get texture() : Texture
      {
         return this.§_-lT§;
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
         if(param1 != this.§_-lT§)
         {
            this.§_-lT§ = param1;
            _loc2_ = param1.frame;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(param1.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(param1.height);
            §_-1B§(_loc3_,_loc4_);
            §_-fM§.premultipliedAlpha = this.§_-lT§.premultipliedAlpha;
            §_-sF§ = true;
         }
         this.§_-Cc§ = null;
      }
      
      public function get smoothing() : String
      {
         return this.§_-QX§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§_-qF§.§_-4Z§(param1))
         {
            if(param1 == this.§_-QX§)
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§_-QX§ = param1;
            this.§_-EM§ = §_-O9§(this.§_-lT§.mipMapping,this.§_-lT§.repeat,this.§_-QX§,this.§_-46§);
         }
      }
      
      public function §_-1G§(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§_-46§ = this.§_-pN§;
         }
         else
         {
            this.§_-46§ = true;
         }
         this.§_-EM§ = §_-O9§(this.§_-lT§.mipMapping,this.§_-lT§.repeat,this.§_-QX§,this.§_-46§);
         §_-fM§.setUniformColor(param1);
         this.§_-Cc§ = null;
         §_-sF§ = true;
      }
      
      public function get §_-6J§() : Boolean
      {
         return this.§_-46§;
      }
      
      override public function render(param1:§_-t2§, param2:Number) : void
      {
         param2 *= this.alpha;
         var _loc3_:Context3D = §_-yh§.§_-gS§;
         if(_loc3_ == null)
         {
            throw new §_-YQ§();
         }
         §_-fO§();
         var _loc4_:Boolean;
         var _loc5_:Vector.<Number> = !!(_loc4_ = this.§_-lT§.premultipliedAlpha) ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         param1.§_-E7§(_loc4_);
         param1.setProgram(§_-yh§.§_-1o§.§_-F8§(this.§_-EM§));
         param1.setTextureAt(§_-t2§.§_-1§,this.§_-lT§.base);
         _loc3_.setVertexBufferAt(0,§_-jf§,§_-hW§.§_-e5§,Context3DVertexBufferFormat.FLOAT_3);
         _loc3_.setVertexBufferAt(1,§_-q6§,§_-hW§.§_-fH§,Context3DVertexBufferFormat.FLOAT_2);
         if(this.§_-46§)
         {
            _loc3_.setVertexBufferAt(2,§_-q6§,§_-hW§.§_-1n§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-EN§,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc3_.drawTriangles(§_-YY§,§_-gU§ * 6,2);
         _loc3_.setVertexBufferAt(0,null);
         _loc3_.setVertexBufferAt(1,null);
         if(this.§_-46§)
         {
            _loc3_.setVertexBufferAt(2,null);
         }
      }
   }
}
