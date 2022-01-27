package §^h§
{
   import §,h§.AGALMiniAssembler;
   import §-!A§.§1!K§;
   import §<!N§.§&M§;
   import §<!N§.DisplayObject;
   import §<!N§.DisplayObjectContainer;
   import §<!N§.§^3§;
   import §=!C§.§>Z§;
   import §@M§.§"y§;
   import §@M§.Texture;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §^M§
   {
      
      private static var §23§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §9!#§:int;
      
      private var §60§:Texture;
      
      private var §@O§:String;
      
      private var §2!6§:§1!K§;
      
      private var §'x§:VertexBuffer3D;
      
      private var §@'§:VertexBuffer3D;
      
      private var §[4§:VertexBuffer3D;
      
      private var §7_§:Vector.<uint>;
      
      private var §!1§:IndexBuffer3D;
      
      private var §1!%§:Boolean = false;
      
      private var §`!L§:Boolean = false;
      
      public function §^M§()
      {
         super();
         § !&§();
         this.§2!6§ = new §1!K§(0,true);
         this.§7_§ = new Vector.<uint>(0);
         this.§9!#§ = 0;
         this.§]!F§();
      }
      
      public static function §3y§(param1:DisplayObjectContainer, param2:Vector.<§^M§>) : void
      {
         §8c§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §8c§(param1:DisplayObject, param2:Vector.<§^M§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§^3§ = null;
         var _loc13_:§&M§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§^M§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §^M§());
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
               _loc11_.§>;§(_loc10_);
               param3 = §8c§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §^3§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §^3§) as §&M§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§[0§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §^M§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§`L§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function § !&§() : void
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
         var _loc1_:§2l§ = §2l§.§7K§;
         if(_loc1_.§<$§(§3!,§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§-e§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§-e§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§5=§(§3!,§(_loc6_),_loc2_.§^!§,_loc3_.§^!§);
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
               _loc2_.§-e§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§"y§.NONE,§"y§.§const§,§"y§.final];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §"y§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §"y§.§const§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§-e§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§5=§(§6!1§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§^!§,_loc3_.§^!§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §3!,§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §6!1§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §"y§.§const§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §^j§() : int
      {
         return this.§9!#§;
      }
      
      public function dispose() : void
      {
         if(this.§'x§)
         {
            this.§'x§.dispose();
         }
         if(this.§@'§)
         {
            this.§@'§.dispose();
         }
         if(this.§[4§)
         {
            this.§[4§.dispose();
         }
         if(this.§!1§)
         {
            this.§!1§.dispose();
         }
      }
      
      private function §]!F§() : void
      {
         var _loc1_:int = this.§2!6§.§2r§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§2!6§.§2r§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§7_§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§7_§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§7_§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§7_§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§7_§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§7_§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§`!L§ = true;
      }
      
      private function §^!5§(param1:Context3D) : Boolean
      {
         if(!this.§`!L§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §>Z§();
         }
         if(this.§'x§)
         {
            this.§'x§.dispose();
         }
         if(this.§@'§)
         {
            this.§@'§.dispose();
         }
         if(this.§[4§)
         {
            this.§[4§.dispose();
         }
         if(this.§!1§)
         {
            this.§!1§.dispose();
         }
         var _loc2_:int = this.§2!6§.§2r§ / 4;
         this.§'x§ = param1.createVertexBuffer(_loc2_ * 4,§1!K§.§&!&§);
         this.§'x§.uploadFromByteArray(this.§2!6§.§7!9§,0,0,_loc2_ * 4);
         this.§@'§ = param1.createVertexBuffer(_loc2_ * 4,§1!K§.§&!1§);
         this.§@'§.uploadFromVector(this.§2!6§.§4!#§,0,_loc2_ * 4);
         this.§[4§ = param1.createVertexBuffer(_loc2_ * 4,§1!K§.§>!9§);
         this.§[4§.uploadFromVector(this.§2!6§.§>!6§,0,_loc2_ * 4);
         this.§!1§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§!1§.uploadFromVector(this.§7_§,0,_loc2_ * 6);
         this.§`!L§ = false;
         return true;
      }
      
      private function §[y§(param1:Context3D) : void
      {
         if(!this.§^!5§(param1))
         {
            this.§'x§.uploadFromByteArray(this.§2!6§.§7!9§,0,0,this.§9!#§ * 4);
            if(this.§1!%§)
            {
               this.§@'§.uploadFromVector(this.§2!6§.§4!#§,0,this.§9!#§ * 4);
            }
            this.§[4§.uploadFromVector(this.§2!6§.§>!6§,0,this.§9!#§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§9!#§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§2!6§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§60§ ? §6!1§(_loc5_,this.§60§.mipMapping,this.§60§.repeat,this.§@O§,this.§1!%§) : §3!,§(_loc5_);
         §?!D§.§21§(param1,_loc4_);
         this.§[y§(param1);
         param1.setProgram(§2l§.§7K§.§"!'§(_loc6_));
         param1.setVertexBufferAt(0,this.§[4§,§1!K§.§6!3§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§60§ == null || this.§1!%§)
         {
            param1.setVertexBufferAt(2,this.§@'§,§1!K§.§ U§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §23§[0] = §23§[1] = §23§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §23§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§23§,1);
         }
         if(this.§60§)
         {
            param1.setTextureAt(0,this.§60§.getBase(param1));
            param1.setVertexBufferAt(1,this.§'x§,§1!K§.§ <§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§!1§,0,this.§9!#§ * 2);
         if(this.§60§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§60§ == null || this.§1!%§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§9!#§ = 0;
         this.§1!%§ = false;
         this.§60§ = null;
         this.§@O§ = null;
      }
      
      public function §`L§(param1:§^3§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§9!#§ + 1 > this.§2!6§.§2r§ / 4)
         {
            this.§]!F§();
         }
         if(this.§9!#§ == 0)
         {
            this.§60§ = param3;
            this.§@O§ = param4;
            this.§2!6§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§9!#§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§2!6§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§1!%§ = true;
         }
         ++this.§9!#§;
      }
      
      public function §[0§(param1:§^3§, param2:Texture, param3:String) : Boolean
      {
         if(this.§60§ != null && param2 != null)
         {
            return this.§60§.root != param2.root || this.§60§.repeat != param2.repeat || this.§@O§ != param3 || this.§1!%§ != param1.useColor || this.§9!#§ == 8192;
         }
         if(this.§60§ == null && param2 == null)
         {
            return false;
         }
         return this.§9!#§ != 0 || this.§1!%§ != param1.useColor;
      }
   }
}
