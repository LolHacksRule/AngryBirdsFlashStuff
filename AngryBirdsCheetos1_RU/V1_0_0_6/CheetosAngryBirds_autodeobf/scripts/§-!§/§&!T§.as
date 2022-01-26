package §-!§
{
   import §6v§.§2Y§;
   import §9!6§.§[!%§;
   import §9!V§.§3!B§;
   import §;!Q§.§%o§;
   import §;!Q§.§,r§;
   import §;!Q§.DisplayObject;
   import §;!Q§.DisplayObjectContainer;
   import §]p§.§5!A§;
   import §]p§.Texture;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §&!T§
   {
      
      private static var §<!@§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §>Z§:int;
      
      private var §28§:Texture;
      
      private var §;$§:String;
      
      private var §[!L§:§3!B§;
      
      private var §=!2§:VertexBuffer3D;
      
      private var §]!S§:VertexBuffer3D;
      
      private var §0!B§:VertexBuffer3D;
      
      private var §#i§:Vector.<uint>;
      
      private var §!f§:IndexBuffer3D;
      
      private var §62§:Boolean = false;
      
      private var §`&§:Boolean = false;
      
      public function §&!T§()
      {
         super();
         §[!2§();
         this.§[!L§ = new §3!B§(0,true);
         this.§#i§ = new Vector.<uint>(0);
         this.§>Z§ = 0;
         this.§8!G§();
      }
      
      public static function §2!L§(param1:DisplayObjectContainer, param2:Vector.<§&!T§>) : void
      {
         §<! §(param1,param2,-1,new Matrix3D());
      }
      
      private static function §<! §(param1:DisplayObject, param2:Vector.<§&!T§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§,r§ = null;
         var _loc13_:§%o§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§&!T§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §&!T§());
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
               _loc11_.§8!K§(_loc10_);
               param3 = §<! §(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §,r§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §,r§) as §%o§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§1#§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §&!T§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§8!2§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §[!2§() : void
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
         var _loc1_:§-§ = §-§.§-G§;
         if(_loc1_.§3!9§(§-9§(true)))
         {
            return;
         }
         var _loc2_:§2Y§ = new §2Y§();
         var _loc3_:§2Y§ = new §2Y§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§0!`§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§0!`§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§0P§(§-9§(_loc6_),_loc2_.§!+§,_loc3_.§!+§);
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
               _loc2_.§0!`§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§5!A§.NONE,§5!A§.§6;§,§5!A§.§!!C§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §5!A§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §5!A§.§6;§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§0!`§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§0P§(§5Q§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§!+§,_loc3_.§!+§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §-9§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §5Q§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §5!A§.§6;§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §73§() : int
      {
         return this.§>Z§;
      }
      
      public function dispose() : void
      {
         if(this.§=!2§)
         {
            this.§=!2§.dispose();
         }
         if(this.§]!S§)
         {
            this.§]!S§.dispose();
         }
         if(this.§0!B§)
         {
            this.§0!B§.dispose();
         }
         if(this.§!f§)
         {
            this.§!f§.dispose();
         }
      }
      
      private function §8!G§() : void
      {
         var _loc1_:int = this.§[!L§.§<§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§[!L§.§<§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§#i§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§#i§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§#i§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§#i§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§#i§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§#i§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§`&§ = true;
      }
      
      private function §]!§(param1:Context3D) : Boolean
      {
         if(!this.§`&§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §[!%§();
         }
         if(this.§=!2§)
         {
            this.§=!2§.dispose();
         }
         if(this.§]!S§)
         {
            this.§]!S§.dispose();
         }
         if(this.§0!B§)
         {
            this.§0!B§.dispose();
         }
         if(this.§!f§)
         {
            this.§!f§.dispose();
         }
         var _loc2_:int = this.§[!L§.§<§ / 4;
         this.§=!2§ = param1.createVertexBuffer(_loc2_ * 4,§3!B§.§!o§);
         this.§=!2§.uploadFromByteArray(this.§[!L§.§9M§,0,0,_loc2_ * 4);
         this.§]!S§ = param1.createVertexBuffer(_loc2_ * 4,§3!B§.§%!C§);
         this.§]!S§.uploadFromVector(this.§[!L§.§'!U§,0,_loc2_ * 4);
         this.§0!B§ = param1.createVertexBuffer(_loc2_ * 4,§3!B§.§`!A§);
         this.§0!B§.uploadFromVector(this.§[!L§.§-Q§,0,_loc2_ * 4);
         this.§!f§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§!f§.uploadFromVector(this.§#i§,0,_loc2_ * 6);
         this.§`&§ = false;
         return true;
      }
      
      private function §!!;§(param1:Context3D) : void
      {
         if(!this.§]!§(param1))
         {
            this.§=!2§.uploadFromByteArray(this.§[!L§.§9M§,0,0,this.§>Z§ * 4);
            if(this.§62§)
            {
               this.§]!S§.uploadFromVector(this.§[!L§.§'!U§,0,this.§>Z§ * 4);
            }
            this.§0!B§.uploadFromVector(this.§[!L§.§-Q§,0,this.§>Z§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§>Z§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§[!L§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§28§ ? §5Q§(_loc5_,this.§28§.mipMapping,this.§28§.repeat,this.§;$§,this.§62§) : §-9§(_loc5_);
         §3!5§.§!!1§(param1,_loc4_);
         this.§!!;§(param1);
         param1.setProgram(§-§.§-G§.§@H§(_loc6_));
         param1.setVertexBufferAt(0,this.§0!B§,§3!B§.§`e§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§28§ == null || this.§62§)
         {
            param1.setVertexBufferAt(2,this.§]!S§,§3!B§.§9!^§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §<!@§[0] = §<!@§[1] = §<!@§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §<!@§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§<!@§,1);
         }
         if(this.§28§)
         {
            param1.setTextureAt(0,this.§28§.getBase(param1));
            param1.setVertexBufferAt(1,this.§=!2§,§3!B§.§4T§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§!f§,0,this.§>Z§ * 2);
         if(this.§28§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§28§ == null || this.§62§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§>Z§ = 0;
         this.§62§ = false;
         this.§28§ = null;
         this.§;$§ = null;
      }
      
      public function §8!2§(param1:§,r§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§>Z§ + 1 > this.§[!L§.§<§ / 4)
         {
            this.§8!G§();
         }
         if(this.§>Z§ == 0)
         {
            this.§28§ = param3;
            this.§;$§ = param4;
            this.§[!L§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§>Z§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§[!L§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§62§ = true;
         }
         ++this.§>Z§;
      }
      
      public function §1#§(param1:§,r§, param2:Texture, param3:String) : Boolean
      {
         if(this.§28§ != null && param2 != null)
         {
            return this.§28§.root != param2.root || this.§28§.repeat != param2.repeat || this.§;$§ != param3 || this.§62§ != param1.useColor || this.§>Z§ == 8192;
         }
         if(this.§28§ == null && param2 == null)
         {
            return false;
         }
         return this.§>Z§ != 0 || this.§62§ != param1.useColor;
      }
   }
}
