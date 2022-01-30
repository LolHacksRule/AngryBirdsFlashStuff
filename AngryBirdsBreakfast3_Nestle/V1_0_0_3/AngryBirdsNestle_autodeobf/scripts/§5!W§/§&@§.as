package §5!W§
{
   import §0!Y§.§#"5§;
   import §0!Y§.§-f§;
   import §0!Y§.DisplayObject;
   import §0!Y§.DisplayObjectContainer;
   import §2J§.§ ""§;
   import §=F§.§>!&§;
   import §^z§.§&!q§;
   import §^z§.Texture;
   import §`!"§.§&-§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §&@§
   {
      
      private static var §-^§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §1>§:int;
      
      private var §[!v§:Texture;
      
      private var §^S§:String;
      
      private var §use§:§&-§;
      
      private var §+0§:VertexBuffer3D;
      
      private var §2M§:VertexBuffer3D;
      
      private var §]!$§:VertexBuffer3D;
      
      private var §,q§:Vector.<uint>;
      
      private var §!![§:IndexBuffer3D;
      
      private var §#!?§:Boolean = false;
      
      private var §2!-§:Boolean = false;
      
      public function §&@§()
      {
         super();
         §5!0§();
         this.§use§ = new §&-§(0,true);
         this.§,q§ = new Vector.<uint>(0);
         this.§1>§ = 0;
         this.§;!q§();
      }
      
      public static function §,!h§(param1:DisplayObjectContainer, param2:Vector.<§&@§>) : void
      {
         §,!l§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §,!l§(param1:DisplayObject, param2:Vector.<§&@§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§-f§ = null;
         var _loc13_:§#"5§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§&@§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §&@§());
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
                  _loc11_.§`2§(_loc10_);
                  param3 = §,!l§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is §-f§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §-f§) as §#"5§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§,"&§(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §&@§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§[!X§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §5!0§() : void
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
         var _loc1_:§>P§ = §>P§.§;_§;
         if(_loc1_.§]@§(§%Y§(true)))
         {
            return;
         }
         var _loc2_:§ ""§ = new § ""§();
         var _loc3_:§ ""§ = new § ""§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§^!O§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§^!O§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§9!8§(§%Y§(_loc6_),_loc2_.§&!O§,_loc3_.§&!O§);
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
               _loc2_.§^!O§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§&!q§.NONE,§&!q§.§2"2§,§&!q§.§2"1§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §&!q§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §&!q§.§2"2§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§^!O§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§9!8§(§4"'§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§&!O§,_loc3_.§&!O§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §%Y§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §4"'§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §&!q§.§2"2§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §?!V§() : int
      {
         return this.§1>§;
      }
      
      public function dispose() : void
      {
         if(this.§+0§)
         {
            this.§+0§.dispose();
         }
         if(this.§2M§)
         {
            this.§2M§.dispose();
         }
         if(this.§]!$§)
         {
            this.§]!$§.dispose();
         }
         if(this.§!![§)
         {
            this.§!![§.dispose();
         }
      }
      
      private function §;!q§() : void
      {
         var _loc1_:int = this.§use§.§@!^§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§use§.§@!^§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§,q§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§,q§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§,q§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§,q§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§,q§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§,q§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§2!-§ = true;
      }
      
      private function §`!g§(param1:Context3D) : Boolean
      {
         if(!this.§2!-§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §>!&§();
         }
         if(this.§+0§)
         {
            this.§+0§.dispose();
         }
         if(this.§2M§)
         {
            this.§2M§.dispose();
         }
         if(this.§]!$§)
         {
            this.§]!$§.dispose();
         }
         if(this.§!![§)
         {
            this.§!![§.dispose();
         }
         var _loc2_:int = this.§use§.§@!^§ / 4;
         this.§+0§ = param1.createVertexBuffer(_loc2_ * 4,§&-§.§7I§);
         this.§+0§.uploadFromByteArray(this.§use§.§^"0§,0,0,_loc2_ * 4);
         this.§2M§ = param1.createVertexBuffer(_loc2_ * 4,§&-§.§[f§);
         this.§2M§.uploadFromVector(this.§use§.§>!$§,0,_loc2_ * 4);
         this.§]!$§ = param1.createVertexBuffer(_loc2_ * 4,§&-§.§9!W§);
         this.§]!$§.uploadFromVector(this.§use§.§="%§,0,_loc2_ * 4);
         this.§!![§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§!![§.uploadFromVector(this.§,q§,0,_loc2_ * 6);
         this.§2!-§ = false;
         return true;
      }
      
      private function §"g§(param1:Context3D) : void
      {
         if(!this.§`!g§(param1))
         {
            this.§+0§.uploadFromByteArray(this.§use§.§^"0§,0,0,this.§1>§ * 4);
            if(this.§#!?§)
            {
               this.§2M§.uploadFromVector(this.§use§.§>!$§,0,this.§1>§ * 4);
            }
            this.§]!$§.uploadFromVector(this.§use§.§="%§,0,this.§1>§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§1>§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§use§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§[!v§ ? §4"'§(_loc5_,this.§[!v§.mipMapping,this.§[!v§.repeat,this.§^S§,this.§#!?§) : §%Y§(_loc5_);
         §`+§.§+6§(param1,_loc4_);
         this.§"g§(param1);
         param1.setProgram(§>P§.§;_§.§<!M§(_loc6_));
         param1.setVertexBufferAt(0,this.§]!$§,§&-§.§6!q§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§[!v§ == null || this.§#!?§)
         {
            param1.setVertexBufferAt(2,this.§2M§,§&-§.§>!"§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §-^§[0] = §-^§[1] = §-^§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §-^§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§-^§,1);
         }
         if(this.§[!v§)
         {
            param1.setTextureAt(0,this.§[!v§.getBase(param1));
            param1.setVertexBufferAt(1,this.§+0§,§&-§.§7!%§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§!![§,0,this.§1>§ * 2);
         if(this.§[!v§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§[!v§ == null || this.§#!?§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§1>§ = 0;
         this.§#!?§ = false;
         this.§[!v§ = null;
         this.§^S§ = null;
      }
      
      public function §[!X§(param1:§-f§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§1>§ + 1 > this.§use§.§@!^§ / 4)
         {
            this.§;!q§();
         }
         if(this.§1>§ == 0)
         {
            this.§[!v§ = param3;
            this.§^S§ = param4;
            this.§use§.§=O§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§#!?§ = true;
            }
         }
         var _loc6_:int = this.§1>§ * 4;
         param1.copyVertexDataTo(this.§use§,_loc6_,param2,param5);
         ++this.§1>§;
      }
      
      public function §,"&§(param1:§-f§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§[!v§ != null && param2 != null)
         {
            return this.§[!v§.root != param2.root || this.§[!v§.repeat != param2.repeat || this.§^S§ != param3 || this.§#!?§ != param1.useColor || this.§1>§ == 8192;
         }
         if(this.§[!v§ == null && param2 == null)
         {
            return false;
         }
         return this.§1>§ != 0 || this.§#!?§ != (param1.useColor || param4 != 1);
      }
   }
}
