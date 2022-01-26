package §]_§
{
   import §#p§.§!!]§;
   import §+!=§.§%!1§;
   import §-A§.Texture;
   import §-A§.§]!5§;
   import §;!,§.§20§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   import §null §.§%!G§;
   import §null §.§>U§;
   import §null §.DisplayObject;
   import §null §.DisplayObjectContainer;
   
   public class §&c§
   {
      
      private static var §85§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §6u§:int;
      
      private var §^!N§:Texture;
      
      private var §"§:String;
      
      private var §!H§:§20§;
      
      private var §3!%§:VertexBuffer3D;
      
      private var §]P§:VertexBuffer3D;
      
      private var §9G§:VertexBuffer3D;
      
      private var §8!§:Vector.<uint>;
      
      private var §`!@§:IndexBuffer3D;
      
      private var §@!8§:Boolean = false;
      
      private var §else§:Boolean = false;
      
      public function §&c§()
      {
         super();
         §[5§();
         this.§!H§ = new §20§(0,true);
         this.§8!§ = new Vector.<uint>(0);
         this.§6u§ = 0;
         this.§18§();
      }
      
      public static function §9,§(param1:DisplayObjectContainer, param2:Vector.<§&c§>) : void
      {
         §0!3§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §0!3§(param1:DisplayObject, param2:Vector.<§&c§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§>U§ = null;
         var _loc13_:§%!G§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§&c§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §&c§());
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
               _loc11_.§2!;§(_loc10_);
               param3 = §0!3§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §>U§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §>U§) as §%!G§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§8b§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §&c§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§try §(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §[5§() : void
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
         var _loc1_:§!F§ = §!F§.§[M§;
         if(_loc1_.§"!O§(§<!I§(true)))
         {
            return;
         }
         var _loc2_:§!!]§ = new §!!]§();
         var _loc3_:§!!]§ = new §!!]§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§0n§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§0n§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§,!>§(§<!I§(_loc6_),_loc2_.§?A§,_loc3_.§?A§);
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
               _loc2_.§0n§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§]!5§.NONE,§]!5§.§'!E§,§]!5§.§+-§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §]!5§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §]!5§.§'!E§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§0n§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§,!>§(§@!;§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§?A§,_loc3_.§?A§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §<!I§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §@!;§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §]!5§.§'!E§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §'!V§() : int
      {
         return this.§6u§;
      }
      
      public function dispose() : void
      {
         if(this.§3!%§)
         {
            this.§3!%§.dispose();
         }
         if(this.§]P§)
         {
            this.§]P§.dispose();
         }
         if(this.§9G§)
         {
            this.§9G§.dispose();
         }
         if(this.§`!@§)
         {
            this.§`!@§.dispose();
         }
      }
      
      private function §18§() : void
      {
         var _loc1_:int = this.§!H§.§=!^§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§!H§.§=!^§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§8!§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§8!§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§8!§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§8!§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§8!§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§8!§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§else§ = true;
      }
      
      private function §<C§(param1:Context3D) : Boolean
      {
         if(!this.§else§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §%!1§();
         }
         if(this.§3!%§)
         {
            this.§3!%§.dispose();
         }
         if(this.§]P§)
         {
            this.§]P§.dispose();
         }
         if(this.§9G§)
         {
            this.§9G§.dispose();
         }
         if(this.§`!@§)
         {
            this.§`!@§.dispose();
         }
         var _loc2_:int = this.§!H§.§=!^§ / 4;
         this.§3!%§ = param1.createVertexBuffer(_loc2_ * 4,§20§.§,y§);
         this.§3!%§.uploadFromByteArray(this.§!H§.§0!;§,0,0,_loc2_ * 4);
         this.§]P§ = param1.createVertexBuffer(_loc2_ * 4,§20§.§"#§);
         this.§]P§.uploadFromVector(this.§!H§.§ !§,0,_loc2_ * 4);
         this.§9G§ = param1.createVertexBuffer(_loc2_ * 4,§20§.§[@§);
         this.§9G§.uploadFromVector(this.§!H§.§@v§,0,_loc2_ * 4);
         this.§`!@§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§`!@§.uploadFromVector(this.§8!§,0,_loc2_ * 6);
         this.§else§ = false;
         return true;
      }
      
      private function §2;§(param1:Context3D) : void
      {
         if(!this.§<C§(param1))
         {
            this.§3!%§.uploadFromByteArray(this.§!H§.§0!;§,0,0,this.§6u§ * 4);
            if(this.§@!8§)
            {
               this.§]P§.uploadFromVector(this.§!H§.§ !§,0,this.§6u§ * 4);
            }
            this.§9G§.uploadFromVector(this.§!H§.§@v§,0,this.§6u§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§6u§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§!H§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§^!N§ ? §@!;§(_loc5_,this.§^!N§.mipMapping,this.§^!N§.repeat,this.§"§,this.§@!8§) : §<!I§(_loc5_);
         §7o§.§4!J§(param1,_loc4_);
         this.§2;§(param1);
         param1.setProgram(§!F§.§[M§.§ Z§(_loc6_));
         param1.setVertexBufferAt(0,this.§9G§,§20§.§-2§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§^!N§ == null || this.§@!8§)
         {
            param1.setVertexBufferAt(2,this.§]P§,§20§.§2!8§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §85§[0] = §85§[1] = §85§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §85§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§85§,1);
         }
         if(this.§^!N§)
         {
            param1.setTextureAt(0,this.§^!N§.getBase(param1));
            param1.setVertexBufferAt(1,this.§3!%§,§20§.§+_§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§`!@§,0,this.§6u§ * 2);
         if(this.§^!N§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§^!N§ == null || this.§@!8§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§6u§ = 0;
         this.§@!8§ = false;
         this.§^!N§ = null;
         this.§"§ = null;
      }
      
      public function §try §(param1:§>U§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§6u§ + 1 > this.§!H§.§=!^§ / 4)
         {
            this.§18§();
         }
         if(this.§6u§ == 0)
         {
            this.§^!N§ = param3;
            this.§"§ = param4;
            this.§!H§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§6u§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§!H§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§@!8§ = true;
         }
         ++this.§6u§;
      }
      
      public function §8b§(param1:§>U§, param2:Texture, param3:String) : Boolean
      {
         if(this.§^!N§ != null && param2 != null)
         {
            return this.§^!N§.root != param2.root || this.§^!N§.repeat != param2.repeat || this.§"§ != param3 || this.§@!8§ != param1.useColor || this.§6u§ == 8192;
         }
         if(this.§^!N§ == null && param2 == null)
         {
            return false;
         }
         return this.§6u§ != 0 || this.§@!8§ != param1.useColor;
      }
   }
}
