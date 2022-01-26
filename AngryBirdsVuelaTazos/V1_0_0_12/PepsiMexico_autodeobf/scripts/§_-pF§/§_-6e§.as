package §_-pF§
{
   import §_-0b§.§_-Bn§;
   import §_-S4§.§_-Gb§;
   import §_-nh§.§_-Hm§;
   import §_-v3§.§_-G3§;
   import §_-v3§.§_-L4§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   class §_-6e§
   {
      
      private static var §_-Qd§:§_-Bn§ = new §_-Bn§(0);
       
      
      private var §_-iv§:§_-Bn§;
      
      private var §_-jA§:Vector.<uint>;
      
      private var §_-sb§:TextureBase;
      
      private var §_-Sf§:VertexBuffer3D;
      
      private var §_-W-§:VertexBuffer3D;
      
      private var §_-37§:IndexBuffer3D;
      
      private var §_-Tx§:int = -1;
      
      private var §_-tS§:String;
      
      private var §_-qt§:Boolean;
      
      private var §_-U-§:Boolean;
      
      private var §_-hD§:Boolean;
      
      private var §_-Oh§:Boolean;
      
      private var §_-wL§:int;
      
      private var §_-vl§:int;
      
      private var §_-WJ§:int;
      
      private var §_-Tz§:int = -1;
      
      private var §_-II§:int = -1;
      
      private var §_-iR§:int;
      
      function §_-6e§(param1:TextureBase, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean)
      {
         super();
         this.§_-iv§ = new §_-Bn§(0,param5);
         this.§_-jA§ = new Vector.<uint>(0);
         this.§_-ue§(param1,param2,param3,param4,param5,param6);
      }
      
      public static function §_-rn§(param1:DisplayObjectContainer, param2:Vector.<§_-6e§>) : Vector.<§_-6e§>
      {
         var _loc4_:§_-6e§ = null;
         if(!param2)
         {
            param2 = new Vector.<§_-6e§>(0);
         }
         param2.fixed = false;
         §_-Wu§(param1,param2,-1,§_-Qd§,new Matrix3D(),1);
         var _loc3_:int = param2.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = param2[_loc3_]).§_-N9§())
            {
               param2.splice(_loc3_,1);
               _loc4_.dispose();
            }
            else
            {
               _loc4_.§_-kX§();
            }
            _loc3_--;
         }
         param2.fixed = true;
         return param2;
      }
      
      private static function §_-Wu§(param1:DisplayObject, param2:Vector.<§_-6e§>, param3:int, param4:§_-Bn§, param5:Matrix3D, param6:Number) : int
      {
         var _loc7_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§_-b3§ = null;
         var _loc13_:§_-gY§ = null;
         var _loc14_:TextureBase = null;
         var _loc15_:String = null;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = false;
         var _loc20_:§_-6e§ = null;
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
               _loc11_.§_-aM§(_loc10_);
               param3 = §_-Wu§(_loc11_,param2,param3,param4,_loc10_,_loc11_.alpha);
               _loc7_++;
            }
         }
         else
         {
            if(!(param1 is §_-b3§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc12_ = param1 as §_-b3§;
            _loc13_ = param1 as §_-gY§;
            param4.reset();
            param4.§_-QU§(_loc12_.vertexData);
            param4.§_-aM§(param5);
            if(param6 != 1)
            {
               _loc7_ = 0;
               while(_loc7_ < 4)
               {
                  param4.§_-NV§(_loc7_,param6);
                  _loc7_++;
               }
            }
            _loc14_ = null;
            _loc15_ = §_-Gb§.NONE;
            _loc16_ = false;
            _loc17_ = false;
            _loc18_ = true;
            _loc19_ = false;
            if(_loc13_)
            {
               _loc14_ = _loc13_.texture.base;
               _loc15_ = _loc13_.smoothing;
               _loc19_ = _loc13_.§_-DG§;
            }
            _loc21_ = param3 < 0;
            _loc22_ = true;
            if(!_loc21_)
            {
               _loc22_ = (_loc20_ = param2[param3]).texture != _loc14_ || _loc20_.smoothing != _loc15_ || _loc20_.§_-DG§ != _loc19_;
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
                  (_loc20_ = param2[param3]).§_-ue§(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
               }
               else
               {
                  _loc20_ = new §_-6e§(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
                  param2.push(_loc20_);
               }
            }
            _loc20_.§_-3q§(param4);
         }
         return param3;
      }
      
      public function §_-ue§(param1:TextureBase, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean) : void
      {
         this.§_-sb§ = param1;
         this.§_-tS§ = param2;
         this.§_-qt§ = param3;
         this.§_-U-§ = param4;
         this.§_-hD§ = param5;
         this.§_-Oh§ = param6;
      }
      
      public function dispose() : void
      {
         if(this.§_-Sf§)
         {
            this.§_-Sf§.dispose();
         }
         if(this.§_-W-§)
         {
            this.§_-W-§.dispose();
         }
         if(this.§_-37§)
         {
            this.§_-37§.dispose();
         }
      }
      
      public function reset() : void
      {
         this.§_-wL§ = 0;
         this.§_-vl§ = 0;
         this.§_-WJ§ = 0;
         this.§_-iv§.reset();
         this.§_-jA§.fixed = false;
      }
      
      public function §_-N9§() : Boolean
      {
         return this.§_-WJ§ == 0;
      }
      
      private function §_-3q§(param1:§_-Bn§) : void
      {
         var _loc2_:int = 0;
         ++this.§_-WJ§;
         if(this.§_-WJ§ > this.§_-iR§)
         {
            _loc2_ = this.§_-iR§ * 4;
            this.§_-jA§.push(_loc2_,_loc2_ + 1,_loc2_ + 2,_loc2_ + 1,_loc2_ + 3,_loc2_ + 2);
            ++this.§_-iR§;
         }
         this.§_-iv§.§_-QU§(param1);
         this.§_-wL§ += 6;
         this.§_-vl§ += 4;
      }
      
      public function §_-kX§() : void
      {
         this.§_-jA§.fixed = true;
         this.§_-dg§();
      }
      
      private function §_-kr§() : void
      {
         var _loc1_:int = §_-G3§.§_-LJ§;
         if(this.§_-Tx§ != _loc1_)
         {
            this.§_-II§ = -1;
            this.§_-Tz§ = -1;
            this.§_-dg§();
            this.§_-Tx§ = _loc1_;
         }
      }
      
      private function §_-dg§() : void
      {
         var _loc1_:Context3D = §_-G3§.§_-FH§;
         if(_loc1_ == null)
         {
            throw new §_-Hm§();
         }
         if(this.§_-II§ < this.§_-vl§)
         {
            if(this.§_-Sf§)
            {
               this.§_-Sf§.dispose();
            }
            if(this.§_-W-§)
            {
               this.§_-W-§.dispose();
            }
            this.§_-Sf§ = _loc1_.createVertexBuffer(this.§_-vl§,§_-Bn§.§_-FG§);
            this.§_-W-§ = _loc1_.createVertexBuffer(this.§_-vl§,§_-Bn§.§_-§);
            this.§_-II§ = this.§_-vl§;
         }
         if(this.§_-Tz§ < this.§_-wL§)
         {
            if(this.§_-37§)
            {
               this.§_-37§.dispose();
            }
            this.§_-37§ = _loc1_.createIndexBuffer(this.§_-wL§);
            this.§_-Tz§ = this.§_-wL§;
            this.§_-37§.uploadFromVector(this.§_-jA§,0,this.§_-wL§);
         }
         this.§_-Sf§.uploadFromVector(this.§_-iv§.data,0,this.§_-vl§);
         this.§_-W-§.uploadFromVector(this.§_-iv§.§_-dj§,0,this.§_-vl§);
         var _loc2_:int = §_-G3§.§_-LJ§;
         this.§_-Tx§ = _loc2_;
      }
      
      public function render(param1:§_-L4§, param2:Number) : void
      {
         var _loc3_:Context3D = §_-G3§.§_-FH§;
         if(_loc3_ == null)
         {
            throw new §_-Hm§();
         }
         this.§_-kr§();
         var _loc4_:Boolean = this.§_-iv§.premultipliedAlpha;
         var _loc5_:String = !!this.§_-sb§ ? §_-gY§.§_-ZO§(this.§_-U-§,this.§_-qt§,this.§_-tS§,this.§_-Oh§) : §_-b3§.§_-QQ§;
         var _loc6_:Vector.<Number> = !!_loc4_ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         param1.§_-Wz§(_loc4_);
         param1.setProgram(§_-G3§.§_-9S§.§_-nf§(_loc5_));
         _loc3_.setVertexBufferAt(0,this.§_-W-§,§_-Bn§.§_-u5§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§_-Oh§)
         {
            _loc3_.setVertexBufferAt(2,this.§_-Sf§,§_-Bn§.§_-3V§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-Qz§,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc6_,1);
         if(this.§_-sb§)
         {
            param1.setTextureAt(§_-L4§.§_-pV§,this.§_-sb§);
            _loc3_.setVertexBufferAt(1,this.§_-Sf§,§_-Bn§.§_-25§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(§_-L4§.§_-pV§,null);
            _loc3_.setVertexBufferAt(1,this.§_-Sf§,§_-Bn§.§_-3V§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.drawTriangles(this.§_-37§,0,this.§_-wL§ / 3);
         _loc3_.setVertexBufferAt(0,null);
         _loc3_.setVertexBufferAt(1,null);
         if(this.§_-Oh§)
         {
            _loc3_.setVertexBufferAt(2,null);
         }
      }
      
      public function get texture() : TextureBase
      {
         return this.§_-sb§;
      }
      
      public function get smoothing() : String
      {
         return this.§_-tS§;
      }
      
      public function get repeat() : Boolean
      {
         return this.§_-qt§;
      }
      
      public function get mipMapping() : Boolean
      {
         return this.§_-U-§;
      }
      
      public function get §_-DG§() : Boolean
      {
         return this.§_-Oh§;
      }
   }
}
