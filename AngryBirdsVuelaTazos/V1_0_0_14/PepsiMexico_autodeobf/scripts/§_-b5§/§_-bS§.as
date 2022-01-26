package §_-b5§
{
   import §_-1y§.§_-Z6§;
   import §_-CG§.§_-gk§;
   import §_-DQ§.§_-mG§;
   import §_-fI§.§_-6W§;
   import §_-fI§.§_-BI§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   class §_-bS§
   {
      
      private static var §_-dn§:§_-gk§ = new §_-gk§(0);
       
      
      private var §_-T6§:§_-gk§;
      
      private var §_-iG§:Vector.<uint>;
      
      private var §_-Ix§:TextureBase;
      
      private var §_-Wd§:VertexBuffer3D;
      
      private var §_-WD§:VertexBuffer3D;
      
      private var §_-gw§:IndexBuffer3D;
      
      private var §_-DO§:int = -1;
      
      private var §_-Uv§:String;
      
      private var §_-Sp§:Boolean;
      
      private var §_-Yl§:Boolean;
      
      private var §_-dx§:Boolean;
      
      private var §_-Vb§:Boolean;
      
      private var §_-aD§:int;
      
      private var §_-mo§:int;
      
      private var §_-R5§:int;
      
      private var native:int = -1;
      
      private var §_-s-§:int = -1;
      
      private var §_-Ck§:int;
      
      function §_-bS§(param1:TextureBase, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean)
      {
         super();
         this.§_-T6§ = new §_-gk§(0,param5);
         this.§_-iG§ = new Vector.<uint>(0);
         this.§_-gD§(param1,param2,param3,param4,param5,param6);
      }
      
      public static function §_-ZX§(param1:DisplayObjectContainer, param2:Vector.<§_-bS§>) : Vector.<§_-bS§>
      {
         var _loc4_:§_-bS§ = null;
         if(!param2)
         {
            param2 = new Vector.<§_-bS§>(0);
         }
         param2.fixed = false;
         §_-Vv§(param1,param2,-1,§_-dn§,new Matrix3D(),1);
         var _loc3_:int = param2.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = param2[_loc3_]).§_-Lk§())
            {
               param2.splice(_loc3_,1);
               _loc4_.dispose();
            }
            else
            {
               _loc4_.§_-ov§();
            }
            _loc3_--;
         }
         param2.fixed = true;
         return param2;
      }
      
      private static function §_-Vv§(param1:DisplayObject, param2:Vector.<§_-bS§>, param3:int, param4:§_-gk§, param5:Matrix3D, param6:Number) : int
      {
         var _loc7_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§_-HK§ = null;
         var _loc13_:§_-Xj§ = null;
         var _loc14_:TextureBase = null;
         var _loc15_:String = null;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = false;
         var _loc20_:§_-bS§ = null;
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
               _loc11_.§_-0u§(_loc10_);
               param3 = §_-Vv§(_loc11_,param2,param3,param4,_loc10_,_loc11_.alpha);
               _loc7_++;
            }
         }
         else
         {
            if(!(param1 is §_-HK§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc12_ = param1 as §_-HK§;
            _loc13_ = param1 as §_-Xj§;
            param4.reset();
            param4.§_-5s§(_loc12_.vertexData);
            param4.§_-0u§(param5);
            if(param6 != 1)
            {
               _loc7_ = 0;
               while(_loc7_ < 4)
               {
                  param4.§_-d§(_loc7_,param6);
                  _loc7_++;
               }
            }
            _loc14_ = null;
            _loc15_ = §_-mG§.NONE;
            _loc16_ = false;
            _loc17_ = false;
            _loc18_ = true;
            _loc19_ = false;
            if(_loc13_)
            {
               _loc14_ = _loc13_.texture.base;
               _loc15_ = _loc13_.smoothing;
               _loc19_ = _loc13_.§_-F5§;
            }
            _loc21_ = param3 < 0;
            _loc22_ = true;
            if(!_loc21_)
            {
               _loc22_ = (_loc20_ = param2[param3]).texture != _loc14_ || _loc20_.smoothing != _loc15_ || _loc20_.§_-F5§ != _loc19_;
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
                  (_loc20_ = param2[param3]).§_-gD§(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
               }
               else
               {
                  _loc20_ = new §_-bS§(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
                  param2.push(_loc20_);
               }
            }
            _loc20_.§_-se§(param4);
         }
         return param3;
      }
      
      public function §_-gD§(param1:TextureBase, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean) : void
      {
         this.§_-Ix§ = param1;
         this.§_-Uv§ = param2;
         this.§_-Sp§ = param3;
         this.§_-Yl§ = param4;
         this.§_-dx§ = param5;
         this.§_-Vb§ = param6;
      }
      
      public function dispose() : void
      {
         if(this.§_-Wd§)
         {
            this.§_-Wd§.dispose();
         }
         if(this.§_-WD§)
         {
            this.§_-WD§.dispose();
         }
         if(this.§_-gw§)
         {
            this.§_-gw§.dispose();
         }
      }
      
      public function reset() : void
      {
         this.§_-aD§ = 0;
         this.§_-mo§ = 0;
         this.§_-R5§ = 0;
         this.§_-T6§.reset();
         this.§_-iG§.fixed = false;
      }
      
      public function §_-Lk§() : Boolean
      {
         return this.§_-R5§ == 0;
      }
      
      private function §_-se§(param1:§_-gk§) : void
      {
         var _loc2_:int = 0;
         ++this.§_-R5§;
         if(this.§_-R5§ > this.§_-Ck§)
         {
            _loc2_ = this.§_-Ck§ * 4;
            this.§_-iG§.push(_loc2_,_loc2_ + 1,_loc2_ + 2,_loc2_ + 1,_loc2_ + 3,_loc2_ + 2);
            ++this.§_-Ck§;
         }
         this.§_-T6§.§_-5s§(param1);
         this.§_-aD§ += 6;
         this.§_-mo§ += 4;
      }
      
      public function §_-ov§() : void
      {
         this.§_-iG§.fixed = true;
         this.§_-n§();
      }
      
      private function §_-79§() : void
      {
         var _loc1_:int = §_-BI§.§_-3W§;
         if(this.§_-DO§ != _loc1_)
         {
            this.§_-s-§ = -1;
            this.native = -1;
            this.§_-n§();
            this.§_-DO§ = _loc1_;
         }
      }
      
      private function §_-n§() : void
      {
         var _loc1_:Context3D = §_-BI§.§_-Pw§;
         if(_loc1_ == null)
         {
            throw new §_-Z6§();
         }
         if(this.§_-s-§ < this.§_-mo§)
         {
            if(this.§_-Wd§)
            {
               this.§_-Wd§.dispose();
            }
            if(this.§_-WD§)
            {
               this.§_-WD§.dispose();
            }
            this.§_-Wd§ = _loc1_.createVertexBuffer(this.§_-mo§,§_-gk§.§_-aU§);
            this.§_-WD§ = _loc1_.createVertexBuffer(this.§_-mo§,§_-gk§.§_-7-§);
            this.§_-s-§ = this.§_-mo§;
         }
         if(this.native < this.§_-aD§)
         {
            if(this.§_-gw§)
            {
               this.§_-gw§.dispose();
            }
            this.§_-gw§ = _loc1_.createIndexBuffer(this.§_-aD§);
            this.native = this.§_-aD§;
            this.§_-gw§.uploadFromVector(this.§_-iG§,0,this.§_-aD§);
         }
         this.§_-Wd§.uploadFromVector(this.§_-T6§.data,0,this.§_-mo§);
         this.§_-WD§.uploadFromVector(this.§_-T6§.§_-lC§,0,this.§_-mo§);
         var _loc2_:int = §_-BI§.§_-3W§;
         this.§_-DO§ = _loc2_;
      }
      
      public function render(param1:§_-6W§, param2:Number) : void
      {
         var _loc3_:Context3D = §_-BI§.§_-Pw§;
         if(_loc3_ == null)
         {
            throw new §_-Z6§();
         }
         this.§_-79§();
         var _loc4_:Boolean = this.§_-T6§.premultipliedAlpha;
         var _loc5_:String = !!this.§_-Ix§ ? §_-Xj§.§_-Ri§(this.§_-Yl§,this.§_-Sp§,this.§_-Uv§,this.§_-Vb§) : §_-HK§.§_-Va§;
         var _loc6_:Vector.<Number> = !!_loc4_ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         param1.§_-oD§(_loc4_);
         param1.setProgram(§_-BI§.§_-44§.§_-Ew§(_loc5_));
         _loc3_.setVertexBufferAt(0,this.§_-WD§,§_-gk§.§_-bD§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§_-Vb§)
         {
            _loc3_.setVertexBufferAt(2,this.§_-Wd§,§_-gk§.§_-JD§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-tN§,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc6_,1);
         if(this.§_-Ix§)
         {
            param1.setTextureAt(§_-6W§.§_-HQ§,this.§_-Ix§);
            _loc3_.setVertexBufferAt(1,this.§_-Wd§,§_-gk§.§_-am§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(§_-6W§.§_-HQ§,null);
            _loc3_.setVertexBufferAt(1,this.§_-Wd§,§_-gk§.§_-JD§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.drawTriangles(this.§_-gw§,0,this.§_-aD§ / 3);
         _loc3_.setVertexBufferAt(0,null);
         _loc3_.setVertexBufferAt(1,null);
         if(this.§_-Vb§)
         {
            _loc3_.setVertexBufferAt(2,null);
         }
      }
      
      public function get texture() : TextureBase
      {
         return this.§_-Ix§;
      }
      
      public function get smoothing() : String
      {
         return this.§_-Uv§;
      }
      
      public function get repeat() : Boolean
      {
         return this.§_-Sp§;
      }
      
      public function get mipMapping() : Boolean
      {
         return this.§_-Yl§;
      }
      
      public function get §_-F5§() : Boolean
      {
         return this.§_-Vb§;
      }
   }
}
