package §5Q§
{
   import §&!Z§.§6!r§;
   import §6!M§.§[!D§;
   import §7!8§.§&!D§;
   import §7!8§.DisplayObject;
   import §7!8§.DisplayObjectContainer;
   import §7!8§.§`y§;
   import §=5§.§""C§;
   import §`!#§.§-!k§;
   import §`!#§.Texture;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §,Q§
   {
      
      private static var §8!v§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §73§:int;
      
      private var §1";§:Texture;
      
      private var §<i§:String;
      
      private var §'!O§:§6!r§;
      
      private var §6"=§:VertexBuffer3D;
      
      private var § !"§:VertexBuffer3D;
      
      private var §7!3§:VertexBuffer3D;
      
      private var §&!s§:Vector.<uint>;
      
      private var §=!f§:IndexBuffer3D;
      
      private var §4!z§:Boolean = false;
      
      private var §[P§:Boolean = false;
      
      public function §,Q§()
      {
         super();
         §#i§();
         this.§'!O§ = new §6!r§(0,true);
         this.§&!s§ = new Vector.<uint>(0);
         this.§73§ = 0;
         this.§"!I§();
      }
      
      public static function §%!_§(param1:DisplayObjectContainer, param2:Vector.<§,Q§>) : void
      {
         §>!f§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §>!f§(param1:DisplayObject, param2:Vector.<§,Q§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§&!D§ = null;
         var _loc13_:§`y§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§,Q§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §,Q§());
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
                  _loc11_.§0!x§(_loc10_);
                  param3 = §>!f§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is §&!D§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §&!D§) as §`y§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§1!`§(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §,Q§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§[!'§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §#i§() : void
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
         var _loc1_:§^!e§ = §^!e§.§`?§;
         if(_loc1_.§9!@§(§%t§(true)))
         {
            return;
         }
         var _loc2_:§[!D§ = new §[!D§();
         var _loc3_:§[!D§ = new §[!D§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§>!q§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§>!q§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§<6§(§%t§(_loc6_),_loc2_.§4R§,_loc3_.§4R§);
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
               _loc2_.§>!q§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§-!k§.NONE,§-!k§.§?F§,§-!k§.§+!%§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §-!k§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §-!k§.§?F§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§>!q§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§<6§(§8i§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§4R§,_loc3_.§4R§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §%t§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §8i§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §-!k§.§?F§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §35§() : int
      {
         return this.§73§;
      }
      
      public function dispose() : void
      {
         if(this.§6"=§)
         {
            this.§6"=§.dispose();
         }
         if(this.§ !"§)
         {
            this.§ !"§.dispose();
         }
         if(this.§7!3§)
         {
            this.§7!3§.dispose();
         }
         if(this.§=!f§)
         {
            this.§=!f§.dispose();
         }
      }
      
      private function §"!I§() : void
      {
         var _loc1_:int = this.§'!O§.§[">§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§'!O§.§[">§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§&!s§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§&!s§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§&!s§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§&!s§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§&!s§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§&!s§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§[P§ = true;
      }
      
      private function §[!^§(param1:Context3D) : Boolean
      {
         if(!this.§[P§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §""C§();
         }
         if(this.§6"=§)
         {
            this.§6"=§.dispose();
         }
         if(this.§ !"§)
         {
            this.§ !"§.dispose();
         }
         if(this.§7!3§)
         {
            this.§7!3§.dispose();
         }
         if(this.§=!f§)
         {
            this.§=!f§.dispose();
         }
         var _loc2_:int = this.§'!O§.§[">§ / 4;
         this.§6"=§ = param1.createVertexBuffer(_loc2_ * 4,§6!r§.§""A§);
         this.§6"=§.uploadFromByteArray(this.§'!O§.§3"8§,0,0,_loc2_ * 4);
         this.§ !"§ = param1.createVertexBuffer(_loc2_ * 4,§6!r§.§5m§);
         this.§ !"§.uploadFromVector(this.§'!O§.§2!l§,0,_loc2_ * 4);
         this.§7!3§ = param1.createVertexBuffer(_loc2_ * 4,§6!r§.§%d§);
         this.§7!3§.uploadFromVector(this.§'!O§.§7'§,0,_loc2_ * 4);
         this.§=!f§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§=!f§.uploadFromVector(this.§&!s§,0,_loc2_ * 6);
         this.§[P§ = false;
         return true;
      }
      
      private function §@!m§(param1:Context3D) : void
      {
         if(!this.§[!^§(param1))
         {
            this.§6"=§.uploadFromByteArray(this.§'!O§.§3"8§,0,0,this.§73§ * 4);
            if(this.§4!z§)
            {
               this.§ !"§.uploadFromVector(this.§'!O§.§2!l§,0,this.§73§ * 4);
            }
            this.§7!3§.uploadFromVector(this.§'!O§.§7'§,0,this.§73§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§73§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§'!O§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§1";§ ? §8i§(_loc5_,this.§1";§.mipMapping,this.§1";§.repeat,this.§<i§,this.§4!z§) : §%t§(_loc5_);
         §%!t§.§0_§(param1,_loc4_);
         this.§@!m§(param1);
         param1.setProgram(§^!e§.§`?§.§ §(_loc6_));
         param1.setVertexBufferAt(0,this.§7!3§,§6!r§.§^A§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§1";§ == null || this.§4!z§)
         {
            param1.setVertexBufferAt(2,this.§ !"§,§6!r§.§%§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §8!v§[0] = §8!v§[1] = §8!v§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §8!v§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§8!v§,1);
         }
         if(this.§1";§)
         {
            param1.setTextureAt(0,this.§1";§.getBase(param1));
            param1.setVertexBufferAt(1,this.§6"=§,§6!r§.§8!d§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§=!f§,0,this.§73§ * 2);
         if(this.§1";§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§1";§ == null || this.§4!z§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§73§ = 0;
         this.§4!z§ = false;
         this.§1";§ = null;
         this.§<i§ = null;
      }
      
      public function §[!'§(param1:§&!D§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§73§ + 1 > this.§'!O§.§[">§ / 4)
         {
            this.§"!I§();
         }
         if(this.§73§ == 0)
         {
            this.§1";§ = param3;
            this.§<i§ = param4;
            this.§'!O§.§1?§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§4!z§ = true;
            }
         }
         var _loc6_:int = this.§73§ * 4;
         param1.copyVertexDataTo(this.§'!O§,_loc6_,param2,param5);
         ++this.§73§;
      }
      
      public function §1!`§(param1:§&!D§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§1";§ != null && param2 != null)
         {
            return this.§1";§.root != param2.root || this.§1";§.repeat != param2.repeat || this.§<i§ != param3 || this.§4!z§ != param1.useColor || this.§73§ == 8192;
         }
         if(this.§1";§ == null && param2 == null)
         {
            return false;
         }
         return this.§73§ != 0 || this.§4!z§ != (param1.useColor || param4 != 1);
      }
   }
}
