package §_-GY§
{
   import §_-V9§.§_-oT§;
   import §_-Ye§.§_-CT§;
   import §_-Ye§.§_-cP§;
   import §_-mb§.§_-GZ§;
   import §_-yp§.§_-fI§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   class §_-O5§
   {
      
      private static var §_-uF§:§_-GZ§ = new §_-GZ§(0);
       
      
      private var §_-MU§:§_-GZ§;
      
      private var §_-pi§:Vector.<uint>;
      
      private var §_-eE§:TextureBase;
      
      private var §_-sD§:VertexBuffer3D;
      
      private var §_-Qd§:VertexBuffer3D;
      
      private var §_-r3§:IndexBuffer3D;
      
      private var §_-Bt§:int = -1;
      
      private var §_-sP§:String;
      
      private var §_-wb§:Boolean;
      
      private var §_-du§:Boolean;
      
      private var §_-Qx§:Boolean;
      
      private var §_-HU§:Boolean;
      
      private var §_-TT§:int;
      
      private var §_-OT§:int;
      
      private var §_-oZ§:int;
      
      private var §_-Dr§:int = -1;
      
      private var §_-yH§:int = -1;
      
      private var §_-u8§:int;
      
      function §_-O5§(param1:TextureBase, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean)
      {
         super();
         this.§_-MU§ = new §_-GZ§(0,param5);
         this.§_-pi§ = new Vector.<uint>(0);
         this.§_-9M§(param1,param2,param3,param4,param5,param6);
      }
      
      public static function §_-p1§(param1:DisplayObjectContainer, param2:Vector.<§_-O5§>) : Vector.<§_-O5§>
      {
         var _loc4_:§_-O5§ = null;
         if(!param2)
         {
            param2 = new Vector.<§_-O5§>(0);
         }
         param2.fixed = false;
         §_-00C§(param1,param2,-1,§_-uF§,new Matrix3D(),1);
         var _loc3_:int = param2.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = param2[_loc3_]).§_-SQ§())
            {
               param2.splice(_loc3_,1);
               _loc4_.dispose();
            }
            else
            {
               _loc4_.§_-c5§();
            }
            _loc3_--;
         }
         param2.fixed = true;
         return param2;
      }
      
      private static function §_-00C§(param1:DisplayObject, param2:Vector.<§_-O5§>, param3:int, param4:§_-GZ§, param5:Matrix3D, param6:Number) : int
      {
         var _loc7_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§_-Bf§ = null;
         var _loc13_:§_-4W§ = null;
         var _loc14_:TextureBase = null;
         var _loc15_:String = null;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = false;
         var _loc20_:§_-O5§ = null;
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
               if((_loc11_ = _loc8_.getChildAt(_loc7_)).visible && _loc11_.alpha > 0 && param1.scaleX != 0 && param1.scaleY != 0)
               {
                  _loc10_.copyFrom(param5);
                  _loc11_.§_-ky§(_loc10_);
                  param3 = §_-00C§(_loc11_,param2,param3,param4,_loc10_,_loc11_.alpha);
               }
               _loc7_++;
            }
         }
         else
         {
            if(!(param1 is §_-Bf§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc12_ = param1 as §_-Bf§;
            _loc13_ = param1 as §_-4W§;
            param4.reset();
            param4.§_-kM§(_loc12_.vertexData);
            param4.§_-ky§(param5);
            if(param6 != 1)
            {
               _loc7_ = 0;
               while(_loc7_ < 4)
               {
                  param4.§_-0-g§(_loc7_,param6);
                  _loc7_++;
               }
            }
            _loc14_ = null;
            _loc15_ = §_-fI§.NONE;
            _loc16_ = false;
            _loc17_ = false;
            _loc18_ = true;
            _loc19_ = false;
            if(_loc13_)
            {
               _loc14_ = _loc13_.texture.base;
               _loc15_ = _loc13_.smoothing;
               _loc19_ = _loc13_.§_-0-E§;
            }
            _loc21_ = param3 < 0;
            _loc22_ = true;
            if(!_loc21_)
            {
               _loc22_ = (_loc20_ = param2[param3]).texture != _loc14_ || _loc20_.smoothing != _loc15_ || _loc20_.§_-0-E§ != _loc19_;
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
                  (_loc20_ = param2[param3]).§_-9M§(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
               }
               else
               {
                  _loc20_ = new §_-O5§(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
                  param2.push(_loc20_);
               }
            }
            _loc20_.§_-9A§(param4);
         }
         return param3;
      }
      
      public function §_-9M§(param1:TextureBase, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean) : void
      {
         this.§_-eE§ = param1;
         this.§_-sP§ = param2;
         this.§_-wb§ = param3;
         this.§_-du§ = param4;
         this.§_-Qx§ = param5;
         this.§_-HU§ = param6;
      }
      
      public function dispose() : void
      {
         if(this.§_-sD§)
         {
            this.§_-sD§.dispose();
         }
         if(this.§_-Qd§)
         {
            this.§_-Qd§.dispose();
         }
         if(this.§_-r3§)
         {
            this.§_-r3§.dispose();
         }
      }
      
      public function reset() : void
      {
         this.§_-TT§ = 0;
         this.§_-OT§ = 0;
         this.§_-oZ§ = 0;
         this.§_-MU§.reset();
         this.§_-pi§.fixed = false;
      }
      
      public function §_-SQ§() : Boolean
      {
         return this.§_-oZ§ == 0;
      }
      
      private function §_-9A§(param1:§_-GZ§) : void
      {
         var _loc2_:int = 0;
         ++this.§_-oZ§;
         if(this.§_-oZ§ > this.§_-u8§)
         {
            _loc2_ = this.§_-u8§ * 4;
            this.§_-pi§.push(_loc2_,_loc2_ + 1,_loc2_ + 2,_loc2_ + 1,_loc2_ + 3,_loc2_ + 2);
            ++this.§_-u8§;
         }
         this.§_-MU§.§_-kM§(param1);
         this.§_-TT§ += 6;
         this.§_-OT§ += 4;
      }
      
      public function §_-c5§() : void
      {
         this.§_-pi§.fixed = true;
         if(!this.§_-UL§())
         {
            this.§_-m9§();
         }
      }
      
      private function §_-UL§() : Boolean
      {
         var _loc1_:int = §_-cP§.§_-Fb§;
         if(this.§_-Bt§ != _loc1_)
         {
            this.§_-yH§ = -1;
            this.§_-Dr§ = -1;
            this.§_-m9§();
            this.§_-Bt§ = _loc1_;
            return true;
         }
         return false;
      }
      
      private function §_-m9§() : void
      {
         var _loc1_:Context3D = §_-cP§.§_-eZ§;
         if(_loc1_ == null)
         {
            throw new §_-oT§();
         }
         if(this.§_-yH§ < this.§_-OT§)
         {
            if(this.§_-sD§)
            {
               this.§_-sD§.dispose();
            }
            if(this.§_-Qd§)
            {
               this.§_-Qd§.dispose();
            }
            this.§_-sD§ = _loc1_.createVertexBuffer(this.§_-OT§,§_-GZ§.§_-8e§);
            this.§_-Qd§ = _loc1_.createVertexBuffer(this.§_-OT§,§_-GZ§.§_-bJ§);
            this.§_-yH§ = this.§_-OT§;
         }
         if(this.§_-Dr§ < this.§_-TT§)
         {
            if(this.§_-r3§)
            {
               this.§_-r3§.dispose();
            }
            this.§_-r3§ = _loc1_.createIndexBuffer(this.§_-TT§);
            this.§_-Dr§ = this.§_-TT§;
            this.§_-r3§.uploadFromVector(this.§_-pi§,0,this.§_-TT§);
         }
         this.§_-sD§.uploadFromVector(this.§_-MU§.data,0,this.§_-OT§);
         this.§_-Qd§.uploadFromVector(this.§_-MU§.§_-jS§,0,this.§_-OT§);
         var _loc2_:int = §_-cP§.§_-Fb§;
         this.§_-Bt§ = _loc2_;
      }
      
      public function render(param1:§_-CT§, param2:Number) : void
      {
         var _loc3_:Context3D = §_-cP§.§_-eZ§;
         if(_loc3_ == null)
         {
            throw new §_-oT§();
         }
         this.§_-UL§();
         var _loc4_:Boolean = this.§_-MU§.premultipliedAlpha;
         var _loc5_:String = !!this.§_-eE§ ? §_-4W§.§_-zj§(this.§_-du§,this.§_-wb§,this.§_-sP§,this.§_-HU§) : §_-Bf§.§_-qg§;
         var _loc6_:Vector.<Number> = !!_loc4_ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         param1.§_-NO§(_loc4_);
         param1.setProgram(§_-cP§.§_-004§.§_-Bj§(_loc5_));
         _loc3_.setVertexBufferAt(0,this.§_-Qd§,§_-GZ§.§_-Wu§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§_-HU§)
         {
            _loc3_.setVertexBufferAt(2,this.§_-sD§,§_-GZ§.§_-hv§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-hA§,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc6_,1);
         if(this.§_-eE§)
         {
            param1.setTextureAt(§_-CT§.§_-w4§,this.§_-eE§);
            _loc3_.setVertexBufferAt(1,this.§_-sD§,§_-GZ§.§_-Os§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(§_-CT§.§_-w4§,null);
            _loc3_.setVertexBufferAt(1,this.§_-sD§,§_-GZ§.§_-hv§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.drawTriangles(this.§_-r3§,0,this.§_-TT§ / 3);
         _loc3_.setVertexBufferAt(0,null);
         _loc3_.setVertexBufferAt(1,null);
         if(this.§_-HU§)
         {
            _loc3_.setVertexBufferAt(2,null);
         }
      }
      
      public function get texture() : TextureBase
      {
         return this.§_-eE§;
      }
      
      public function get smoothing() : String
      {
         return this.§_-sP§;
      }
      
      public function get repeat() : Boolean
      {
         return this.§_-wb§;
      }
      
      public function get mipMapping() : Boolean
      {
         return this.§_-du§;
      }
      
      public function get §_-0-E§() : Boolean
      {
         return this.§_-HU§;
      }
   }
}
