package §_-0Ea§
{
   import §_-JM§.§_-05z§;
   import §_-M2§.AGALMiniAssembler;
   import §_-UD§.§_-9f§;
   import §_-uY§.DisplayObject;
   import §_-uY§.DisplayObjectContainer;
   import §_-uY§.§_-09b§;
   import §_-uY§.§_-2p§;
   import §_-z4§.Texture;
   import §_-z4§.§_-IJ§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §_-XW§
   {
      
      private static var §_-DI§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §_-Mq§:int;
      
      private var §_-02T§:Texture;
      
      private var §_-Ef§:String;
      
      private var §_-BF§:§_-9f§;
      
      private var §_-Ll§:VertexBuffer3D;
      
      private var §_-Sv§:VertexBuffer3D;
      
      private var §_-8x§:VertexBuffer3D;
      
      private var §try §:Vector.<uint>;
      
      private var §_-uo§:IndexBuffer3D;
      
      private var §_-064§:Boolean = false;
      
      private var §_-0CQ§:Boolean = false;
      
      public function §_-XW§()
      {
         super();
         §_-VA§();
         this.§_-BF§ = new §_-9f§(0,true);
         this.§try § = new Vector.<uint>(0);
         this.§_-Mq§ = 0;
         this.§_-Nn§();
      }
      
      public static function §_-go§(param1:DisplayObjectContainer, param2:Vector.<§_-XW§>) : void
      {
         §_-af§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §_-af§(param1:DisplayObject, param2:Vector.<§_-XW§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§_-2p§ = null;
         var _loc13_:§_-09b§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§_-XW§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §_-XW§());
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
            param5 *= param1.alpha;
            _loc6_ = 0;
            while(_loc6_ < _loc9_)
            {
               _loc11_ = _loc8_.getChildAt(_loc6_);
               _loc10_.copyFrom(param4);
               _loc11_.§_-cb§(_loc10_);
               param3 = §_-af§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §_-2p§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §_-2p§) as §_-09b§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§_-P0§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §_-XW§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§_-ED§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §_-VA§() : void
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
         var _loc1_:§_-AY§ = §_-AY§.§_-un§;
         if(_loc1_.§_-TJ§(§_-Y§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§_-AM§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§_-AM§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§_-XF§(§_-Y§(_loc6_),_loc2_.§case§,_loc3_.§case§);
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
               _loc2_.§_-AM§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§_-IJ§.NONE,§_-IJ§.§_-Th§,§_-IJ§.§_-nO§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §_-IJ§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §_-IJ§.§_-Th§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§_-AM§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§_-XF§(§_-aN§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§case§,_loc3_.§case§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §_-Y§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §_-aN§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §_-IJ§.§_-Th§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get dynamic() : int
      {
         return this.§_-Mq§;
      }
      
      public function dispose() : void
      {
         if(this.§_-Ll§)
         {
            this.§_-Ll§.dispose();
         }
         if(this.§_-Sv§)
         {
            this.§_-Sv§.dispose();
         }
         if(this.§_-8x§)
         {
            this.§_-8x§.dispose();
         }
         if(this.§_-uo§)
         {
            this.§_-uo§.dispose();
         }
      }
      
      private function §_-Nn§() : void
      {
         var _loc1_:int = this.§_-BF§.§_-Tz§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§_-BF§.§_-Tz§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§try §[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§try §[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§try §[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§try §[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§try §[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§try §[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§_-0CQ§ = true;
      }
      
      private function §_-ZT§(param1:Context3D) : Boolean
      {
         if(!this.§_-0CQ§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §_-05z§();
         }
         if(this.§_-Ll§)
         {
            this.§_-Ll§.dispose();
         }
         if(this.§_-Sv§)
         {
            this.§_-Sv§.dispose();
         }
         if(this.§_-8x§)
         {
            this.§_-8x§.dispose();
         }
         if(this.§_-uo§)
         {
            this.§_-uo§.dispose();
         }
         var _loc2_:int = this.§_-BF§.§_-Tz§ / 4;
         this.§_-Ll§ = param1.createVertexBuffer(_loc2_ * 4,§_-9f§.§_-u7§);
         this.§_-Ll§.uploadFromByteArray(this.§_-BF§.§_-ho§,0,0,_loc2_ * 4);
         this.§_-Sv§ = param1.createVertexBuffer(_loc2_ * 4,§_-9f§.§_-vj§);
         this.§_-Sv§.uploadFromVector(this.§_-BF§.§_-ge§,0,_loc2_ * 4);
         this.§_-8x§ = param1.createVertexBuffer(_loc2_ * 4,§_-9f§.§_-3x§);
         this.§_-8x§.uploadFromVector(this.§_-BF§.§_-y2§,0,_loc2_ * 4);
         this.§_-uo§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§_-uo§.uploadFromVector(this.§try §,0,_loc2_ * 6);
         this.§_-0CQ§ = false;
         return true;
      }
      
      private function §_-bv§(param1:Context3D) : void
      {
         if(!this.§_-ZT§(param1))
         {
            this.§_-Ll§.uploadFromByteArray(this.§_-BF§.§_-ho§,0,0,this.§_-Mq§ * 4);
            if(this.§_-064§)
            {
               this.§_-Sv§.uploadFromVector(this.§_-BF§.§_-ge§,0,this.§_-Mq§ * 4);
            }
            this.§_-8x§.uploadFromVector(this.§_-BF§.§_-y2§,0,this.§_-Mq§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§_-Mq§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§_-BF§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§_-02T§ ? §_-aN§(_loc5_,this.§_-02T§.mipMapping,this.§_-02T§.repeat,this.§_-Ef§,this.§_-064§) : §_-Y§(_loc5_);
         §_-zM§.§_-jw§(param1,_loc4_);
         this.§_-bv§(param1);
         param1.setProgram(§_-AY§.§_-un§.§_-NB§(_loc6_));
         param1.setVertexBufferAt(0,this.§_-8x§,§_-9f§.§_-gg§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§_-02T§ == null || this.§_-064§)
         {
            param1.setVertexBufferAt(2,this.§_-Sv§,§_-9f§.§_-0CW§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §_-DI§[0] = §_-DI§[1] = §_-DI§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §_-DI§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§_-DI§,1);
         }
         if(this.§_-02T§)
         {
            param1.setTextureAt(0,this.§_-02T§.getBase(param1));
            param1.setVertexBufferAt(1,this.§_-Ll§,§_-9f§.§_-AV§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§_-uo§,0,this.§_-Mq§ * 2);
         if(this.§_-02T§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§_-02T§ == null || this.§_-064§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§_-Mq§ = 0;
         this.§_-064§ = false;
         this.§_-02T§ = null;
         this.§_-Ef§ = null;
      }
      
      public function §_-ED§(param1:§_-2p§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§_-Mq§ + 1 > this.§_-BF§.§_-Tz§ / 4)
         {
            this.§_-Nn§();
         }
         if(this.§_-Mq§ == 0)
         {
            this.§_-02T§ = param3;
            this.§_-Ef§ = param4;
            this.§_-BF§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§_-Mq§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§_-BF§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§_-064§ = true;
         }
         ++this.§_-Mq§;
      }
      
      public function §_-P0§(param1:§_-2p§, param2:Texture, param3:String) : Boolean
      {
         if(this.§_-02T§ != null && param2 != null)
         {
            return this.§_-02T§.root != param2.root || this.§_-02T§.repeat != param2.repeat || this.§_-Ef§ != param3 || this.§_-064§ != param1.useColor || this.§_-Mq§ == 8192;
         }
         if(this.§_-02T§ == null && param2 == null)
         {
            return false;
         }
         return this.§_-Mq§ != 0 || this.§_-064§ != param1.useColor;
      }
   }
}
