package §-N§
{
   import §+M§.§7!M§;
   import §3k§.§@!m§;
   import §7q§.§"L§;
   import §7q§.§0!§;
   import §7q§.DisplayObject;
   import §7q§.DisplayObjectContainer;
   import §8Y§.§!!§;
   import §8Y§.Texture;
   import §@!^§.§%!L§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §?!y§
   {
      
      private static var §9?§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §6X§:int;
      
      private var §="§:Texture;
      
      private var §'l§:String;
      
      private var §@D§:§7!M§;
      
      private var §3D§:VertexBuffer3D;
      
      private var §1]§:VertexBuffer3D;
      
      private var § 1§:VertexBuffer3D;
      
      private var §6P§:Vector.<uint>;
      
      private var §!>§:IndexBuffer3D;
      
      private var §3!s§:Boolean = false;
      
      private var §[_§:Boolean = false;
      
      public function §?!y§()
      {
         super();
         §-7§();
         this.§@D§ = new §7!M§(0,true);
         this.§6P§ = new Vector.<uint>(0);
         this.§6X§ = 0;
         this.§&!1§();
      }
      
      public static function §9"8§(param1:DisplayObjectContainer, param2:Vector.<§?!y§>) : void
      {
         §-"2§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §-"2§(param1:DisplayObject, param2:Vector.<§?!y§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§"L§ = null;
         var _loc13_:§0!§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§?!y§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §?!y§());
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
               _loc11_.§`!`§(_loc10_);
               param3 = §-"2§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §"L§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §"L§) as §0!§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§^"#§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §?!y§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§'X§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §-7§() : void
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
         var _loc1_:§=!]§ = §=!]§.§@§;
         if(_loc1_.§+?§(§7w§(true)))
         {
            return;
         }
         var _loc2_:§%!L§ = new §%!L§();
         var _loc3_:§%!L§ = new §%!L§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§1"3§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§1"3§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§4!x§(§7w§(_loc6_),_loc2_.§for§,_loc3_.§for§);
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
               _loc2_.§1"3§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§!!§.NONE,§!!§.§7!2§,§!!§.§8"0§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §!!§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §!!§.§7!2§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§1"3§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§4!x§(§7'§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§for§,_loc3_.§for§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §7w§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §7'§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §!!§.§7!2§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §?#§() : int
      {
         return this.§6X§;
      }
      
      public function dispose() : void
      {
         if(this.§3D§)
         {
            this.§3D§.dispose();
         }
         if(this.§1]§)
         {
            this.§1]§.dispose();
         }
         if(this.§ 1§)
         {
            this.§ 1§.dispose();
         }
         if(this.§!>§)
         {
            this.§!>§.dispose();
         }
      }
      
      private function §&!1§() : void
      {
         var _loc1_:int = this.§@D§.§9k§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§@D§.§9k§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§6P§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§6P§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§6P§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§6P§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§6P§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§6P§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§[_§ = true;
      }
      
      private function §#V§(param1:Context3D) : Boolean
      {
         if(!this.§[_§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §@!m§();
         }
         if(this.§3D§)
         {
            this.§3D§.dispose();
         }
         if(this.§1]§)
         {
            this.§1]§.dispose();
         }
         if(this.§ 1§)
         {
            this.§ 1§.dispose();
         }
         if(this.§!>§)
         {
            this.§!>§.dispose();
         }
         var _loc2_:int = this.§@D§.§9k§ / 4;
         this.§3D§ = param1.createVertexBuffer(_loc2_ * 4,§7!M§.§];§);
         this.§3D§.uploadFromByteArray(this.§@D§.§`!t§,0,0,_loc2_ * 4);
         this.§1]§ = param1.createVertexBuffer(_loc2_ * 4,§7!M§.§@""§);
         this.§1]§.uploadFromVector(this.§@D§.§?!$§,0,_loc2_ * 4);
         this.§ 1§ = param1.createVertexBuffer(_loc2_ * 4,§7!M§.§"-§);
         this.§ 1§.uploadFromVector(this.§@D§.§7",§,0,_loc2_ * 4);
         this.§!>§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§!>§.uploadFromVector(this.§6P§,0,_loc2_ * 6);
         this.§[_§ = false;
         return true;
      }
      
      private function §@U§(param1:Context3D) : void
      {
         if(!this.§#V§(param1))
         {
            this.§3D§.uploadFromByteArray(this.§@D§.§`!t§,0,0,this.§6X§ * 4);
            if(this.§3!s§)
            {
               this.§1]§.uploadFromVector(this.§@D§.§?!$§,0,this.§6X§ * 4);
            }
            this.§ 1§.uploadFromVector(this.§@D§.§7",§,0,this.§6X§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§6X§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§@D§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§="§ ? §7'§(_loc5_,this.§="§.mipMapping,this.§="§.repeat,this.§'l§,this.§3!s§) : §7w§(_loc5_);
         §,!p§.§0!_§(param1,_loc4_);
         this.§@U§(param1);
         param1.setProgram(§=!]§.§@§.§2!5§(_loc6_));
         param1.setVertexBufferAt(0,this.§ 1§,§7!M§.§,!K§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§="§ == null || this.§3!s§)
         {
            param1.setVertexBufferAt(2,this.§1]§,§7!M§.§`![§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §9?§[0] = §9?§[1] = §9?§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §9?§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§9?§,1);
         }
         if(this.§="§)
         {
            param1.setTextureAt(0,this.§="§.getBase(param1));
            param1.setVertexBufferAt(1,this.§3D§,§7!M§.§5!P§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§!>§,0,this.§6X§ * 2);
         if(this.§="§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§="§ == null || this.§3!s§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§6X§ = 0;
         this.§3!s§ = false;
         this.§="§ = null;
         this.§'l§ = null;
      }
      
      public function §'X§(param1:§"L§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§6X§ + 1 > this.§@D§.§9k§ / 4)
         {
            this.§&!1§();
         }
         if(this.§6X§ == 0)
         {
            this.§="§ = param3;
            this.§'l§ = param4;
            this.§@D§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§6X§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§@D§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§3!s§ = true;
         }
         ++this.§6X§;
      }
      
      public function §^"#§(param1:§"L§, param2:Texture, param3:String) : Boolean
      {
         if(this.§="§ != null && param2 != null)
         {
            return this.§="§.root != param2.root || this.§="§.repeat != param2.repeat || this.§'l§ != param3 || this.§3!s§ != param1.useColor || this.§6X§ == 8192;
         }
         if(this.§="§ == null && param2 == null)
         {
            return false;
         }
         return this.§6X§ != 0 || this.§3!s§ != param1.useColor;
      }
   }
}
