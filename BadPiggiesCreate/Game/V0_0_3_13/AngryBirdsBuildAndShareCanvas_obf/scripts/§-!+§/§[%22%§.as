package §-!+§
{
   import §#!C§.§`"=§;
   import §%!C§.§5"4§;
   import §+<§.§^"9§;
   import §@!#§.§3"8§;
   import §@!#§.Texture;
   import §`L§.§-;§;
   import §`L§.§=!x§;
   import §`L§.DisplayObject;
   import §`L§.DisplayObjectContainer;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §["%§
   {
      
      private static var §4h§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §^6§:int;
      
      private var §]![§:Texture;
      
      private var §'!P§:String;
      
      private var §'B§:§^"9§;
      
      private var §@"&§:VertexBuffer3D;
      
      private var §%"=§:VertexBuffer3D;
      
      private var §%!v§:VertexBuffer3D;
      
      private var §>+§:Vector.<uint>;
      
      private var §=h§:IndexBuffer3D;
      
      private var §;!;§:Boolean = false;
      
      private var §8_§:Boolean = false;
      
      public function §["%§()
      {
         super();
         §]J§();
         this.§'B§ = new §^"9§(0,true);
         this.§>+§ = new Vector.<uint>(0);
         this.§^6§ = 0;
         this.§`!`§();
      }
      
      public static function §>!2§(param1:DisplayObjectContainer, param2:Vector.<§["%§>) : void
      {
         §5!1§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §5!1§(param1:DisplayObject, param2:Vector.<§["%§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§=!x§ = null;
         var _loc13_:§-;§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§["%§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §["%§());
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
               _loc11_.§%!X§(_loc10_);
               param3 = §5!1§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §=!x§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §=!x§) as §-;§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§9x§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §["%§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§6"1§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §]J§() : void
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
         var _loc1_:§6"6§ = §6"6§.§^F§;
         if(_loc1_.§5H§(§@3§(true)))
         {
            return;
         }
         var _loc2_:§`"=§ = new §`"=§();
         var _loc3_:§`"=§ = new §`"=§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§"!z§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§"!z§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§+9§(§@3§(_loc6_),_loc2_.§1[§,_loc3_.§1[§);
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
               _loc2_.§"!z§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§3"8§.NONE,§3"8§.§7"%§,§3"8§.§"!I§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §3"8§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §3"8§.§7"%§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§"!z§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§+9§(§,;§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§1[§,_loc3_.§1[§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §@3§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §,;§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §3"8§.§7"%§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §4D§() : int
      {
         return this.§^6§;
      }
      
      public function dispose() : void
      {
         if(this.§@"&§)
         {
            this.§@"&§.dispose();
         }
         if(this.§%"=§)
         {
            this.§%"=§.dispose();
         }
         if(this.§%!v§)
         {
            this.§%!v§.dispose();
         }
         if(this.§=h§)
         {
            this.§=h§.dispose();
         }
      }
      
      private function §`!`§() : void
      {
         var _loc1_:int = this.§'B§.§<"&§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§'B§.§<"&§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§>+§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§>+§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§>+§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§>+§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§>+§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§>+§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§8_§ = true;
      }
      
      private function §8!1§(param1:Context3D) : Boolean
      {
         if(!this.§8_§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §5"4§();
         }
         if(this.§@"&§)
         {
            this.§@"&§.dispose();
         }
         if(this.§%"=§)
         {
            this.§%"=§.dispose();
         }
         if(this.§%!v§)
         {
            this.§%!v§.dispose();
         }
         if(this.§=h§)
         {
            this.§=h§.dispose();
         }
         var _loc2_:int = this.§'B§.§<"&§ / 4;
         this.§@"&§ = param1.createVertexBuffer(_loc2_ * 4,§^"9§.§[!O§);
         this.§@"&§.uploadFromByteArray(this.§'B§.§5"7§,0,0,_loc2_ * 4);
         this.§%"=§ = param1.createVertexBuffer(_loc2_ * 4,§^"9§.§%!^§);
         this.§%"=§.uploadFromVector(this.§'B§.§6!v§,0,_loc2_ * 4);
         this.§%!v§ = param1.createVertexBuffer(_loc2_ * 4,§^"9§.§=!e§);
         this.§%!v§.uploadFromVector(this.§'B§.§7";§,0,_loc2_ * 4);
         this.§=h§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§=h§.uploadFromVector(this.§>+§,0,_loc2_ * 6);
         this.§8_§ = false;
         return true;
      }
      
      private function § =§(param1:Context3D) : void
      {
         if(!this.§8!1§(param1))
         {
            this.§@"&§.uploadFromByteArray(this.§'B§.§5"7§,0,0,this.§^6§ * 4);
            if(this.§;!;§)
            {
               this.§%"=§.uploadFromVector(this.§'B§.§6!v§,0,this.§^6§ * 4);
            }
            this.§%!v§.uploadFromVector(this.§'B§.§7";§,0,this.§^6§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§^6§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§'B§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§]![§ ? §,;§(_loc5_,this.§]![§.mipMapping,this.§]![§.repeat,this.§'!P§,this.§;!;§) : §@3§(_loc5_);
         §,7§.§-"0§(param1,_loc4_);
         this.§ =§(param1);
         param1.setProgram(§6"6§.§^F§.§6x§(_loc6_));
         param1.setVertexBufferAt(0,this.§%!v§,§^"9§.§]>§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§]![§ == null || this.§;!;§)
         {
            param1.setVertexBufferAt(2,this.§%"=§,§^"9§.§-I§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §4h§[0] = §4h§[1] = §4h§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §4h§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§4h§,1);
         }
         if(this.§]![§)
         {
            param1.setTextureAt(0,this.§]![§.getBase(param1));
            param1.setVertexBufferAt(1,this.§@"&§,§^"9§.§6!j§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§=h§,0,this.§^6§ * 2);
         if(this.§]![§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§]![§ == null || this.§;!;§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§^6§ = 0;
         this.§;!;§ = false;
         this.§]![§ = null;
         this.§'!P§ = null;
      }
      
      public function §6"1§(param1:§=!x§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§^6§ + 1 > this.§'B§.§<"&§ / 4)
         {
            this.§`!`§();
         }
         if(this.§^6§ == 0)
         {
            this.§]![§ = param3;
            this.§'!P§ = param4;
            this.§'B§.§64§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§^6§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§'B§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§;!;§ = true;
         }
         ++this.§^6§;
      }
      
      public function §9x§(param1:§=!x§, param2:Texture, param3:String) : Boolean
      {
         if(this.§]![§ != null && param2 != null)
         {
            return this.§]![§.root != param2.root || this.§]![§.repeat != param2.repeat || this.§'!P§ != param3 || this.§;!;§ != param1.useColor || this.§^6§ == 8192;
         }
         if(this.§]![§ == null && param2 == null)
         {
            return false;
         }
         return this.§^6§ != 0 || this.§;!;§ != param1.useColor;
      }
   }
}
