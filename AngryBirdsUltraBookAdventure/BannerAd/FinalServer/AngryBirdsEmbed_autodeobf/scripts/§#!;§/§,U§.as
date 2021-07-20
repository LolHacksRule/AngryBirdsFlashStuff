package §#!;§
{
   import §5!@§.§7!=§;
   import §5!@§.Texture;
   import §8O§.AGALMiniAssembler;
   import §8k§.§&E§;
   import §9W§.§3g§;
   import §9W§.§6!0§;
   import §9W§.DisplayObject;
   import §9W§.DisplayObjectContainer;
   import §@e§.§;2§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §,U§
   {
      
      private static var §^!4§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §=p§:int;
      
      private var §<A§:Texture;
      
      private var §;n§:String;
      
      private var §5J§:§;2§;
      
      private var §-!H§:VertexBuffer3D;
      
      private var § e§:VertexBuffer3D;
      
      private var §?k§:VertexBuffer3D;
      
      private var §`b§:Vector.<uint>;
      
      private var §'!%§:IndexBuffer3D;
      
      private var §36§:Boolean = false;
      
      private var §switch§:Boolean = false;
      
      public function §,U§()
      {
         super();
         §%m§();
         this.§5J§ = new §;2§(0,true);
         this.§`b§ = new Vector.<uint>(0);
         this.§=p§ = 0;
         this.§,!+§();
      }
      
      public static function §8B§(param1:DisplayObjectContainer, param2:Vector.<§,U§>) : void
      {
         §5!=§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §5!=§(param1:DisplayObject, param2:Vector.<§,U§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§3g§ = null;
         var _loc13_:§6!0§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§,U§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §,U§());
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
               _loc11_.§&f§(_loc10_);
               param3 = §5!=§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §3g§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §3g§) as §6!0§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§9h§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §,U§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§+B§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §%m§() : void
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
         var _loc1_:§;T§ = §;T§.§,H§;
         if(_loc1_.§&!D§(§%&§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§;f§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§;f§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§0§(§%&§(_loc6_),_loc2_.§5?§,_loc3_.§5?§);
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
               _loc2_.§;f§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§7!=§.NONE,§7!=§.§1%§,§7!=§.§"V§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §7!=§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §7!=§.§1%§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§;f§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§0§(§%K§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§5?§,_loc3_.§5?§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §%&§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §%K§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §7!=§.§1%§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §+!-§() : int
      {
         return this.§=p§;
      }
      
      public function dispose() : void
      {
         if(this.§-!H§)
         {
            this.§-!H§.dispose();
         }
         if(this.§ e§)
         {
            this.§ e§.dispose();
         }
         if(this.§?k§)
         {
            this.§?k§.dispose();
         }
         if(this.§'!%§)
         {
            this.§'!%§.dispose();
         }
      }
      
      private function §,!+§() : void
      {
         var _loc1_:int = this.§5J§.§2!5§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§5J§.§2!5§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§`b§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§`b§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§`b§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§`b§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§`b§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§`b§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§switch§ = true;
      }
      
      private function §%3§(param1:Context3D) : Boolean
      {
         if(!this.§switch§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §&E§();
         }
         if(this.§-!H§)
         {
            this.§-!H§.dispose();
         }
         if(this.§ e§)
         {
            this.§ e§.dispose();
         }
         if(this.§?k§)
         {
            this.§?k§.dispose();
         }
         if(this.§'!%§)
         {
            this.§'!%§.dispose();
         }
         var _loc2_:int = this.§5J§.§2!5§ / 4;
         this.§-!H§ = param1.createVertexBuffer(_loc2_ * 4,§;2§.§%]§);
         this.§-!H§.uploadFromByteArray(this.§5J§.§&!#§,0,0,_loc2_ * 4);
         this.§ e§ = param1.createVertexBuffer(_loc2_ * 4,§;2§.§-Z§);
         this.§ e§.uploadFromVector(this.§5J§.§;!3§,0,_loc2_ * 4);
         this.§?k§ = param1.createVertexBuffer(_loc2_ * 4,§;2§.§%0§);
         this.§?k§.uploadFromVector(this.§5J§.§13§,0,_loc2_ * 4);
         this.§'!%§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§'!%§.uploadFromVector(this.§`b§,0,_loc2_ * 6);
         this.§switch§ = false;
         return true;
      }
      
      private function §6B§(param1:Context3D) : void
      {
         if(!this.§%3§(param1))
         {
            this.§-!H§.uploadFromByteArray(this.§5J§.§&!#§,0,0,this.§=p§ * 4);
            if(this.§36§)
            {
               this.§ e§.uploadFromVector(this.§5J§.§;!3§,0,this.§=p§ * 4);
            }
            this.§?k§.uploadFromVector(this.§5J§.§13§,0,this.§=p§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§=p§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§5J§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§<A§ ? §%K§(_loc5_,this.§<A§.mipMapping,this.§<A§.repeat,this.§;n§,this.§36§) : §%&§(_loc5_);
         §?h§.§=1§(param1,_loc4_);
         this.§6B§(param1);
         param1.setProgram(§;T§.§,H§.§-=§(_loc6_));
         param1.setVertexBufferAt(0,this.§?k§,§;2§.§-!8§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§<A§ == null || this.§36§)
         {
            param1.setVertexBufferAt(2,this.§ e§,§;2§.§>,§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §^!4§[0] = §^!4§[1] = §^!4§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §^!4§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§^!4§,1);
         }
         if(this.§<A§)
         {
            param1.setTextureAt(0,this.§<A§.getBase(param1));
            param1.setVertexBufferAt(1,this.§-!H§,§;2§.§ !<§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§'!%§,0,this.§=p§ * 2);
         if(this.§<A§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§<A§ == null || this.§36§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§=p§ = 0;
         this.§36§ = false;
         this.§<A§ = null;
         this.§;n§ = null;
      }
      
      public function §+B§(param1:§3g§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§=p§ + 1 > this.§5J§.§2!5§ / 4)
         {
            this.§,!+§();
         }
         if(this.§=p§ == 0)
         {
            this.§<A§ = param3;
            this.§;n§ = param4;
            this.§5J§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§=p§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§5J§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§36§ = true;
         }
         ++this.§=p§;
      }
      
      public function §9h§(param1:§3g§, param2:Texture, param3:String) : Boolean
      {
         if(this.§<A§ != null && param2 != null)
         {
            return this.§<A§.root != param2.root || this.§<A§.repeat != param2.repeat || this.§;n§ != param3 || this.§36§ != param1.useColor || this.§=p§ == 8192;
         }
         if(this.§<A§ == null && param2 == null)
         {
            return false;
         }
         return this.§=p§ != 0 || this.§36§ != param1.useColor;
      }
   }
}
