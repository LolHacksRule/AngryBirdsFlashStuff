package §_-SE§
{
   import §_-Ku§.§_-Ha§;
   import §_-Ku§.§_-Nq§;
   import §_-OP§.§_-fW§;
   import §_-Q0§.§_-qr§;
   import §_-QR§.§_-Ft§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   class §_-oR§
   {
      
      private static var §_-0w§:§_-fW§ = new §_-fW§(0);
       
      
      private var §_-ny§:§_-fW§;
      
      private var §_-OO§:Vector.<uint>;
      
      private var §_-C6§:TextureBase;
      
      private var §_-cr§:VertexBuffer3D;
      
      private var §_-1G§:VertexBuffer3D;
      
      private var §_-O0§:IndexBuffer3D;
      
      private var §_-mi§:int = -1;
      
      private var §_-41§:String;
      
      private var §_-fq§:Boolean;
      
      private var §_-Xo§:Boolean;
      
      private var §_-Yr§:Boolean;
      
      private var §_-HJ§:Boolean;
      
      private var §_-kj§:int;
      
      private var §_-0x§:int;
      
      private var §_-Mw§:int;
      
      private var §_-jp§:int = -1;
      
      private var §_-bs§:int = -1;
      
      private var §_-x§:int;
      
      function §_-oR§(param1:TextureBase, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean)
      {
         super();
         this.§_-ny§ = new §_-fW§(0,param5);
         this.§_-OO§ = new Vector.<uint>(0);
         this.§_-xS§(param1,param2,param3,param4,param5,param6);
      }
      
      public static function §_-x3§(param1:DisplayObjectContainer, param2:Vector.<§_-oR§>) : Vector.<§_-oR§>
      {
         var _loc4_:§_-oR§ = null;
         if(!param2)
         {
            param2 = new Vector.<§_-oR§>(0);
         }
         param2.fixed = false;
         §_-Kd§(param1,param2,-1,§_-0w§,new Matrix3D(),1);
         var _loc3_:int = param2.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = param2[_loc3_]).§_-MD§())
            {
               param2.splice(_loc3_,1);
               _loc4_.dispose();
            }
            else
            {
               _loc4_.§_-EE§();
            }
            _loc3_--;
         }
         param2.fixed = true;
         return param2;
      }
      
      private static function §_-Kd§(param1:DisplayObject, param2:Vector.<§_-oR§>, param3:int, param4:§_-fW§, param5:Matrix3D, param6:Number) : int
      {
         var _loc7_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§_-uX§ = null;
         var _loc13_:§_-rl§ = null;
         var _loc14_:TextureBase = null;
         var _loc15_:String = null;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = false;
         var _loc20_:§_-oR§ = null;
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
                  _loc11_.§_-EJ§(_loc10_);
                  param3 = §_-Kd§(_loc11_,param2,param3,param4,_loc10_,_loc11_.alpha);
               }
               _loc7_++;
            }
         }
         else
         {
            if(!(param1 is §_-uX§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc12_ = param1 as §_-uX§;
            _loc13_ = param1 as §_-rl§;
            param4.reset();
            param4.§_-yk§(_loc12_.vertexData);
            param4.§_-EJ§(param5);
            if(param6 != 1)
            {
               _loc7_ = 0;
               while(_loc7_ < 4)
               {
                  param4.§_-c8§(_loc7_,param6);
                  _loc7_++;
               }
            }
            _loc14_ = null;
            _loc15_ = §_-qr§.NONE;
            _loc16_ = false;
            _loc17_ = false;
            _loc18_ = true;
            _loc19_ = false;
            if(_loc13_)
            {
               _loc14_ = _loc13_.texture.base;
               _loc15_ = _loc13_.smoothing;
               _loc19_ = _loc13_.§_-Rf§;
            }
            _loc21_ = param3 < 0;
            _loc22_ = true;
            if(!_loc21_)
            {
               _loc22_ = (_loc20_ = param2[param3]).texture != _loc14_ || _loc20_.smoothing != _loc15_ || _loc20_.§_-Rf§ != _loc19_;
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
                  (_loc20_ = param2[param3]).§_-xS§(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
               }
               else
               {
                  _loc20_ = new §_-oR§(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
                  param2.push(_loc20_);
               }
            }
            _loc20_.§_-v5§(param4);
         }
         return param3;
      }
      
      public function §_-xS§(param1:TextureBase, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean) : void
      {
         this.§_-C6§ = param1;
         this.§_-41§ = param2;
         this.§_-fq§ = param3;
         this.§_-Xo§ = param4;
         this.§_-Yr§ = param5;
         this.§_-HJ§ = param6;
      }
      
      public function dispose() : void
      {
         if(this.§_-cr§)
         {
            this.§_-cr§.dispose();
         }
         if(this.§_-1G§)
         {
            this.§_-1G§.dispose();
         }
         if(this.§_-O0§)
         {
            this.§_-O0§.dispose();
         }
      }
      
      public function reset() : void
      {
         this.§_-kj§ = 0;
         this.§_-0x§ = 0;
         this.§_-Mw§ = 0;
         this.§_-ny§.reset();
         this.§_-OO§.fixed = false;
      }
      
      public function §_-MD§() : Boolean
      {
         return this.§_-Mw§ == 0;
      }
      
      private function §_-v5§(param1:§_-fW§) : void
      {
         var _loc2_:int = 0;
         ++this.§_-Mw§;
         if(this.§_-Mw§ > this.§_-x§)
         {
            _loc2_ = this.§_-x§ * 4;
            this.§_-OO§.push(_loc2_,_loc2_ + 1,_loc2_ + 2,_loc2_ + 1,_loc2_ + 3,_loc2_ + 2);
            ++this.§_-x§;
         }
         this.§_-ny§.§_-yk§(param1);
         this.§_-kj§ += 6;
         this.§_-0x§ += 4;
      }
      
      public function §_-EE§() : void
      {
         this.§_-OO§.fixed = true;
         if(!this.§_-Zf§())
         {
            this.§_-JI§();
         }
      }
      
      private function §_-Zf§() : Boolean
      {
         var _loc1_:int = §_-Ha§.§_-Gg§;
         if(this.§_-mi§ != _loc1_)
         {
            this.§_-bs§ = -1;
            this.§_-jp§ = -1;
            this.§_-JI§();
            this.§_-mi§ = _loc1_;
            return true;
         }
         return false;
      }
      
      private function §_-JI§() : void
      {
         var _loc1_:Context3D = §_-Ha§.§_-8o§;
         if(_loc1_ == null)
         {
            throw new §_-Ft§();
         }
         if(this.§_-bs§ < this.§_-0x§)
         {
            if(this.§_-cr§)
            {
               this.§_-cr§.dispose();
            }
            if(this.§_-1G§)
            {
               this.§_-1G§.dispose();
            }
            this.§_-cr§ = _loc1_.createVertexBuffer(this.§_-0x§,§_-fW§.§_-qY§);
            this.§_-1G§ = _loc1_.createVertexBuffer(this.§_-0x§,§_-fW§.§_-Cf§);
            this.§_-bs§ = this.§_-0x§;
         }
         if(this.§_-jp§ < this.§_-kj§)
         {
            if(this.§_-O0§)
            {
               this.§_-O0§.dispose();
            }
            this.§_-O0§ = _loc1_.createIndexBuffer(this.§_-kj§);
            this.§_-jp§ = this.§_-kj§;
            this.§_-O0§.uploadFromVector(this.§_-OO§,0,this.§_-kj§);
         }
         this.§_-cr§.uploadFromVector(this.§_-ny§.data,0,this.§_-0x§);
         this.§_-1G§.uploadFromVector(this.§_-ny§.§_-7f§,0,this.§_-0x§);
         var _loc2_:int = §_-Ha§.§_-Gg§;
         this.§_-mi§ = _loc2_;
      }
      
      public function render(param1:§_-Nq§, param2:Number) : void
      {
         var _loc3_:Context3D = §_-Ha§.§_-8o§;
         if(_loc3_ == null)
         {
            throw new §_-Ft§();
         }
         this.§_-Zf§();
         var _loc4_:Boolean = this.§_-ny§.premultipliedAlpha;
         var _loc5_:String = !!this.§_-C6§ ? §_-rl§.§_-in§(this.§_-Xo§,this.§_-fq§,this.§_-41§,this.§_-HJ§) : §_-uX§.§_-T8§;
         var _loc6_:Vector.<Number> = !!_loc4_ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         param1.§_-Mc§(_loc4_);
         param1.setProgram(§_-Ha§.§_-Aq§.§_-w2§(_loc5_));
         _loc3_.setVertexBufferAt(0,this.§_-1G§,§_-fW§.§_-Jx§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§_-HJ§)
         {
            _loc3_.setVertexBufferAt(2,this.§_-cr§,§_-fW§.§_-Ef§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-Tm§,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc6_,1);
         if(this.§_-C6§)
         {
            param1.setTextureAt(§_-Nq§.§_-C2§,this.§_-C6§);
            _loc3_.setVertexBufferAt(1,this.§_-cr§,§_-fW§.§_-JR§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(§_-Nq§.§_-C2§,null);
            _loc3_.setVertexBufferAt(1,this.§_-cr§,§_-fW§.§_-Ef§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.drawTriangles(this.§_-O0§,0,this.§_-kj§ / 3);
         _loc3_.setVertexBufferAt(0,null);
         _loc3_.setVertexBufferAt(1,null);
         if(this.§_-HJ§)
         {
            _loc3_.setVertexBufferAt(2,null);
         }
      }
      
      public function get texture() : TextureBase
      {
         return this.§_-C6§;
      }
      
      public function get smoothing() : String
      {
         return this.§_-41§;
      }
      
      public function get repeat() : Boolean
      {
         return this.§_-fq§;
      }
      
      public function get mipMapping() : Boolean
      {
         return this.§_-Xo§;
      }
      
      public function get §_-Rf§() : Boolean
      {
         return this.§_-HJ§;
      }
   }
}
