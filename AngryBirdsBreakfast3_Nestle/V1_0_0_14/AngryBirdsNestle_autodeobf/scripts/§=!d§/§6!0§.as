package §=!d§
{
   import §1Q§.§=!6§;
   import §6s§.§<O§;
   import §6s§.Texture;
   import §[!F§.§<!m§;
   import §^!Z§.§%R§;
   import §`!B§.§ l§;
   import §`!B§.DisplayObject;
   import §`!B§.DisplayObjectContainer;
   import §`!B§.§]!J§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §6!0§
   {
      
      private static var §<=§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §=!^§:int;
      
      private var §'g§:Texture;
      
      private var §!!M§:String;
      
      private var §[n§:§=!6§;
      
      private var §2!4§:VertexBuffer3D;
      
      private var §>!-§:VertexBuffer3D;
      
      private var §5"$§:VertexBuffer3D;
      
      private var §7o§:Vector.<uint>;
      
      private var §%_§:IndexBuffer3D;
      
      private var §5!y§:Boolean = false;
      
      private var § 5§:Boolean = false;
      
      public function §6!0§()
      {
         super();
         § q§();
         this.§[n§ = new §=!6§(0,true);
         this.§7o§ = new Vector.<uint>(0);
         this.§=!^§ = 0;
         this.§2s§();
      }
      
      public static function §2!+§(param1:DisplayObjectContainer, param2:Vector.<§6!0§>) : void
      {
         §3!W§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §3!W§(param1:DisplayObject, param2:Vector.<§6!0§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§]!J§ = null;
         var _loc13_:§ l§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§6!0§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §6!0§());
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
                  _loc11_.§@&§(_loc10_);
                  param3 = §3!W§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is §]!J§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §]!J§) as § l§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§1t§(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §6!0§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§?!V§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function § q§() : void
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
         var _loc1_:§5!5§ = §5!5§.§^'§;
         if(_loc1_.§1?§(§=R§(true)))
         {
            return;
         }
         var _loc2_:§%R§ = new §%R§();
         var _loc3_:§%R§ = new §%R§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§>m§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§>m§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§%a§(§=R§(_loc6_),_loc2_.§;N§,_loc3_.§;N§);
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
               _loc2_.§>m§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§<O§.NONE,§<O§.§9!I§,§<O§.§`!"§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §<O§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §<O§.§9!I§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§>m§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§%a§(§02§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§;N§,_loc3_.§;N§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §=R§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §02§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §<O§.§9!I§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §>!'§() : int
      {
         return this.§=!^§;
      }
      
      public function dispose() : void
      {
         if(this.§2!4§)
         {
            this.§2!4§.dispose();
         }
         if(this.§>!-§)
         {
            this.§>!-§.dispose();
         }
         if(this.§5"$§)
         {
            this.§5"$§.dispose();
         }
         if(this.§%_§)
         {
            this.§%_§.dispose();
         }
      }
      
      private function §2s§() : void
      {
         var _loc1_:int = this.§[n§.§<!e§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§[n§.§<!e§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§7o§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§7o§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§7o§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§7o§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§7o§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§7o§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§ 5§ = true;
      }
      
      private function §6u§(param1:Context3D) : Boolean
      {
         if(!this.§ 5§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §<!m§();
         }
         if(this.§2!4§)
         {
            this.§2!4§.dispose();
         }
         if(this.§>!-§)
         {
            this.§>!-§.dispose();
         }
         if(this.§5"$§)
         {
            this.§5"$§.dispose();
         }
         if(this.§%_§)
         {
            this.§%_§.dispose();
         }
         var _loc2_:int = this.§[n§.§<!e§ / 4;
         this.§2!4§ = param1.createVertexBuffer(_loc2_ * 4,§=!6§.§>@§);
         this.§2!4§.uploadFromByteArray(this.§[n§.§?!S§,0,0,_loc2_ * 4);
         this.§>!-§ = param1.createVertexBuffer(_loc2_ * 4,§=!6§.§"g§);
         this.§>!-§.uploadFromVector(this.§[n§.§'!W§,0,_loc2_ * 4);
         this.§5"$§ = param1.createVertexBuffer(_loc2_ * 4,§=!6§.§''§);
         this.§5"$§.uploadFromVector(this.§[n§.§=!u§,0,_loc2_ * 4);
         this.§%_§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§%_§.uploadFromVector(this.§7o§,0,_loc2_ * 6);
         this.§ 5§ = false;
         return true;
      }
      
      private function §!@§(param1:Context3D) : void
      {
         if(!this.§6u§(param1))
         {
            this.§2!4§.uploadFromByteArray(this.§[n§.§?!S§,0,0,this.§=!^§ * 4);
            if(this.§5!y§)
            {
               this.§>!-§.uploadFromVector(this.§[n§.§'!W§,0,this.§=!^§ * 4);
            }
            this.§5"$§.uploadFromVector(this.§[n§.§=!u§,0,this.§=!^§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§=!^§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§[n§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§'g§ ? §02§(_loc5_,this.§'g§.mipMapping,this.§'g§.repeat,this.§!!M§,this.§5!y§) : §=R§(_loc5_);
         §`J§.§=8§(param1,_loc4_);
         this.§!@§(param1);
         param1.setProgram(§5!5§.§^'§.§1!d§(_loc6_));
         param1.setVertexBufferAt(0,this.§5"$§,§=!6§.§in§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§'g§ == null || this.§5!y§)
         {
            param1.setVertexBufferAt(2,this.§>!-§,§=!6§.§`f§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §<=§[0] = §<=§[1] = §<=§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §<=§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§<=§,1);
         }
         if(this.§'g§)
         {
            param1.setTextureAt(0,this.§'g§.getBase(param1));
            param1.setVertexBufferAt(1,this.§2!4§,§=!6§.§3!z§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§%_§,0,this.§=!^§ * 2);
         if(this.§'g§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§'g§ == null || this.§5!y§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§=!^§ = 0;
         this.§5!y§ = false;
         this.§'g§ = null;
         this.§!!M§ = null;
      }
      
      public function §?!V§(param1:§]!J§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§=!^§ + 1 > this.§[n§.§<!e§ / 4)
         {
            this.§2s§();
         }
         if(this.§=!^§ == 0)
         {
            this.§'g§ = param3;
            this.§!!M§ = param4;
            this.§[n§.§9"+§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§5!y§ = true;
            }
         }
         var _loc6_:int = this.§=!^§ * 4;
         param1.copyVertexDataTo(this.§[n§,_loc6_,param2,param5);
         ++this.§=!^§;
      }
      
      public function §1t§(param1:§]!J§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§'g§ != null && param2 != null)
         {
            return this.§'g§.root != param2.root || this.§'g§.repeat != param2.repeat || this.§!!M§ != param3 || this.§5!y§ != param1.useColor || this.§=!^§ == 8192;
         }
         if(this.§'g§ == null && param2 == null)
         {
            return false;
         }
         return this.§=!^§ != 0 || this.§5!y§ != (param1.useColor || param4 != 1);
      }
   }
}
