package §@!%§
{
   import §%?§.§@s§;
   import §%?§.Texture;
   import §5!3§.§^x§;
   import §<w§.§4%§;
   import §=U§.AGALMiniAssembler;
   import §@!=§.§"S§;
   import §@!=§.§4G§;
   import §@!=§.DisplayObject;
   import §@!=§.DisplayObjectContainer;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §0!4§
   {
      
      private static var §=+§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §3C§:int;
      
      private var §'!6§:Texture;
      
      private var §4!8§:String;
      
      private var §@T§:§^x§;
      
      private var §&B§:VertexBuffer3D;
      
      private var §;p§:VertexBuffer3D;
      
      private var § ?§:VertexBuffer3D;
      
      private var §"9§:Vector.<uint>;
      
      private var §?Q§:IndexBuffer3D;
      
      private var §>;§:Boolean = false;
      
      private var §"&§:Boolean = false;
      
      public function §0!4§()
      {
         super();
         §2!8§();
         this.§@T§ = new §^x§(0,true);
         this.§"9§ = new Vector.<uint>(0);
         this.§3C§ = 0;
         this.§5!7§();
      }
      
      public static function §9'§(param1:DisplayObjectContainer, param2:Vector.<§0!4§>) : void
      {
         §'! §(param1,param2,-1,new Matrix3D());
      }
      
      private static function §'! §(param1:DisplayObject, param2:Vector.<§0!4§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§4G§ = null;
         var _loc13_:§"S§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§0!4§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §0!4§());
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
               §]A§.§48§(_loc10_,_loc11_);
               param3 = §'! §(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §4G§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §4G§) as §"S§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§+5§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §0!4§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§&§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §2!8§() : void
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
         var _loc1_:§+8§ = §+8§.§-2§;
         if(_loc1_.§0!$§(§`-§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§0F§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§0F§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§5f§(§`-§(_loc6_),_loc2_.§^!=§,_loc3_.§^!=§);
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
               _loc2_.§0F§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§@s§.NONE,§@s§.§>i§,§@s§.§;!0§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §@s§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §@s§.§>i§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§0F§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§5f§(§#R§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§^!=§,_loc3_.§^!=§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §`-§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §#R§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §@s§.§>i§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §[!7§() : int
      {
         return this.§3C§;
      }
      
      public function dispose() : void
      {
         if(this.§&B§)
         {
            this.§&B§.dispose();
         }
         if(this.§;p§)
         {
            this.§;p§.dispose();
         }
         if(this.§ ?§)
         {
            this.§ ?§.dispose();
         }
         if(this.§?Q§)
         {
            this.§?Q§.dispose();
         }
      }
      
      private function §5!7§() : void
      {
         var _loc1_:int = this.§@T§.§"!B§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§@T§.§"!B§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§"9§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§"9§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§"9§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§"9§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§"9§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§"9§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§"&§ = true;
      }
      
      private function §8§(param1:Context3D) : Boolean
      {
         if(!this.§"&§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §4%§();
         }
         if(this.§&B§)
         {
            this.§&B§.dispose();
         }
         if(this.§;p§)
         {
            this.§;p§.dispose();
         }
         if(this.§ ?§)
         {
            this.§ ?§.dispose();
         }
         if(this.§?Q§)
         {
            this.§?Q§.dispose();
         }
         var _loc2_:int = this.§@T§.§"!B§ / 4;
         this.§&B§ = param1.createVertexBuffer(_loc2_ * 4,§^x§.§[&§);
         this.§&B§.uploadFromByteArray(this.§@T§.§>A§,0,0,_loc2_ * 4);
         this.§;p§ = param1.createVertexBuffer(_loc2_ * 4,§^x§.§>r§);
         this.§;p§.uploadFromVector(this.§@T§.§6<§,0,_loc2_ * 4);
         this.§ ?§ = param1.createVertexBuffer(_loc2_ * 4,§^x§.§4!7§);
         this.§ ?§.uploadFromVector(this.§@T§.§3P§,0,_loc2_ * 4);
         this.§?Q§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§?Q§.uploadFromVector(this.§"9§,0,_loc2_ * 6);
         this.§"&§ = false;
         return true;
      }
      
      private function §7!F§(param1:Context3D) : void
      {
         if(!this.§8§(param1))
         {
            this.§&B§.uploadFromByteArray(this.§@T§.§>A§,0,0,this.§3C§ * 4);
            if(this.§>;§)
            {
               this.§;p§.uploadFromVector(this.§@T§.§6<§,0,this.§3C§ * 4);
            }
            this.§ ?§.uploadFromVector(this.§@T§.§3P§,0,this.§3C§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§3C§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§@T§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§'!6§ ? §#R§(_loc5_,this.§'!6§.mipMapping,this.§'!6§.repeat,this.§4!8§,this.§>;§) : §`-§(_loc5_);
         §]A§.§@L§(param1,_loc4_);
         this.§7!F§(param1);
         param1.setProgram(§+8§.§-2§.§7X§(_loc6_));
         param1.setVertexBufferAt(0,this.§ ?§,§^x§.§9q§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§'!6§ == null || this.§>;§)
         {
            param1.setVertexBufferAt(2,this.§;p§,§^x§.§+b§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §=+§[0] = §=+§[1] = §=+§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §=+§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§=+§,1);
         }
         if(this.§'!6§)
         {
            param1.setTextureAt(0,this.§'!6§.getBase(param1));
            param1.setVertexBufferAt(1,this.§&B§,§^x§.§@n§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§?Q§,0,this.§3C§ * 2);
         if(this.§'!6§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§'!6§ == null || this.§>;§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§3C§ = 0;
         this.§>;§ = false;
         this.§'!6§ = null;
         this.§4!8§ = null;
      }
      
      public function §&§(param1:§4G§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§3C§ + 1 > this.§@T§.§"!B§ / 4)
         {
            this.§5!7§();
         }
         if(this.§3C§ == 0)
         {
            this.§'!6§ = param3;
            this.§4!8§ = param4;
            this.§@T§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§3C§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§@T§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§>;§ = true;
         }
         ++this.§3C§;
      }
      
      public function §+5§(param1:§4G§, param2:Texture, param3:String) : Boolean
      {
         if(this.§'!6§ != null && param2 != null)
         {
            return this.§'!6§.root != param2.root || this.§'!6§.repeat != param2.repeat || this.§4!8§ != param3 || this.§>;§ != param1.useColor || this.§3C§ == 8192;
         }
         if(this.§'!6§ == null && param2 == null)
         {
            return false;
         }
         return this.§3C§ != 0 || this.§>;§ != param1.useColor;
      }
   }
}
