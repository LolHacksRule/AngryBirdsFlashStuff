package §??§
{
   import §"X§.§&!3§;
   import §"X§.Texture;
   import §,#§.§%!-§;
   import §;^§.§ @§;
   import §;^§.§+a§;
   import §;^§.DisplayObject;
   import §;^§.DisplayObjectContainer;
   import §>n§.AGALMiniAssembler;
   import §`8§.§^d§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §'§
   {
      
      private static var §5Z§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §2_§:int;
      
      private var §#w§:Texture;
      
      private var §6!H§:String;
      
      private var §@V§:§^d§;
      
      private var §'!,§:VertexBuffer3D;
      
      private var §=!;§:VertexBuffer3D;
      
      private var §]L§:VertexBuffer3D;
      
      private var §=q§:Vector.<uint>;
      
      private var §7!6§:IndexBuffer3D;
      
      private var §catch§:Boolean = false;
      
      private var §,p§:Boolean = false;
      
      public function §'§()
      {
         super();
         §super§();
         this.§@V§ = new §^d§(0,true);
         this.§=q§ = new Vector.<uint>(0);
         this.§2_§ = 0;
         this.§6!'§();
      }
      
      public static function §,E§(param1:DisplayObjectContainer, param2:Vector.<§'§>) : void
      {
         §1!#§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §1!#§(param1:DisplayObject, param2:Vector.<§'§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§+a§ = null;
         var _loc13_:§ @§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§'§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §'§());
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
                  _loc11_.§=!7§(_loc10_);
                  param3 = §1!#§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is §+a§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §+a§) as § @§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§[!#§(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §'§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§-&§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §super§() : void
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
         var _loc1_:§5!@§ = §5!@§.§8%§;
         if(_loc1_.§@!?§(§]!+§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§>H§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§>H§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§4!!§(§]!+§(_loc6_),_loc2_.§<v§,_loc3_.§<v§);
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
               _loc2_.§>H§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§&!3§.NONE,§&!3§.§?!9§,§&!3§.§;L§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §&!3§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §&!3§.§?!9§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§>H§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§4!!§(§4I§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§<v§,_loc3_.§<v§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §]!+§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §4I§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §&!3§.§?!9§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §17§() : int
      {
         return this.§2_§;
      }
      
      public function dispose() : void
      {
         if(this.§'!,§)
         {
            this.§'!,§.dispose();
         }
         if(this.§=!;§)
         {
            this.§=!;§.dispose();
         }
         if(this.§]L§)
         {
            this.§]L§.dispose();
         }
         if(this.§7!6§)
         {
            this.§7!6§.dispose();
         }
      }
      
      private function §6!'§() : void
      {
         var _loc1_:int = this.§@V§.§"!"§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§@V§.§"!"§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§=q§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§=q§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§=q§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§=q§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§=q§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§=q§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§,p§ = true;
      }
      
      private function §,v§(param1:Context3D) : Boolean
      {
         if(!this.§,p§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §%!-§();
         }
         if(this.§'!,§)
         {
            this.§'!,§.dispose();
         }
         if(this.§=!;§)
         {
            this.§=!;§.dispose();
         }
         if(this.§]L§)
         {
            this.§]L§.dispose();
         }
         if(this.§7!6§)
         {
            this.§7!6§.dispose();
         }
         var _loc2_:int = this.§@V§.§"!"§ / 4;
         this.§'!,§ = param1.createVertexBuffer(_loc2_ * 4,§^d§.§6!@§);
         this.§'!,§.uploadFromByteArray(this.§@V§.§,7§,0,0,_loc2_ * 4);
         this.§=!;§ = param1.createVertexBuffer(_loc2_ * 4,§^d§.§5M§);
         this.§=!;§.uploadFromVector(this.§@V§.§9o§,0,_loc2_ * 4);
         this.§]L§ = param1.createVertexBuffer(_loc2_ * 4,§^d§.§ null§);
         this.§]L§.uploadFromVector(this.§@V§.§2!$§,0,_loc2_ * 4);
         this.§7!6§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§7!6§.uploadFromVector(this.§=q§,0,_loc2_ * 6);
         this.§,p§ = false;
         return true;
      }
      
      private function §%,§(param1:Context3D) : void
      {
         if(!this.§,v§(param1))
         {
            this.§'!,§.uploadFromByteArray(this.§@V§.§,7§,0,0,this.§2_§ * 4);
            if(this.§catch§)
            {
               this.§=!;§.uploadFromVector(this.§@V§.§9o§,0,this.§2_§ * 4);
            }
            this.§]L§.uploadFromVector(this.§@V§.§2!$§,0,this.§2_§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§2_§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§@V§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§#w§ ? §4I§(_loc5_,this.§#w§.mipMapping,this.§#w§.repeat,this.§6!H§,this.§catch§) : §]!+§(_loc5_);
         §!0§.§+!E§(param1,_loc4_);
         this.§%,§(param1);
         param1.setProgram(§5!@§.§8%§.§ !O§(_loc6_));
         param1.setVertexBufferAt(0,this.§]L§,§^d§.§6s§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§#w§ == null || this.§catch§)
         {
            param1.setVertexBufferAt(2,this.§=!;§,§^d§.§]R§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §5Z§[0] = §5Z§[1] = §5Z§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §5Z§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§5Z§,1);
         }
         if(this.§#w§)
         {
            param1.setTextureAt(0,this.§#w§.getBase(param1));
            param1.setVertexBufferAt(1,this.§'!,§,§^d§.§25§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§7!6§,0,this.§2_§ * 2);
         if(this.§#w§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§#w§ == null || this.§catch§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§2_§ = 0;
         this.§catch§ = false;
         this.§#w§ = null;
         this.§6!H§ = null;
      }
      
      public function §-&§(param1:§+a§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§2_§ + 1 > this.§@V§.§"!"§ / 4)
         {
            this.§6!'§();
         }
         if(this.§2_§ == 0)
         {
            this.§#w§ = param3;
            this.§6!H§ = param4;
            this.§@V§.§8b§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§catch§ = true;
            }
         }
         var _loc6_:int = this.§2_§ * 4;
         param1.copyVertexDataTo(this.§@V§,_loc6_,param2,param5);
         ++this.§2_§;
      }
      
      public function §[!#§(param1:§+a§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§#w§ != null && param2 != null)
         {
            return this.§#w§.root != param2.root || this.§#w§.repeat != param2.repeat || this.§6!H§ != param3 || this.§catch§ != param1.useColor || this.§2_§ == 8192;
         }
         if(this.§#w§ == null && param2 == null)
         {
            return false;
         }
         return this.§2_§ != 0 || this.§catch§ != (param1.useColor || param4 != 1);
      }
   }
}
