package §`V§
{
   import § !=§.§0F§;
   import § !=§.DisplayObject;
   import § !=§.DisplayObjectContainer;
   import § !=§.§break§;
   import § !a§.§>a§;
   import § !a§.Texture;
   import §,!_§.§=s§;
   import §=D§.§3a§;
   import §^$§.§17§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §[T§
   {
      
      private static var §"^§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §[!<§:int;
      
      private var §@M§:Texture;
      
      private var §9!_§:String;
      
      private var §[h§:§3a§;
      
      private var §?@§:VertexBuffer3D;
      
      private var §null§:VertexBuffer3D;
      
      private var § true§:VertexBuffer3D;
      
      private var §7!F§:Vector.<uint>;
      
      private var §3!5§:IndexBuffer3D;
      
      private var §%X§:Boolean = false;
      
      private var §#!x§:Boolean = false;
      
      public function §[T§()
      {
         super();
         §"%§();
         this.§[h§ = new §3a§(0,true);
         this.§7!F§ = new Vector.<uint>(0);
         this.§[!<§ = 0;
         this.§4#§();
      }
      
      public static function §"!Z§(param1:DisplayObjectContainer, param2:Vector.<§[T§>) : void
      {
         §]"2§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §]"2§(param1:DisplayObject, param2:Vector.<§[T§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§break§ = null;
         var _loc13_:§0F§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§[T§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §[T§());
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
                  _loc11_.§=,§(_loc10_);
                  param3 = §]"2§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is §break§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §break§) as §0F§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§@&§(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §[T§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§%o§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §"%§() : void
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
         var _loc1_:§;6§ = §;6§.§@X§;
         if(_loc1_.§[m§(§%;§(true)))
         {
            return;
         }
         var _loc2_:§=s§ = new §=s§();
         var _loc3_:§=s§ = new §=s§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§4g§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§4g§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§1!p§(§%;§(_loc6_),_loc2_.§]Z§,_loc3_.§]Z§);
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
               _loc2_.§4g§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§>a§.NONE,§>a§.§4!k§,§>a§.§-!"§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §>a§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §>a§.§4!k§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§4g§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§1!p§(§=!G§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§]Z§,_loc3_.§]Z§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §%;§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §=!G§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §>a§.§4!k§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §2!g§() : int
      {
         return this.§[!<§;
      }
      
      public function dispose() : void
      {
         if(this.§?@§)
         {
            this.§?@§.dispose();
         }
         if(this.§null§)
         {
            this.§null§.dispose();
         }
         if(this.§ true§)
         {
            this.§ true§.dispose();
         }
         if(this.§3!5§)
         {
            this.§3!5§.dispose();
         }
      }
      
      private function §4#§() : void
      {
         var _loc1_:int = this.§[h§.§ !#§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§[h§.§ !#§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§7!F§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§7!F§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§7!F§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§7!F§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§7!F§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§7!F§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§#!x§ = true;
      }
      
      private function §3!U§(param1:Context3D) : Boolean
      {
         if(!this.§#!x§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §17§();
         }
         if(this.§?@§)
         {
            this.§?@§.dispose();
         }
         if(this.§null§)
         {
            this.§null§.dispose();
         }
         if(this.§ true§)
         {
            this.§ true§.dispose();
         }
         if(this.§3!5§)
         {
            this.§3!5§.dispose();
         }
         var _loc2_:int = this.§[h§.§ !#§ / 4;
         this.§?@§ = param1.createVertexBuffer(_loc2_ * 4,§3a§.§7K§);
         this.§?@§.uploadFromByteArray(this.§[h§.§4!9§,0,0,_loc2_ * 4);
         this.§null§ = param1.createVertexBuffer(_loc2_ * 4,§3a§.§3!T§);
         this.§null§.uploadFromVector(this.§[h§.§%!@§,0,_loc2_ * 4);
         this.§ true§ = param1.createVertexBuffer(_loc2_ * 4,§3a§.§8K§);
         this.§ true§.uploadFromVector(this.§[h§.§#u§,0,_loc2_ * 4);
         this.§3!5§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§3!5§.uploadFromVector(this.§7!F§,0,_loc2_ * 6);
         this.§#!x§ = false;
         return true;
      }
      
      private function §;X§(param1:Context3D) : void
      {
         if(!this.§3!U§(param1))
         {
            this.§?@§.uploadFromByteArray(this.§[h§.§4!9§,0,0,this.§[!<§ * 4);
            if(this.§%X§)
            {
               this.§null§.uploadFromVector(this.§[h§.§%!@§,0,this.§[!<§ * 4);
            }
            this.§ true§.uploadFromVector(this.§[h§.§#u§,0,this.§[!<§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§[!<§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§[h§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§@M§ ? §=!G§(_loc5_,this.§@M§.mipMapping,this.§@M§.repeat,this.§9!_§,this.§%X§) : §%;§(_loc5_);
         §^M§.§?!W§(param1,_loc4_);
         this.§;X§(param1);
         param1.setProgram(§;6§.§@X§.§^!<§(_loc6_));
         param1.setVertexBufferAt(0,this.§ true§,§3a§.§4!e§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§@M§ == null || this.§%X§)
         {
            param1.setVertexBufferAt(2,this.§null§,§3a§.§7!D§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §"^§[0] = §"^§[1] = §"^§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §"^§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§"^§,1);
         }
         if(this.§@M§)
         {
            param1.setTextureAt(0,this.§@M§.getBase(param1));
            param1.setVertexBufferAt(1,this.§?@§,§3a§.§5!-§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§3!5§,0,this.§[!<§ * 2);
         if(this.§@M§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§@M§ == null || this.§%X§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§[!<§ = 0;
         this.§%X§ = false;
         this.§@M§ = null;
         this.§9!_§ = null;
      }
      
      public function §%o§(param1:§break§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§[!<§ + 1 > this.§[h§.§ !#§ / 4)
         {
            this.§4#§();
         }
         if(this.§[!<§ == 0)
         {
            this.§@M§ = param3;
            this.§9!_§ = param4;
            this.§[h§.§1I§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§%X§ = true;
            }
         }
         var _loc6_:int = this.§[!<§ * 4;
         param1.copyVertexDataTo(this.§[h§,_loc6_,param2,param5);
         ++this.§[!<§;
      }
      
      public function §@&§(param1:§break§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§@M§ != null && param2 != null)
         {
            return this.§@M§.root != param2.root || this.§@M§.repeat != param2.repeat || this.§9!_§ != param3 || this.§%X§ != param1.useColor || this.§[!<§ == 8192;
         }
         if(this.§@M§ == null && param2 == null)
         {
            return false;
         }
         return this.§[!<§ != 0 || this.§%X§ != (param1.useColor || param4 != 1);
      }
   }
}
