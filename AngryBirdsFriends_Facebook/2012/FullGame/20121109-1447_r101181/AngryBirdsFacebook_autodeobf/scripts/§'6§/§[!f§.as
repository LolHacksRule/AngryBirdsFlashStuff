package §'6§
{
   import §&!-§.§?!#§;
   import §&>§.AGALMiniAssembler;
   import §0!R§.§=w§;
   import §0!R§.Texture;
   import §1!$§.§!"?§;
   import §1!$§.§0!N§;
   import §1!$§.DisplayObject;
   import §1!$§.DisplayObjectContainer;
   import §1V§.§1!-§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §[!f§
   {
      
      private static var §3!J§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §^y§:int;
      
      private var §@"6§:Texture;
      
      private var §21§:String;
      
      private var §0E§:§1!-§;
      
      private var §9!;§:VertexBuffer3D;
      
      private var §?M§:VertexBuffer3D;
      
      private var §#!?§:VertexBuffer3D;
      
      private var §]"7§:Vector.<uint>;
      
      private var §0!n§:IndexBuffer3D;
      
      private var §[!$§:Boolean = false;
      
      private var §1"7§:Boolean = false;
      
      public function §[!f§()
      {
         super();
         §%!j§();
         this.§0E§ = new §1!-§(0,true);
         this.§]"7§ = new Vector.<uint>(0);
         this.§^y§ = 0;
         this.§[u§();
      }
      
      public static function §40§(param1:DisplayObjectContainer, param2:Vector.<§[!f§>) : void
      {
         §9!b§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §9!b§(param1:DisplayObject, param2:Vector.<§[!f§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§!"?§ = null;
         var _loc13_:§0!N§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§[!f§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §[!f§());
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
                  _loc11_.§@_§(_loc10_);
                  param3 = §9!b§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is §!"?§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §!"?§) as §0!N§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§5!§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §[!f§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§1x§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §%!j§() : void
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
         var _loc1_:§"]§ = §"]§.§!X§;
         if(_loc1_.§6!g§(§0"5§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§1'§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§1'§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§null§(§0"5§(_loc6_),_loc2_.§?"=§,_loc3_.§?"=§);
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
               _loc2_.§1'§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§=w§.NONE,§=w§.§8!Q§,§=w§.§>o§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §=w§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §=w§.§8!Q§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§1'§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§null§(§3"?§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§?"=§,_loc3_.§?"=§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §0"5§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §3"?§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §=w§.§8!Q§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §;!&§() : int
      {
         return this.§^y§;
      }
      
      public function dispose() : void
      {
         if(this.§9!;§)
         {
            this.§9!;§.dispose();
         }
         if(this.§?M§)
         {
            this.§?M§.dispose();
         }
         if(this.§#!?§)
         {
            this.§#!?§.dispose();
         }
         if(this.§0!n§)
         {
            this.§0!n§.dispose();
         }
      }
      
      private function §[u§() : void
      {
         var _loc1_:int = this.§0E§.§8=§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§0E§.§8=§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§]"7§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§]"7§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§]"7§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§]"7§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§]"7§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§]"7§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§1"7§ = true;
      }
      
      private function §;!;§(param1:Context3D) : Boolean
      {
         if(!this.§1"7§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §?!#§();
         }
         if(this.§9!;§)
         {
            this.§9!;§.dispose();
         }
         if(this.§?M§)
         {
            this.§?M§.dispose();
         }
         if(this.§#!?§)
         {
            this.§#!?§.dispose();
         }
         if(this.§0!n§)
         {
            this.§0!n§.dispose();
         }
         var _loc2_:int = this.§0E§.§8=§ / 4;
         this.§9!;§ = param1.createVertexBuffer(_loc2_ * 4,§1!-§.§%0§);
         this.§9!;§.uploadFromByteArray(this.§0E§.§`I§,0,0,_loc2_ * 4);
         this.§?M§ = param1.createVertexBuffer(_loc2_ * 4,§1!-§.§!!J§);
         this.§?M§.uploadFromVector(this.§0E§.§%3§,0,_loc2_ * 4);
         this.§#!?§ = param1.createVertexBuffer(_loc2_ * 4,§1!-§.§6V§);
         this.§#!?§.uploadFromVector(this.§0E§.§%!8§,0,_loc2_ * 4);
         this.§0!n§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§0!n§.uploadFromVector(this.§]"7§,0,_loc2_ * 6);
         this.§1"7§ = false;
         return true;
      }
      
      private function §]8§(param1:Context3D) : void
      {
         if(!this.§;!;§(param1))
         {
            this.§9!;§.uploadFromByteArray(this.§0E§.§`I§,0,0,this.§^y§ * 4);
            if(this.§[!$§)
            {
               this.§?M§.uploadFromVector(this.§0E§.§%3§,0,this.§^y§ * 4);
            }
            this.§#!?§.uploadFromVector(this.§0E§.§%!8§,0,this.§^y§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§^y§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§0E§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§@"6§ ? §3"?§(_loc5_,this.§@"6§.mipMapping,this.§@"6§.repeat,this.§21§,this.§[!$§) : §0"5§(_loc5_);
         §'"3§.§4!0§(param1,_loc4_);
         this.§]8§(param1);
         param1.setProgram(§"]§.§!X§.§&2§(_loc6_));
         param1.setVertexBufferAt(0,this.§#!?§,§1!-§.§9"6§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§@"6§ == null || this.§[!$§)
         {
            param1.setVertexBufferAt(2,this.§?M§,§1!-§.§#Y§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §3!J§[0] = §3!J§[1] = §3!J§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §3!J§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§3!J§,1);
         }
         if(this.§@"6§)
         {
            param1.setTextureAt(0,this.§@"6§.getBase(param1));
            param1.setVertexBufferAt(1,this.§9!;§,§1!-§.§,N§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§0!n§,0,this.§^y§ * 2);
         if(this.§@"6§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§@"6§ == null || this.§[!$§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§^y§ = 0;
         this.§[!$§ = false;
         this.§@"6§ = null;
         this.§21§ = null;
      }
      
      public function §1x§(param1:§!"?§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§^y§ + 1 > this.§0E§.§8=§ / 4)
         {
            this.§[u§();
         }
         if(this.§^y§ == 0)
         {
            this.§@"6§ = param3;
            this.§21§ = param4;
            this.§0E§.§"!W§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§^y§ * 4;
         param1.copyVertexDataTo(this.§0E§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§[!$§ = true;
         }
         ++this.§^y§;
      }
      
      public function §5!§(param1:§!"?§, param2:Texture, param3:String) : Boolean
      {
         if(this.§@"6§ != null && param2 != null)
         {
            return this.§@"6§.root != param2.root || this.§@"6§.repeat != param2.repeat || this.§21§ != param3 || this.§[!$§ != param1.useColor || this.§^y§ == 8192;
         }
         if(this.§@"6§ == null && param2 == null)
         {
            return false;
         }
         return this.§^y§ != 0 || this.§[!$§ != param1.useColor;
      }
   }
}
