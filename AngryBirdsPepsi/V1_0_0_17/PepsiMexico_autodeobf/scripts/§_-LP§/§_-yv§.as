package §_-LP§
{
   import §_-4g§.§_-Jq§;
   import §_-HT§.§_-8c§;
   import §_-gY§.§_-K6§;
   import §_-gY§.§_-Vu§;
   import §_-ia§.§_-dF§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   class §_-yv§
   {
      
      private static var §_-np§:§_-dF§ = new §_-dF§(0);
       
      
      private var §_-bk§:§_-dF§;
      
      private var §_-O6§:Vector.<uint>;
      
      private var §_-cX§:TextureBase;
      
      private var §_-VU§:VertexBuffer3D;
      
      private var §_-z2§:VertexBuffer3D;
      
      private var §_-aB§:IndexBuffer3D;
      
      private var §_-1T§:int = -1;
      
      private var §do §:String;
      
      private var §_-PU§:Boolean;
      
      private var §_-ne§:Boolean;
      
      private var §_-Cr§:Boolean;
      
      private var §_-gj§:Boolean;
      
      private var §_-gc§:int;
      
      private var §_-8X§:int;
      
      private var §_-dI§:int;
      
      private var §_-tE§:int = -1;
      
      private var §_-oS§:int = -1;
      
      private var §_-fk§:int;
      
      function §_-yv§(param1:TextureBase, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean)
      {
         super();
         this.§_-bk§ = new §_-dF§(0,param5);
         this.§_-O6§ = new Vector.<uint>(0);
         this.§_-oA§(param1,param2,param3,param4,param5,param6);
      }
      
      public static function §_-Gr§(param1:DisplayObjectContainer, param2:Vector.<§_-yv§>) : Vector.<§_-yv§>
      {
         var _loc4_:§_-yv§ = null;
         if(!param2)
         {
            param2 = new Vector.<§_-yv§>(0);
         }
         param2.fixed = false;
         §_-a8§(param1,param2,-1,§_-np§,new Matrix3D(),1);
         var _loc3_:int = param2.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = param2[_loc3_]).§_-oz§())
            {
               param2.splice(_loc3_,1);
               _loc4_.dispose();
            }
            else
            {
               _loc4_.§_-n5§();
            }
            _loc3_--;
         }
         param2.fixed = true;
         return param2;
      }
      
      private static function §_-a8§(param1:DisplayObject, param2:Vector.<§_-yv§>, param3:int, param4:§_-dF§, param5:Matrix3D, param6:Number) : int
      {
         var _loc7_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§_-rC§ = null;
         var _loc13_:§_-19§ = null;
         var _loc14_:TextureBase = null;
         var _loc15_:String = null;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = false;
         var _loc20_:§_-yv§ = null;
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
               _loc11_.§_-vF§(_loc10_);
               param3 = §_-a8§(_loc11_,param2,param3,param4,_loc10_,_loc11_.alpha);
               _loc7_++;
            }
         }
         else
         {
            if(!(param1 is §_-rC§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc12_ = param1 as §_-rC§;
            _loc13_ = param1 as §_-19§;
            param4.reset();
            param4.§_-Zi§(_loc12_.vertexData);
            param4.§_-vF§(param5);
            if(param6 != 1)
            {
               _loc7_ = 0;
               while(_loc7_ < 4)
               {
                  param4.§_-V§(_loc7_,param6);
                  _loc7_++;
               }
            }
            _loc14_ = null;
            _loc15_ = §_-Jq§.NONE;
            _loc16_ = false;
            _loc17_ = false;
            _loc18_ = true;
            _loc19_ = false;
            if(_loc13_)
            {
               _loc14_ = _loc13_.texture.base;
               _loc15_ = _loc13_.smoothing;
               _loc19_ = _loc13_.§_-Rg§;
            }
            _loc21_ = param3 < 0;
            _loc22_ = true;
            if(!_loc21_)
            {
               _loc22_ = (_loc20_ = param2[param3]).texture != _loc14_ || _loc20_.smoothing != _loc15_ || _loc20_.§_-Rg§ != _loc19_;
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
                  (_loc20_ = param2[param3]).§_-oA§(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
               }
               else
               {
                  _loc20_ = new §_-yv§(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
                  param2.push(_loc20_);
               }
            }
            _loc20_.§_-2k§(param4);
         }
         return param3;
      }
      
      public function §_-oA§(param1:TextureBase, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean) : void
      {
         this.§_-cX§ = param1;
         this.§do § = param2;
         this.§_-PU§ = param3;
         this.§_-ne§ = param4;
         this.§_-Cr§ = param5;
         this.§_-gj§ = param6;
      }
      
      public function dispose() : void
      {
         if(this.§_-VU§)
         {
            this.§_-VU§.dispose();
         }
         if(this.§_-z2§)
         {
            this.§_-z2§.dispose();
         }
         if(this.§_-aB§)
         {
            this.§_-aB§.dispose();
         }
      }
      
      public function reset() : void
      {
         this.§_-gc§ = 0;
         this.§_-8X§ = 0;
         this.§_-dI§ = 0;
         this.§_-bk§.reset();
         this.§_-O6§.fixed = false;
      }
      
      public function §_-oz§() : Boolean
      {
         return this.§_-dI§ == 0;
      }
      
      private function §_-2k§(param1:§_-dF§) : void
      {
         var _loc2_:int = 0;
         ++this.§_-dI§;
         if(this.§_-dI§ > this.§_-fk§)
         {
            _loc2_ = this.§_-fk§ * 4;
            this.§_-O6§.push(_loc2_,_loc2_ + 1,_loc2_ + 2,_loc2_ + 1,_loc2_ + 3,_loc2_ + 2);
            ++this.§_-fk§;
         }
         this.§_-bk§.§_-Zi§(param1);
         this.§_-gc§ += 6;
         this.§_-8X§ += 4;
      }
      
      public function §_-n5§() : void
      {
         this.§_-O6§.fixed = true;
         this.§_-pa§();
      }
      
      private function §_-RX§() : void
      {
         var _loc1_:int = §_-Vu§.§_-Wf§;
         if(this.§_-1T§ != _loc1_)
         {
            this.§_-oS§ = -1;
            this.§_-tE§ = -1;
            this.§_-pa§();
            this.§_-1T§ = _loc1_;
         }
      }
      
      private function §_-pa§() : void
      {
         var _loc1_:Context3D = §_-Vu§.§_-ez§;
         if(_loc1_ == null)
         {
            throw new §_-8c§();
         }
         if(this.§_-oS§ < this.§_-8X§)
         {
            if(this.§_-VU§)
            {
               this.§_-VU§.dispose();
            }
            if(this.§_-z2§)
            {
               this.§_-z2§.dispose();
            }
            this.§_-VU§ = _loc1_.createVertexBuffer(this.§_-8X§,§_-dF§.§_-YF§);
            this.§_-z2§ = _loc1_.createVertexBuffer(this.§_-8X§,§_-dF§.§_-T6§);
            this.§_-oS§ = this.§_-8X§;
         }
         if(this.§_-tE§ < this.§_-gc§)
         {
            if(this.§_-aB§)
            {
               this.§_-aB§.dispose();
            }
            this.§_-aB§ = _loc1_.createIndexBuffer(this.§_-gc§);
            this.§_-tE§ = this.§_-gc§;
            this.§_-aB§.uploadFromVector(this.§_-O6§,0,this.§_-gc§);
         }
         this.§_-VU§.uploadFromVector(this.§_-bk§.data,0,this.§_-8X§);
         this.§_-z2§.uploadFromVector(this.§_-bk§.§_-rc§,0,this.§_-8X§);
         var _loc2_:int = §_-Vu§.§_-Wf§;
         this.§_-1T§ = _loc2_;
      }
      
      public function render(param1:§_-K6§, param2:Number) : void
      {
         var _loc3_:Context3D = §_-Vu§.§_-ez§;
         if(_loc3_ == null)
         {
            throw new §_-8c§();
         }
         this.§_-RX§();
         var _loc4_:Boolean = this.§_-bk§.premultipliedAlpha;
         var _loc5_:String = !!this.§_-cX§ ? §_-19§.§_-R4§(this.§_-ne§,this.§_-PU§,this.§do §,this.§_-gj§) : §_-rC§.§_-9W§;
         var _loc6_:Vector.<Number> = !!_loc4_ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         param1.§_-Nw§(_loc4_);
         param1.setProgram(§_-Vu§.§_-dq§.§_-qm§(_loc5_));
         _loc3_.setVertexBufferAt(0,this.§_-z2§,§_-dF§.§_-TJ§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§_-gj§)
         {
            _loc3_.setVertexBufferAt(2,this.§_-VU§,§_-dF§.§_-RM§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-wW§,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc6_,1);
         if(this.§_-cX§)
         {
            param1.setTextureAt(§_-K6§.§_-JS§,this.§_-cX§);
            _loc3_.setVertexBufferAt(1,this.§_-VU§,§_-dF§.§_-j4§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(§_-K6§.§_-JS§,null);
            _loc3_.setVertexBufferAt(1,this.§_-VU§,§_-dF§.§_-RM§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.drawTriangles(this.§_-aB§,0,this.§_-gc§ / 3);
         _loc3_.setVertexBufferAt(0,null);
         _loc3_.setVertexBufferAt(1,null);
         if(this.§_-gj§)
         {
            _loc3_.setVertexBufferAt(2,null);
         }
      }
      
      public function get texture() : TextureBase
      {
         return this.§_-cX§;
      }
      
      public function get smoothing() : String
      {
         return this.§do §;
      }
      
      public function get repeat() : Boolean
      {
         return this.§_-PU§;
      }
      
      public function get mipMapping() : Boolean
      {
         return this.§_-ne§;
      }
      
      public function get §_-Rg§() : Boolean
      {
         return this.§_-gj§;
      }
   }
}
