package §6!4§
{
   import §,a§.§&!h§;
   import §-!f§.§-!,§;
   import §-!f§.§7!6§;
   import §-!f§.DisplayObject;
   import §-!f§.DisplayObjectContainer;
   import §06§.§ 4§;
   import §7"+§.§<!r§;
   import §7"+§.Texture;
   import §<C§.§=>§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §2!P§
   {
      
      private static var §,!p§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §@§:int;
      
      private var §;T§:Texture;
      
      private var §`L§:String;
      
      private var §3=§:§=>§;
      
      private var §1_§:VertexBuffer3D;
      
      private var §7+§:VertexBuffer3D;
      
      private var §2!]§:VertexBuffer3D;
      
      private var §1" §:Vector.<uint>;
      
      private var §;§:IndexBuffer3D;
      
      private var §<"4§:Boolean = false;
      
      private var §0s§:Boolean = false;
      
      public function §2!P§()
      {
         super();
         §+C§();
         this.§3=§ = new §=>§(0,true);
         this.§1" § = new Vector.<uint>(0);
         this.§@§ = 0;
         this.§-"#§();
      }
      
      public static function §]O§(param1:DisplayObjectContainer, param2:Vector.<§2!P§>) : void
      {
         §8!1§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §8!1§(param1:DisplayObject, param2:Vector.<§2!P§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§7!6§ = null;
         var _loc13_:§-!,§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§2!P§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §2!P§());
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
                  _loc11_.§+"#§(_loc10_);
                  param3 = §8!1§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is §7!6§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §7!6§) as §-!,§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§@$§(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §2!P§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§&&§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §+C§() : void
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
         var _loc1_:§<!D§ = §<!D§.§?!_§;
         if(_loc1_.§<K§(§'!o§(true)))
         {
            return;
         }
         var _loc2_:§ 4§ = new § 4§();
         var _loc3_:§ 4§ = new § 4§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§=c§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§=c§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§0!`§(§'!o§(_loc6_),_loc2_.§ !1§,_loc3_.§ !1§);
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
               _loc2_.§=c§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§<!r§.NONE,§<!r§.§4t§,§<!r§.§6x§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §<!r§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §<!r§.§4t§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§=c§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§0!`§(§9!,§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§ !1§,_loc3_.§ !1§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §'!o§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §9!,§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §<!r§.§4t§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §3!o§() : int
      {
         return this.§@§;
      }
      
      public function dispose() : void
      {
         if(this.§1_§)
         {
            this.§1_§.dispose();
         }
         if(this.§7+§)
         {
            this.§7+§.dispose();
         }
         if(this.§2!]§)
         {
            this.§2!]§.dispose();
         }
         if(this.§;§)
         {
            this.§;§.dispose();
         }
      }
      
      private function §-"#§() : void
      {
         var _loc1_:int = this.§3=§.§5!M§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§3=§.§5!M§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§1" §[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§1" §[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§1" §[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§1" §[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§1" §[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§1" §[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§0s§ = true;
      }
      
      private function §=§(param1:Context3D) : Boolean
      {
         if(!this.§0s§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §&!h§();
         }
         if(this.§1_§)
         {
            this.§1_§.dispose();
         }
         if(this.§7+§)
         {
            this.§7+§.dispose();
         }
         if(this.§2!]§)
         {
            this.§2!]§.dispose();
         }
         if(this.§;§)
         {
            this.§;§.dispose();
         }
         var _loc2_:int = this.§3=§.§5!M§ / 4;
         this.§1_§ = param1.createVertexBuffer(_loc2_ * 4,§=>§.§@!S§);
         this.§1_§.uploadFromByteArray(this.§3=§.§^!N§,0,0,_loc2_ * 4);
         this.§7+§ = param1.createVertexBuffer(_loc2_ * 4,§=>§.§<"+§);
         this.§7+§.uploadFromVector(this.§3=§.§,!I§,0,_loc2_ * 4);
         this.§2!]§ = param1.createVertexBuffer(_loc2_ * 4,§=>§.§]!"§);
         this.§2!]§.uploadFromVector(this.§3=§.§="1§,0,_loc2_ * 4);
         this.§;§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§;§.uploadFromVector(this.§1" §,0,_loc2_ * 6);
         this.§0s§ = false;
         return true;
      }
      
      private function §@!x§(param1:Context3D) : void
      {
         if(!this.§=§(param1))
         {
            this.§1_§.uploadFromByteArray(this.§3=§.§^!N§,0,0,this.§@§ * 4);
            if(this.§<"4§)
            {
               this.§7+§.uploadFromVector(this.§3=§.§,!I§,0,this.§@§ * 4);
            }
            this.§2!]§.uploadFromVector(this.§3=§.§="1§,0,this.§@§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§@§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§3=§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§;T§ ? §9!,§(_loc5_,this.§;T§.mipMapping,this.§;T§.repeat,this.§`L§,this.§<"4§) : §'!o§(_loc5_);
         §8P§.§"!u§(param1,_loc4_);
         this.§@!x§(param1);
         param1.setProgram(§<!D§.§?!_§.§^"'§(_loc6_));
         param1.setVertexBufferAt(0,this.§2!]§,§=>§.§1!"§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§;T§ == null || this.§<"4§)
         {
            param1.setVertexBufferAt(2,this.§7+§,§=>§.§@!D§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §,!p§[0] = §,!p§[1] = §,!p§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §,!p§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§,!p§,1);
         }
         if(this.§;T§)
         {
            param1.setTextureAt(0,this.§;T§.getBase(param1));
            param1.setVertexBufferAt(1,this.§1_§,§=>§.§[i§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§;§,0,this.§@§ * 2);
         if(this.§;T§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§;T§ == null || this.§<"4§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§@§ = 0;
         this.§<"4§ = false;
         this.§;T§ = null;
         this.§`L§ = null;
      }
      
      public function §&&§(param1:§7!6§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§@§ + 1 > this.§3=§.§5!M§ / 4)
         {
            this.§-"#§();
         }
         if(this.§@§ == 0)
         {
            this.§;T§ = param3;
            this.§`L§ = param4;
            this.§3=§.§8"!§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§<"4§ = true;
            }
         }
         var _loc6_:int = this.§@§ * 4;
         param1.copyVertexDataTo(this.§3=§,_loc6_,param2,param5);
         ++this.§@§;
      }
      
      public function §@$§(param1:§7!6§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§;T§ != null && param2 != null)
         {
            return this.§;T§.root != param2.root || this.§;T§.repeat != param2.repeat || this.§`L§ != param3 || this.§<"4§ != param1.useColor || this.§@§ == 8192;
         }
         if(this.§;T§ == null && param2 == null)
         {
            return false;
         }
         return this.§@§ != 0 || this.§<"4§ != (param1.useColor || param4 != 1);
      }
   }
}
