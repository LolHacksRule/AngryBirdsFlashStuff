package §3!4§
{
   import §!!a§.§-!F§;
   import §'!&§.§ "E§;
   import §'!&§.§9!c§;
   import §'!&§.DisplayObject;
   import §'!&§.DisplayObjectContainer;
   import §2!%§.§5o§;
   import §3"$§.§>!H§;
   import §3"$§.Texture;
   import §@T§.§ k§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §,$§
   {
      
      private static var §1!%§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §5Z§:int;
      
      private var §`@§:Texture;
      
      private var §!!D§:String;
      
      private var §3!w§:§-!F§;
      
      private var §,c§:VertexBuffer3D;
      
      private var §4s§:VertexBuffer3D;
      
      private var §5!<§:VertexBuffer3D;
      
      private var §%!-§:Vector.<uint>;
      
      private var §-p§:IndexBuffer3D;
      
      private var §7"1§:Boolean = false;
      
      private var §=!J§:Boolean = false;
      
      public function §,$§()
      {
         super();
         §'k§();
         this.§3!w§ = new §-!F§(0,true);
         this.§%!-§ = new Vector.<uint>(0);
         this.§5Z§ = 0;
         this.§0!F§();
      }
      
      public static function § "B§(param1:DisplayObjectContainer, param2:Vector.<§,$§>) : void
      {
         §5U§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §5U§(param1:DisplayObject, param2:Vector.<§,$§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§ "E§ = null;
         var _loc13_:§9!c§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§,$§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §,$§());
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
                  _loc11_.§!r§(_loc10_);
                  param3 = §5U§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is § "E§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as § "E§) as §9!c§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§4!%§(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §,$§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§3!U§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §'k§() : void
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
         var _loc1_:§ ![§ = § ![§.§!G§;
         if(_loc1_.§ "D§(§1i§(true)))
         {
            return;
         }
         var _loc2_:§5o§ = new §5o§();
         var _loc3_:§5o§ = new §5o§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§^+§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§^+§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§,!R§(§1i§(_loc6_),_loc2_.§"!6§,_loc3_.§"!6§);
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
               _loc2_.§^+§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§>!H§.NONE,§>!H§.§?"B§,§>!H§.§8d§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §>!H§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §>!H§.§?"B§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§^+§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§,!R§(§^!k§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§"!6§,_loc3_.§"!6§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §1i§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §^!k§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §>!H§.§?"B§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §?G§() : int
      {
         return this.§5Z§;
      }
      
      public function dispose() : void
      {
         if(this.§,c§)
         {
            this.§,c§.dispose();
         }
         if(this.§4s§)
         {
            this.§4s§.dispose();
         }
         if(this.§5!<§)
         {
            this.§5!<§.dispose();
         }
         if(this.§-p§)
         {
            this.§-p§.dispose();
         }
      }
      
      private function §0!F§() : void
      {
         var _loc1_:int = this.§3!w§.§3@§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§3!w§.§3@§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§%!-§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§%!-§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§%!-§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§%!-§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§%!-§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§%!-§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§=!J§ = true;
      }
      
      private function §0!1§(param1:Context3D) : Boolean
      {
         if(!this.§=!J§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new § k§();
         }
         if(this.§,c§)
         {
            this.§,c§.dispose();
         }
         if(this.§4s§)
         {
            this.§4s§.dispose();
         }
         if(this.§5!<§)
         {
            this.§5!<§.dispose();
         }
         if(this.§-p§)
         {
            this.§-p§.dispose();
         }
         var _loc2_:int = this.§3!w§.§3@§ / 4;
         this.§,c§ = param1.createVertexBuffer(_loc2_ * 4,§-!F§.§08§);
         this.§,c§.uploadFromByteArray(this.§3!w§.§68§,0,0,_loc2_ * 4);
         this.§4s§ = param1.createVertexBuffer(_loc2_ * 4,§-!F§.§"U§);
         this.§4s§.uploadFromVector(this.§3!w§.§9"7§,0,_loc2_ * 4);
         this.§5!<§ = param1.createVertexBuffer(_loc2_ * 4,§-!F§.§[!g§);
         this.§5!<§.uploadFromVector(this.§3!w§.§=E§,0,_loc2_ * 4);
         this.§-p§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§-p§.uploadFromVector(this.§%!-§,0,_loc2_ * 6);
         this.§=!J§ = false;
         return true;
      }
      
      private function §>y§(param1:Context3D) : void
      {
         if(!this.§0!1§(param1))
         {
            this.§,c§.uploadFromByteArray(this.§3!w§.§68§,0,0,this.§5Z§ * 4);
            if(this.§7"1§)
            {
               this.§4s§.uploadFromVector(this.§3!w§.§9"7§,0,this.§5Z§ * 4);
            }
            this.§5!<§.uploadFromVector(this.§3!w§.§=E§,0,this.§5Z§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§5Z§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§3!w§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§`@§ ? §^!k§(_loc5_,this.§`@§.mipMapping,this.§`@§.repeat,this.§!!D§,this.§7"1§) : §1i§(_loc5_);
         §3=§.§=m§(param1,_loc4_);
         this.§>y§(param1);
         param1.setProgram(§ ![§.§!G§.§9",§(_loc6_));
         param1.setVertexBufferAt(0,this.§5!<§,§-!F§.§-5§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§`@§ == null || this.§7"1§)
         {
            param1.setVertexBufferAt(2,this.§4s§,§-!F§.§4"D§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §1!%§[0] = §1!%§[1] = §1!%§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §1!%§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§1!%§,1);
         }
         if(this.§`@§)
         {
            param1.setTextureAt(0,this.§`@§.getBase(param1));
            param1.setVertexBufferAt(1,this.§,c§,§-!F§.§%!p§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§-p§,0,this.§5Z§ * 2);
         if(this.§`@§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§`@§ == null || this.§7"1§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§5Z§ = 0;
         this.§7"1§ = false;
         this.§`@§ = null;
         this.§!!D§ = null;
      }
      
      public function §3!U§(param1:§ "E§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§5Z§ + 1 > this.§3!w§.§3@§ / 4)
         {
            this.§0!F§();
         }
         if(this.§5Z§ == 0)
         {
            this.§`@§ = param3;
            this.§!!D§ = param4;
            this.§3!w§.§,G§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§7"1§ = true;
            }
         }
         var _loc6_:int = this.§5Z§ * 4;
         param1.copyVertexDataTo(this.§3!w§,_loc6_,param2,param5);
         ++this.§5Z§;
      }
      
      public function §4!%§(param1:§ "E§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§`@§ != null && param2 != null)
         {
            return this.§`@§.root != param2.root || this.§`@§.repeat != param2.repeat || this.§!!D§ != param3 || this.§7"1§ != param1.useColor || this.§5Z§ == 8192;
         }
         if(this.§`@§ == null && param2 == null)
         {
            return false;
         }
         return this.§5Z§ != 0 || this.§7"1§ != (param1.useColor || param4 != 1);
      }
   }
}
