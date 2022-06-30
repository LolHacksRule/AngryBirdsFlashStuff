package §>Q§
{
   import § !9§.§&N§;
   import § !9§.Texture;
   import §#!J§.§9!O§;
   import §6,§.§"!F§;
   import §8!4§.§>'§;
   import §[=§.§=!I§;
   import §[=§.§@!#§;
   import §[=§.DisplayObject;
   import §[=§.DisplayObjectContainer;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §4?§
   {
      
      private static var §@!+§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §%J§:int;
      
      private var §,!;§:Texture;
      
      private var §^!1§:String;
      
      private var §,!"§:§>'§;
      
      private var §+!>§:VertexBuffer3D;
      
      private var §'R§:VertexBuffer3D;
      
      private var §8!O§:VertexBuffer3D;
      
      private var §+!'§:Vector.<uint>;
      
      private var §[V§:IndexBuffer3D;
      
      private var §-P§:Boolean = false;
      
      private var §,!8§:Boolean = false;
      
      public function §4?§()
      {
         super();
         §4a§();
         this.§,!"§ = new §>'§(0,true);
         this.§+!'§ = new Vector.<uint>(0);
         this.§%J§ = 0;
         this.§?o§();
      }
      
      public static function §7!?§(param1:DisplayObjectContainer, param2:Vector.<§4?§>) : void
      {
         §]j§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §]j§(param1:DisplayObject, param2:Vector.<§4?§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§=!I§ = null;
         var _loc13_:§@!#§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§4?§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §4?§());
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
               _loc11_.§?!H§(_loc10_);
               param3 = §]j§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §=!I§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §=!I§) as §@!#§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§,!>§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §4?§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§]!V§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §4a§() : void
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
         var _loc1_:§5!5§ = §5!5§.§5F§;
         if(_loc1_.§8P§(§2!b§(true)))
         {
            return;
         }
         var _loc2_:§"!F§ = new §"!F§();
         var _loc3_:§"!F§ = new §"!F§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§[!3§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§[!3§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§;-§(§2!b§(_loc6_),_loc2_.§4]§,_loc3_.§4]§);
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
               _loc2_.§[!3§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§&N§.NONE,§&N§.§3@§,§&N§.§?k§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §&N§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §&N§.§3@§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§[!3§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§;-§(§7!G§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§4]§,_loc3_.§4]§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §2!b§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §7!G§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §&N§.§3@§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §>!Z§() : int
      {
         return this.§%J§;
      }
      
      public function dispose() : void
      {
         if(this.§+!>§)
         {
            this.§+!>§.dispose();
         }
         if(this.§'R§)
         {
            this.§'R§.dispose();
         }
         if(this.§8!O§)
         {
            this.§8!O§.dispose();
         }
         if(this.§[V§)
         {
            this.§[V§.dispose();
         }
      }
      
      private function §?o§() : void
      {
         var _loc1_:int = this.§,!"§.§<Z§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§,!"§.§<Z§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§+!'§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§+!'§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§+!'§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§+!'§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§+!'§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§+!'§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§,!8§ = true;
      }
      
      private function §@b§(param1:Context3D) : Boolean
      {
         if(!this.§,!8§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §9!O§();
         }
         if(this.§+!>§)
         {
            this.§+!>§.dispose();
         }
         if(this.§'R§)
         {
            this.§'R§.dispose();
         }
         if(this.§8!O§)
         {
            this.§8!O§.dispose();
         }
         if(this.§[V§)
         {
            this.§[V§.dispose();
         }
         var _loc2_:int = this.§,!"§.§<Z§ / 4;
         this.§+!>§ = param1.createVertexBuffer(_loc2_ * 4,§>'§.§=F§);
         this.§+!>§.uploadFromByteArray(this.§,!"§.§[! §,0,0,_loc2_ * 4);
         this.§'R§ = param1.createVertexBuffer(_loc2_ * 4,§>'§.§!!a§);
         this.§'R§.uploadFromVector(this.§,!"§.§2t§,0,_loc2_ * 4);
         this.§8!O§ = param1.createVertexBuffer(_loc2_ * 4,§>'§.§]!L§);
         this.§8!O§.uploadFromVector(this.§,!"§.§>!W§,0,_loc2_ * 4);
         this.§[V§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§[V§.uploadFromVector(this.§+!'§,0,_loc2_ * 6);
         this.§,!8§ = false;
         return true;
      }
      
      private function §7!+§(param1:Context3D) : void
      {
         if(!this.§@b§(param1))
         {
            this.§+!>§.uploadFromByteArray(this.§,!"§.§[! §,0,0,this.§%J§ * 4);
            if(this.§-P§)
            {
               this.§'R§.uploadFromVector(this.§,!"§.§2t§,0,this.§%J§ * 4);
            }
            this.§8!O§.uploadFromVector(this.§,!"§.§>!W§,0,this.§%J§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§%J§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§,!"§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§,!;§ ? §7!G§(_loc5_,this.§,!;§.mipMapping,this.§,!;§.repeat,this.§^!1§,this.§-P§) : §2!b§(_loc5_);
         §<!%§.§=!0§(param1,_loc4_);
         this.§7!+§(param1);
         param1.setProgram(§5!5§.§5F§.§,t§(_loc6_));
         param1.setVertexBufferAt(0,this.§8!O§,§>'§.§+d§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§,!;§ == null || this.§-P§)
         {
            param1.setVertexBufferAt(2,this.§'R§,§>'§.§0P§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §@!+§[0] = §@!+§[1] = §@!+§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §@!+§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§@!+§,1);
         }
         if(this.§,!;§)
         {
            param1.setTextureAt(0,this.§,!;§.getBase(param1));
            param1.setVertexBufferAt(1,this.§+!>§,§>'§.§%!<§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§[V§,0,this.§%J§ * 2);
         if(this.§,!;§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§,!;§ == null || this.§-P§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§%J§ = 0;
         this.§-P§ = false;
         this.§,!;§ = null;
         this.§^!1§ = null;
      }
      
      public function §]!V§(param1:§=!I§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§%J§ + 1 > this.§,!"§.§<Z§ / 4)
         {
            this.§?o§();
         }
         if(this.§%J§ == 0)
         {
            this.§,!;§ = param3;
            this.§^!1§ = param4;
            this.§,!"§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§%J§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§,!"§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§-P§ = true;
         }
         ++this.§%J§;
      }
      
      public function §,!>§(param1:§=!I§, param2:Texture, param3:String) : Boolean
      {
         if(this.§,!;§ != null && param2 != null)
         {
            return this.§,!;§.root != param2.root || this.§,!;§.repeat != param2.repeat || this.§^!1§ != param3 || this.§-P§ != param1.useColor || this.§%J§ == 8192;
         }
         if(this.§,!;§ == null && param2 == null)
         {
            return false;
         }
         return this.§%J§ != 0 || this.§-P§ != param1.useColor;
      }
   }
}
