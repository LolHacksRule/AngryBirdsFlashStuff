package §catch§
{
   import §#e§.AGALMiniAssembler;
   import §,G§.§ u§;
   import §,_§.§-!!§;
   import §,_§.§4K§;
   import §,_§.DisplayObject;
   import §,_§.DisplayObjectContainer;
   import §7!=§.§<V§;
   import §7!=§.Texture;
   import §8E§.§#!C§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §2O§
   {
      
      private static var §1J§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §9N§:int;
      
      private var §return§:Texture;
      
      private var §+$§:String;
      
      private var § !!§:§ u§;
      
      private var §!Y§:VertexBuffer3D;
      
      private var §=J§:VertexBuffer3D;
      
      private var §^<§:VertexBuffer3D;
      
      private var §^!%§:Vector.<uint>;
      
      private var §%r§:IndexBuffer3D;
      
      private var §;6§:Boolean = false;
      
      private var §!!#§:Boolean = false;
      
      public function §2O§()
      {
         super();
         § 9§();
         this.§ !!§ = new § u§(0,true);
         this.§^!%§ = new Vector.<uint>(0);
         this.§9N§ = 0;
         this.§43§();
      }
      
      public static function §;B§(param1:DisplayObjectContainer, param2:Vector.<§2O§>) : void
      {
         §@O§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §@O§(param1:DisplayObject, param2:Vector.<§2O§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§-!!§ = null;
         var _loc13_:§4K§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§2O§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §2O§());
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
               _loc11_.§]@§(_loc10_);
               param3 = §@O§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §-!!§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §-!!§) as §4K§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§'!B§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §2O§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§9`§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function § 9§() : void
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
         var _loc1_:§4@§ = §4@§.§0W§;
         if(_loc1_.§`U§(§@"§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§>f§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§>f§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§;!9§(§@"§(_loc6_),_loc2_.§#,§,_loc3_.§#,§);
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
               _loc2_.§>f§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§<V§.NONE,§<V§.§4s§,§<V§.§2'§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §<V§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §<V§.§4s§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§>f§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§;!9§(§#+§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§#,§,_loc3_.§#,§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §@"§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §#+§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §<V§.§4s§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §]2§() : int
      {
         return this.§9N§;
      }
      
      public function dispose() : void
      {
         if(this.§!Y§)
         {
            this.§!Y§.dispose();
         }
         if(this.§=J§)
         {
            this.§=J§.dispose();
         }
         if(this.§^<§)
         {
            this.§^<§.dispose();
         }
         if(this.§%r§)
         {
            this.§%r§.dispose();
         }
      }
      
      private function §43§() : void
      {
         var _loc1_:int = this.§ !!§.§3K§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§ !!§.§3K§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§^!%§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§^!%§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§^!%§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§^!%§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§^!%§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§^!%§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§!!#§ = true;
      }
      
      private function §8Y§(param1:Context3D) : Boolean
      {
         if(!this.§!!#§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §#!C§();
         }
         if(this.§!Y§)
         {
            this.§!Y§.dispose();
         }
         if(this.§=J§)
         {
            this.§=J§.dispose();
         }
         if(this.§^<§)
         {
            this.§^<§.dispose();
         }
         if(this.§%r§)
         {
            this.§%r§.dispose();
         }
         var _loc2_:int = this.§ !!§.§3K§ / 4;
         this.§!Y§ = param1.createVertexBuffer(_loc2_ * 4,§ u§.§=#§);
         this.§!Y§.uploadFromByteArray(this.§ !!§.§;@§,0,0,_loc2_ * 4);
         this.§=J§ = param1.createVertexBuffer(_loc2_ * 4,§ u§.§-q§);
         this.§=J§.uploadFromVector(this.§ !!§.§2,§,0,_loc2_ * 4);
         this.§^<§ = param1.createVertexBuffer(_loc2_ * 4,§ u§.§18§);
         this.§^<§.uploadFromVector(this.§ !!§.§-h§,0,_loc2_ * 4);
         this.§%r§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§%r§.uploadFromVector(this.§^!%§,0,_loc2_ * 6);
         this.§!!#§ = false;
         return true;
      }
      
      private function §6f§(param1:Context3D) : void
      {
         if(!this.§8Y§(param1))
         {
            this.§!Y§.uploadFromByteArray(this.§ !!§.§;@§,0,0,this.§9N§ * 4);
            if(this.§;6§)
            {
               this.§=J§.uploadFromVector(this.§ !!§.§2,§,0,this.§9N§ * 4);
            }
            this.§^<§.uploadFromVector(this.§ !!§.§-h§,0,this.§9N§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§9N§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§ !!§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§return§ ? §#+§(_loc5_,this.§return§.mipMapping,this.§return§.repeat,this.§+$§,this.§;6§) : §@"§(_loc5_);
         §'d§.§1f§(param1,_loc4_);
         this.§6f§(param1);
         param1.setProgram(§4@§.§0W§.§0!<§(_loc6_));
         param1.setVertexBufferAt(0,this.§^<§,§ u§.§`&§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§return§ == null || this.§;6§)
         {
            param1.setVertexBufferAt(2,this.§=J§,§ u§.§<4§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §1J§[0] = §1J§[1] = §1J§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §1J§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§1J§,1);
         }
         if(this.§return§)
         {
            param1.setTextureAt(0,this.§return§.getBase(param1));
            param1.setVertexBufferAt(1,this.§!Y§,§ u§.§]!$§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§%r§,0,this.§9N§ * 2);
         if(this.§return§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§return§ == null || this.§;6§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§9N§ = 0;
         this.§;6§ = false;
         this.§return§ = null;
         this.§+$§ = null;
      }
      
      public function §9`§(param1:§-!!§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§9N§ + 1 > this.§ !!§.§3K§ / 4)
         {
            this.§43§();
         }
         if(this.§9N§ == 0)
         {
            this.§return§ = param3;
            this.§+$§ = param4;
            this.§ !!§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§9N§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§ !!§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§;6§ = true;
         }
         ++this.§9N§;
      }
      
      public function §'!B§(param1:§-!!§, param2:Texture, param3:String) : Boolean
      {
         if(this.§return§ != null && param2 != null)
         {
            return this.§return§.root != param2.root || this.§return§.repeat != param2.repeat || this.§+$§ != param3 || this.§;6§ != param1.useColor || this.§9N§ == 8192;
         }
         if(this.§return§ == null && param2 == null)
         {
            return false;
         }
         return this.§9N§ != 0 || this.§;6§ != param1.useColor;
      }
   }
}
