package §_-vO§
{
   import §_-6A§.§_-po§;
   import §_-Q2§.§_-ZO§;
   import §_-bI§.§_-48§;
   import §_-d5§.§_-6Y§;
   import §_-d5§.§_-F§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   class §_-PR§
   {
      
      private static var §_-b4§:§_-po§ = new §_-po§(0);
       
      
      private var §_-k0§:§_-po§;
      
      private var §_-ju§:Vector.<uint>;
      
      private var §_-QH§:TextureBase;
      
      private var §_-K7§:VertexBuffer3D;
      
      private var §_-bT§:VertexBuffer3D;
      
      private var §_-Jq§:IndexBuffer3D;
      
      private var §_-D9§:int = -1;
      
      private var §_-Yk§:String;
      
      private var §_-uk§:Boolean;
      
      private var §_-QJ§:Boolean;
      
      private var §_-9I§:Boolean;
      
      private var §_-L§:Boolean;
      
      private var §_-iY§:int;
      
      private var §_-IH§:int;
      
      private var §_-8Q§:int;
      
      private var §_-vc§:int = -1;
      
      private var §_-TL§:int = -1;
      
      private var §_-ox§:int;
      
      function §_-PR§(param1:TextureBase, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean)
      {
         super();
         this.§_-k0§ = new §_-po§(0,param5);
         this.§_-ju§ = new Vector.<uint>(0);
         this.§_-da§(param1,param2,param3,param4,param5,param6);
      }
      
      public static function §_-vf§(param1:DisplayObjectContainer, param2:Vector.<§_-PR§>) : Vector.<§_-PR§>
      {
         var _loc4_:§_-PR§ = null;
         if(!param2)
         {
            param2 = new Vector.<§_-PR§>(0);
         }
         param2.fixed = false;
         §_-je§(param1,param2,-1,§_-b4§,new Matrix3D(),1);
         var _loc3_:int = param2.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = param2[_loc3_]).§_-kT§())
            {
               param2.splice(_loc3_,1);
               _loc4_.dispose();
            }
            else
            {
               _loc4_.§_-LJ§();
            }
            _loc3_--;
         }
         param2.fixed = true;
         return param2;
      }
      
      private static function §_-je§(param1:DisplayObject, param2:Vector.<§_-PR§>, param3:int, param4:§_-po§, param5:Matrix3D, param6:Number) : int
      {
         var _loc7_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§_-O9§ = null;
         var _loc13_:§_-OW§ = null;
         var _loc14_:TextureBase = null;
         var _loc15_:String = null;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = false;
         var _loc20_:§_-PR§ = null;
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
               _loc11_.§_-tq§(_loc10_);
               param3 = §_-je§(_loc11_,param2,param3,param4,_loc10_,_loc11_.alpha);
               _loc7_++;
            }
         }
         else
         {
            if(!(param1 is §_-O9§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc12_ = param1 as §_-O9§;
            _loc13_ = param1 as §_-OW§;
            param4.reset();
            param4.§_-vV§(_loc12_.vertexData);
            param4.§_-tq§(param5);
            if(param6 != 1)
            {
               _loc7_ = 0;
               while(_loc7_ < 4)
               {
                  param4.§_-ix§(_loc7_,param6);
                  _loc7_++;
               }
            }
            _loc14_ = null;
            _loc15_ = §_-ZO§.NONE;
            _loc16_ = false;
            _loc17_ = false;
            _loc18_ = true;
            _loc19_ = false;
            if(_loc13_)
            {
               _loc14_ = _loc13_.texture.base;
               _loc15_ = _loc13_.smoothing;
               _loc19_ = _loc13_.§_-Z1§;
            }
            _loc21_ = param3 < 0;
            _loc22_ = true;
            if(!_loc21_)
            {
               _loc22_ = (_loc20_ = param2[param3]).texture != _loc14_ || _loc20_.smoothing != _loc15_ || _loc20_.§_-Z1§ != _loc19_;
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
                  (_loc20_ = param2[param3]).§_-da§(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
               }
               else
               {
                  _loc20_ = new §_-PR§(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
                  param2.push(_loc20_);
               }
            }
            _loc20_.§_-Iy§(param4);
         }
         return param3;
      }
      
      public function §_-da§(param1:TextureBase, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean) : void
      {
         this.§_-QH§ = param1;
         this.§_-Yk§ = param2;
         this.§_-uk§ = param3;
         this.§_-QJ§ = param4;
         this.§_-9I§ = param5;
         this.§_-L§ = param6;
      }
      
      public function dispose() : void
      {
         if(this.§_-K7§)
         {
            this.§_-K7§.dispose();
         }
         if(this.§_-bT§)
         {
            this.§_-bT§.dispose();
         }
         if(this.§_-Jq§)
         {
            this.§_-Jq§.dispose();
         }
      }
      
      public function reset() : void
      {
         this.§_-iY§ = 0;
         this.§_-IH§ = 0;
         this.§_-8Q§ = 0;
         this.§_-k0§.reset();
         this.§_-ju§.fixed = false;
      }
      
      public function §_-kT§() : Boolean
      {
         return this.§_-8Q§ == 0;
      }
      
      private function §_-Iy§(param1:§_-po§) : void
      {
         var _loc2_:int = 0;
         ++this.§_-8Q§;
         if(this.§_-8Q§ > this.§_-ox§)
         {
            _loc2_ = this.§_-ox§ * 4;
            this.§_-ju§.push(_loc2_,_loc2_ + 1,_loc2_ + 2,_loc2_ + 1,_loc2_ + 3,_loc2_ + 2);
            ++this.§_-ox§;
         }
         this.§_-k0§.§_-vV§(param1);
         this.§_-iY§ += 6;
         this.§_-IH§ += 4;
      }
      
      public function §_-LJ§() : void
      {
         this.§_-ju§.fixed = true;
         this.§_-G6§();
      }
      
      private function §_-DY§() : void
      {
         var _loc1_:int = §_-6Y§.§_-X7§;
         if(this.§_-D9§ != _loc1_)
         {
            this.§_-TL§ = -1;
            this.§_-vc§ = -1;
            this.§_-G6§();
            this.§_-D9§ = _loc1_;
         }
      }
      
      private function §_-G6§() : void
      {
         var _loc1_:Context3D = §_-6Y§.§_-0D§;
         if(_loc1_ == null)
         {
            throw new §_-48§();
         }
         if(this.§_-TL§ < this.§_-IH§)
         {
            if(this.§_-K7§)
            {
               this.§_-K7§.dispose();
            }
            if(this.§_-bT§)
            {
               this.§_-bT§.dispose();
            }
            this.§_-K7§ = _loc1_.createVertexBuffer(this.§_-IH§,§_-po§.§_-9L§);
            this.§_-bT§ = _loc1_.createVertexBuffer(this.§_-IH§,§_-po§.§_-Gj§);
            this.§_-TL§ = this.§_-IH§;
         }
         if(this.§_-vc§ < this.§_-iY§)
         {
            if(this.§_-Jq§)
            {
               this.§_-Jq§.dispose();
            }
            this.§_-Jq§ = _loc1_.createIndexBuffer(this.§_-iY§);
            this.§_-vc§ = this.§_-iY§;
            this.§_-Jq§.uploadFromVector(this.§_-ju§,0,this.§_-iY§);
         }
         this.§_-K7§.uploadFromVector(this.§_-k0§.data,0,this.§_-IH§);
         this.§_-bT§.uploadFromVector(this.§_-k0§.§_-Di§,0,this.§_-IH§);
         var _loc2_:int = §_-6Y§.§_-X7§;
         this.§_-D9§ = _loc2_;
      }
      
      public function render(param1:§_-F§, param2:Number) : void
      {
         var _loc3_:Context3D = §_-6Y§.§_-0D§;
         if(_loc3_ == null)
         {
            throw new §_-48§();
         }
         this.§_-DY§();
         var _loc4_:Boolean = this.§_-k0§.premultipliedAlpha;
         var _loc5_:String = !!this.§_-QH§ ? §_-OW§.§_-U9§(this.§_-QJ§,this.§_-uk§,this.§_-Yk§,this.§_-L§) : §_-O9§.§_-AS§;
         var _loc6_:Vector.<Number> = !!_loc4_ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         param1.§_-mZ§(_loc4_);
         param1.setProgram(§_-6Y§.§true§.§_-O2§(_loc5_));
         _loc3_.setVertexBufferAt(0,this.§_-bT§,§_-po§.§_-hR§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§_-L§)
         {
            _loc3_.setVertexBufferAt(2,this.§_-K7§,§_-po§.§_-XJ§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-5y§,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc6_,1);
         if(this.§_-QH§)
         {
            param1.setTextureAt(§_-F§.§_-fQ§,this.§_-QH§);
            _loc3_.setVertexBufferAt(1,this.§_-K7§,§_-po§.§_-L8§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(§_-F§.§_-fQ§,null);
            _loc3_.setVertexBufferAt(1,this.§_-K7§,§_-po§.§_-XJ§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.drawTriangles(this.§_-Jq§,0,this.§_-iY§ / 3);
         _loc3_.setVertexBufferAt(0,null);
         _loc3_.setVertexBufferAt(1,null);
         if(this.§_-L§)
         {
            _loc3_.setVertexBufferAt(2,null);
         }
      }
      
      public function get texture() : TextureBase
      {
         return this.§_-QH§;
      }
      
      public function get smoothing() : String
      {
         return this.§_-Yk§;
      }
      
      public function get repeat() : Boolean
      {
         return this.§_-uk§;
      }
      
      public function get mipMapping() : Boolean
      {
         return this.§_-QJ§;
      }
      
      public function get §_-Z1§() : Boolean
      {
         return this.§_-L§;
      }
   }
}
