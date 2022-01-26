package § F§
{
   import § Z§.§<d§;
   import §+!S§.Texture;
   import §+!S§.§]U§;
   import §,!Q§.§%^§;
   import §,!Q§.§2P§;
   import §,!Q§.DisplayObject;
   import §,!Q§.DisplayObjectContainer;
   import §;S§.§2w§;
   import §?!Z§.§4k§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §&U§
   {
      
      private static var §1d§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §07§:int;
      
      private var §4t§:Texture;
      
      private var §-!2§:String;
      
      private var §-!@§:§4k§;
      
      private var §]!0§:VertexBuffer3D;
      
      private var §9d§:VertexBuffer3D;
      
      private var §;]§:VertexBuffer3D;
      
      private var §<z§:Vector.<uint>;
      
      private var §5n§:IndexBuffer3D;
      
      private var §[!K§:Boolean = false;
      
      private var §>!@§:Boolean = false;
      
      public function §&U§()
      {
         super();
         §"4§();
         this.§-!@§ = new §4k§(0,true);
         this.§<z§ = new Vector.<uint>(0);
         this.§07§ = 0;
         this.§1!!§();
      }
      
      public static function §6V§(param1:DisplayObjectContainer, param2:Vector.<§&U§>) : void
      {
         §>a§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §>a§(param1:DisplayObject, param2:Vector.<§&U§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§2P§ = null;
         var _loc13_:§%^§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§&U§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §&U§());
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
               _loc11_.§<H§(_loc10_);
               param3 = §>a§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §2P§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §2P§) as §%^§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§-C§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §&U§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§-i§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §"4§() : void
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
         var _loc1_:§3!&§ = §3!&§.§<1§;
         if(_loc1_.§4r§(§<$§(true)))
         {
            return;
         }
         var _loc2_:§<d§ = new §<d§();
         var _loc3_:§<d§ = new §<d§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§%7§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§%7§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§7Y§(§<$§(_loc6_),_loc2_.§+!6§,_loc3_.§+!6§);
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
               _loc2_.§%7§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§]U§.NONE,§]U§.§ !;§,§]U§.§,4§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §]U§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §]U§.§ !;§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§%7§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§7Y§(§'!W§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§+!6§,_loc3_.§+!6§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §<$§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §'!W§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §]U§.§ !;§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §0!>§() : int
      {
         return this.§07§;
      }
      
      public function dispose() : void
      {
         if(this.§]!0§)
         {
            this.§]!0§.dispose();
         }
         if(this.§9d§)
         {
            this.§9d§.dispose();
         }
         if(this.§;]§)
         {
            this.§;]§.dispose();
         }
         if(this.§5n§)
         {
            this.§5n§.dispose();
         }
      }
      
      private function §1!!§() : void
      {
         var _loc1_:int = this.§-!@§.§'3§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§-!@§.§'3§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§<z§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§<z§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§<z§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§<z§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§<z§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§<z§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§>!@§ = true;
      }
      
      private function §7!4§(param1:Context3D) : Boolean
      {
         if(!this.§>!@§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §2w§();
         }
         if(this.§]!0§)
         {
            this.§]!0§.dispose();
         }
         if(this.§9d§)
         {
            this.§9d§.dispose();
         }
         if(this.§;]§)
         {
            this.§;]§.dispose();
         }
         if(this.§5n§)
         {
            this.§5n§.dispose();
         }
         var _loc2_:int = this.§-!@§.§'3§ / 4;
         this.§]!0§ = param1.createVertexBuffer(_loc2_ * 4,§4k§.§0!;§);
         this.§]!0§.uploadFromByteArray(this.§-!@§.§+!F§,0,0,_loc2_ * 4);
         this.§9d§ = param1.createVertexBuffer(_loc2_ * 4,§4k§.§4!'§);
         this.§9d§.uploadFromVector(this.§-!@§.§ x§,0,_loc2_ * 4);
         this.§;]§ = param1.createVertexBuffer(_loc2_ * 4,§4k§.§+!"§);
         this.§;]§.uploadFromVector(this.§-!@§.§%<§,0,_loc2_ * 4);
         this.§5n§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§5n§.uploadFromVector(this.§<z§,0,_loc2_ * 6);
         this.§>!@§ = false;
         return true;
      }
      
      private function §^h§(param1:Context3D) : void
      {
         if(!this.§7!4§(param1))
         {
            this.§]!0§.uploadFromByteArray(this.§-!@§.§+!F§,0,0,this.§07§ * 4);
            if(this.§[!K§)
            {
               this.§9d§.uploadFromVector(this.§-!@§.§ x§,0,this.§07§ * 4);
            }
            this.§;]§.uploadFromVector(this.§-!@§.§%<§,0,this.§07§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§07§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§-!@§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§4t§ ? §'!W§(_loc5_,this.§4t§.mipMapping,this.§4t§.repeat,this.§-!2§,this.§[!K§) : §<$§(_loc5_);
         §,!>§.§1#§(param1,_loc4_);
         this.§^h§(param1);
         param1.setProgram(§3!&§.§<1§.§#!6§(_loc6_));
         param1.setVertexBufferAt(0,this.§;]§,§4k§.§>!_§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§4t§ == null || this.§[!K§)
         {
            param1.setVertexBufferAt(2,this.§9d§,§4k§.§2$§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §1d§[0] = §1d§[1] = §1d§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §1d§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§1d§,1);
         }
         if(this.§4t§)
         {
            param1.setTextureAt(0,this.§4t§.getBase(param1));
            param1.setVertexBufferAt(1,this.§]!0§,§4k§.§#i§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§5n§,0,this.§07§ * 2);
         if(this.§4t§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§4t§ == null || this.§[!K§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§07§ = 0;
         this.§[!K§ = false;
         this.§4t§ = null;
         this.§-!2§ = null;
      }
      
      public function §-i§(param1:§2P§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§07§ + 1 > this.§-!@§.§'3§ / 4)
         {
            this.§1!!§();
         }
         if(this.§07§ == 0)
         {
            this.§4t§ = param3;
            this.§-!2§ = param4;
            this.§-!@§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§07§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§-!@§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§[!K§ = true;
         }
         ++this.§07§;
      }
      
      public function §-C§(param1:§2P§, param2:Texture, param3:String) : Boolean
      {
         if(this.§4t§ != null && param2 != null)
         {
            return this.§4t§.root != param2.root || this.§4t§.repeat != param2.repeat || this.§-!2§ != param3 || this.§[!K§ != param1.useColor || this.§07§ == 8192;
         }
         if(this.§4t§ == null && param2 == null)
         {
            return false;
         }
         return this.§07§ != 0 || this.§[!K§ != param1.useColor;
      }
   }
}
