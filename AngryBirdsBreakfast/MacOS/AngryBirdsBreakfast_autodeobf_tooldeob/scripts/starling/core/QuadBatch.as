package starling.core
{
   import starling.textures.TextureSmoothing;
   import starling.textures.Texture;
   import starling.errors.MissingContextError;
   import starling.utils.VertexData;
   import com.adobe.utils.AGALMiniAssembler;
   import starling.display.Quad;
   import starling.display.Image;
   import starling.display.DisplayObject;
   import starling.display.DisplayObjectContainer;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class QuadBatch
   {
      
      private static var sRenderAlpha:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var mNumQuads:int;
      
      private var mCurrentTexture:Texture;
      
      private var mCurrentSmoothing:String;
      
      private var mVertexData:VertexData;
      
      private var mVertexTextureBuffer:VertexBuffer3D;
      
      private var mVertexColorBuffer:VertexBuffer3D;
      
      private var mVertexPositionBuffer:VertexBuffer3D;
      
      private var mIndexData:Vector.<uint>;
      
      private var mIndexBuffer:IndexBuffer3D;
      
      private var mUseColor:Boolean = false;
      
      private var mExpandBuffersPending:Boolean = false;
      
      public function QuadBatch()
      {
         super();
         registerPrograms();
         this.mVertexData = new VertexData(0,true);
         this.mIndexData = new Vector.<uint>(0);
         this.mNumQuads = 0;
         this.expand();
      }
      
      public static function compile(param1:DisplayObjectContainer, param2:Vector.<QuadBatch>) : void
      {
         compileObject(param1,param2,-1,new Matrix3D());
      }
      
      private static function compileObject(param1:DisplayObject, param2:Vector.<QuadBatch>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:Quad = null;
         var _loc13_:Image = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:QuadBatch = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new QuadBatch());
            }
            else
            {
               param2[0].reset();
            }
         }
         else if(param1.alpha == 0 || !param1.visible)
         {
            return param3;
         }
         if(param1 is DisplayObjectContainer)
         {
            _loc9_ = (_loc8_ = param1 as DisplayObjectContainer).numChildren;
            _loc10_ = new Matrix3D();
            if((param5 *= param1.alpha) > 0)
            {
               _loc6_ = 0;
               while(_loc6_ < _loc9_)
               {
                  _loc11_ = _loc8_.getChildAt(_loc6_);
                  _loc10_.copyFrom(param4);
                  _loc11_.transformMatrix(_loc10_);
                  param3 = compileObject(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is Quad))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as Quad) as Image) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).isStateChange(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new QuadBatch());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.addQuad(_loc12_,param5,_loc14_,_loc15_,param4);
         }
         if(_loc7_)
         {
            _loc6_ = param2.length - 1;
            while(_loc6_ > param3)
            {
               param2[_loc6_].dispose();
               delete param2[_loc6_];
               _loc6_--;
            }
         }
         return param3;
      }
      
      private static function registerPrograms() : void
      {
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Array = null;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc1_:Starling = Starling.current;
         if(_loc1_.hasProgram(getQuadProgramName(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.assemble(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.assemble(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.registerProgram(getQuadProgramName(_loc6_),_loc2_.agalcode,_loc3_.agalcode);
            for each(_loc7_ in [true,false])
            {
               _loc4_ = !!_loc7_ ? "m44 op, va0, vc0  \n" + "mov v0, va1 \n" + "mov v1, va2       \n" : "m44 op, va0, vc0  \n" + "mov v0, va1 \n";
               if(_loc7_)
               {
                  _loc5_ = !!_loc6_ ? "tex ft1, v0, fs0 <???>  \n" + "mul ft1, ft1, v1        \n" + "mul oc, ft1, fc0        \n" : "tex ft1, v0, fs0 <???>  \n" + "mul ft1, ft1, v1        \n" + "mov oc, ft1 \n";
               }
               else
               {
                  _loc5_ = !!_loc6_ ? "tex ft1, v0, fs0 <???>  \n" + "mul oc, ft1, fc0        \n" : "tex ft1, v0, fs0 <???>  \n" + "mov oc, ft1 \n";
               }
               _loc2_.assemble(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [TextureSmoothing.NONE,TextureSmoothing.BILINEAR,TextureSmoothing.TRILINEAR];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == TextureSmoothing.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == TextureSmoothing.BILINEAR)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.assemble(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.registerProgram(getImageProgramName(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.agalcode,_loc3_.agalcode);
                     }
                  }
               }
            }
         }
      }
      
      public static function getQuadProgramName(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function getImageProgramName(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc6_:* = !!param1 ? "QB_i*" : "QB_i\'";
         if(!param2)
         {
            _loc6_ += "N";
         }
         if(param3)
         {
            _loc6_ += "R";
         }
         if(param5)
         {
            _loc6_ += "C";
         }
         if(param4 != TextureSmoothing.BILINEAR)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get numQuads() : int
      {
         return this.mNumQuads;
      }
      
      public function dispose() : void
      {
         if(this.mVertexTextureBuffer)
         {
            this.mVertexTextureBuffer.dispose();
         }
         if(this.mVertexColorBuffer)
         {
            this.mVertexColorBuffer.dispose();
         }
         if(this.mVertexPositionBuffer)
         {
            this.mVertexPositionBuffer.dispose();
         }
         if(this.mIndexBuffer)
         {
            this.mIndexBuffer.dispose();
         }
      }
      
      private function expand() : void
      {
         var _loc1_:int = this.mVertexData.numVertices / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.mVertexData.numVertices = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.mIndexData[int(_loc3_ * 6)] = _loc3_ * 4;
            this.mIndexData[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.mIndexData[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.mIndexData[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.mIndexData[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.mIndexData[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.mExpandBuffersPending = true;
      }
      
      private function expandBuffers(param1:Context3D) : Boolean
      {
         if(!this.mExpandBuffersPending)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new MissingContextError();
         }
         if(this.mVertexTextureBuffer)
         {
            this.mVertexTextureBuffer.dispose();
         }
         if(this.mVertexColorBuffer)
         {
            this.mVertexColorBuffer.dispose();
         }
         if(this.mVertexPositionBuffer)
         {
            this.mVertexPositionBuffer.dispose();
         }
         if(this.mIndexBuffer)
         {
            this.mIndexBuffer.dispose();
         }
         var _loc2_:int = this.mVertexData.numVertices / 4;
         this.mVertexTextureBuffer = param1.createVertexBuffer(_loc2_ * 4,VertexData.ELEMENTS_PER_TEXTURE_VERTEX);
         this.mVertexTextureBuffer.uploadFromByteArray(this.mVertexData.vertexTextureData,0,0,_loc2_ * 4);
         this.mVertexColorBuffer = param1.createVertexBuffer(_loc2_ * 4,VertexData.ELEMENTS_PER_COLOR_VERTEX);
         this.mVertexColorBuffer.uploadFromVector(this.mVertexData.vertexColorData,0,_loc2_ * 4);
         this.mVertexPositionBuffer = param1.createVertexBuffer(_loc2_ * 4,VertexData.ELEMENTS_PER_POSITION_VERTEX);
         this.mVertexPositionBuffer.uploadFromVector(this.mVertexData.rawPositionData,0,_loc2_ * 4);
         this.mIndexBuffer = param1.createIndexBuffer(_loc2_ * 6);
         this.mIndexBuffer.uploadFromVector(this.mIndexData,0,_loc2_ * 6);
         this.mExpandBuffersPending = false;
         return true;
      }
      
      private function syncBuffers(param1:Context3D) : void
      {
         if(!this.expandBuffers(param1))
         {
            this.mVertexTextureBuffer.uploadFromByteArray(this.mVertexData.vertexTextureData,0,0,this.mNumQuads * 4);
            if(this.mUseColor)
            {
               this.mVertexColorBuffer.uploadFromVector(this.mVertexData.vertexColorData,0,this.mNumQuads * 4);
            }
            this.mVertexPositionBuffer.uploadFromVector(this.mVertexData.rawPositionData,0,this.mNumQuads * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.mNumQuads == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.mVertexData.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.mCurrentTexture ? getImageProgramName(_loc5_,this.mCurrentTexture.mipMapping,this.mCurrentTexture.repeat,this.mCurrentSmoothing,this.mUseColor) : getQuadProgramName(_loc5_);
         RenderSupport.setDefaultBlendFactors(param1,_loc4_);
         this.syncBuffers(param1);
         param1.setProgram(Starling.current.getProgram(_loc6_));
         param1.setVertexBufferAt(0,this.mVertexPositionBuffer,VertexData.POSITION_OFFSET,Context3DVertexBufferFormat.FLOAT_3);
         if(this.mCurrentTexture == null || this.mUseColor)
         {
            param1.setVertexBufferAt(2,this.mVertexColorBuffer,VertexData.COLOR_OFFSET,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            sRenderAlpha[0] = sRenderAlpha[1] = sRenderAlpha[2] = !!_loc4_ ? Number(param3) : Number(1);
            sRenderAlpha[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,sRenderAlpha,1);
         }
         if(this.mCurrentTexture)
         {
            param1.setTextureAt(0,this.mCurrentTexture.getBase(param1));
            param1.setVertexBufferAt(1,this.mVertexTextureBuffer,VertexData.TEXCOORD_OFFSET,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.mIndexBuffer,0,this.mNumQuads * 2);
         if(this.mCurrentTexture)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.mCurrentTexture == null || this.mUseColor)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.mNumQuads = 0;
         this.mUseColor = false;
         this.mCurrentTexture = null;
         this.mCurrentSmoothing = null;
      }
      
      public function addQuad(param1:Quad, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.mNumQuads + 1 > this.mVertexData.numVertices / 4)
         {
            this.expand();
         }
         if(this.mNumQuads == 0)
         {
            this.mCurrentTexture = param3;
            this.mCurrentSmoothing = param4;
            this.mVertexData.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.mUseColor = true;
            }
         }
         var _loc6_:int = this.mNumQuads * 4;
         param1.copyVertexDataTo(this.mVertexData,_loc6_,param2,param5);
         ++this.mNumQuads;
      }
      
      public function isStateChange(param1:Quad, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.mCurrentTexture != null && param2 != null)
         {
            return this.mCurrentTexture.root != param2.root || this.mCurrentTexture.repeat != param2.repeat || this.mCurrentSmoothing != param3 || this.mUseColor != param1.useColor || this.mNumQuads == 8192;
         }
         if(this.mCurrentTexture == null && param2 == null)
         {
            return false;
         }
         return this.mNumQuads != 0 || this.mUseColor != (param1.useColor || param4 != 1);
      }
   }
}
