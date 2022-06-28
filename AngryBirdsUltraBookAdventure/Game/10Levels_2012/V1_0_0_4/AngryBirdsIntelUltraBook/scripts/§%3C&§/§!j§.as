package §<&§
{
   import § !'§.§4!+§;
   import §'!9§.§%!g§;
   import §'!9§.§?!U§;
   import §'!9§.DisplayObject;
   import §'!9§.DisplayObjectContainer;
   import §^!+§.Texture;
   import §^!+§.§]-§;
   import §^!b§.AGALMiniAssembler;
   import §`s§.§0p§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §!j§
   {
      
      private static var §,!T§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §<S§:int;
      
      private var §#!E§:Texture;
      
      private var §^?§:String;
      
      private var § Q§:§0p§;
      
      private var §`9§:VertexBuffer3D;
      
      private var §'!T§:VertexBuffer3D;
      
      private var §,!g§:VertexBuffer3D;
      
      private var §^u§:Vector.<uint>;
      
      private var §=!"§:IndexBuffer3D;
      
      private var §5_§:Boolean = false;
      
      private var §%!'§:Boolean = false;
      
      public function §!j§()
      {
         super();
         §2!t§();
         this.§ Q§ = new §0p§(0,true);
         this.§^u§ = new Vector.<uint>(0);
         this.§<S§ = 0;
         this.§1Y§();
      }
      
      public static function §^!1§(param1:DisplayObjectContainer, param2:Vector.<§!j§>) : void
      {
         §1!f§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §1!f§(param1:DisplayObject, param2:Vector.<§!j§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§%!g§ = null;
         var _loc13_:§?!U§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§!j§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §!j§());
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
               _loc11_.§0! §(_loc10_);
               param3 = §1!f§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §%!g§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §%!g§) as §?!U§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§#2§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §!j§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§ §(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §2!t§() : void
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
         var _loc1_:§^b§ = §^b§.§9E§;
         if(_loc1_.§91§(§@!Y§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§6?§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§6?§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§9!<§(§@!Y§(_loc6_),_loc2_.§;E§,_loc3_.§;E§);
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
               _loc2_.§6?§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§]-§.NONE,§]-§.§![§,§]-§.§<! §];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §]-§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §]-§.§![§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§6?§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§9!<§(§1a§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§;E§,_loc3_.§;E§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §@!Y§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §1a§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §]-§.§![§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §4!y§() : int
      {
         return this.§<S§;
      }
      
      public function dispose() : void
      {
         if(this.§`9§)
         {
            this.§`9§.dispose();
         }
         if(this.§'!T§)
         {
            this.§'!T§.dispose();
         }
         if(this.§,!g§)
         {
            this.§,!g§.dispose();
         }
         if(this.§=!"§)
         {
            this.§=!"§.dispose();
         }
      }
      
      private function §1Y§() : void
      {
         var _loc1_:int = this.§ Q§.§<`§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§ Q§.§<`§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§^u§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§^u§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§^u§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§^u§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§^u§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§^u§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§%!'§ = true;
      }
      
      private function §#!8§(param1:Context3D) : Boolean
      {
         if(!this.§%!'§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §4!+§();
         }
         if(this.§`9§)
         {
            this.§`9§.dispose();
         }
         if(this.§'!T§)
         {
            this.§'!T§.dispose();
         }
         if(this.§,!g§)
         {
            this.§,!g§.dispose();
         }
         if(this.§=!"§)
         {
            this.§=!"§.dispose();
         }
         var _loc2_:int = this.§ Q§.§<`§ / 4;
         this.§`9§ = param1.createVertexBuffer(_loc2_ * 4,§0p§.§1!0§);
         this.§`9§.uploadFromByteArray(this.§ Q§.§2!e§,0,0,_loc2_ * 4);
         this.§'!T§ = param1.createVertexBuffer(_loc2_ * 4,§0p§.§0!Q§);
         this.§'!T§.uploadFromVector(this.§ Q§.§-=§,0,_loc2_ * 4);
         this.§,!g§ = param1.createVertexBuffer(_loc2_ * 4,§0p§.§<h§);
         this.§,!g§.uploadFromVector(this.§ Q§.§!!=§,0,_loc2_ * 4);
         this.§=!"§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§=!"§.uploadFromVector(this.§^u§,0,_loc2_ * 6);
         this.§%!'§ = false;
         return true;
      }
      
      private function §`!v§(param1:Context3D) : void
      {
         if(!this.§#!8§(param1))
         {
            this.§`9§.uploadFromByteArray(this.§ Q§.§2!e§,0,0,this.§<S§ * 4);
            if(this.§5_§)
            {
               this.§'!T§.uploadFromVector(this.§ Q§.§-=§,0,this.§<S§ * 4);
            }
            this.§,!g§.uploadFromVector(this.§ Q§.§!!=§,0,this.§<S§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§<S§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§ Q§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§#!E§ ? §1a§(_loc5_,this.§#!E§.mipMapping,this.§#!E§.repeat,this.§^?§,this.§5_§) : §@!Y§(_loc5_);
         §`K§.§&!m§(param1,_loc4_);
         this.§`!v§(param1);
         param1.setProgram(§^b§.§9E§.§!g§(_loc6_));
         param1.setVertexBufferAt(0,this.§,!g§,§0p§.§[!w§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§#!E§ == null || this.§5_§)
         {
            param1.setVertexBufferAt(2,this.§'!T§,§0p§.§"!<§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §,!T§[0] = §,!T§[1] = §,!T§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §,!T§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§,!T§,1);
         }
         if(this.§#!E§)
         {
            param1.setTextureAt(0,this.§#!E§.getBase(param1));
            param1.setVertexBufferAt(1,this.§`9§,§0p§.§;Z§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§=!"§,0,this.§<S§ * 2);
         if(this.§#!E§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§#!E§ == null || this.§5_§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§<S§ = 0;
         this.§5_§ = false;
         this.§#!E§ = null;
         this.§^?§ = null;
      }
      
      public function § §(param1:§%!g§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§<S§ + 1 > this.§ Q§.§<`§ / 4)
         {
            this.§1Y§();
         }
         if(this.§<S§ == 0)
         {
            this.§#!E§ = param3;
            this.§^?§ = param4;
            this.§ Q§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§<S§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§ Q§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§5_§ = true;
         }
         ++this.§<S§;
      }
      
      public function §#2§(param1:§%!g§, param2:Texture, param3:String) : Boolean
      {
         if(this.§#!E§ != null && param2 != null)
         {
            return this.§#!E§.root != param2.root || this.§#!E§.repeat != param2.repeat || this.§^?§ != param3 || this.§5_§ != param1.useColor || this.§<S§ == 8192;
         }
         if(this.§#!E§ == null && param2 == null)
         {
            return false;
         }
         return this.§<S§ != 0 || this.§5_§ != param1.useColor;
      }
   }
}
