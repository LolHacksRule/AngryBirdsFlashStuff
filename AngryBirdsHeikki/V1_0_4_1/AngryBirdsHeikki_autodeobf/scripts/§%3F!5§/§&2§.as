package §?!5§
{
   import §!s§.§8!!§;
   import §"!<§.§7$§;
   import §"!<§.Texture;
   import §'z§.§33§;
   import §;!F§.§1!2§;
   import §<!-§.§8J§;
   import §<!-§.DisplayObject;
   import §<!-§.DisplayObjectContainer;
   import §<!-§.§^B§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §&2§
   {
      
      private static var §&d§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §!x§:int;
      
      private var §-o§:Texture;
      
      private var §"@§:String;
      
      private var §#!Y§:§1!2§;
      
      private var §"l§:VertexBuffer3D;
      
      private var §<;§:VertexBuffer3D;
      
      private var §0q§:VertexBuffer3D;
      
      private var §#8§:Vector.<uint>;
      
      private var §5V§:IndexBuffer3D;
      
      private var §0o§:Boolean = false;
      
      private var §0!0§:Boolean = false;
      
      public function §&2§()
      {
         super();
         §]^§();
         this.§#!Y§ = new §1!2§(0,true);
         this.§#8§ = new Vector.<uint>(0);
         this.§!x§ = 0;
         this.§4!A§();
      }
      
      public static function §`0§(param1:DisplayObjectContainer, param2:Vector.<§&2§>) : void
      {
         §5^§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §5^§(param1:DisplayObject, param2:Vector.<§&2§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§8J§ = null;
         var _loc13_:§^B§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§&2§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §&2§());
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
               _loc11_.§=J§(_loc10_);
               param3 = §5^§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §8J§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §8J§) as §^B§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§6!M§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §&2§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§?!1§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §]^§() : void
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
         var _loc1_:§2d§ = §2d§.§0A§;
         if(_loc1_.§&!;§(§,!G§(true)))
         {
            return;
         }
         var _loc2_:§8!!§ = new §8!!§();
         var _loc3_:§8!!§ = new §8!!§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§3=§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§3=§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§5!M§(§,!G§(_loc6_),_loc2_.§!V§,_loc3_.§!V§);
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
               _loc2_.§3=§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§7$§.NONE,§7$§.§6!!§,§7$§.§'@§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §7$§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §7$§.§6!!§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§3=§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§5!M§(§'1§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§!V§,_loc3_.§!V§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §,!G§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §'1§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §7$§.§6!!§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §1]§() : int
      {
         return this.§!x§;
      }
      
      public function dispose() : void
      {
         if(this.§"l§)
         {
            this.§"l§.dispose();
         }
         if(this.§<;§)
         {
            this.§<;§.dispose();
         }
         if(this.§0q§)
         {
            this.§0q§.dispose();
         }
         if(this.§5V§)
         {
            this.§5V§.dispose();
         }
      }
      
      private function §4!A§() : void
      {
         var _loc1_:int = this.§#!Y§.§=C§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§#!Y§.§=C§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§#8§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§#8§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§#8§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§#8§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§#8§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§#8§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§0!0§ = true;
      }
      
      private function §+?§(param1:Context3D) : Boolean
      {
         if(!this.§0!0§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §33§();
         }
         if(this.§"l§)
         {
            this.§"l§.dispose();
         }
         if(this.§<;§)
         {
            this.§<;§.dispose();
         }
         if(this.§0q§)
         {
            this.§0q§.dispose();
         }
         if(this.§5V§)
         {
            this.§5V§.dispose();
         }
         var _loc2_:int = this.§#!Y§.§=C§ / 4;
         this.§"l§ = param1.createVertexBuffer(_loc2_ * 4,§1!2§.§8!6§);
         this.§"l§.uploadFromByteArray(this.§#!Y§.§4!$§,0,0,_loc2_ * 4);
         this.§<;§ = param1.createVertexBuffer(_loc2_ * 4,§1!2§.§65§);
         this.§<;§.uploadFromVector(this.§#!Y§.§0!K§,0,_loc2_ * 4);
         this.§0q§ = param1.createVertexBuffer(_loc2_ * 4,§1!2§.§'^§);
         this.§0q§.uploadFromVector(this.§#!Y§.§#A§,0,_loc2_ * 4);
         this.§5V§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§5V§.uploadFromVector(this.§#8§,0,_loc2_ * 6);
         this.§0!0§ = false;
         return true;
      }
      
      private function §]4§(param1:Context3D) : void
      {
         if(!this.§+?§(param1))
         {
            this.§"l§.uploadFromByteArray(this.§#!Y§.§4!$§,0,0,this.§!x§ * 4);
            if(this.§0o§)
            {
               this.§<;§.uploadFromVector(this.§#!Y§.§0!K§,0,this.§!x§ * 4);
            }
            this.§0q§.uploadFromVector(this.§#!Y§.§#A§,0,this.§!x§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§!x§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§#!Y§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§-o§ ? §'1§(_loc5_,this.§-o§.mipMapping,this.§-o§.repeat,this.§"@§,this.§0o§) : §,!G§(_loc5_);
         §;P§.§=>§(param1,_loc4_);
         this.§]4§(param1);
         param1.setProgram(§2d§.§0A§.§3!<§(_loc6_));
         param1.setVertexBufferAt(0,this.§0q§,§1!2§.§?h§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§-o§ == null || this.§0o§)
         {
            param1.setVertexBufferAt(2,this.§<;§,§1!2§.§#-§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §&d§[0] = §&d§[1] = §&d§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §&d§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§&d§,1);
         }
         if(this.§-o§)
         {
            param1.setTextureAt(0,this.§-o§.getBase(param1));
            param1.setVertexBufferAt(1,this.§"l§,§1!2§.§,o§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§5V§,0,this.§!x§ * 2);
         if(this.§-o§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§-o§ == null || this.§0o§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§!x§ = 0;
         this.§0o§ = false;
         this.§-o§ = null;
         this.§"@§ = null;
      }
      
      public function §?!1§(param1:§8J§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§!x§ + 1 > this.§#!Y§.§=C§ / 4)
         {
            this.§4!A§();
         }
         if(this.§!x§ == 0)
         {
            this.§-o§ = param3;
            this.§"@§ = param4;
            this.§#!Y§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§!x§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§#!Y§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§0o§ = true;
         }
         ++this.§!x§;
      }
      
      public function §6!M§(param1:§8J§, param2:Texture, param3:String) : Boolean
      {
         if(this.§-o§ != null && param2 != null)
         {
            return this.§-o§.root != param2.root || this.§-o§.repeat != param2.repeat || this.§"@§ != param3 || this.§0o§ != param1.useColor || this.§!x§ == 8192;
         }
         if(this.§-o§ == null && param2 == null)
         {
            return false;
         }
         return this.§!x§ != 0 || this.§0o§ != param1.useColor;
      }
   }
}
