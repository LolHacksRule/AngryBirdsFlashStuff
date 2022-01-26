package §_-UX§
{
   import §_-Cy§.§_-qF§;
   import §_-JR§.§_-t2§;
   import §_-JR§.§_-yh§;
   import §_-kX§.§_-hW§;
   import §_-ls§.§_-YQ§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   class §_-gd§
   {
      
      private static var §_-Nx§:§_-hW§ = new §_-hW§(0);
       
      
      private var §_-fM§:§_-hW§;
      
      private var §_-ij§:Vector.<uint>;
      
      private var §_-lT§:TextureBase;
      
      private var §_-q6§:VertexBuffer3D;
      
      private var §_-p§:VertexBuffer3D;
      
      private var §_-wD§:IndexBuffer3D;
      
      private var §_-iv§:int = -1;
      
      private var §_-QX§:String;
      
      private var §_-fK§:Boolean;
      
      private var §_-pW§:Boolean;
      
      private var §_-Hn§:Boolean;
      
      private var §_-46§:Boolean;
      
      private var §_-6M§:int;
      
      private var §_-fz§:int;
      
      private var §_-Bd§:int;
      
      private var §_-cV§:int = -1;
      
      private var §_-wM§:int = -1;
      
      private var §_-VP§:int;
      
      function §_-gd§(param1:TextureBase, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean)
      {
         super();
         this.§_-fM§ = new §_-hW§(0,param5);
         this.§_-ij§ = new Vector.<uint>(0);
         this.§_-UD§(param1,param2,param3,param4,param5,param6);
      }
      
      public static function §_-Xw§(param1:DisplayObjectContainer, param2:Vector.<§_-gd§>) : Vector.<§_-gd§>
      {
         var _loc4_:§_-gd§ = null;
         if(!param2)
         {
            param2 = new Vector.<§_-gd§>(0);
         }
         param2.fixed = false;
         §_-Np§(param1,param2,-1,§_-Nx§,new Matrix3D(),1);
         var _loc3_:int = param2.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = param2[_loc3_]).§_-mi§())
            {
               param2.splice(_loc3_,1);
               _loc4_.dispose();
            }
            else
            {
               _loc4_.§_-xq§();
            }
            _loc3_--;
         }
         param2.fixed = true;
         return param2;
      }
      
      private static function §_-Np§(param1:DisplayObject, param2:Vector.<§_-gd§>, param3:int, param4:§_-hW§, param5:Matrix3D, param6:Number) : int
      {
         var _loc7_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§_-go§ = null;
         var _loc13_:§_-2S§ = null;
         var _loc14_:TextureBase = null;
         var _loc15_:String = null;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = false;
         var _loc20_:§_-gd§ = null;
         var _loc21_:* = false;
         var _loc22_:Boolean = false;
         if(param3 >= 0 && (param1.alpha == 0 || !param1.visible))
         {
            return param3;
         }
         if(param1 is DisplayObjectContainer)
         {
            _loc9_ = (_loc8_ = param1 as DisplayObjectContainer).numChildren;
            _loc10_ = new Matrix3D();
            _loc7_ = 0;
            while(_loc7_ < _loc9_)
            {
               _loc11_ = _loc8_.getChildAt(_loc7_);
               _loc10_.copyFrom(param5);
               _loc11_.§_-nM§(_loc10_);
               param3 = §_-Np§(_loc11_,param2,param3,param4,_loc10_,_loc11_.alpha);
               _loc7_++;
            }
         }
         else
         {
            if(!(param1 is §_-go§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc12_ = param1 as §_-go§;
            _loc13_ = param1 as §_-2S§;
            param4.reset();
            param4.§_-51§(_loc12_.vertexData);
            param4.§_-nM§(param5);
            if(param6 != 1)
            {
               _loc7_ = 0;
               while(_loc7_ < 4)
               {
                  param4.§_-Qm§(_loc7_,param6);
                  _loc7_++;
               }
            }
            _loc14_ = null;
            _loc15_ = §_-qF§.NONE;
            _loc16_ = false;
            _loc17_ = false;
            _loc18_ = true;
            _loc19_ = false;
            if(_loc13_)
            {
               _loc14_ = _loc13_.texture.base;
               _loc15_ = _loc13_.smoothing;
               _loc19_ = _loc13_.§_-6J§;
            }
            _loc21_ = param3 < 0;
            _loc22_ = true;
            if(!_loc21_)
            {
               _loc22_ = (_loc20_ = param2[param3]).texture != _loc14_ || _loc20_.smoothing != _loc15_ || _loc20_.§_-6J§ != _loc19_;
            }
            if(_loc22_)
            {
               if(_loc13_)
               {
                  _loc16_ = _loc13_.texture.repeat;
                  _loc17_ = _loc13_.texture.mipMapping;
                  _loc18_ = _loc13_.texture.premultipliedAlpha;
               }
               param3++;
               if(param3 < param2.length)
               {
                  (_loc20_ = param2[param3]).§_-UD§(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
               }
               else
               {
                  _loc20_ = new §_-gd§(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
                  param2.push(_loc20_);
               }
            }
            _loc20_.§_-Ns§(param4);
         }
         return param3;
      }
      
      public function §_-UD§(param1:TextureBase, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean) : void
      {
         this.§_-lT§ = param1;
         this.§_-QX§ = param2;
         this.§_-fK§ = param3;
         this.§_-pW§ = param4;
         this.§_-Hn§ = param5;
         this.§_-46§ = param6;
      }
      
      public function dispose() : void
      {
         if(this.§_-q6§)
         {
            this.§_-q6§.dispose();
         }
         if(this.§_-p§)
         {
            this.§_-p§.dispose();
         }
         if(this.§_-wD§)
         {
            this.§_-wD§.dispose();
         }
      }
      
      public function reset() : void
      {
         this.§_-6M§ = 0;
         this.§_-fz§ = 0;
         this.§_-Bd§ = 0;
         this.§_-fM§.reset();
         this.§_-ij§.fixed = false;
      }
      
      public function §_-mi§() : Boolean
      {
         return this.§_-Bd§ == 0;
      }
      
      private function §_-Ns§(param1:§_-hW§) : void
      {
         var _loc2_:int = 0;
         ++this.§_-Bd§;
         if(this.§_-Bd§ > this.§_-VP§)
         {
            _loc2_ = this.§_-VP§ * 4;
            this.§_-ij§.push(_loc2_,_loc2_ + 1,_loc2_ + 2,_loc2_ + 1,_loc2_ + 3,_loc2_ + 2);
            ++this.§_-VP§;
         }
         this.§_-fM§.§_-51§(param1);
         this.§_-6M§ += 6;
         this.§_-fz§ += 4;
      }
      
      public function §_-xq§() : void
      {
         this.§_-ij§.fixed = true;
         this.§_-Je§();
      }
      
      private function §_-fO§() : void
      {
         var _loc1_:int = §_-yh§.§_-9E§;
         if(this.§_-iv§ != _loc1_)
         {
            this.§_-wM§ = -1;
            this.§_-cV§ = -1;
            this.§_-Je§();
            this.§_-iv§ = _loc1_;
         }
      }
      
      private function §_-Je§() : void
      {
         var _loc1_:Context3D = §_-yh§.§_-gS§;
         if(_loc1_ == null)
         {
            throw new §_-YQ§();
         }
         if(this.§_-wM§ < this.§_-fz§)
         {
            if(this.§_-q6§)
            {
               this.§_-q6§.dispose();
            }
            if(this.§_-p§)
            {
               this.§_-p§.dispose();
            }
            this.§_-q6§ = _loc1_.createVertexBuffer(this.§_-fz§,§_-hW§.§_-QY§);
            this.§_-p§ = _loc1_.createVertexBuffer(this.§_-fz§,§_-hW§.§_-1y§);
            this.§_-wM§ = this.§_-fz§;
         }
         if(this.§_-cV§ < this.§_-6M§)
         {
            if(this.§_-wD§)
            {
               this.§_-wD§.dispose();
            }
            this.§_-wD§ = _loc1_.createIndexBuffer(this.§_-6M§);
            this.§_-cV§ = this.§_-6M§;
            this.§_-wD§.uploadFromVector(this.§_-ij§,0,this.§_-6M§);
         }
         this.§_-q6§.uploadFromVector(this.§_-fM§.data,0,this.§_-fz§);
         this.§_-p§.uploadFromVector(this.§_-fM§.§_-IU§,0,this.§_-fz§);
         var _loc2_:int = §_-yh§.§_-9E§;
         this.§_-iv§ = _loc2_;
      }
      
      public function render(param1:§_-t2§, param2:Number) : void
      {
         var _loc3_:Context3D = §_-yh§.§_-gS§;
         if(_loc3_ == null)
         {
            throw new §_-YQ§();
         }
         this.§_-fO§();
         var _loc4_:Boolean = this.§_-fM§.premultipliedAlpha;
         var _loc5_:String = !!this.§_-lT§ ? §_-2S§.§_-O9§(this.§_-pW§,this.§_-fK§,this.§_-QX§,this.§_-46§) : §_-go§.§_-iZ§;
         var _loc6_:Vector.<Number> = !!_loc4_ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         param1.§_-E7§(_loc4_);
         param1.setProgram(§_-yh§.§_-1o§.§_-F8§(_loc5_));
         _loc3_.setVertexBufferAt(0,this.§_-p§,§_-hW§.§_-e5§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§_-46§)
         {
            _loc3_.setVertexBufferAt(2,this.§_-q6§,§_-hW§.§_-1n§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-EN§,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc6_,1);
         if(this.§_-lT§)
         {
            param1.setTextureAt(§_-t2§.§_-1§,this.§_-lT§);
            _loc3_.setVertexBufferAt(1,this.§_-q6§,§_-hW§.§_-fH§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(§_-t2§.§_-1§,null);
            _loc3_.setVertexBufferAt(1,this.§_-q6§,§_-hW§.§_-1n§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.drawTriangles(this.§_-wD§,0,this.§_-6M§ / 3);
         _loc3_.setVertexBufferAt(0,null);
         _loc3_.setVertexBufferAt(1,null);
         if(this.§_-46§)
         {
            _loc3_.setVertexBufferAt(2,null);
         }
      }
      
      public function get texture() : TextureBase
      {
         return this.§_-lT§;
      }
      
      public function get smoothing() : String
      {
         return this.§_-QX§;
      }
      
      public function get repeat() : Boolean
      {
         return this.§_-fK§;
      }
      
      public function get mipMapping() : Boolean
      {
         return this.§_-pW§;
      }
      
      public function get §_-6J§() : Boolean
      {
         return this.§_-46§;
      }
   }
}
