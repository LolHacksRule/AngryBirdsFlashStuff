package §5Z§
{
   import § N§.§1!A§;
   import § N§.§6!O§;
   import § N§.DisplayObject;
   import § N§.DisplayObjectContainer;
   import §+§.§0&§;
   import §7!O§.§-!C§;
   import §7w§.AGALMiniAssembler;
   import §8z§.Texture;
   import §8z§.§^,§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §]5§
   {
      
      private static var §!K§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §"!B§:int;
      
      private var §-?§:Texture;
      
      private var §'>§:String;
      
      private var §"!F§:§0&§;
      
      private var §=t§:VertexBuffer3D;
      
      private var § >§:VertexBuffer3D;
      
      private var §;F§:VertexBuffer3D;
      
      private var §^!0§:Vector.<uint>;
      
      private var §+!P§:IndexBuffer3D;
      
      private var §`?§:Boolean = false;
      
      private var §9E§:Boolean = false;
      
      public function §]5§()
      {
         super();
         §9e§();
         this.§"!F§ = new §0&§(0,true);
         this.§^!0§ = new Vector.<uint>(0);
         this.§"!B§ = 0;
         this.§-Q§();
      }
      
      public static function §[&§(param1:DisplayObjectContainer, param2:Vector.<§]5§>) : void
      {
         §1@§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §1@§(param1:DisplayObject, param2:Vector.<§]5§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§6!O§ = null;
         var _loc13_:§1!A§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§]5§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §]5§());
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
               _loc11_.§>m§(_loc10_);
               param3 = §1@§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §6!O§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §6!O§) as §1!A§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§"!P§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §]5§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§8^§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §9e§() : void
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
         var _loc1_:§[Z§ = §[Z§.§%m§;
         if(_loc1_.§6!B§(§@#§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§'!C§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§'!C§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§=B§(§@#§(_loc6_),_loc2_.§+!5§,_loc3_.§+!5§);
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
               _loc2_.§'!C§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§^,§.NONE,§^,§.§#b§,§^,§.§1K§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §^,§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §^,§.§#b§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§'!C§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§=B§(§ !L§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§+!5§,_loc3_.§+!5§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §@#§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function § !L§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §^,§.§#b§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get § !9§() : int
      {
         return this.§"!B§;
      }
      
      public function dispose() : void
      {
         if(this.§=t§)
         {
            this.§=t§.dispose();
         }
         if(this.§ >§)
         {
            this.§ >§.dispose();
         }
         if(this.§;F§)
         {
            this.§;F§.dispose();
         }
         if(this.§+!P§)
         {
            this.§+!P§.dispose();
         }
      }
      
      private function §-Q§() : void
      {
         var _loc1_:int = this.§"!F§.§6P§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§"!F§.§6P§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§^!0§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§^!0§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§^!0§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§^!0§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§^!0§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§^!0§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§9E§ = true;
      }
      
      private function §finally§(param1:Context3D) : Boolean
      {
         if(!this.§9E§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §-!C§();
         }
         if(this.§=t§)
         {
            this.§=t§.dispose();
         }
         if(this.§ >§)
         {
            this.§ >§.dispose();
         }
         if(this.§;F§)
         {
            this.§;F§.dispose();
         }
         if(this.§+!P§)
         {
            this.§+!P§.dispose();
         }
         var _loc2_:int = this.§"!F§.§6P§ / 4;
         this.§=t§ = param1.createVertexBuffer(_loc2_ * 4,§0&§.§7R§);
         this.§=t§.uploadFromByteArray(this.§"!F§.§4!#§,0,0,_loc2_ * 4);
         this.§ >§ = param1.createVertexBuffer(_loc2_ * 4,§0&§.§<W§);
         this.§ >§.uploadFromVector(this.§"!F§.§+!R§,0,_loc2_ * 4);
         this.§;F§ = param1.createVertexBuffer(_loc2_ * 4,§0&§.§&!H§);
         this.§;F§.uploadFromVector(this.§"!F§.§5q§,0,_loc2_ * 4);
         this.§+!P§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§+!P§.uploadFromVector(this.§^!0§,0,_loc2_ * 6);
         this.§9E§ = false;
         return true;
      }
      
      private function §7a§(param1:Context3D) : void
      {
         if(!this.§finally§(param1))
         {
            this.§=t§.uploadFromByteArray(this.§"!F§.§4!#§,0,0,this.§"!B§ * 4);
            if(this.§`?§)
            {
               this.§ >§.uploadFromVector(this.§"!F§.§+!R§,0,this.§"!B§ * 4);
            }
            this.§;F§.uploadFromVector(this.§"!F§.§5q§,0,this.§"!B§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§"!B§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§"!F§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§-?§ ? § !L§(_loc5_,this.§-?§.mipMapping,this.§-?§.repeat,this.§'>§,this.§`?§) : §@#§(_loc5_);
         §4]§.§<Y§(param1,_loc4_);
         this.§7a§(param1);
         param1.setProgram(§[Z§.§%m§.§ %§(_loc6_));
         param1.setVertexBufferAt(0,this.§;F§,§0&§.§%#§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§-?§ == null || this.§`?§)
         {
            param1.setVertexBufferAt(2,this.§ >§,§0&§.§ C§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §!K§[0] = §!K§[1] = §!K§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §!K§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§!K§,1);
         }
         if(this.§-?§)
         {
            param1.setTextureAt(0,this.§-?§.getBase(param1));
            param1.setVertexBufferAt(1,this.§=t§,§0&§.§@!%§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§+!P§,0,this.§"!B§ * 2);
         if(this.§-?§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§-?§ == null || this.§`?§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§"!B§ = 0;
         this.§`?§ = false;
         this.§-?§ = null;
         this.§'>§ = null;
      }
      
      public function §8^§(param1:§6!O§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§"!B§ + 1 > this.§"!F§.§6P§ / 4)
         {
            this.§-Q§();
         }
         if(this.§"!B§ == 0)
         {
            this.§-?§ = param3;
            this.§'>§ = param4;
            this.§"!F§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§"!B§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§"!F§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§`?§ = true;
         }
         ++this.§"!B§;
      }
      
      public function §"!P§(param1:§6!O§, param2:Texture, param3:String) : Boolean
      {
         if(this.§-?§ != null && param2 != null)
         {
            return this.§-?§.root != param2.root || this.§-?§.repeat != param2.repeat || this.§'>§ != param3 || this.§`?§ != param1.useColor || this.§"!B§ == 8192;
         }
         if(this.§-?§ == null && param2 == null)
         {
            return false;
         }
         return this.§"!B§ != 0 || this.§`?§ != param1.useColor;
      }
   }
}
