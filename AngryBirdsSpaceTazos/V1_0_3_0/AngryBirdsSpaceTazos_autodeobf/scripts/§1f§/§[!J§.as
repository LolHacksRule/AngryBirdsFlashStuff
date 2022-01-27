package §1f§
{
   import §!Y§.§+"7§;
   import §'@§.§>"6§;
   import §'@§.Texture;
   import §0"H§.§=Z§;
   import §4"@§.§6p§;
   import §4"@§.§?!0§;
   import §4"@§.DisplayObject;
   import §4"@§.DisplayObjectContainer;
   import §[4§.§0!r§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §[!J§
   {
      
      private static var §="0§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §^!f§:int;
      
      private var §5@§:Texture;
      
      private var §6!$§:String;
      
      private var §#g§:§0!r§;
      
      private var §#!_§:VertexBuffer3D;
      
      private var § !D§:VertexBuffer3D;
      
      private var §!!7§:VertexBuffer3D;
      
      private var §,A§:Vector.<uint>;
      
      private var §8s§:IndexBuffer3D;
      
      private var §#7§:Boolean = false;
      
      private var §&!X§:Boolean = false;
      
      public function §[!J§()
      {
         super();
         §;! §();
         this.§#g§ = new §0!r§(0,true);
         this.§,A§ = new Vector.<uint>(0);
         this.§^!f§ = 0;
         this.§1!<§();
      }
      
      public static function §0u§(param1:DisplayObjectContainer, param2:Vector.<§[!J§>) : void
      {
         §^!u§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §^!u§(param1:DisplayObject, param2:Vector.<§[!J§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§6p§ = null;
         var _loc13_:§?!0§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§[!J§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §[!J§());
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
                  _loc11_.§]"2§(_loc10_);
                  param3 = §^!u§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is §6p§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §6p§) as §?!0§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§2"D§(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §[!J§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§%l§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §;! §() : void
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
         var _loc1_:§9H§ = §9H§.§0"'§;
         if(_loc1_.§3!i§(§2!a§(true)))
         {
            return;
         }
         var _loc2_:§+"7§ = new §+"7§();
         var _loc3_:§+"7§ = new §+"7§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§3!Y§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§3!Y§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§;!n§(§2!a§(_loc6_),_loc2_.§;!=§,_loc3_.§;!=§);
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
               _loc2_.§3!Y§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§>"6§.NONE,§>"6§.§]!w§,§>"6§.§;" §];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §>"6§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §>"6§.§]!w§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§3!Y§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§;!n§(§6K§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§;!=§,_loc3_.§;!=§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §2!a§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §6K§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §>"6§.§]!w§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §%!N§() : int
      {
         return this.§^!f§;
      }
      
      public function dispose() : void
      {
         if(this.§#!_§)
         {
            this.§#!_§.dispose();
         }
         if(this.§ !D§)
         {
            this.§ !D§.dispose();
         }
         if(this.§!!7§)
         {
            this.§!!7§.dispose();
         }
         if(this.§8s§)
         {
            this.§8s§.dispose();
         }
      }
      
      private function §1!<§() : void
      {
         var _loc1_:int = this.§#g§.§^-§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§#g§.§^-§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§,A§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§,A§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§,A§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§,A§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§,A§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§,A§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§&!X§ = true;
      }
      
      private function §7"-§(param1:Context3D) : Boolean
      {
         if(!this.§&!X§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §=Z§();
         }
         if(this.§#!_§)
         {
            this.§#!_§.dispose();
         }
         if(this.§ !D§)
         {
            this.§ !D§.dispose();
         }
         if(this.§!!7§)
         {
            this.§!!7§.dispose();
         }
         if(this.§8s§)
         {
            this.§8s§.dispose();
         }
         var _loc2_:int = this.§#g§.§^-§ / 4;
         this.§#!_§ = param1.createVertexBuffer(_loc2_ * 4,§0!r§.§ !j§);
         this.§#!_§.uploadFromByteArray(this.§#g§.§%!C§,0,0,_loc2_ * 4);
         this.§ !D§ = param1.createVertexBuffer(_loc2_ * 4,§0!r§.§%!>§);
         this.§ !D§.uploadFromVector(this.§#g§.§4!]§,0,_loc2_ * 4);
         this.§!!7§ = param1.createVertexBuffer(_loc2_ * 4,§0!r§.§3K§);
         this.§!!7§.uploadFromVector(this.§#g§.§@V§,0,_loc2_ * 4);
         this.§8s§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§8s§.uploadFromVector(this.§,A§,0,_loc2_ * 6);
         this.§&!X§ = false;
         return true;
      }
      
      private function §@x§(param1:Context3D) : void
      {
         if(!this.§7"-§(param1))
         {
            this.§#!_§.uploadFromByteArray(this.§#g§.§%!C§,0,0,this.§^!f§ * 4);
            if(this.§#7§)
            {
               this.§ !D§.uploadFromVector(this.§#g§.§4!]§,0,this.§^!f§ * 4);
            }
            this.§!!7§.uploadFromVector(this.§#g§.§@V§,0,this.§^!f§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§^!f§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§#g§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§5@§ ? §6K§(_loc5_,this.§5@§.mipMapping,this.§5@§.repeat,this.§6!$§,this.§#7§) : §2!a§(_loc5_);
         §&"@§.§4!o§(param1,_loc4_);
         this.§@x§(param1);
         param1.setProgram(§9H§.§0"'§.§@>§(_loc6_));
         param1.setVertexBufferAt(0,this.§!!7§,§0!r§.§%!<§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§5@§ == null || this.§#7§)
         {
            param1.setVertexBufferAt(2,this.§ !D§,§0!r§.§"q§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §="0§[0] = §="0§[1] = §="0§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §="0§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§="0§,1);
         }
         if(this.§5@§)
         {
            param1.setTextureAt(0,this.§5@§.getBase(param1));
            param1.setVertexBufferAt(1,this.§#!_§,§0!r§.§ ]§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§8s§,0,this.§^!f§ * 2);
         if(this.§5@§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§5@§ == null || this.§#7§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§^!f§ = 0;
         this.§#7§ = false;
         this.§5@§ = null;
         this.§6!$§ = null;
      }
      
      public function §%l§(param1:§6p§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§^!f§ + 1 > this.§#g§.§^-§ / 4)
         {
            this.§1!<§();
         }
         if(this.§^!f§ == 0)
         {
            this.§5@§ = param3;
            this.§6!$§ = param4;
            this.§#g§.§4![§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§#7§ = true;
            }
         }
         var _loc6_:int = this.§^!f§ * 4;
         param1.copyVertexDataTo(this.§#g§,_loc6_,param2,param5);
         ++this.§^!f§;
      }
      
      public function §2"D§(param1:§6p§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§5@§ != null && param2 != null)
         {
            return this.§5@§.root != param2.root || this.§5@§.repeat != param2.repeat || this.§6!$§ != param3 || this.§#7§ != param1.useColor || this.§^!f§ == 8192;
         }
         if(this.§5@§ == null && param2 == null)
         {
            return false;
         }
         return this.§^!f§ != 0 || this.§#7§ != (param1.useColor || param4 != 1);
      }
   }
}
