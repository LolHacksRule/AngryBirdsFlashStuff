package §&I§
{
   import §&!6§.AGALMiniAssembler;
   import §&!7§.§"`§;
   import §&!7§.Texture;
   import §->§.§2! §;
   import §->§.§7d§;
   import §->§.DisplayObject;
   import §->§.DisplayObjectContainer;
   import §7!9§.§>O§;
   import §<§.§?!5§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §8]§
   {
      
      private static var §"L§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §,Q§:int;
      
      private var §"D§:Texture;
      
      private var §>r§:String;
      
      private var §#f§:§?!5§;
      
      private var §'U§:VertexBuffer3D;
      
      private var §4M§:VertexBuffer3D;
      
      private var §%p§:VertexBuffer3D;
      
      private var §0I§:Vector.<uint>;
      
      private var §0T§:IndexBuffer3D;
      
      private var §[q§:Boolean = false;
      
      private var §0^§:Boolean = false;
      
      public function §8]§()
      {
         super();
         §<!A§();
         this.§#f§ = new §?!5§(0,true);
         this.§0I§ = new Vector.<uint>(0);
         this.§,Q§ = 0;
         this.§7a§();
      }
      
      public static function §6+§(param1:DisplayObjectContainer, param2:Vector.<§8]§>) : void
      {
         §3!@§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §3!@§(param1:DisplayObject, param2:Vector.<§8]§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§7d§ = null;
         var _loc13_:§2! § = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§8]§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §8]§());
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
               §?!§.§;o§(_loc10_,_loc11_);
               param3 = §3!@§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §7d§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §7d§) as §2! §) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§ !E§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §8]§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§?d§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §<!A§() : void
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
         var _loc1_:§3! § = §3! §.§"n§;
         if(_loc1_.§"O§(§'!'§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§-!9§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§-!9§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§;m§(§'!'§(_loc6_),_loc2_.§%!F§,_loc3_.§%!F§);
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
               _loc8_ = [§"`§.NONE,§"`§.§ !=§,§"`§.§&!"§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §"`§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §"`§.§ !=§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§-!9§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§;m§(§2!8§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§%!F§,_loc3_.§%!F§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §'!'§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §2!8§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §"`§.§ !=§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get § x§() : int
      {
         return this.§,Q§;
      }
      
      public function dispose() : void
      {
         if(this.§'U§)
         {
            this.§'U§.dispose();
         }
         if(this.§4M§)
         {
            this.§4M§.dispose();
         }
         if(this.§%p§)
         {
            this.§%p§.dispose();
         }
         if(this.§0T§)
         {
            this.§0T§.dispose();
         }
      }
      
      private function §7a§() : void
      {
         var _loc1_:int = this.§#f§.§!o§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§#f§.§!o§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§0I§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§0I§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§0I§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§0I§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§0I§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§0I§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§0^§ = true;
      }
      
      private function §`Y§(param1:Context3D) : Boolean
      {
         if(!this.§0^§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §>O§();
         }
         if(this.§'U§)
         {
            this.§'U§.dispose();
         }
         if(this.§4M§)
         {
            this.§4M§.dispose();
         }
         if(this.§%p§)
         {
            this.§%p§.dispose();
         }
         if(this.§0T§)
         {
            this.§0T§.dispose();
         }
         var _loc2_:int = this.§#f§.§!o§ / 4;
         this.§'U§ = param1.createVertexBuffer(_loc2_ * 4,§?!5§.§'&§);
         this.§'U§.uploadFromByteArray(this.§#f§.§ G§,0,0,_loc2_ * 4);
         this.§4M§ = param1.createVertexBuffer(_loc2_ * 4,§?!5§.§+9§);
         this.§4M§.uploadFromVector(this.§#f§.§=-§,0,_loc2_ * 4);
         this.§%p§ = param1.createVertexBuffer(_loc2_ * 4,§?!5§.§]4§);
         this.§%p§.uploadFromVector(this.§#f§.§16§,0,_loc2_ * 4);
         this.§0T§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§0T§.uploadFromVector(this.§0I§,0,_loc2_ * 6);
         this.§0^§ = false;
         return true;
      }
      
      private function §``§(param1:Context3D) : void
      {
         if(!this.§`Y§(param1))
         {
            this.§'U§.uploadFromByteArray(this.§#f§.§ G§,0,0,this.§,Q§ * 4);
            if(this.§[q§)
            {
               this.§4M§.uploadFromVector(this.§#f§.§=-§,0,this.§,Q§ * 4);
            }
            this.§%p§.uploadFromVector(this.§#f§.§16§,0,this.§,Q§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§,Q§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§#f§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§"D§ ? §2!8§(_loc5_,this.§"D§.mipMapping,this.§"D§.repeat,this.§>r§,this.§[q§) : §'!'§(_loc5_);
         §?!§.§"!'§(param1,_loc4_);
         this.§``§(param1);
         param1.setProgram(§3! §.§"n§.§0d§(_loc6_));
         param1.setVertexBufferAt(0,this.§%p§,§?!5§.§@!;§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§"D§ == null || this.§[q§)
         {
            param1.setVertexBufferAt(2,this.§4M§,§?!5§.§+!C§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §"L§[0] = §"L§[1] = §"L§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §"L§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§"L§,1);
         }
         if(this.§"D§)
         {
            param1.setTextureAt(0,this.§"D§.getBase(param1));
            param1.setVertexBufferAt(1,this.§'U§,§?!5§.§#!%§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§0T§,0,this.§,Q§ * 2);
         if(this.§"D§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§"D§ == null || this.§[q§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§,Q§ = 0;
         this.§[q§ = false;
         this.§"D§ = null;
         this.§>r§ = null;
      }
      
      public function §?d§(param1:§7d§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§,Q§ + 1 > this.§#f§.§!o§ / 4)
         {
            this.§7a§();
         }
         if(this.§,Q§ == 0)
         {
            this.§"D§ = param3;
            this.§>r§ = param4;
            this.§#f§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§,Q§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§#f§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§[q§ = true;
         }
         ++this.§,Q§;
      }
      
      public function § !E§(param1:§7d§, param2:Texture, param3:String) : Boolean
      {
         if(this.§"D§ != null && param2 != null)
         {
            return this.§"D§.root != param2.root || this.§"D§.repeat != param2.repeat || this.§>r§ != param3 || this.§[q§ != param1.useColor || this.§,Q§ == 8192;
         }
         if(this.§"D§ == null && param2 == null)
         {
            return false;
         }
         return this.§,Q§ != 0 || this.§[q§ != param1.useColor;
      }
   }
}
