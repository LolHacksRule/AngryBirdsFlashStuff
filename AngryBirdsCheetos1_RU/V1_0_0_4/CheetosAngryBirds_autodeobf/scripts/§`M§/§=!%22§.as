package §`M§
{
   import § !Q§.§78§;
   import §-!3§.§>!C§;
   import §1!A§.§;a§;
   import §1!A§.§@!O§;
   import §1!A§.DisplayObject;
   import §1!A§.DisplayObjectContainer;
   import §5L§.§^!C§;
   import §^n§.Texture;
   import §^n§.§in§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §=!"§
   {
      
      private static var §;^§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §2!W§:int;
      
      private var §;!>§:Texture;
      
      private var §=@§:String;
      
      private var §^c§:§^!C§;
      
      private var §&n§:VertexBuffer3D;
      
      private var §^Q§:VertexBuffer3D;
      
      private var §[!C§:VertexBuffer3D;
      
      private var §8!5§:Vector.<uint>;
      
      private var §^!H§:IndexBuffer3D;
      
      private var §;!L§:Boolean = false;
      
      private var §5'§:Boolean = false;
      
      public function §=!"§()
      {
         super();
         §4]§();
         this.§^c§ = new §^!C§(0,true);
         this.§8!5§ = new Vector.<uint>(0);
         this.§2!W§ = 0;
         this.§7Q§();
      }
      
      public static function §?!3§(param1:DisplayObjectContainer, param2:Vector.<§=!"§>) : void
      {
         §5d§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §5d§(param1:DisplayObject, param2:Vector.<§=!"§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§@!O§ = null;
         var _loc13_:§;a§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§=!"§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §=!"§());
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
               _loc11_.§#;§(_loc10_);
               param3 = §5d§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §@!O§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §@!O§) as §;a§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§2%§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §=!"§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§&G§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §4]§() : void
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
         var _loc1_:§'C§ = §'C§.§3b§;
         if(_loc1_.§3!Z§(§@&§(true)))
         {
            return;
         }
         var _loc2_:§78§ = new §78§();
         var _loc3_:§78§ = new §78§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§-!9§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§-!9§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§`!,§(§@&§(_loc6_),_loc2_.§<r§,_loc3_.§<r§);
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
               _loc2_.§-!9§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§in§.NONE,§in§.§8M§,§in§.§!!1§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §in§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §in§.§8M§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§-!9§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§`!,§(§]!F§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§<r§,_loc3_.§<r§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §@&§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §]!F§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §in§.§8M§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §%!Y§() : int
      {
         return this.§2!W§;
      }
      
      public function dispose() : void
      {
         if(this.§&n§)
         {
            this.§&n§.dispose();
         }
         if(this.§^Q§)
         {
            this.§^Q§.dispose();
         }
         if(this.§[!C§)
         {
            this.§[!C§.dispose();
         }
         if(this.§^!H§)
         {
            this.§^!H§.dispose();
         }
      }
      
      private function §7Q§() : void
      {
         var _loc1_:int = this.§^c§.§3>§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§^c§.§3>§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§8!5§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§8!5§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§8!5§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§8!5§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§8!5§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§8!5§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§5'§ = true;
      }
      
      private function §else §(param1:Context3D) : Boolean
      {
         if(!this.§5'§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §>!C§();
         }
         if(this.§&n§)
         {
            this.§&n§.dispose();
         }
         if(this.§^Q§)
         {
            this.§^Q§.dispose();
         }
         if(this.§[!C§)
         {
            this.§[!C§.dispose();
         }
         if(this.§^!H§)
         {
            this.§^!H§.dispose();
         }
         var _loc2_:int = this.§^c§.§3>§ / 4;
         this.§&n§ = param1.createVertexBuffer(_loc2_ * 4,§^!C§.§"c§);
         this.§&n§.uploadFromByteArray(this.§^c§.final,0,0,_loc2_ * 4);
         this.§^Q§ = param1.createVertexBuffer(_loc2_ * 4,§^!C§.§5Q§);
         this.§^Q§.uploadFromVector(this.§^c§.§'O§,0,_loc2_ * 4);
         this.§[!C§ = param1.createVertexBuffer(_loc2_ * 4,§^!C§.§-L§);
         this.§[!C§.uploadFromVector(this.§^c§.§ Y§,0,_loc2_ * 4);
         this.§^!H§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§^!H§.uploadFromVector(this.§8!5§,0,_loc2_ * 6);
         this.§5'§ = false;
         return true;
      }
      
      private function §%4§(param1:Context3D) : void
      {
         if(!this.§else §(param1))
         {
            this.§&n§.uploadFromByteArray(this.§^c§.final,0,0,this.§2!W§ * 4);
            if(this.§;!L§)
            {
               this.§^Q§.uploadFromVector(this.§^c§.§'O§,0,this.§2!W§ * 4);
            }
            this.§[!C§.uploadFromVector(this.§^c§.§ Y§,0,this.§2!W§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§2!W§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§^c§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§;!>§ ? §]!F§(_loc5_,this.§;!>§.mipMapping,this.§;!>§.repeat,this.§=@§,this.§;!L§) : §@&§(_loc5_);
         §[7§.§#r§(param1,_loc4_);
         this.§%4§(param1);
         param1.setProgram(§'C§.§3b§.§;!P§(_loc6_));
         param1.setVertexBufferAt(0,this.§[!C§,§^!C§.§5q§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§;!>§ == null || this.§;!L§)
         {
            param1.setVertexBufferAt(2,this.§^Q§,§^!C§.§;! §,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §;^§[0] = §;^§[1] = §;^§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §;^§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§;^§,1);
         }
         if(this.§;!>§)
         {
            param1.setTextureAt(0,this.§;!>§.getBase(param1));
            param1.setVertexBufferAt(1,this.§&n§,§^!C§.§`T§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§^!H§,0,this.§2!W§ * 2);
         if(this.§;!>§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§;!>§ == null || this.§;!L§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§2!W§ = 0;
         this.§;!L§ = false;
         this.§;!>§ = null;
         this.§=@§ = null;
      }
      
      public function §&G§(param1:§@!O§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§2!W§ + 1 > this.§^c§.§3>§ / 4)
         {
            this.§7Q§();
         }
         if(this.§2!W§ == 0)
         {
            this.§;!>§ = param3;
            this.§=@§ = param4;
            this.§^c§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§2!W§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§^c§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§;!L§ = true;
         }
         ++this.§2!W§;
      }
      
      public function §2%§(param1:§@!O§, param2:Texture, param3:String) : Boolean
      {
         if(this.§;!>§ != null && param2 != null)
         {
            return this.§;!>§.root != param2.root || this.§;!>§.repeat != param2.repeat || this.§=@§ != param3 || this.§;!L§ != param1.useColor || this.§2!W§ == 8192;
         }
         if(this.§;!>§ == null && param2 == null)
         {
            return false;
         }
         return this.§2!W§ != 0 || this.§;!L§ != param1.useColor;
      }
   }
}
