package §_-KM§
{
   import §_-0Y§.§else §;
   import §_-i9§.Texture;
   import §_-i9§.§_-s6§;
   import §_-kC§.§_-DS§;
   import §_-mS§.§_-yF§;
   import §case §.DisplayObject;
   import §case §.DisplayObjectContainer;
   import §case §.§_-G3§;
   import §case §.§_-Gm§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §_-g8§
   {
      
      private static var §_-ag§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §_-9x§:int;
      
      private var §_-Bc§:Texture;
      
      private var §_-cV§:String;
      
      private var §_-eQ§:§_-DS§;
      
      private var §_-0§:VertexBuffer3D;
      
      private var §_-zs§:VertexBuffer3D;
      
      private var §_-zM§:VertexBuffer3D;
      
      private var §_-gx§:Vector.<uint>;
      
      private var §_-Tu§:IndexBuffer3D;
      
      private var §_-B4§:Boolean = false;
      
      private var §_-Ce§:Boolean = false;
      
      public function §_-g8§()
      {
         super();
         §_-Ht§();
         this.§_-eQ§ = new §_-DS§(0,true);
         this.§_-gx§ = new Vector.<uint>(0);
         this.§_-9x§ = 0;
         this.§_-9r§();
      }
      
      public static function §_-SO§(param1:DisplayObjectContainer, param2:Vector.<§_-g8§>) : void
      {
         §_-z5§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §_-z5§(param1:DisplayObject, param2:Vector.<§_-g8§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§_-Gm§ = null;
         var _loc13_:§_-G3§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§_-g8§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §_-g8§());
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
               §_-H9§.§_-cm§(_loc10_,_loc11_);
               param3 = §_-z5§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §_-Gm§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §_-Gm§) as §_-G3§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§import§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §_-g8§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§_-5e§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §_-Ht§() : void
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
         var _loc1_:§_-0A§ = §_-0A§.§_-bz§;
         if(_loc1_.§_-oX§(§_-lT§(true)))
         {
            return;
         }
         var _loc2_:§else § = new §else §();
         var _loc3_:§else § = new §else §();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§_-fn§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§_-fn§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§_-hg§(§_-lT§(_loc6_),_loc2_.§_-Za§,_loc3_.§_-Za§);
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
               _loc2_.§_-fn§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§_-s6§.NONE,§_-s6§.§_-sH§,§_-s6§.§_-lN§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §_-s6§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §_-s6§.§_-sH§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§_-fn§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§_-hg§(§_-Gl§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§_-Za§,_loc3_.§_-Za§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §_-lT§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §_-Gl§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §_-s6§.§_-sH§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §_-GU§() : int
      {
         return this.§_-9x§;
      }
      
      public function dispose() : void
      {
         if(this.§_-0§)
         {
            this.§_-0§.dispose();
         }
         if(this.§_-zs§)
         {
            this.§_-zs§.dispose();
         }
         if(this.§_-zM§)
         {
            this.§_-zM§.dispose();
         }
         if(this.§_-Tu§)
         {
            this.§_-Tu§.dispose();
         }
      }
      
      private function §_-9r§() : void
      {
         var _loc1_:int = this.§_-eQ§.§_-AO§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§_-eQ§.§_-AO§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§_-gx§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§_-gx§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§_-gx§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§_-gx§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§_-gx§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§_-gx§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§_-Ce§ = true;
      }
      
      private function §_-mQ§(param1:Context3D) : Boolean
      {
         if(!this.§_-Ce§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §_-yF§();
         }
         if(this.§_-0§)
         {
            this.§_-0§.dispose();
         }
         if(this.§_-zs§)
         {
            this.§_-zs§.dispose();
         }
         if(this.§_-zM§)
         {
            this.§_-zM§.dispose();
         }
         if(this.§_-Tu§)
         {
            this.§_-Tu§.dispose();
         }
         var _loc2_:int = this.§_-eQ§.§_-AO§ / 4;
         this.§_-0§ = param1.createVertexBuffer(_loc2_ * 4,§_-DS§.§_-3v§);
         this.§_-0§.uploadFromByteArray(this.§_-eQ§.§_-IR§,0,0,_loc2_ * 4);
         this.§_-zs§ = param1.createVertexBuffer(_loc2_ * 4,§_-DS§.§_-GI§);
         this.§_-zs§.uploadFromVector(this.§_-eQ§.§_-TU§,0,_loc2_ * 4);
         this.§_-zM§ = param1.createVertexBuffer(_loc2_ * 4,§_-DS§.§_-ut§);
         this.§_-zM§.uploadFromVector(this.§_-eQ§.§_-EV§,0,_loc2_ * 4);
         this.§_-Tu§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§_-Tu§.uploadFromVector(this.§_-gx§,0,_loc2_ * 6);
         this.§_-Ce§ = false;
         return true;
      }
      
      private function §_-Uf§(param1:Context3D) : void
      {
         if(!this.§_-mQ§(param1))
         {
            this.§_-0§.uploadFromByteArray(this.§_-eQ§.§_-IR§,0,0,this.§_-9x§ * 4);
            if(this.§_-B4§)
            {
               this.§_-zs§.uploadFromVector(this.§_-eQ§.§_-TU§,0,this.§_-9x§ * 4);
            }
            this.§_-zM§.uploadFromVector(this.§_-eQ§.§_-EV§,0,this.§_-9x§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§_-9x§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§_-eQ§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§_-Bc§ ? §_-Gl§(_loc5_,this.§_-Bc§.mipMapping,this.§_-Bc§.repeat,this.§_-cV§,this.§_-B4§) : §_-lT§(_loc5_);
         §_-H9§.§_-tz§(param1,_loc4_);
         this.§_-Uf§(param1);
         param1.setProgram(§_-0A§.§_-bz§.§_-0-w§(_loc6_));
         param1.setVertexBufferAt(0,this.§_-zM§,§_-DS§.§_-2k§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§_-Bc§ == null || this.§_-B4§)
         {
            param1.setVertexBufferAt(2,this.§_-zs§,§_-DS§.§_-T7§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §_-ag§[0] = §_-ag§[1] = §_-ag§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §_-ag§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§_-ag§,1);
         }
         if(this.§_-Bc§)
         {
            param1.setTextureAt(0,this.§_-Bc§.getBase(param1));
            param1.setVertexBufferAt(1,this.§_-0§,§_-DS§.§_-CF§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§_-Tu§,0,this.§_-9x§ * 2);
         if(this.§_-Bc§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§_-Bc§ == null || this.§_-B4§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§_-9x§ = 0;
         this.§_-B4§ = false;
         this.§_-Bc§ = null;
         this.§_-cV§ = null;
      }
      
      public function §_-5e§(param1:§_-Gm§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§_-9x§ + 1 > this.§_-eQ§.§_-AO§ / 4)
         {
            this.§_-9r§();
         }
         if(this.§_-9x§ == 0)
         {
            this.§_-Bc§ = param3;
            this.§_-cV§ = param4;
            this.§_-eQ§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§_-9x§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§_-eQ§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§_-B4§ = true;
         }
         ++this.§_-9x§;
      }
      
      public function §import§(param1:§_-Gm§, param2:Texture, param3:String) : Boolean
      {
         if(this.§_-Bc§ != null && param2 != null)
         {
            return this.§_-Bc§.root != param2.root || this.§_-Bc§.repeat != param2.repeat || this.§_-cV§ != param3 || this.§_-B4§ != param1.useColor || this.§_-9x§ == 8192;
         }
         if(this.§_-Bc§ == null && param2 == null)
         {
            return false;
         }
         return this.§_-9x§ != 0 || this.§_-B4§ != param1.useColor;
      }
   }
}
