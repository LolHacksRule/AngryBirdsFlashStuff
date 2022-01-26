package §_-Ls§
{
   import §_-Bt§.§_-Ty§;
   import §_-Dk§.§ use§;
   import §_-uz§.§_-J4§;
   import §_-vB§.§_-7p§;
   import §_-vB§.§_-Kk§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   class §_-m6§
   {
      
      private static var §_-00H§:§_-Ty§ = new §_-Ty§(0);
       
      
      private var §_-ye§:§_-Ty§;
      
      private var §_-4l§:Vector.<uint>;
      
      private var §_-AF§:TextureBase;
      
      private var §_-ao§:VertexBuffer3D;
      
      private var §_-jm§:VertexBuffer3D;
      
      private var §_-mx§:IndexBuffer3D;
      
      private var §_-O9§:int = -1;
      
      private var §_-VQ§:String;
      
      private var §_-qk§:Boolean;
      
      private var §_-h1§:Boolean;
      
      private var §_-Wp§:Boolean;
      
      private var §_-eA§:Boolean;
      
      private var §_-iQ§:int;
      
      private var §_-Ff§:int;
      
      private var §_-5v§:int;
      
      private var §_-2v§:int = -1;
      
      private var §_-En§:int = -1;
      
      private var §_-6u§:int;
      
      function §_-m6§(param1:TextureBase, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean)
      {
         super();
         this.§_-ye§ = new §_-Ty§(0,param5);
         this.§_-4l§ = new Vector.<uint>(0);
         this.§_-Eh§(param1,param2,param3,param4,param5,param6);
      }
      
      public static function §_-58§(param1:DisplayObjectContainer, param2:Vector.<§_-m6§>) : Vector.<§_-m6§>
      {
         var _loc4_:§_-m6§ = null;
         if(!param2)
         {
            param2 = new Vector.<§_-m6§>(0);
         }
         param2.fixed = false;
         §_-B-§(param1,param2,-1,§_-00H§,new Matrix3D(),1);
         var _loc3_:int = param2.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = param2[_loc3_]).§_-TM§())
            {
               param2.splice(_loc3_,1);
               _loc4_.dispose();
            }
            else
            {
               _loc4_.§_-Cy§();
            }
            _loc3_--;
         }
         param2.fixed = true;
         return param2;
      }
      
      private static function §_-B-§(param1:DisplayObject, param2:Vector.<§_-m6§>, param3:int, param4:§_-Ty§, param5:Matrix3D, param6:Number) : int
      {
         var _loc7_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§_-nY§ = null;
         var _loc13_:§_-Nd§ = null;
         var _loc14_:TextureBase = null;
         var _loc15_:String = null;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = false;
         var _loc20_:§_-m6§ = null;
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
                  _loc11_.§_-fy§(_loc10_);
                  param3 = §_-B-§(_loc11_,param2,param3,param4,_loc10_,_loc11_.alpha);
               }
               _loc7_++;
            }
         }
         else
         {
            if(!(param1 is §_-nY§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc12_ = param1 as §_-nY§;
            _loc13_ = param1 as §_-Nd§;
            param4.reset();
            param4.§_-ms§(_loc12_.vertexData);
            param4.§_-fy§(param5);
            if(param6 != 1)
            {
               _loc7_ = 0;
               while(_loc7_ < 4)
               {
                  param4.§_-X6§(_loc7_,param6);
                  _loc7_++;
               }
            }
            _loc14_ = null;
            _loc15_ = § use§.NONE;
            _loc16_ = false;
            _loc17_ = false;
            _loc18_ = true;
            _loc19_ = false;
            if(_loc13_)
            {
               _loc14_ = _loc13_.texture.base;
               _loc15_ = _loc13_.smoothing;
               _loc19_ = _loc13_.§_-zG§;
            }
            _loc21_ = param3 < 0;
            _loc22_ = true;
            if(!_loc21_)
            {
               _loc22_ = (_loc20_ = param2[param3]).texture != _loc14_ || _loc20_.smoothing != _loc15_ || _loc20_.§_-zG§ != _loc19_;
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
                  (_loc20_ = param2[param3]).§_-Eh§(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
               }
               else
               {
                  _loc20_ = new §_-m6§(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
                  param2.push(_loc20_);
               }
            }
            _loc20_.§_-6Q§(param4);
         }
         return param3;
      }
      
      public function §_-Eh§(param1:TextureBase, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean) : void
      {
         this.§_-AF§ = param1;
         this.§_-VQ§ = param2;
         this.§_-qk§ = param3;
         this.§_-h1§ = param4;
         this.§_-Wp§ = param5;
         this.§_-eA§ = param6;
      }
      
      public function dispose() : void
      {
         if(this.§_-ao§)
         {
            this.§_-ao§.dispose();
         }
         if(this.§_-jm§)
         {
            this.§_-jm§.dispose();
         }
         if(this.§_-mx§)
         {
            this.§_-mx§.dispose();
         }
      }
      
      public function reset() : void
      {
         this.§_-iQ§ = 0;
         this.§_-Ff§ = 0;
         this.§_-5v§ = 0;
         this.§_-ye§.reset();
         this.§_-4l§.fixed = false;
      }
      
      public function §_-TM§() : Boolean
      {
         return this.§_-5v§ == 0;
      }
      
      private function §_-6Q§(param1:§_-Ty§) : void
      {
         var _loc2_:int = 0;
         ++this.§_-5v§;
         if(this.§_-5v§ > this.§_-6u§)
         {
            _loc2_ = this.§_-6u§ * 4;
            this.§_-4l§.push(_loc2_,_loc2_ + 1,_loc2_ + 2,_loc2_ + 1,_loc2_ + 3,_loc2_ + 2);
            ++this.§_-6u§;
         }
         this.§_-ye§.§_-ms§(param1);
         this.§_-iQ§ += 6;
         this.§_-Ff§ += 4;
      }
      
      public function §_-Cy§() : void
      {
         this.§_-4l§.fixed = true;
         if(!this.§_-b§())
         {
            this.§_-YZ§();
         }
      }
      
      private function §_-b§() : Boolean
      {
         var _loc1_:int = §_-Kk§.§_-gK§;
         if(this.§_-O9§ != _loc1_)
         {
            this.§_-En§ = -1;
            this.§_-2v§ = -1;
            this.§_-YZ§();
            this.§_-O9§ = _loc1_;
            return true;
         }
         return false;
      }
      
      private function §_-YZ§() : void
      {
         var _loc1_:Context3D = §_-Kk§.§_-r9§;
         if(_loc1_ == null)
         {
            throw new §_-J4§();
         }
         if(this.§_-En§ < this.§_-Ff§)
         {
            if(this.§_-ao§)
            {
               this.§_-ao§.dispose();
            }
            if(this.§_-jm§)
            {
               this.§_-jm§.dispose();
            }
            this.§_-ao§ = _loc1_.createVertexBuffer(this.§_-Ff§,§_-Ty§.§_-1G§);
            this.§_-jm§ = _loc1_.createVertexBuffer(this.§_-Ff§,§_-Ty§.§_-oB§);
            this.§_-En§ = this.§_-Ff§;
         }
         if(this.§_-2v§ < this.§_-iQ§)
         {
            if(this.§_-mx§)
            {
               this.§_-mx§.dispose();
            }
            this.§_-mx§ = _loc1_.createIndexBuffer(this.§_-iQ§);
            this.§_-2v§ = this.§_-iQ§;
            this.§_-mx§.uploadFromVector(this.§_-4l§,0,this.§_-iQ§);
         }
         this.§_-ao§.uploadFromVector(this.§_-ye§.data,0,this.§_-Ff§);
         this.§_-jm§.uploadFromVector(this.§_-ye§.§_-n6§,0,this.§_-Ff§);
         var _loc2_:int = §_-Kk§.§_-gK§;
         this.§_-O9§ = _loc2_;
      }
      
      public function render(param1:§_-7p§, param2:Number) : void
      {
         var _loc3_:Context3D = §_-Kk§.§_-r9§;
         if(_loc3_ == null)
         {
            throw new §_-J4§();
         }
         this.§_-b§();
         var _loc4_:Boolean = this.§_-ye§.premultipliedAlpha;
         var _loc5_:String = !!this.§_-AF§ ? §_-Nd§.§_-9w§(this.§_-h1§,this.§_-qk§,this.§_-VQ§,this.§_-eA§) : §_-nY§.§_-OM§;
         var _loc6_:Vector.<Number> = !!_loc4_ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         param1.§_-8V§(_loc4_);
         param1.setProgram(§_-Kk§.§_-NR§.§_-DI§(_loc5_));
         _loc3_.setVertexBufferAt(0,this.§_-jm§,§_-Ty§.§_-iD§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§_-eA§)
         {
            _loc3_.setVertexBufferAt(2,this.§_-ao§,§_-Ty§.§_-eN§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-0-9§,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc6_,1);
         if(this.§_-AF§)
         {
            param1.setTextureAt(§_-7p§.§_-XC§,this.§_-AF§);
            _loc3_.setVertexBufferAt(1,this.§_-ao§,§_-Ty§.§_-dL§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(§_-7p§.§_-XC§,null);
            _loc3_.setVertexBufferAt(1,this.§_-ao§,§_-Ty§.§_-eN§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.drawTriangles(this.§_-mx§,0,this.§_-iQ§ / 3);
         _loc3_.setVertexBufferAt(0,null);
         _loc3_.setVertexBufferAt(1,null);
         if(this.§_-eA§)
         {
            _loc3_.setVertexBufferAt(2,null);
         }
      }
      
      public function get texture() : TextureBase
      {
         return this.§_-AF§;
      }
      
      public function get smoothing() : String
      {
         return this.§_-VQ§;
      }
      
      public function get repeat() : Boolean
      {
         return this.§_-qk§;
      }
      
      public function get mipMapping() : Boolean
      {
         return this.§_-h1§;
      }
      
      public function get §_-zG§() : Boolean
      {
         return this.§_-eA§;
      }
   }
}
