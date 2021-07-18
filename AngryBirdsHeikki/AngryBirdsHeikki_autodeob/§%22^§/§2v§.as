package §"^§
{
   import §2Y§.§7!f§;
   import §2Y§.§7?§;
   import §2Y§.DisplayObject;
   import §2Y§.DisplayObjectContainer;
   import §2i§.§"V§;
   import §3;§.§%O§;
   import §=9§.§?!2§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §2v§
   {
      
      private static var §3!"§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §8e§:int;
      
      private var §71§:Texture;
      
      private var §45§:String;
      
      private var §-!^§:§?!2§;
      
      private var §%3§:VertexBuffer3D;
      
      private var §3§:VertexBuffer3D;
      
      private var §[l§:VertexBuffer3D;
      
      private var §-6§:Vector.<uint>;
      
      private var §8`§:IndexBuffer3D;
      
      private var §]1§:Boolean = false;
      
      private var §14§:Boolean = false;
      
      public function §2v§()
      {
         super();
         §[!2§();
         this.§-!^§ = new §?!2§(0,true);
         this.§-6§ = new Vector.<uint>(0);
         this.§8e§ = 0;
         this.§"z§();
      }
      
      public static function §-#§(param1:DisplayObjectContainer, param2:Vector.<§2v§>) : void
      {
         §4!f§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §4!f§(param1:DisplayObject, param2:Vector.<§2v§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§7?§ = null;
         var _loc13_:§7!f§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§2v§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §2v§());
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
               _loc11_.§6!W§(_loc10_);
               param3 = §4!f§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §7?§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §7?§) as §7!f§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§?!=§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §2v§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§>[§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §[!2§() : void
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
         var _loc1_:§+!'§ = §+!'§.§2d§;
         if(_loc1_.§9!A§(native(true)))
         {
            return;
         }
         var _loc2_:§%O§ = new §%O§();
         var _loc3_:§%O§ = new §%O§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§!!-§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§!!-§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§;!a§(native(_loc6_),_loc2_.§0! §,_loc3_.§0! §);
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
               _loc2_.§!!-§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§#!P§.NONE,§#!P§.§?!T§,§#!P§.§,!3§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §#!P§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §#!P§.§?!T§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§!!-§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§;!a§(§^W§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§0! §,_loc3_.§0! §);
                     }
                  }
               }
            }
         }
      }
      
      public static function native(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §^W§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §#!P§.§?!T§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §8!&§() : int
      {
         return this.§8e§;
      }
      
      public function dispose() : void
      {
         if(this.§%3§)
         {
            this.§%3§.dispose();
         }
         if(this.§3§)
         {
            this.§3§.dispose();
         }
         if(this.§[l§)
         {
            this.§[l§.dispose();
         }
         if(this.§8`§)
         {
            this.§8`§.dispose();
         }
      }
      
      private function §"z§() : void
      {
         var _loc1_:int = this.§-!^§.§<!§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§-!^§.§<!§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§-6§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§-6§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§-6§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§-6§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§-6§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§-6§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§14§ = true;
      }
      
      private function §0!X§(param1:Context3D) : Boolean
      {
         if(!this.§14§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §"V§();
         }
         if(this.§%3§)
         {
            this.§%3§.dispose();
         }
         if(this.§3§)
         {
            this.§3§.dispose();
         }
         if(this.§[l§)
         {
            this.§[l§.dispose();
         }
         if(this.§8`§)
         {
            this.§8`§.dispose();
         }
         var _loc2_:int = this.§-!^§.§<!§ / 4;
         this.§%3§ = param1.createVertexBuffer(_loc2_ * 4,§?!2§.§6?§);
         this.§%3§.uploadFromByteArray(this.§-!^§.§8Y§,0,0,_loc2_ * 4);
         this.§3§ = param1.createVertexBuffer(_loc2_ * 4,§?!2§.§1!R§);
         this.§3§.uploadFromVector(this.§-!^§.§!$§,0,_loc2_ * 4);
         this.§[l§ = param1.createVertexBuffer(_loc2_ * 4,§?!2§.§#!Q§);
         this.§[l§.uploadFromVector(this.§-!^§.§+k§,0,_loc2_ * 4);
         this.§8`§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§8`§.uploadFromVector(this.§-6§,0,_loc2_ * 6);
         this.§14§ = false;
         return true;
      }
      
      private function §5c§(param1:Context3D) : void
      {
         if(!this.§0!X§(param1))
         {
            this.§%3§.uploadFromByteArray(this.§-!^§.§8Y§,0,0,this.§8e§ * 4);
            if(this.§]1§)
            {
               this.§3§.uploadFromVector(this.§-!^§.§!$§,0,this.§8e§ * 4);
            }
            this.§[l§.uploadFromVector(this.§-!^§.§+k§,0,this.§8e§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§8e§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§-!^§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§71§ ? §^W§(_loc5_,this.§71§.mipMapping,this.§71§.repeat,this.§45§,this.§]1§) : native(_loc5_);
         §'X§.§"W§(param1,_loc4_);
         this.§5c§(param1);
         param1.setProgram(§+!'§.§2d§.§>!T§(_loc6_));
         param1.setVertexBufferAt(0,this.§[l§,§?!2§.§3A§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§71§ == null || this.§]1§)
         {
            param1.setVertexBufferAt(2,this.§3§,§?!2§.§'"§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §3!"§[0] = §3!"§[1] = §3!"§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §3!"§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§3!"§,1);
         }
         if(this.§71§)
         {
            param1.setTextureAt(0,this.§71§.getBase(param1));
            param1.setVertexBufferAt(1,this.§%3§,§?!2§.§1!,§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§8`§,0,this.§8e§ * 2);
         if(this.§71§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§71§ == null || this.§]1§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§8e§ = 0;
         this.§]1§ = false;
         this.§71§ = null;
         this.§45§ = null;
      }
      
      public function §>[§(param1:§7?§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§8e§ + 1 > this.§-!^§.§<!§ / 4)
         {
            this.§"z§();
         }
         if(this.§8e§ == 0)
         {
            this.§71§ = param3;
            this.§45§ = param4;
            this.§-!^§.§]v§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§8e§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§-!^§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§]1§ = true;
         }
         ++this.§8e§;
      }
      
      public function §?!=§(param1:§7?§, param2:Texture, param3:String) : Boolean
      {
         if(this.§71§ != null && param2 != null)
         {
            return this.§71§.root != param2.root || this.§71§.repeat != param2.repeat || this.§45§ != param3 || this.§]1§ != param1.useColor || this.§8e§ == 8192;
         }
         if(this.§71§ == null && param2 == null)
         {
            return false;
         }
         return this.§8e§ != 0 || this.§]1§ != param1.useColor;
      }
   }
}
