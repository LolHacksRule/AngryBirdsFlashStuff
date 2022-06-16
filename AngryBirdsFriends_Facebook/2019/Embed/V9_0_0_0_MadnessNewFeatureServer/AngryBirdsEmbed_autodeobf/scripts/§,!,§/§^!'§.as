package §,!,§
{
   import §21§.§&!?§;
   import §21§.Texture;
   import §57§.§>#§;
   import §5^§.§6B§;
   import §90§.§0!'§;
   import §90§.§8S§;
   import §90§.DisplayObject;
   import §90§.DisplayObjectContainer;
   import §>`§.AGALMiniAssembler;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §^!'§
   {
      
      private static var § !;§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var § H§:int;
      
      private var §7!-§:Texture;
      
      private var §'v§:String;
      
      private var §;!3§:§6B§;
      
      private var §-&§:VertexBuffer3D;
      
      private var § R§:VertexBuffer3D;
      
      private var §'k§:VertexBuffer3D;
      
      private var §'>§:Vector.<uint>;
      
      private var §-!O§:IndexBuffer3D;
      
      private var §<%§:Boolean = false;
      
      private var §2!,§:Boolean = false;
      
      public function §^!'§()
      {
         super();
         §+!G§();
         this.§;!3§ = new §6B§(0,true);
         this.§'>§ = new Vector.<uint>(0);
         this.§ H§ = 0;
         this.§!#§();
      }
      
      public static function §`T§(param1:DisplayObjectContainer, param2:Vector.<§^!'§>) : void
      {
         §4r§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §4r§(param1:DisplayObject, param2:Vector.<§^!'§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§0!'§ = null;
         var _loc13_:§8S§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§^!'§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §^!'§());
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
                  _loc11_.§0!+§(_loc10_);
                  param3 = §4r§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is §0!'§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §0!'§) as §8S§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§9!8§(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §^!'§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§9!9§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §+!G§() : void
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
         var _loc1_:§2t§ = §2t§.§,!E§;
         if(_loc1_.§%!0§(§74§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§[!O§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§[!O§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§#!?§(§74§(_loc6_),_loc2_.§^%§,_loc3_.§^%§);
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
               _loc2_.§[!O§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§&!?§.NONE,§&!?§.§&!C§,§&!?§.§8!F§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §&!?§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §&!?§.§&!C§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§[!O§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§#!?§(§5j§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§^%§,_loc3_.§^%§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §74§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §5j§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §&!?§.§&!C§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get override() : int
      {
         return this.§ H§;
      }
      
      public function dispose() : void
      {
         if(this.§-&§)
         {
            this.§-&§.dispose();
         }
         if(this.§ R§)
         {
            this.§ R§.dispose();
         }
         if(this.§'k§)
         {
            this.§'k§.dispose();
         }
         if(this.§-!O§)
         {
            this.§-!O§.dispose();
         }
      }
      
      private function §!#§() : void
      {
         var _loc1_:int = this.§;!3§.§!k§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§;!3§.§!k§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§'>§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§'>§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§'>§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§'>§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§'>§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§'>§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§2!,§ = true;
      }
      
      private function §,i§(param1:Context3D) : Boolean
      {
         if(!this.§2!,§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §>#§();
         }
         if(this.§-&§)
         {
            this.§-&§.dispose();
         }
         if(this.§ R§)
         {
            this.§ R§.dispose();
         }
         if(this.§'k§)
         {
            this.§'k§.dispose();
         }
         if(this.§-!O§)
         {
            this.§-!O§.dispose();
         }
         var _loc2_:int = this.§;!3§.§!k§ / 4;
         this.§-&§ = param1.createVertexBuffer(_loc2_ * 4,§6B§.§"%§);
         this.§-&§.uploadFromByteArray(this.§;!3§.§%c§,0,0,_loc2_ * 4);
         this.§ R§ = param1.createVertexBuffer(_loc2_ * 4,§6B§.§0H§);
         this.§ R§.uploadFromVector(this.§;!3§.§6!§,0,_loc2_ * 4);
         this.§'k§ = param1.createVertexBuffer(_loc2_ * 4,§6B§.§'!§);
         this.§'k§.uploadFromVector(this.§;!3§.§0a§,0,_loc2_ * 4);
         this.§-!O§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§-!O§.uploadFromVector(this.§'>§,0,_loc2_ * 6);
         this.§2!,§ = false;
         return true;
      }
      
      private function §`=§(param1:Context3D) : void
      {
         if(!this.§,i§(param1))
         {
            this.§-&§.uploadFromByteArray(this.§;!3§.§%c§,0,0,this.§ H§ * 4);
            if(this.§<%§)
            {
               this.§ R§.uploadFromVector(this.§;!3§.§6!§,0,this.§ H§ * 4);
            }
            this.§'k§.uploadFromVector(this.§;!3§.§0a§,0,this.§ H§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§ H§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§;!3§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§7!-§ ? §5j§(_loc5_,this.§7!-§.mipMapping,this.§7!-§.repeat,this.§'v§,this.§<%§) : §74§(_loc5_);
         §&v§.§"!%§(param1,_loc4_);
         this.§`=§(param1);
         param1.setProgram(§2t§.§,!E§.§1Q§(_loc6_));
         param1.setVertexBufferAt(0,this.§'k§,§6B§.§!!G§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§7!-§ == null || this.§<%§)
         {
            param1.setVertexBufferAt(2,this.§ R§,§6B§.§2&§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            § !;§[0] = § !;§[1] = § !;§[2] = !!_loc4_ ? Number(param3) : Number(1);
            § !;§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§ !;§,1);
         }
         if(this.§7!-§)
         {
            param1.setTextureAt(0,this.§7!-§.getBase(param1));
            param1.setVertexBufferAt(1,this.§-&§,§6B§.§!u§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§-!O§,0,this.§ H§ * 2);
         if(this.§7!-§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§7!-§ == null || this.§<%§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§ H§ = 0;
         this.§<%§ = false;
         this.§7!-§ = null;
         this.§'v§ = null;
      }
      
      public function §9!9§(param1:§0!'§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§ H§ + 1 > this.§;!3§.§!k§ / 4)
         {
            this.§!#§();
         }
         if(this.§ H§ == 0)
         {
            this.§7!-§ = param3;
            this.§'v§ = param4;
            this.§;!3§.§%_§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§<%§ = true;
            }
         }
         var _loc6_:int = this.§ H§ * 4;
         param1.copyVertexDataTo(this.§;!3§,_loc6_,param2,param5);
         ++this.§ H§;
      }
      
      public function §9!8§(param1:§0!'§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§7!-§ != null && param2 != null)
         {
            return this.§7!-§.root != param2.root || this.§7!-§.repeat != param2.repeat || this.§'v§ != param3 || this.§<%§ != param1.useColor || this.§ H§ == 8192;
         }
         if(this.§7!-§ == null && param2 == null)
         {
            return false;
         }
         return this.§ H§ != 0 || this.§<%§ != (param1.useColor || param4 != 1);
      }
   }
}
