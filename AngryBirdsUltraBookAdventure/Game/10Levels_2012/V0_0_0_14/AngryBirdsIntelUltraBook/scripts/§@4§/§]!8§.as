package §@4§
{
   import §!!9§.§4!'§;
   import §!!9§.Texture;
   import §#U§.AGALMiniAssembler;
   import §2N§.§,!J§;
   import §9E§.§1!w§;
   import §9E§.§;!U§;
   import §9E§.DisplayObject;
   import §9E§.DisplayObjectContainer;
   import §`5§.§@2§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §]!8§
   {
      
      private static var §8r§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §;!?§:int;
      
      private var §3G§:Texture;
      
      private var §'!p§:String;
      
      private var §3!^§:§,!J§;
      
      private var §-c§:VertexBuffer3D;
      
      private var §0T§:VertexBuffer3D;
      
      private var §?5§:VertexBuffer3D;
      
      private var §"Z§:Vector.<uint>;
      
      private var §9S§:IndexBuffer3D;
      
      private var §^#§:Boolean = false;
      
      private var §8!'§:Boolean = false;
      
      public function §]!8§()
      {
         super();
         §-!l§();
         this.§3!^§ = new §,!J§(0,true);
         this.§"Z§ = new Vector.<uint>(0);
         this.§;!?§ = 0;
         this.§4w§();
      }
      
      public static function §5!C§(param1:DisplayObjectContainer, param2:Vector.<§]!8§>) : void
      {
         §;R§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §;R§(param1:DisplayObject, param2:Vector.<§]!8§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§1!w§ = null;
         var _loc13_:§;!U§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§]!8§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §]!8§());
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
               _loc11_.§>l§(_loc10_);
               param3 = §;R§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §1!w§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §1!w§) as §;!U§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§"G§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §]!8§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§+!t§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §-!l§() : void
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
         var _loc1_:§,!]§ = §,!]§.§!9§;
         if(_loc1_.§'!§(§0=§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§<!]§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§<!]§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§2+§(§0=§(_loc6_),_loc2_.§?!7§,_loc3_.§?!7§);
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
               _loc2_.§<!]§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§4!'§.NONE,§4!'§.§5!'§,§4!'§.§<,§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §4!'§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §4!'§.§5!'§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§<!]§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§2+§(§7!?§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§?!7§,_loc3_.§?!7§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §0=§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §7!?§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §4!'§.§5!'§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §1;§() : int
      {
         return this.§;!?§;
      }
      
      public function dispose() : void
      {
         if(this.§-c§)
         {
            this.§-c§.dispose();
         }
         if(this.§0T§)
         {
            this.§0T§.dispose();
         }
         if(this.§?5§)
         {
            this.§?5§.dispose();
         }
         if(this.§9S§)
         {
            this.§9S§.dispose();
         }
      }
      
      private function §4w§() : void
      {
         var _loc1_:int = this.§3!^§.§8!w§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§3!^§.§8!w§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§"Z§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§"Z§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§"Z§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§"Z§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§"Z§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§"Z§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§8!'§ = true;
      }
      
      private function §3H§(param1:Context3D) : Boolean
      {
         if(!this.§8!'§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §@2§();
         }
         if(this.§-c§)
         {
            this.§-c§.dispose();
         }
         if(this.§0T§)
         {
            this.§0T§.dispose();
         }
         if(this.§?5§)
         {
            this.§?5§.dispose();
         }
         if(this.§9S§)
         {
            this.§9S§.dispose();
         }
         var _loc2_:int = this.§3!^§.§8!w§ / 4;
         this.§-c§ = param1.createVertexBuffer(_loc2_ * 4,§,!J§.§#8§);
         this.§-c§.uploadFromByteArray(this.§3!^§.§!]§,0,0,_loc2_ * 4);
         this.§0T§ = param1.createVertexBuffer(_loc2_ * 4,§,!J§.§&g§);
         this.§0T§.uploadFromVector(this.§3!^§.§0<§,0,_loc2_ * 4);
         this.§?5§ = param1.createVertexBuffer(_loc2_ * 4,§,!J§.§<!a§);
         this.§?5§.uploadFromVector(this.§3!^§.§94§,0,_loc2_ * 4);
         this.§9S§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§9S§.uploadFromVector(this.§"Z§,0,_loc2_ * 6);
         this.§8!'§ = false;
         return true;
      }
      
      private function §^!'§(param1:Context3D) : void
      {
         if(!this.§3H§(param1))
         {
            this.§-c§.uploadFromByteArray(this.§3!^§.§!]§,0,0,this.§;!?§ * 4);
            if(this.§^#§)
            {
               this.§0T§.uploadFromVector(this.§3!^§.§0<§,0,this.§;!?§ * 4);
            }
            this.§?5§.uploadFromVector(this.§3!^§.§94§,0,this.§;!?§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§;!?§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§3!^§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§3G§ ? §7!?§(_loc5_,this.§3G§.mipMapping,this.§3G§.repeat,this.§'!p§,this.§^#§) : §0=§(_loc5_);
         §<!I§.§1!6§(param1,_loc4_);
         this.§^!'§(param1);
         param1.setProgram(§,!]§.§!9§.§,g§(_loc6_));
         param1.setVertexBufferAt(0,this.§?5§,§,!J§.§'x§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§3G§ == null || this.§^#§)
         {
            param1.setVertexBufferAt(2,this.§0T§,§,!J§.§`C§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §8r§[0] = §8r§[1] = §8r§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §8r§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§8r§,1);
         }
         if(this.§3G§)
         {
            param1.setTextureAt(0,this.§3G§.getBase(param1));
            param1.setVertexBufferAt(1,this.§-c§,§,!J§.§,q§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§9S§,0,this.§;!?§ * 2);
         if(this.§3G§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§3G§ == null || this.§^#§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§;!?§ = 0;
         this.§^#§ = false;
         this.§3G§ = null;
         this.§'!p§ = null;
      }
      
      public function §+!t§(param1:§1!w§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§;!?§ + 1 > this.§3!^§.§8!w§ / 4)
         {
            this.§4w§();
         }
         if(this.§;!?§ == 0)
         {
            this.§3G§ = param3;
            this.§'!p§ = param4;
            this.§3!^§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§;!?§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§3!^§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§^#§ = true;
         }
         ++this.§;!?§;
      }
      
      public function §"G§(param1:§1!w§, param2:Texture, param3:String) : Boolean
      {
         if(this.§3G§ != null && param2 != null)
         {
            return this.§3G§.root != param2.root || this.§3G§.repeat != param2.repeat || this.§'!p§ != param3 || this.§^#§ != param1.useColor || this.§;!?§ == 8192;
         }
         if(this.§3G§ == null && param2 == null)
         {
            return false;
         }
         return this.§;!?§ != 0 || this.§^#§ != param1.useColor;
      }
   }
}
