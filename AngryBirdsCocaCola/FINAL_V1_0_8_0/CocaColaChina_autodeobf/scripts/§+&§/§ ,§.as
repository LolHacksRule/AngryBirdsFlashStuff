package §+&§
{
   import §!z§.§@!7§;
   import §&!9§.§,,§;
   import §&!9§.§7!D§;
   import §&!9§.DisplayObject;
   import §&!9§.DisplayObjectContainer;
   import §6!4§.§<7§;
   import §6!4§.Texture;
   import §=!Y§.§#!1§;
   import §@!a§.§try§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class § ,§
   {
      
      private static var §9g§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §^!W§:int;
      
      private var §[!U§:Texture;
      
      private var §@S§:String;
      
      private var §<G§:§try§;
      
      private var §-T§:VertexBuffer3D;
      
      private var §"!K§:VertexBuffer3D;
      
      private var §#!e§:VertexBuffer3D;
      
      private var §3G§:Vector.<uint>;
      
      private var §7g§:IndexBuffer3D;
      
      private var §72§:Boolean = false;
      
      private var §&D§:Boolean = false;
      
      public function § ,§()
      {
         super();
         §7!W§();
         this.§<G§ = new §try§(0,true);
         this.§3G§ = new Vector.<uint>(0);
         this.§^!W§ = 0;
         this.§8_§();
      }
      
      public static function §%R§(param1:DisplayObjectContainer, param2:Vector.<§ ,§>) : void
      {
         §case§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §case§(param1:DisplayObject, param2:Vector.<§ ,§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§7!D§ = null;
         var _loc13_:§,,§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§ ,§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new § ,§());
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
               _loc11_.§%H§(_loc10_);
               param3 = §case§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §7!D§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §7!D§) as §,,§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§9Q§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new § ,§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§6C§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §7!W§() : void
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
         var _loc1_:§?y§ = §?y§.§,u§;
         if(_loc1_.§=7§(§@U§(true)))
         {
            return;
         }
         var _loc2_:§@!7§ = new §@!7§();
         var _loc3_:§@!7§ = new §@!7§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§-[§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§-[§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§<l§(§@U§(_loc6_),_loc2_.§<^§,_loc3_.§<^§);
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
               _loc2_.§-[§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§<7§.NONE,§<7§.§8$§,§<7§.§!!I§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §<7§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §<7§.§8$§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§-[§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§<l§(§[F§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§<^§,_loc3_.§<^§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §@U§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §[F§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §<7§.§8$§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §,i§() : int
      {
         return this.§^!W§;
      }
      
      public function dispose() : void
      {
         if(this.§-T§)
         {
            this.§-T§.dispose();
         }
         if(this.§"!K§)
         {
            this.§"!K§.dispose();
         }
         if(this.§#!e§)
         {
            this.§#!e§.dispose();
         }
         if(this.§7g§)
         {
            this.§7g§.dispose();
         }
      }
      
      private function §8_§() : void
      {
         var _loc1_:int = this.§<G§.§#h§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§<G§.§#h§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§3G§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§3G§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§3G§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§3G§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§3G§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§3G§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§&D§ = true;
      }
      
      private function §<!N§(param1:Context3D) : Boolean
      {
         if(!this.§&D§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §#!1§();
         }
         if(this.§-T§)
         {
            this.§-T§.dispose();
         }
         if(this.§"!K§)
         {
            this.§"!K§.dispose();
         }
         if(this.§#!e§)
         {
            this.§#!e§.dispose();
         }
         if(this.§7g§)
         {
            this.§7g§.dispose();
         }
         var _loc2_:int = this.§<G§.§#h§ / 4;
         this.§-T§ = param1.createVertexBuffer(_loc2_ * 4,§try§.§2§);
         this.§-T§.uploadFromByteArray(this.§<G§.§[!5§,0,0,_loc2_ * 4);
         this.§"!K§ = param1.createVertexBuffer(_loc2_ * 4,§try§.§'!0§);
         this.§"!K§.uploadFromVector(this.§<G§.§ Z§,0,_loc2_ * 4);
         this.§#!e§ = param1.createVertexBuffer(_loc2_ * 4,§try§.§?!'§);
         this.§#!e§.uploadFromVector(this.§<G§.§-H§,0,_loc2_ * 4);
         this.§7g§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§7g§.uploadFromVector(this.§3G§,0,_loc2_ * 6);
         this.§&D§ = false;
         return true;
      }
      
      private function §%d§(param1:Context3D) : void
      {
         if(!this.§<!N§(param1))
         {
            this.§-T§.uploadFromByteArray(this.§<G§.§[!5§,0,0,this.§^!W§ * 4);
            if(this.§72§)
            {
               this.§"!K§.uploadFromVector(this.§<G§.§ Z§,0,this.§^!W§ * 4);
            }
            this.§#!e§.uploadFromVector(this.§<G§.§-H§,0,this.§^!W§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§^!W§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§<G§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§[!U§ ? §[F§(_loc5_,this.§[!U§.mipMapping,this.§[!U§.repeat,this.§@S§,this.§72§) : §@U§(_loc5_);
         §;J§.§#!N§(param1,_loc4_);
         this.§%d§(param1);
         param1.setProgram(§?y§.§,u§.§9`§(_loc6_));
         param1.setVertexBufferAt(0,this.§#!e§,§try§.§'6§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§[!U§ == null || this.§72§)
         {
            param1.setVertexBufferAt(2,this.§"!K§,§try§.§@!&§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §9g§[0] = §9g§[1] = §9g§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §9g§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§9g§,1);
         }
         if(this.§[!U§)
         {
            param1.setTextureAt(0,this.§[!U§.getBase(param1));
            param1.setVertexBufferAt(1,this.§-T§,§try§.§3c§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§7g§,0,this.§^!W§ * 2);
         if(this.§[!U§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§[!U§ == null || this.§72§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§^!W§ = 0;
         this.§72§ = false;
         this.§[!U§ = null;
         this.§@S§ = null;
      }
      
      public function §6C§(param1:§7!D§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§^!W§ + 1 > this.§<G§.§#h§ / 4)
         {
            this.§8_§();
         }
         if(this.§^!W§ == 0)
         {
            this.§[!U§ = param3;
            this.§@S§ = param4;
            this.§<G§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§^!W§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§<G§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§72§ = true;
         }
         ++this.§^!W§;
      }
      
      public function §9Q§(param1:§7!D§, param2:Texture, param3:String) : Boolean
      {
         if(this.§[!U§ != null && param2 != null)
         {
            return this.§[!U§.root != param2.root || this.§[!U§.repeat != param2.repeat || this.§@S§ != param3 || this.§72§ != param1.useColor || this.§^!W§ == 8192;
         }
         if(this.§[!U§ == null && param2 == null)
         {
            return false;
         }
         return this.§^!W§ != 0 || this.§72§ != param1.useColor;
      }
   }
}
