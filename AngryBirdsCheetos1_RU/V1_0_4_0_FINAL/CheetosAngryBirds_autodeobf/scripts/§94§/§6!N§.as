package §94§
{
   import §&!K§.§9X§;
   import §+![§.§;7§;
   import §+![§.Texture;
   import §3§.§2?§;
   import §3§.§4!!§;
   import §3§.DisplayObject;
   import §3§.DisplayObjectContainer;
   import §9![§.§%!L§;
   import §?C§.§3-§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §6!N§
   {
      
      private static var §'§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §"!Q§:int;
      
      private var §]!4§:Texture;
      
      private var §6![§:String;
      
      private var §5h§:§%!L§;
      
      private var §7!,§:VertexBuffer3D;
      
      private var §0d§:VertexBuffer3D;
      
      private var §8!§:VertexBuffer3D;
      
      private var §'z§:Vector.<uint>;
      
      private var §3E§:IndexBuffer3D;
      
      private var §1!7§:Boolean = false;
      
      private var §,G§:Boolean = false;
      
      public function §6!N§()
      {
         super();
         §^!U§();
         this.§5h§ = new §%!L§(0,true);
         this.§'z§ = new Vector.<uint>(0);
         this.§"!Q§ = 0;
         this.§case§();
      }
      
      public static function §5!W§(param1:DisplayObjectContainer, param2:Vector.<§6!N§>) : void
      {
         § !J§(param1,param2,-1,new Matrix3D());
      }
      
      private static function § !J§(param1:DisplayObject, param2:Vector.<§6!N§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§2?§ = null;
         var _loc13_:§4!!§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§6!N§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §6!N§());
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
               _loc11_.§1k§(_loc10_);
               param3 = § !J§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §2?§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §2?§) as §4!!§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§+j§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §6!N§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§,3§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §^!U§() : void
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
         var _loc1_:§&!7§ = §&!7§.§>!M§;
         if(_loc1_.§ @§(§4i§(true)))
         {
            return;
         }
         var _loc2_:§9X§ = new §9X§();
         var _loc3_:§9X§ = new §9X§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§]B§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§]B§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§7!X§(§4i§(_loc6_),_loc2_.§2h§,_loc3_.§2h§);
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
               _loc2_.§]B§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§;7§.NONE,§;7§.§^,§,§;7§.§-!O§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §;7§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §;7§.§^,§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§]B§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§7!X§(§!9§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§2h§,_loc3_.§2h§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §4i§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §!9§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §;7§.§^,§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §5z§() : int
      {
         return this.§"!Q§;
      }
      
      public function dispose() : void
      {
         if(this.§7!,§)
         {
            this.§7!,§.dispose();
         }
         if(this.§0d§)
         {
            this.§0d§.dispose();
         }
         if(this.§8!§)
         {
            this.§8!§.dispose();
         }
         if(this.§3E§)
         {
            this.§3E§.dispose();
         }
      }
      
      private function §case§() : void
      {
         var _loc1_:int = this.§5h§.§'!-§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§5h§.§'!-§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§'z§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§'z§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§'z§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§'z§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§'z§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§'z§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§,G§ = true;
      }
      
      private function §+!T§(param1:Context3D) : Boolean
      {
         if(!this.§,G§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §3-§();
         }
         if(this.§7!,§)
         {
            this.§7!,§.dispose();
         }
         if(this.§0d§)
         {
            this.§0d§.dispose();
         }
         if(this.§8!§)
         {
            this.§8!§.dispose();
         }
         if(this.§3E§)
         {
            this.§3E§.dispose();
         }
         var _loc2_:int = this.§5h§.§'!-§ / 4;
         this.§7!,§ = param1.createVertexBuffer(_loc2_ * 4,§%!L§.§<'§);
         this.§7!,§.uploadFromByteArray(this.§5h§.§4a§,0,0,_loc2_ * 4);
         this.§0d§ = param1.createVertexBuffer(_loc2_ * 4,§%!L§.§[o§);
         this.§0d§.uploadFromVector(this.§5h§.§^!?§,0,_loc2_ * 4);
         this.§8!§ = param1.createVertexBuffer(_loc2_ * 4,§%!L§.§1E§);
         this.§8!§.uploadFromVector(this.§5h§.§<h§,0,_loc2_ * 4);
         this.§3E§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§3E§.uploadFromVector(this.§'z§,0,_loc2_ * 6);
         this.§,G§ = false;
         return true;
      }
      
      private function § 9§(param1:Context3D) : void
      {
         if(!this.§+!T§(param1))
         {
            this.§7!,§.uploadFromByteArray(this.§5h§.§4a§,0,0,this.§"!Q§ * 4);
            if(this.§1!7§)
            {
               this.§0d§.uploadFromVector(this.§5h§.§^!?§,0,this.§"!Q§ * 4);
            }
            this.§8!§.uploadFromVector(this.§5h§.§<h§,0,this.§"!Q§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§"!Q§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§5h§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§]!4§ ? §!9§(_loc5_,this.§]!4§.mipMapping,this.§]!4§.repeat,this.§6![§,this.§1!7§) : §4i§(_loc5_);
         §#!a§.§8!T§(param1,_loc4_);
         this.§ 9§(param1);
         param1.setProgram(§&!7§.§>!M§.§@2§(_loc6_));
         param1.setVertexBufferAt(0,this.§8!§,§%!L§.§58§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§]!4§ == null || this.§1!7§)
         {
            param1.setVertexBufferAt(2,this.§0d§,§%!L§.§`!U§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §'§[0] = §'§[1] = §'§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §'§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§'§,1);
         }
         if(this.§]!4§)
         {
            param1.setTextureAt(0,this.§]!4§.getBase(param1));
            param1.setVertexBufferAt(1,this.§7!,§,§%!L§.§]<§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§3E§,0,this.§"!Q§ * 2);
         if(this.§]!4§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§]!4§ == null || this.§1!7§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§"!Q§ = 0;
         this.§1!7§ = false;
         this.§]!4§ = null;
         this.§6![§ = null;
      }
      
      public function §,3§(param1:§2?§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§"!Q§ + 1 > this.§5h§.§'!-§ / 4)
         {
            this.§case§();
         }
         if(this.§"!Q§ == 0)
         {
            this.§]!4§ = param3;
            this.§6![§ = param4;
            this.§5h§.§7T§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§"!Q§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§5h§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§1!7§ = true;
         }
         ++this.§"!Q§;
      }
      
      public function §+j§(param1:§2?§, param2:Texture, param3:String) : Boolean
      {
         if(this.§]!4§ != null && param2 != null)
         {
            return this.§]!4§.root != param2.root || this.§]!4§.repeat != param2.repeat || this.§6![§ != param3 || this.§1!7§ != param1.useColor || this.§"!Q§ == 8192;
         }
         if(this.§]!4§ == null && param2 == null)
         {
            return false;
         }
         return this.§"!Q§ != 0 || this.§1!7§ != param1.useColor;
      }
   }
}
