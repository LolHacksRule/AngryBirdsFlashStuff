package §_-se§
{
   import §_-B2§.§_-H4§;
   import §_-B2§.§_-Ke§;
   import §_-Zq§.§_-8O§;
   import §_-dQ§.§_-uz§;
   import §_-jY§.§_-h5§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   class §_-Tr§
   {
      
      private static var §_-lN§:§_-8O§ = new §_-8O§(0);
       
      
      private var §_-oi§:§_-8O§;
      
      private var §_-bW§:Vector.<uint>;
      
      private var §_-OI§:TextureBase;
      
      private var §_-bw§:VertexBuffer3D;
      
      private var §_-WH§:VertexBuffer3D;
      
      private var §_-xO§:IndexBuffer3D;
      
      private var §_-WZ§:int = -1;
      
      private var §_-Xm§:String;
      
      private var §_-ee§:Boolean;
      
      private var §_-oL§:Boolean;
      
      private var §_-Hr§:Boolean;
      
      private var §_-Xl§:Boolean;
      
      private var §_-E1§:int;
      
      private var §_-0N§:int;
      
      private var §_-8c§:int;
      
      private var §_-qu§:int = -1;
      
      private var §_-Hp§:int = -1;
      
      private var §_-MJ§:int;
      
      function §_-Tr§(param1:TextureBase, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean)
      {
         super();
         this.§_-oi§ = new §_-8O§(0,param5);
         this.§_-bW§ = new Vector.<uint>(0);
         this.§_-WC§(param1,param2,param3,param4,param5,param6);
      }
      
      public static function §_-F6§(param1:DisplayObjectContainer, param2:Vector.<§_-Tr§>) : Vector.<§_-Tr§>
      {
         var _loc4_:§_-Tr§ = null;
         if(!param2)
         {
            param2 = new Vector.<§_-Tr§>(0);
         }
         param2.fixed = false;
         §_-D6§(param1,param2,-1,§_-lN§,new Matrix3D(),1);
         var _loc3_:int = param2.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = param2[_loc3_]).§_-CQ§())
            {
               param2.splice(_loc3_,1);
               _loc4_.dispose();
            }
            else
            {
               _loc4_.§_-gq§();
            }
            _loc3_--;
         }
         param2.fixed = true;
         return param2;
      }
      
      private static function §_-D6§(param1:DisplayObject, param2:Vector.<§_-Tr§>, param3:int, param4:§_-8O§, param5:Matrix3D, param6:Number) : int
      {
         var _loc7_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§_-3u§ = null;
         var _loc13_:§_-N§ = null;
         var _loc14_:TextureBase = null;
         var _loc15_:String = null;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = false;
         var _loc20_:§_-Tr§ = null;
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
               _loc11_.§_-3W§(_loc10_);
               param3 = §_-D6§(_loc11_,param2,param3,param4,_loc10_,_loc11_.alpha);
               _loc7_++;
            }
         }
         else
         {
            if(!(param1 is §_-3u§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc12_ = param1 as §_-3u§;
            _loc13_ = param1 as §_-N§;
            param4.reset();
            param4.append(_loc12_.vertexData);
            param4.§_-3W§(param5);
            if(param6 != 1)
            {
               _loc7_ = 0;
               while(_loc7_ < 4)
               {
                  param4.§_-eb§(_loc7_,param6);
                  _loc7_++;
               }
            }
            _loc14_ = null;
            _loc15_ = §_-h5§.NONE;
            _loc16_ = false;
            _loc17_ = false;
            _loc18_ = true;
            _loc19_ = false;
            if(_loc13_)
            {
               _loc14_ = _loc13_.texture.base;
               _loc15_ = _loc13_.smoothing;
               _loc19_ = _loc13_.§_-VE§;
            }
            _loc21_ = param3 < 0;
            _loc22_ = true;
            if(!_loc21_)
            {
               _loc22_ = (_loc20_ = param2[param3]).texture != _loc14_ || _loc20_.smoothing != _loc15_ || _loc20_.§_-VE§ != _loc19_;
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
                  (_loc20_ = param2[param3]).§_-WC§(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
               }
               else
               {
                  _loc20_ = new §_-Tr§(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
                  param2.push(_loc20_);
               }
            }
            _loc20_.§_-3H§(param4);
         }
         return param3;
      }
      
      public function §_-WC§(param1:TextureBase, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean) : void
      {
         this.§_-OI§ = param1;
         this.§_-Xm§ = param2;
         this.§_-ee§ = param3;
         this.§_-oL§ = param4;
         this.§_-Hr§ = param5;
         this.§_-Xl§ = param6;
      }
      
      public function dispose() : void
      {
         if(this.§_-bw§)
         {
            this.§_-bw§.dispose();
         }
         if(this.§_-WH§)
         {
            this.§_-WH§.dispose();
         }
         if(this.§_-xO§)
         {
            this.§_-xO§.dispose();
         }
      }
      
      public function reset() : void
      {
         this.§_-E1§ = 0;
         this.§_-0N§ = 0;
         this.§_-8c§ = 0;
         this.§_-oi§.reset();
         this.§_-bW§.fixed = false;
      }
      
      public function §_-CQ§() : Boolean
      {
         return this.§_-8c§ == 0;
      }
      
      private function §_-3H§(param1:§_-8O§) : void
      {
         var _loc2_:int = 0;
         ++this.§_-8c§;
         if(this.§_-8c§ > this.§_-MJ§)
         {
            _loc2_ = this.§_-MJ§ * 4;
            this.§_-bW§.push(_loc2_,_loc2_ + 1,_loc2_ + 2,_loc2_ + 1,_loc2_ + 3,_loc2_ + 2);
            ++this.§_-MJ§;
         }
         this.§_-oi§.append(param1);
         this.§_-E1§ += 6;
         this.§_-0N§ += 4;
      }
      
      public function §_-gq§() : void
      {
         this.§_-bW§.fixed = true;
         this.§_-6Y§();
      }
      
      private function §_-9n§() : void
      {
         var _loc1_:int = §_-H4§.§_-qV§;
         if(this.§_-WZ§ != _loc1_)
         {
            this.§_-Hp§ = -1;
            this.§_-qu§ = -1;
            this.§_-6Y§();
            this.§_-WZ§ = _loc1_;
         }
      }
      
      private function §_-6Y§() : void
      {
         var _loc1_:Context3D = §_-H4§.§_-Eu§;
         if(_loc1_ == null)
         {
            throw new §_-uz§();
         }
         if(this.§_-Hp§ < this.§_-0N§)
         {
            if(this.§_-bw§)
            {
               this.§_-bw§.dispose();
            }
            if(this.§_-WH§)
            {
               this.§_-WH§.dispose();
            }
            this.§_-bw§ = _loc1_.createVertexBuffer(this.§_-0N§,§_-8O§.§_-ht§);
            this.§_-WH§ = _loc1_.createVertexBuffer(this.§_-0N§,§_-8O§.§_-uI§);
            this.§_-Hp§ = this.§_-0N§;
         }
         if(this.§_-qu§ < this.§_-E1§)
         {
            if(this.§_-xO§)
            {
               this.§_-xO§.dispose();
            }
            this.§_-xO§ = _loc1_.createIndexBuffer(this.§_-E1§);
            this.§_-qu§ = this.§_-E1§;
            this.§_-xO§.uploadFromVector(this.§_-bW§,0,this.§_-E1§);
         }
         this.§_-bw§.uploadFromVector(this.§_-oi§.data,0,this.§_-0N§);
         this.§_-WH§.uploadFromVector(this.§_-oi§.§_-6H§,0,this.§_-0N§);
         var _loc2_:int = §_-H4§.§_-qV§;
         this.§_-WZ§ = _loc2_;
      }
      
      public function render(param1:§_-Ke§, param2:Number) : void
      {
         var _loc3_:Context3D = §_-H4§.§_-Eu§;
         if(_loc3_ == null)
         {
            throw new §_-uz§();
         }
         this.§_-9n§();
         var _loc4_:Boolean = this.§_-oi§.premultipliedAlpha;
         var _loc5_:String = !!this.§_-OI§ ? §_-N§.§_-dl§(this.§_-oL§,this.§_-ee§,this.§_-Xm§,this.§_-Xl§) : §_-3u§.§_-14§;
         var _loc6_:Vector.<Number> = !!_loc4_ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         param1.§_-Gg§(_loc4_);
         param1.setProgram(§_-H4§.§_-I9§.§_-4C§(_loc5_));
         _loc3_.setVertexBufferAt(0,this.§_-WH§,§_-8O§.§_-Fz§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§_-Xl§)
         {
            _loc3_.setVertexBufferAt(2,this.§_-bw§,§_-8O§.§_-Md§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-Lp§,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc6_,1);
         if(this.§_-OI§)
         {
            param1.setTextureAt(§_-Ke§.§_-7u§,this.§_-OI§);
            _loc3_.setVertexBufferAt(1,this.§_-bw§,§_-8O§.§_-px§,Context3DVertexBufferFormat.FLOAT_2);
         }
         _loc3_.drawTriangles(this.§_-xO§,0,this.§_-E1§ / 3);
         _loc3_.setVertexBufferAt(0,null);
         _loc3_.setVertexBufferAt(1,null);
         if(this.§_-Xl§)
         {
            _loc3_.setVertexBufferAt(2,null);
         }
      }
      
      public function get texture() : TextureBase
      {
         return this.§_-OI§;
      }
      
      public function get smoothing() : String
      {
         return this.§_-Xm§;
      }
      
      public function get repeat() : Boolean
      {
         return this.§_-ee§;
      }
      
      public function get mipMapping() : Boolean
      {
         return this.§_-oL§;
      }
      
      public function get §_-VE§() : Boolean
      {
         return this.§_-Xl§;
      }
   }
}
