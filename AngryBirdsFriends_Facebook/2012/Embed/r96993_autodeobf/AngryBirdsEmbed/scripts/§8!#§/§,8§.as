package §8!#§
{
   import §6D§.§8[§;
   import §8j§.§=§;
   import §>u§.§?!8§;
   import §>u§.Texture;
   import §]!6§.§8D§;
   import §]!6§.§>T§;
   import §]!6§.DisplayObject;
   import §]!6§.DisplayObjectContainer;
   import §]i§.AGALMiniAssembler;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §,8§
   {
      
      private static var §9W§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §9!8§:int;
      
      private var §function§:Texture;
      
      private var §?!D§:String;
      
      private var §'U§:§=§;
      
      private var §<!@§:VertexBuffer3D;
      
      private var §5j§:VertexBuffer3D;
      
      private var §%N§:VertexBuffer3D;
      
      private var §3!B§:Vector.<uint>;
      
      private var §%<§:IndexBuffer3D;
      
      private var §<!#§:Boolean = false;
      
      private var §2g§:Boolean = false;
      
      public function §,8§()
      {
         super();
         §]g§();
         this.§'U§ = new §=§(0,true);
         this.§3!B§ = new Vector.<uint>(0);
         this.§9!8§ = 0;
         this.§[t§();
      }
      
      public static function §@!G§(param1:DisplayObjectContainer, param2:Vector.<§,8§>) : void
      {
         §2!"§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §2!"§(param1:DisplayObject, param2:Vector.<§,8§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§8D§ = null;
         var _loc13_:§>T§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§,8§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §,8§());
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
               _loc11_.§-4§(_loc10_);
               param3 = §2!"§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §8D§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §8D§) as §>T§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§2n§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §,8§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§;`§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §]g§() : void
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
         var _loc1_:§<n§ = §<n§.§?@§;
         if(_loc1_.§&!>§(§5!F§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§+!4§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§+!4§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§#z§(§5!F§(_loc6_),_loc2_.§=^§,_loc3_.§=^§);
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
               _loc2_.§+!4§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§?!8§.NONE,§?!8§.§7o§,§?!8§.§&<§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §?!8§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §?!8§.§7o§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§+!4§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§#z§(§^m§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§=^§,_loc3_.§=^§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §5!F§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §^m§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §?!8§.§7o§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §?-§() : int
      {
         return this.§9!8§;
      }
      
      public function dispose() : void
      {
         if(this.§<!@§)
         {
            this.§<!@§.dispose();
         }
         if(this.§5j§)
         {
            this.§5j§.dispose();
         }
         if(this.§%N§)
         {
            this.§%N§.dispose();
         }
         if(this.§%<§)
         {
            this.§%<§.dispose();
         }
      }
      
      private function §[t§() : void
      {
         var _loc1_:int = this.§'U§.§@!7§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§'U§.§@!7§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§3!B§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§3!B§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§3!B§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§3!B§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§3!B§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§3!B§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§2g§ = true;
      }
      
      private function §&!A§(param1:Context3D) : Boolean
      {
         if(!this.§2g§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §8[§();
         }
         if(this.§<!@§)
         {
            this.§<!@§.dispose();
         }
         if(this.§5j§)
         {
            this.§5j§.dispose();
         }
         if(this.§%N§)
         {
            this.§%N§.dispose();
         }
         if(this.§%<§)
         {
            this.§%<§.dispose();
         }
         var _loc2_:int = this.§'U§.§@!7§ / 4;
         this.§<!@§ = param1.createVertexBuffer(_loc2_ * 4,§=§.§;[§);
         this.§<!@§.uploadFromByteArray(this.§'U§.§?!F§,0,0,_loc2_ * 4);
         this.§5j§ = param1.createVertexBuffer(_loc2_ * 4,§=§.§@+§);
         this.§5j§.uploadFromVector(this.§'U§.§%F§,0,_loc2_ * 4);
         this.§%N§ = param1.createVertexBuffer(_loc2_ * 4,§=§.§@6§);
         this.§%N§.uploadFromVector(this.§'U§.§0!=§,0,_loc2_ * 4);
         this.§%<§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§%<§.uploadFromVector(this.§3!B§,0,_loc2_ * 6);
         this.§2g§ = false;
         return true;
      }
      
      private function §+[§(param1:Context3D) : void
      {
         if(!this.§&!A§(param1))
         {
            this.§<!@§.uploadFromByteArray(this.§'U§.§?!F§,0,0,this.§9!8§ * 4);
            if(this.§<!#§)
            {
               this.§5j§.uploadFromVector(this.§'U§.§%F§,0,this.§9!8§ * 4);
            }
            this.§%N§.uploadFromVector(this.§'U§.§0!=§,0,this.§9!8§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§9!8§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§'U§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§function§ ? §^m§(_loc5_,this.§function§.mipMapping,this.§function§.repeat,this.§?!D§,this.§<!#§) : §5!F§(_loc5_);
         §-!§.§45§(param1,_loc4_);
         this.§+[§(param1);
         param1.setProgram(§<n§.§?@§.§8T§(_loc6_));
         param1.setVertexBufferAt(0,this.§%N§,§=§.§`d§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§function§ == null || this.§<!#§)
         {
            param1.setVertexBufferAt(2,this.§5j§,§=§.§?l§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §9W§[0] = §9W§[1] = §9W§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §9W§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§9W§,1);
         }
         if(this.§function§)
         {
            param1.setTextureAt(0,this.§function§.getBase(param1));
            param1.setVertexBufferAt(1,this.§<!@§,§=§.§^!§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§%<§,0,this.§9!8§ * 2);
         if(this.§function§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§function§ == null || this.§<!#§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§9!8§ = 0;
         this.§<!#§ = false;
         this.§function§ = null;
         this.§?!D§ = null;
      }
      
      public function §;`§(param1:§8D§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§9!8§ + 1 > this.§'U§.§@!7§ / 4)
         {
            this.§[t§();
         }
         if(this.§9!8§ == 0)
         {
            this.§function§ = param3;
            this.§?!D§ = param4;
            this.§'U§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§9!8§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§'U§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§<!#§ = true;
         }
         ++this.§9!8§;
      }
      
      public function §2n§(param1:§8D§, param2:Texture, param3:String) : Boolean
      {
         if(this.§function§ != null && param2 != null)
         {
            return this.§function§.root != param2.root || this.§function§.repeat != param2.repeat || this.§?!D§ != param3 || this.§<!#§ != param1.useColor || this.§9!8§ == 8192;
         }
         if(this.§function§ == null && param2 == null)
         {
            return false;
         }
         return this.§9!8§ != 0 || this.§<!#§ != param1.useColor;
      }
   }
}
