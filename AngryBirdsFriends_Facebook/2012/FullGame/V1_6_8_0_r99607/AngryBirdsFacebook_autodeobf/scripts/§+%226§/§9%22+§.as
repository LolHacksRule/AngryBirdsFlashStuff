package §+"6§
{
   import §6!3§.§1!+§;
   import §<L§.§=v§;
   import §<L§.Texture;
   import §>!+§.§2!%§;
   import §>J§.AGALMiniAssembler;
   import §]&§.§-§;
   import §]&§.DisplayObject;
   import §]&§.DisplayObjectContainer;
   import §]&§.§[T§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §9"+§
   {
      
      private static var §=!L§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §4r§:int;
      
      private var §7l§:Texture;
      
      private var §8"1§:String;
      
      private var §6" §:§2!%§;
      
      private var §>"9§:VertexBuffer3D;
      
      private var §0N§:VertexBuffer3D;
      
      private var §7J§:VertexBuffer3D;
      
      private var §^!=§:Vector.<uint>;
      
      private var §1!!§:IndexBuffer3D;
      
      private var §=Q§:Boolean = false;
      
      private var §4!X§:Boolean = false;
      
      public function §9"+§()
      {
         super();
         §9"5§();
         this.§6" § = new §2!%§(0,true);
         this.§^!=§ = new Vector.<uint>(0);
         this.§4r§ = 0;
         this.§;"#§();
      }
      
      public static function §&"%§(param1:DisplayObjectContainer, param2:Vector.<§9"+§>) : void
      {
         §&5§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §&5§(param1:DisplayObject, param2:Vector.<§9"+§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§[T§ = null;
         var _loc13_:§-§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§9"+§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §9"+§());
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
               _loc11_.§2!z§(_loc10_);
               param3 = §&5§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §[T§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §[T§) as §-§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§<"@§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §9"+§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§'C§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §9"5§() : void
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
         var _loc1_:§5!H§ = §5!H§.§%n§;
         if(_loc1_.§`"?§(get(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§,R§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§,R§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§[!>§(get(_loc6_),_loc2_.§="=§,_loc3_.§="=§);
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
               _loc2_.§,R§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§=v§.NONE,§=v§.§0!R§,§=v§.§+$§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §=v§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §=v§.§0!R§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§,R§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§[!>§(§7!j§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§="=§,_loc3_.§="=§);
                     }
                  }
               }
            }
         }
      }
      
      public static function get(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §7!j§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §=v§.§0!R§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §^d§() : int
      {
         return this.§4r§;
      }
      
      public function dispose() : void
      {
         if(this.§>"9§)
         {
            this.§>"9§.dispose();
         }
         if(this.§0N§)
         {
            this.§0N§.dispose();
         }
         if(this.§7J§)
         {
            this.§7J§.dispose();
         }
         if(this.§1!!§)
         {
            this.§1!!§.dispose();
         }
      }
      
      private function §;"#§() : void
      {
         var _loc1_:int = this.§6" §.§<"8§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§6" §.§<"8§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§^!=§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§^!=§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§^!=§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§^!=§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§^!=§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§^!=§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§4!X§ = true;
      }
      
      private function §?!T§(param1:Context3D) : Boolean
      {
         if(!this.§4!X§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §1!+§();
         }
         if(this.§>"9§)
         {
            this.§>"9§.dispose();
         }
         if(this.§0N§)
         {
            this.§0N§.dispose();
         }
         if(this.§7J§)
         {
            this.§7J§.dispose();
         }
         if(this.§1!!§)
         {
            this.§1!!§.dispose();
         }
         var _loc2_:int = this.§6" §.§<"8§ / 4;
         this.§>"9§ = param1.createVertexBuffer(_loc2_ * 4,§2!%§.§!!%§);
         this.§>"9§.uploadFromByteArray(this.§6" §.§@"@§,0,0,_loc2_ * 4);
         this.§0N§ = param1.createVertexBuffer(_loc2_ * 4,§2!%§.§^!j§);
         this.§0N§.uploadFromVector(this.§6" §.§=!W§,0,_loc2_ * 4);
         this.§7J§ = param1.createVertexBuffer(_loc2_ * 4,§2!%§.§;o§);
         this.§7J§.uploadFromVector(this.§6" §.§]! §,0,_loc2_ * 4);
         this.§1!!§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§1!!§.uploadFromVector(this.§^!=§,0,_loc2_ * 6);
         this.§4!X§ = false;
         return true;
      }
      
      private function §[!4§(param1:Context3D) : void
      {
         if(!this.§?!T§(param1))
         {
            this.§>"9§.uploadFromByteArray(this.§6" §.§@"@§,0,0,this.§4r§ * 4);
            if(this.§=Q§)
            {
               this.§0N§.uploadFromVector(this.§6" §.§=!W§,0,this.§4r§ * 4);
            }
            this.§7J§.uploadFromVector(this.§6" §.§]! §,0,this.§4r§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§4r§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§6" §.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§7l§ ? §7!j§(_loc5_,this.§7l§.mipMapping,this.§7l§.repeat,this.§8"1§,this.§=Q§) : get(_loc5_);
         §2!6§.§`!O§(param1,_loc4_);
         this.§[!4§(param1);
         param1.setProgram(§5!H§.§%n§.§?!a§(_loc6_));
         param1.setVertexBufferAt(0,this.§7J§,§2!%§.§?8§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§7l§ == null || this.§=Q§)
         {
            param1.setVertexBufferAt(2,this.§0N§,§2!%§.§@!0§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §=!L§[0] = §=!L§[1] = §=!L§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §=!L§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§=!L§,1);
         }
         if(this.§7l§)
         {
            param1.setTextureAt(0,this.§7l§.getBase(param1));
            param1.setVertexBufferAt(1,this.§>"9§,§2!%§.§"_§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§1!!§,0,this.§4r§ * 2);
         if(this.§7l§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§7l§ == null || this.§=Q§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§4r§ = 0;
         this.§=Q§ = false;
         this.§7l§ = null;
         this.§8"1§ = null;
      }
      
      public function §'C§(param1:§[T§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§4r§ + 1 > this.§6" §.§<"8§ / 4)
         {
            this.§;"#§();
         }
         if(this.§4r§ == 0)
         {
            this.§7l§ = param3;
            this.§8"1§ = param4;
            this.§6" §.§]!v§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§4r§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§6" §,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§=Q§ = true;
         }
         ++this.§4r§;
      }
      
      public function §<"@§(param1:§[T§, param2:Texture, param3:String) : Boolean
      {
         if(this.§7l§ != null && param2 != null)
         {
            return this.§7l§.root != param2.root || this.§7l§.repeat != param2.repeat || this.§8"1§ != param3 || this.§=Q§ != param1.useColor || this.§4r§ == 8192;
         }
         if(this.§7l§ == null && param2 == null)
         {
            return false;
         }
         return this.§4r§ != 0 || this.§=Q§ != param1.useColor;
      }
   }
}
