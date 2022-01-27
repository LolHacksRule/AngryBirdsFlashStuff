package §'!3§
{
   import §,]§.§#!K§;
   import §,]§.Texture;
   import §-!'§.§ s§;
   import §-!'§.§3!1§;
   import §-!'§.DisplayObject;
   import §-!'§.DisplayObjectContainer;
   import §3!+§.AGALMiniAssembler;
   import §5D§.§3L§;
   import §]!#§.§!!C§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §1!<§
   {
      
      private static var §[W§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §5B§:int;
      
      private var §get §:Texture;
      
      private var § q§:String;
      
      private var §3!7§:§3L§;
      
      private var §[=§:VertexBuffer3D;
      
      private var §?P§:VertexBuffer3D;
      
      private var § !I§:VertexBuffer3D;
      
      private var §throw§:Vector.<uint>;
      
      private var §@a§:IndexBuffer3D;
      
      private var §?A§:Boolean = false;
      
      private var §'U§:Boolean = false;
      
      public function §1!<§()
      {
         super();
         §&6§();
         this.§3!7§ = new §3L§(0,true);
         this.§throw§ = new Vector.<uint>(0);
         this.§5B§ = 0;
         this.§9H§();
      }
      
      public static function §'X§(param1:DisplayObjectContainer, param2:Vector.<§1!<§>) : void
      {
         § !?§(param1,param2,-1,new Matrix3D());
      }
      
      private static function § !?§(param1:DisplayObject, param2:Vector.<§1!<§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§ s§ = null;
         var _loc13_:§3!1§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§1!<§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §1!<§());
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
               _loc11_.§^H§(_loc10_);
               param3 = § !?§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is § s§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as § s§) as §3!1§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§=!%§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §1!<§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§"!?§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §&6§() : void
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
         var _loc1_:§&!H§ = §&!H§.§+!H§;
         if(_loc1_.§;^§(§,,§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§!o§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§!o§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§]!G§(§,,§(_loc6_),_loc2_.§!`§,_loc3_.§!`§);
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
               _loc2_.§!o§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§#!K§.NONE,§#!K§.§>!J§,§#!K§.§6"§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §#!K§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §#!K§.§>!J§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§!o§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§]!G§(§4!M§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§!`§,_loc3_.§!`§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §,,§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §4!M§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §#!K§.§>!J§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §4!?§() : int
      {
         return this.§5B§;
      }
      
      public function dispose() : void
      {
         if(this.§[=§)
         {
            this.§[=§.dispose();
         }
         if(this.§?P§)
         {
            this.§?P§.dispose();
         }
         if(this.§ !I§)
         {
            this.§ !I§.dispose();
         }
         if(this.§@a§)
         {
            this.§@a§.dispose();
         }
      }
      
      private function §9H§() : void
      {
         var _loc1_:int = this.§3!7§.§1J§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§3!7§.§1J§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§throw§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§throw§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§throw§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§throw§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§throw§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§throw§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§'U§ = true;
      }
      
      private function §2!=§(param1:Context3D) : Boolean
      {
         if(!this.§'U§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §!!C§();
         }
         if(this.§[=§)
         {
            this.§[=§.dispose();
         }
         if(this.§?P§)
         {
            this.§?P§.dispose();
         }
         if(this.§ !I§)
         {
            this.§ !I§.dispose();
         }
         if(this.§@a§)
         {
            this.§@a§.dispose();
         }
         var _loc2_:int = this.§3!7§.§1J§ / 4;
         this.§[=§ = param1.createVertexBuffer(_loc2_ * 4,§3L§.§;!-§);
         this.§[=§.uploadFromByteArray(this.§3!7§.§-Y§,0,0,_loc2_ * 4);
         this.§?P§ = param1.createVertexBuffer(_loc2_ * 4,§3L§.§=4§);
         this.§?P§.uploadFromVector(this.§3!7§.§]8§,0,_loc2_ * 4);
         this.§ !I§ = param1.createVertexBuffer(_loc2_ * 4,§3L§.§=Y§);
         this.§ !I§.uploadFromVector(this.§3!7§.§ g§,0,_loc2_ * 4);
         this.§@a§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§@a§.uploadFromVector(this.§throw§,0,_loc2_ * 6);
         this.§'U§ = false;
         return true;
      }
      
      private function §7!"§(param1:Context3D) : void
      {
         if(!this.§2!=§(param1))
         {
            this.§[=§.uploadFromByteArray(this.§3!7§.§-Y§,0,0,this.§5B§ * 4);
            if(this.§?A§)
            {
               this.§?P§.uploadFromVector(this.§3!7§.§]8§,0,this.§5B§ * 4);
            }
            this.§ !I§.uploadFromVector(this.§3!7§.§ g§,0,this.§5B§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§5B§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§3!7§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§get § ? §4!M§(_loc5_,this.§get §.mipMapping,this.§get §.repeat,this.§ q§,this.§?A§) : §,,§(_loc5_);
         §@`§.§;N§(param1,_loc4_);
         this.§7!"§(param1);
         param1.setProgram(§&!H§.§+!H§.§'! §(_loc6_));
         param1.setVertexBufferAt(0,this.§ !I§,§3L§.§6#§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§get § == null || this.§?A§)
         {
            param1.setVertexBufferAt(2,this.§?P§,§3L§.§8!&§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §[W§[0] = §[W§[1] = §[W§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §[W§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§[W§,1);
         }
         if(this.§get §)
         {
            param1.setTextureAt(0,this.§get §.getBase(param1));
            param1.setVertexBufferAt(1,this.§[=§,§3L§.§2!0§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§@a§,0,this.§5B§ * 2);
         if(this.§get §)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§get § == null || this.§?A§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§5B§ = 0;
         this.§?A§ = false;
         this.§get § = null;
         this.§ q§ = null;
      }
      
      public function §"!?§(param1:§ s§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§5B§ + 1 > this.§3!7§.§1J§ / 4)
         {
            this.§9H§();
         }
         if(this.§5B§ == 0)
         {
            this.§get § = param3;
            this.§ q§ = param4;
            this.§3!7§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§5B§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§3!7§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§?A§ = true;
         }
         ++this.§5B§;
      }
      
      public function §=!%§(param1:§ s§, param2:Texture, param3:String) : Boolean
      {
         if(this.§get § != null && param2 != null)
         {
            return this.§get §.root != param2.root || this.§get §.repeat != param2.repeat || this.§ q§ != param3 || this.§?A§ != param1.useColor || this.§5B§ == 8192;
         }
         if(this.§get § == null && param2 == null)
         {
            return false;
         }
         return this.§5B§ != 0 || this.§?A§ != param1.useColor;
      }
   }
}
