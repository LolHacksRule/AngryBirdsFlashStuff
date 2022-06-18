package §7!§
{
   import §#!@§.§0V§;
   import §#!@§.§?h§;
   import §#!@§.DisplayObject;
   import §#!@§.DisplayObjectContainer;
   import §1#§.§7!@§;
   import §1#§.Texture;
   import §7^§.§7k§;
   import §@!E§.§ !#§;
   import §@z§.AGALMiniAssembler;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §]j§
   {
      
      private static var §3!2§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §2!8§:int;
      
      private var §+=§:Texture;
      
      private var §-+§:String;
      
      private var §@!,§:§ !#§;
      
      private var §?s§:VertexBuffer3D;
      
      private var §=!2§:VertexBuffer3D;
      
      private var §+l§:VertexBuffer3D;
      
      private var §+w§:Vector.<uint>;
      
      private var §"W§:IndexBuffer3D;
      
      private var §#!1§:Boolean = false;
      
      private var §8!+§:Boolean = false;
      
      public function §]j§()
      {
         super();
         §'M§();
         this.§@!,§ = new § !#§(0,true);
         this.§+w§ = new Vector.<uint>(0);
         this.§2!8§ = 0;
         this.§#5§();
      }
      
      public static function §^S§(param1:DisplayObjectContainer, param2:Vector.<§]j§>) : void
      {
         §&§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §&§(param1:DisplayObject, param2:Vector.<§]j§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§?h§ = null;
         var _loc13_:§0V§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§]j§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §]j§());
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
            if((param5 *= param1.alpha) > 0)
            {
               _loc6_ = 0;
               while(_loc6_ < _loc9_)
               {
                  _loc11_ = _loc8_.getChildAt(_loc6_);
                  _loc10_.copyFrom(param4);
                  _loc11_.§`!<§(_loc10_);
                  param3 = §&§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is §?h§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §?h§) as §0V§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§>G§(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §]j§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§5!F§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §'M§() : void
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
         var _loc1_:§,L§ = §,L§.§3v§;
         if(_loc1_.§^!N§(§"!<§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§,,§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§,,§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§ a§(§"!<§(_loc6_),_loc2_.§ 4§,_loc3_.§ 4§);
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
               _loc2_.§,,§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§7!@§.NONE,§7!@§.§=!C§,§7!@§.§#n§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §7!@§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §7!@§.§=!C§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§,,§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§ a§(§^P§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§ 4§,_loc3_.§ 4§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §"!<§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §^P§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §7!@§.§=!C§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §5!E§() : int
      {
         return this.§2!8§;
      }
      
      public function dispose() : void
      {
         if(this.§?s§)
         {
            this.§?s§.dispose();
         }
         if(this.§=!2§)
         {
            this.§=!2§.dispose();
         }
         if(this.§+l§)
         {
            this.§+l§.dispose();
         }
         if(this.§"W§)
         {
            this.§"W§.dispose();
         }
      }
      
      private function §#5§() : void
      {
         var _loc1_:int = this.§@!,§.§1r§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§@!,§.§1r§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§+w§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§+w§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§+w§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§+w§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§+w§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§+w§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§8!+§ = true;
      }
      
      private function §"!C§(param1:Context3D) : Boolean
      {
         if(!this.§8!+§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §7k§();
         }
         if(this.§?s§)
         {
            this.§?s§.dispose();
         }
         if(this.§=!2§)
         {
            this.§=!2§.dispose();
         }
         if(this.§+l§)
         {
            this.§+l§.dispose();
         }
         if(this.§"W§)
         {
            this.§"W§.dispose();
         }
         var _loc2_:int = this.§@!,§.§1r§ / 4;
         this.§?s§ = param1.createVertexBuffer(_loc2_ * 4,§ !#§.§ !D§);
         this.§?s§.uploadFromByteArray(this.§@!,§.§;1§,0,0,_loc2_ * 4);
         this.§=!2§ = param1.createVertexBuffer(_loc2_ * 4,§ !#§.§ ^§);
         this.§=!2§.uploadFromVector(this.§@!,§.§@g§,0,_loc2_ * 4);
         this.§+l§ = param1.createVertexBuffer(_loc2_ * 4,§ !#§.§;'§);
         this.§+l§.uploadFromVector(this.§@!,§.§6!M§,0,_loc2_ * 4);
         this.§"W§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§"W§.uploadFromVector(this.§+w§,0,_loc2_ * 6);
         this.§8!+§ = false;
         return true;
      }
      
      private function §<A§(param1:Context3D) : void
      {
         if(!this.§"!C§(param1))
         {
            this.§?s§.uploadFromByteArray(this.§@!,§.§;1§,0,0,this.§2!8§ * 4);
            if(this.§#!1§)
            {
               this.§=!2§.uploadFromVector(this.§@!,§.§@g§,0,this.§2!8§ * 4);
            }
            this.§+l§.uploadFromVector(this.§@!,§.§6!M§,0,this.§2!8§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§2!8§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§@!,§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§+=§ ? §^P§(_loc5_,this.§+=§.mipMapping,this.§+=§.repeat,this.§-+§,this.§#!1§) : §"!<§(_loc5_);
         § 0§.§5V§(param1,_loc4_);
         this.§<A§(param1);
         param1.setProgram(§,L§.§3v§.§@V§(_loc6_));
         param1.setVertexBufferAt(0,this.§+l§,§ !#§.§92§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§+=§ == null || this.§#!1§)
         {
            param1.setVertexBufferAt(2,this.§=!2§,§ !#§.§3!M§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §3!2§[0] = §3!2§[1] = §3!2§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §3!2§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§3!2§,1);
         }
         if(this.§+=§)
         {
            param1.setTextureAt(0,this.§+=§.getBase(param1));
            param1.setVertexBufferAt(1,this.§?s§,§ !#§.§?P§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§"W§,0,this.§2!8§ * 2);
         if(this.§+=§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§+=§ == null || this.§#!1§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§2!8§ = 0;
         this.§#!1§ = false;
         this.§+=§ = null;
         this.§-+§ = null;
      }
      
      public function §5!F§(param1:§?h§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§2!8§ + 1 > this.§@!,§.§1r§ / 4)
         {
            this.§#5§();
         }
         if(this.§2!8§ == 0)
         {
            this.§+=§ = param3;
            this.§-+§ = param4;
            this.§@!,§.§[-§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§#!1§ = true;
            }
         }
         var _loc6_:int = this.§2!8§ * 4;
         param1.copyVertexDataTo(this.§@!,§,_loc6_,param2,param5);
         ++this.§2!8§;
      }
      
      public function §>G§(param1:§?h§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§+=§ != null && param2 != null)
         {
            return this.§+=§.root != param2.root || this.§+=§.repeat != param2.repeat || this.§-+§ != param3 || this.§#!1§ != param1.useColor || this.§2!8§ == 8192;
         }
         if(this.§+=§ == null && param2 == null)
         {
            return false;
         }
         return this.§2!8§ != 0 || this.§#!1§ != (param1.useColor || param4 != 1);
      }
   }
}
