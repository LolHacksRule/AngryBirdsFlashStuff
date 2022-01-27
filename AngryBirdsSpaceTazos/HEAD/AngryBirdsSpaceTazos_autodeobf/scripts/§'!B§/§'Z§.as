package §'!B§
{
   import §&!]§.§#[§;
   import §&!]§.§7!J§;
   import §&!]§.DisplayObject;
   import §&!]§.DisplayObjectContainer;
   import §2"7§.§!!z§;
   import §6!5§.§>"C§;
   import §9"@§.§2"=§;
   import §9"@§.Texture;
   import §[!c§.§?!K§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §'Z§
   {
      
      private static var §&!n§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §4§:int;
      
      private var §4S§:Texture;
      
      private var §4b§:String;
      
      private var §>R§:§>"C§;
      
      private var §>l§:VertexBuffer3D;
      
      private var §"!Q§:VertexBuffer3D;
      
      private var §4!4§:VertexBuffer3D;
      
      private var §!!x§:Vector.<uint>;
      
      private var §[o§:IndexBuffer3D;
      
      private var §,]§:Boolean = false;
      
      private var §[0§:Boolean = false;
      
      public function §'Z§()
      {
         super();
         §?!O§();
         this.§>R§ = new §>"C§(0,true);
         this.§!!x§ = new Vector.<uint>(0);
         this.§4§ = 0;
         this.§5!5§();
      }
      
      public static function §1"9§(param1:DisplayObjectContainer, param2:Vector.<§'Z§>) : void
      {
         §[i§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §[i§(param1:DisplayObject, param2:Vector.<§'Z§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§7!J§ = null;
         var _loc13_:§#[§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§'Z§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §'Z§());
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
                  _loc11_.§-!_§(_loc10_);
                  param3 = §[i§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is §7!J§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §7!J§) as §#[§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§[;§(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §'Z§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§9!D§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §?!O§() : void
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
         var _loc1_:§8T§ = §8T§.§5!Y§;
         if(_loc1_.§["E§(§-V§(true)))
         {
            return;
         }
         var _loc2_:§?!K§ = new §?!K§();
         var _loc3_:§?!K§ = new §?!K§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§^x§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§^x§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§2u§(§-V§(_loc6_),_loc2_.§^"0§,_loc3_.§^"0§);
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
               _loc2_.§^x§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§2"=§.NONE,§2"=§.§%"?§,§2"=§.§6!w§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §2"=§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §2"=§.§%"?§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§^x§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§2u§(§7!=§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§^"0§,_loc3_.§^"0§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §-V§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §7!=§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §2"=§.§%"?§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §9!F§() : int
      {
         return this.§4§;
      }
      
      public function dispose() : void
      {
         if(this.§>l§)
         {
            this.§>l§.dispose();
         }
         if(this.§"!Q§)
         {
            this.§"!Q§.dispose();
         }
         if(this.§4!4§)
         {
            this.§4!4§.dispose();
         }
         if(this.§[o§)
         {
            this.§[o§.dispose();
         }
      }
      
      private function §5!5§() : void
      {
         var _loc1_:int = this.§>R§.§#k§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§>R§.§#k§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§!!x§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§!!x§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§!!x§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§!!x§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§!!x§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§!!x§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§[0§ = true;
      }
      
      private function §#8§(param1:Context3D) : Boolean
      {
         if(!this.§[0§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §!!z§();
         }
         if(this.§>l§)
         {
            this.§>l§.dispose();
         }
         if(this.§"!Q§)
         {
            this.§"!Q§.dispose();
         }
         if(this.§4!4§)
         {
            this.§4!4§.dispose();
         }
         if(this.§[o§)
         {
            this.§[o§.dispose();
         }
         var _loc2_:int = this.§>R§.§#k§ / 4;
         this.§>l§ = param1.createVertexBuffer(_loc2_ * 4,§>"C§.§"!?§);
         this.§>l§.uploadFromByteArray(this.§>R§.native,0,0,_loc2_ * 4);
         this.§"!Q§ = param1.createVertexBuffer(_loc2_ * 4,§>"C§.§9"C§);
         this.§"!Q§.uploadFromVector(this.§>R§.§`5§,0,_loc2_ * 4);
         this.§4!4§ = param1.createVertexBuffer(_loc2_ * 4,§>"C§.§;!l§);
         this.§4!4§.uploadFromVector(this.§>R§.§ "7§,0,_loc2_ * 4);
         this.§[o§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§[o§.uploadFromVector(this.§!!x§,0,_loc2_ * 6);
         this.§[0§ = false;
         return true;
      }
      
      private function §#!9§(param1:Context3D) : void
      {
         if(!this.§#8§(param1))
         {
            this.§>l§.uploadFromByteArray(this.§>R§.native,0,0,this.§4§ * 4);
            if(this.§,]§)
            {
               this.§"!Q§.uploadFromVector(this.§>R§.§`5§,0,this.§4§ * 4);
            }
            this.§4!4§.uploadFromVector(this.§>R§.§ "7§,0,this.§4§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§4§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§>R§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§4S§ ? §7!=§(_loc5_,this.§4S§.mipMapping,this.§4S§.repeat,this.§4b§,this.§,]§) : §-V§(_loc5_);
         §0!p§.§ !7§(param1,_loc4_);
         this.§#!9§(param1);
         param1.setProgram(§8T§.§5!Y§.§+i§(_loc6_));
         param1.setVertexBufferAt(0,this.§4!4§,§>"C§.§!-§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§4S§ == null || this.§,]§)
         {
            param1.setVertexBufferAt(2,this.§"!Q§,§>"C§.§!"?§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §&!n§[0] = §&!n§[1] = §&!n§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §&!n§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§&!n§,1);
         }
         if(this.§4S§)
         {
            param1.setTextureAt(0,this.§4S§.getBase(param1));
            param1.setVertexBufferAt(1,this.§>l§,§>"C§.§-!j§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§[o§,0,this.§4§ * 2);
         if(this.§4S§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§4S§ == null || this.§,]§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§4§ = 0;
         this.§,]§ = false;
         this.§4S§ = null;
         this.§4b§ = null;
      }
      
      public function §9!D§(param1:§7!J§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§4§ + 1 > this.§>R§.§#k§ / 4)
         {
            this.§5!5§();
         }
         if(this.§4§ == 0)
         {
            this.§4S§ = param3;
            this.§4b§ = param4;
            this.§>R§.§]"#§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§,]§ = true;
            }
         }
         var _loc6_:int = this.§4§ * 4;
         param1.copyVertexDataTo(this.§>R§,_loc6_,param2,param5);
         ++this.§4§;
      }
      
      public function §[;§(param1:§7!J§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§4S§ != null && param2 != null)
         {
            return this.§4S§.root != param2.root || this.§4S§.repeat != param2.repeat || this.§4b§ != param3 || this.§,]§ != param1.useColor || this.§4§ == 8192;
         }
         if(this.§4S§ == null && param2 == null)
         {
            return false;
         }
         return this.§4§ != 0 || this.§,]§ != (param1.useColor || param4 != 1);
      }
   }
}
