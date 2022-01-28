package §%!j§
{
   import §+!-§.§4!O§;
   import §+!-§.§7"#§;
   import §+!-§.DisplayObject;
   import §+!-§.DisplayObjectContainer;
   import §0!%§.§%§;
   import §0!%§.Texture;
   import §@@§.§5j§;
   import §]!R§.§2"2§;
   import §`!=§.§?!X§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §,5§
   {
      
      private static var §;m§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §<'§:int;
      
      private var §1@§:Texture;
      
      private var §,t§:String;
      
      private var §2!b§:§?!X§;
      
      private var §6!7§:VertexBuffer3D;
      
      private var §6S§:VertexBuffer3D;
      
      private var §%I§:VertexBuffer3D;
      
      private var §;!y§:Vector.<uint>;
      
      private var §&Q§:IndexBuffer3D;
      
      private var §>!l§:Boolean = false;
      
      private var §8!=§:Boolean = false;
      
      public function §,5§()
      {
         super();
         §+-§();
         this.§2!b§ = new §?!X§(0,true);
         this.§;!y§ = new Vector.<uint>(0);
         this.§<'§ = 0;
         this.§@!J§();
      }
      
      public static function §9!q§(param1:DisplayObjectContainer, param2:Vector.<§,5§>) : void
      {
         §0!N§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §0!N§(param1:DisplayObject, param2:Vector.<§,5§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§4!O§ = null;
         var _loc13_:§7"#§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§,5§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §,5§());
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
                  _loc11_.§1w§(_loc10_);
                  param3 = §0!N§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is §4!O§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §4!O§) as §7"#§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§^G§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §,5§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§0!B§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §+-§() : void
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
         var _loc1_:§%K§ = §%K§.§`9§;
         if(_loc1_.§?!W§(§0!+§(true)))
         {
            return;
         }
         var _loc2_:§5j§ = new §5j§();
         var _loc3_:§5j§ = new §5j§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§^j§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§^j§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§7!c§(§0!+§(_loc6_),_loc2_.§;h§,_loc3_.§;h§);
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
               _loc2_.§^j§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§%§.NONE,§%§.§<!U§,§%§.§]h§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §%§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §%§.§<!U§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§^j§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§7!c§(§=S§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§;h§,_loc3_.§;h§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §0!+§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §=S§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §%§.§<!U§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §^"-§() : int
      {
         return this.§<'§;
      }
      
      public function dispose() : void
      {
         if(this.§6!7§)
         {
            this.§6!7§.dispose();
         }
         if(this.§6S§)
         {
            this.§6S§.dispose();
         }
         if(this.§%I§)
         {
            this.§%I§.dispose();
         }
         if(this.§&Q§)
         {
            this.§&Q§.dispose();
         }
      }
      
      private function §@!J§() : void
      {
         var _loc1_:int = this.§2!b§.§8!B§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§2!b§.§8!B§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§;!y§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§;!y§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§;!y§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§;!y§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§;!y§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§;!y§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§8!=§ = true;
      }
      
      private function §-!D§(param1:Context3D) : Boolean
      {
         if(!this.§8!=§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §2"2§();
         }
         if(this.§6!7§)
         {
            this.§6!7§.dispose();
         }
         if(this.§6S§)
         {
            this.§6S§.dispose();
         }
         if(this.§%I§)
         {
            this.§%I§.dispose();
         }
         if(this.§&Q§)
         {
            this.§&Q§.dispose();
         }
         var _loc2_:int = this.§2!b§.§8!B§ / 4;
         this.§6!7§ = param1.createVertexBuffer(_loc2_ * 4,§?!X§.§5;§);
         this.§6!7§.uploadFromByteArray(this.§2!b§.§3!T§,0,0,_loc2_ * 4);
         this.§6S§ = param1.createVertexBuffer(_loc2_ * 4,§?!X§.§-p§);
         this.§6S§.uploadFromVector(this.§2!b§.§3!e§,0,_loc2_ * 4);
         this.§%I§ = param1.createVertexBuffer(_loc2_ * 4,§?!X§.§0[§);
         this.§%I§.uploadFromVector(this.§2!b§.§#5§,0,_loc2_ * 4);
         this.§&Q§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§&Q§.uploadFromVector(this.§;!y§,0,_loc2_ * 6);
         this.§8!=§ = false;
         return true;
      }
      
      private function §9v§(param1:Context3D) : void
      {
         if(!this.§-!D§(param1))
         {
            this.§6!7§.uploadFromByteArray(this.§2!b§.§3!T§,0,0,this.§<'§ * 4);
            if(this.§>!l§)
            {
               this.§6S§.uploadFromVector(this.§2!b§.§3!e§,0,this.§<'§ * 4);
            }
            this.§%I§.uploadFromVector(this.§2!b§.§#5§,0,this.§<'§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§<'§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§2!b§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§1@§ ? §=S§(_loc5_,this.§1@§.mipMapping,this.§1@§.repeat,this.§,t§,this.§>!l§) : §0!+§(_loc5_);
         §&Y§.§;!E§(param1,_loc4_);
         this.§9v§(param1);
         param1.setProgram(§%K§.§`9§.§^"9§(_loc6_));
         param1.setVertexBufferAt(0,this.§%I§,§?!X§.§^!5§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§1@§ == null || this.§>!l§)
         {
            param1.setVertexBufferAt(2,this.§6S§,§?!X§.§-!e§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §;m§[0] = §;m§[1] = §;m§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §;m§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§;m§,1);
         }
         if(this.§1@§)
         {
            param1.setTextureAt(0,this.§1@§.getBase(param1));
            param1.setVertexBufferAt(1,this.§6!7§,§?!X§.§<[§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§&Q§,0,this.§<'§ * 2);
         if(this.§1@§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§1@§ == null || this.§>!l§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§<'§ = 0;
         this.§>!l§ = false;
         this.§1@§ = null;
         this.§,t§ = null;
      }
      
      public function §0!B§(param1:§4!O§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§<'§ + 1 > this.§2!b§.§8!B§ / 4)
         {
            this.§@!J§();
         }
         if(this.§<'§ == 0)
         {
            this.§1@§ = param3;
            this.§,t§ = param4;
            this.§2!b§.§0!-§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§<'§ * 4;
         param1.copyVertexDataTo(this.§2!b§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§>!l§ = true;
         }
         ++this.§<'§;
      }
      
      public function §^G§(param1:§4!O§, param2:Texture, param3:String) : Boolean
      {
         if(this.§1@§ != null && param2 != null)
         {
            return this.§1@§.root != param2.root || this.§1@§.repeat != param2.repeat || this.§,t§ != param3 || this.§>!l§ != param1.useColor || this.§<'§ == 8192;
         }
         if(this.§1@§ == null && param2 == null)
         {
            return false;
         }
         return this.§<'§ != 0 || this.§>!l§ != param1.useColor;
      }
   }
}
