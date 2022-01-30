package §3",§
{
   import §!p§.§'%§;
   import §#"7§.§,"4§;
   import §@!i§.§%Q§;
   import §@!i§.§'!a§;
   import §@!i§.DisplayObject;
   import §@!i§.DisplayObjectContainer;
   import §[>§.§<!r§;
   import §^Q§.§3!N§;
   import §^Q§.Texture;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §;D§
   {
      
      private static var §]!-§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §="5§:int;
      
      private var §2"%§:Texture;
      
      private var §5o§:String;
      
      private var §"!,§:§'%§;
      
      private var §@L§:VertexBuffer3D;
      
      private var §[!H§:VertexBuffer3D;
      
      private var §6#§:VertexBuffer3D;
      
      private var §@"=§:Vector.<uint>;
      
      private var §!!M§:IndexBuffer3D;
      
      private var §'"3§:Boolean = false;
      
      private var §=V§:Boolean = false;
      
      public function §;D§()
      {
         super();
         §`!#§();
         this.§"!,§ = new §'%§(0,true);
         this.§@"=§ = new Vector.<uint>(0);
         this.§="5§ = 0;
         this.§1!a§();
      }
      
      public static function § F§(param1:DisplayObjectContainer, param2:Vector.<§;D§>) : void
      {
         §8!j§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §8!j§(param1:DisplayObject, param2:Vector.<§;D§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§'!a§ = null;
         var _loc13_:§%Q§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§;D§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §;D§());
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
               _loc11_.§<!S§(_loc10_);
               param3 = §8!j§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §'!a§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §'!a§) as §%Q§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§%f§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §;D§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§2"0§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §`!#§() : void
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
         var _loc1_:§0"<§ = §0"<§.§<?§;
         if(_loc1_.§[Z§(§2?§(true)))
         {
            return;
         }
         var _loc2_:§,"4§ = new §,"4§();
         var _loc3_:§,"4§ = new §,"4§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§0!V§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§0!V§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§`D§(§2?§(_loc6_),_loc2_.§5!`§,_loc3_.§5!`§);
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
               _loc2_.§0!V§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§3!N§.NONE,§3!N§.§`s§,§3!N§.§;<§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §3!N§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §3!N§.§`s§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§0!V§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§`D§(§#`§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§5!`§,_loc3_.§5!`§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §2?§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §#`§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §3!N§.§`s§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §'M§() : int
      {
         return this.§="5§;
      }
      
      public function dispose() : void
      {
         if(this.§@L§)
         {
            this.§@L§.dispose();
         }
         if(this.§[!H§)
         {
            this.§[!H§.dispose();
         }
         if(this.§6#§)
         {
            this.§6#§.dispose();
         }
         if(this.§!!M§)
         {
            this.§!!M§.dispose();
         }
      }
      
      private function §1!a§() : void
      {
         var _loc1_:int = this.§"!,§.§'!i§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§"!,§.§'!i§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§@"=§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§@"=§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§@"=§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§@"=§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§@"=§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§@"=§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§=V§ = true;
      }
      
      private function §!Z§(param1:Context3D) : Boolean
      {
         if(!this.§=V§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §<!r§();
         }
         if(this.§@L§)
         {
            this.§@L§.dispose();
         }
         if(this.§[!H§)
         {
            this.§[!H§.dispose();
         }
         if(this.§6#§)
         {
            this.§6#§.dispose();
         }
         if(this.§!!M§)
         {
            this.§!!M§.dispose();
         }
         var _loc2_:int = this.§"!,§.§'!i§ / 4;
         this.§@L§ = param1.createVertexBuffer(_loc2_ * 4,§'%§.§&!<§);
         this.§@L§.uploadFromByteArray(this.§"!,§.§-9§,0,0,_loc2_ * 4);
         this.§[!H§ = param1.createVertexBuffer(_loc2_ * 4,§'%§.§[J§);
         this.§[!H§.uploadFromVector(this.§"!,§.§#g§,0,_loc2_ * 4);
         this.§6#§ = param1.createVertexBuffer(_loc2_ * 4,§'%§.§1#§);
         this.§6#§.uploadFromVector(this.§"!,§.§""§,0,_loc2_ * 4);
         this.§!!M§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§!!M§.uploadFromVector(this.§@"=§,0,_loc2_ * 6);
         this.§=V§ = false;
         return true;
      }
      
      private function §5!m§(param1:Context3D) : void
      {
         if(!this.§!Z§(param1))
         {
            this.§@L§.uploadFromByteArray(this.§"!,§.§-9§,0,0,this.§="5§ * 4);
            if(this.§'"3§)
            {
               this.§[!H§.uploadFromVector(this.§"!,§.§#g§,0,this.§="5§ * 4);
            }
            this.§6#§.uploadFromVector(this.§"!,§.§""§,0,this.§="5§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§="5§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§"!,§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§2"%§ ? §#`§(_loc5_,this.§2"%§.mipMapping,this.§2"%§.repeat,this.§5o§,this.§'"3§) : §2?§(_loc5_);
         §'5§.§5"-§(param1,_loc4_);
         this.§5!m§(param1);
         param1.setProgram(§0"<§.§<?§.§%" §(_loc6_));
         param1.setVertexBufferAt(0,this.§6#§,§'%§.§8!L§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§2"%§ == null || this.§'"3§)
         {
            param1.setVertexBufferAt(2,this.§[!H§,§'%§.§5"§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §]!-§[0] = §]!-§[1] = §]!-§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §]!-§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§]!-§,1);
         }
         if(this.§2"%§)
         {
            param1.setTextureAt(0,this.§2"%§.getBase(param1));
            param1.setVertexBufferAt(1,this.§@L§,§'%§.§]f§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§!!M§,0,this.§="5§ * 2);
         if(this.§2"%§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§2"%§ == null || this.§'"3§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§="5§ = 0;
         this.§'"3§ = false;
         this.§2"%§ = null;
         this.§5o§ = null;
      }
      
      public function §2"0§(param1:§'!a§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§="5§ + 1 > this.§"!,§.§'!i§ / 4)
         {
            this.§1!a§();
         }
         if(this.§="5§ == 0)
         {
            this.§2"%§ = param3;
            this.§5o§ = param4;
            this.§"!,§.§`m§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§="5§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§"!,§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§'"3§ = true;
         }
         ++this.§="5§;
      }
      
      public function §%f§(param1:§'!a§, param2:Texture, param3:String) : Boolean
      {
         if(this.§2"%§ != null && param2 != null)
         {
            return this.§2"%§.root != param2.root || this.§2"%§.repeat != param2.repeat || this.§5o§ != param3 || this.§'"3§ != param1.useColor || this.§="5§ == 8192;
         }
         if(this.§2"%§ == null && param2 == null)
         {
            return false;
         }
         return this.§="5§ != 0 || this.§'"3§ != param1.useColor;
      }
   }
}
