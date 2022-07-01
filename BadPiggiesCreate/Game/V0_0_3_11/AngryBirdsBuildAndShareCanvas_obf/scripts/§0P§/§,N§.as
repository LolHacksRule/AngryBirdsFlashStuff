package §0P§
{
   import §1!Y§.§5!W§;
   import §1!Y§.§8C§;
   import §1!Y§.DisplayObject;
   import §1!Y§.DisplayObjectContainer;
   import §<;§.§3_§;
   import §=v§.§+r§;
   import §@j§.§#b§;
   import §^i§.§7n§;
   import §^i§.Texture;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §,N§
   {
      
      private static var §0!R§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §&!H§:int;
      
      private var § !^§:Texture;
      
      private var §-!s§:String;
      
      private var §#!I§:§+r§;
      
      private var § O§:VertexBuffer3D;
      
      private var §&"2§:VertexBuffer3D;
      
      private var §[!s§:VertexBuffer3D;
      
      private var §"$§:Vector.<uint>;
      
      private var §+!Z§:IndexBuffer3D;
      
      private var §!!^§:Boolean = false;
      
      private var § !o§:Boolean = false;
      
      public function §,N§()
      {
         super();
         §5"4§();
         this.§#!I§ = new §+r§(0,true);
         this.§"$§ = new Vector.<uint>(0);
         this.§&!H§ = 0;
         this.§0>§();
      }
      
      public static function §5!z§(param1:DisplayObjectContainer, param2:Vector.<§,N§>) : void
      {
         §?!K§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §?!K§(param1:DisplayObject, param2:Vector.<§,N§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§5!W§ = null;
         var _loc13_:§8C§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§,N§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §,N§());
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
               _loc11_.§0!6§(_loc10_);
               param3 = §?!K§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §5!W§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §5!W§) as §8C§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§5"&§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §,N§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§,M§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §5"4§() : void
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
         var _loc1_:§!!l§ = §!!l§.§`7§;
         if(_loc1_.§=![§(§<!d§(true)))
         {
            return;
         }
         var _loc2_:§#b§ = new §#b§();
         var _loc3_:§#b§ = new §#b§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§=@§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§=@§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§0A§(§<!d§(_loc6_),_loc2_.§%x§,_loc3_.§%x§);
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
               _loc2_.§=@§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§7n§.NONE,§7n§.§default§,§7n§.§@1§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §7n§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §7n§.§default§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§=@§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§0A§(§1q§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§%x§,_loc3_.§%x§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §<!d§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §1q§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §7n§.§default§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §-!d§() : int
      {
         return this.§&!H§;
      }
      
      public function dispose() : void
      {
         if(this.§ O§)
         {
            this.§ O§.dispose();
         }
         if(this.§&"2§)
         {
            this.§&"2§.dispose();
         }
         if(this.§[!s§)
         {
            this.§[!s§.dispose();
         }
         if(this.§+!Z§)
         {
            this.§+!Z§.dispose();
         }
      }
      
      private function §0>§() : void
      {
         var _loc1_:int = this.§#!I§.§34§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§#!I§.§34§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§"$§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§"$§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§"$§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§"$§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§"$§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§"$§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§ !o§ = true;
      }
      
      private function §6!+§(param1:Context3D) : Boolean
      {
         if(!this.§ !o§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §3_§();
         }
         if(this.§ O§)
         {
            this.§ O§.dispose();
         }
         if(this.§&"2§)
         {
            this.§&"2§.dispose();
         }
         if(this.§[!s§)
         {
            this.§[!s§.dispose();
         }
         if(this.§+!Z§)
         {
            this.§+!Z§.dispose();
         }
         var _loc2_:int = this.§#!I§.§34§ / 4;
         this.§ O§ = param1.createVertexBuffer(_loc2_ * 4,§+r§.§;!H§);
         this.§ O§.uploadFromByteArray(this.§#!I§.§9!i§,0,0,_loc2_ * 4);
         this.§&"2§ = param1.createVertexBuffer(_loc2_ * 4,§+r§.§6!Q§);
         this.§&"2§.uploadFromVector(this.§#!I§.§2!'§,0,_loc2_ * 4);
         this.§[!s§ = param1.createVertexBuffer(_loc2_ * 4,§+r§.§7!X§);
         this.§[!s§.uploadFromVector(this.§#!I§.§1!"§,0,_loc2_ * 4);
         this.§+!Z§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§+!Z§.uploadFromVector(this.§"$§,0,_loc2_ * 6);
         this.§ !o§ = false;
         return true;
      }
      
      private function §;" §(param1:Context3D) : void
      {
         if(!this.§6!+§(param1))
         {
            this.§ O§.uploadFromByteArray(this.§#!I§.§9!i§,0,0,this.§&!H§ * 4);
            if(this.§!!^§)
            {
               this.§&"2§.uploadFromVector(this.§#!I§.§2!'§,0,this.§&!H§ * 4);
            }
            this.§[!s§.uploadFromVector(this.§#!I§.§1!"§,0,this.§&!H§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§&!H§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§#!I§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§ !^§ ? §1q§(_loc5_,this.§ !^§.mipMapping,this.§ !^§.repeat,this.§-!s§,this.§!!^§) : §<!d§(_loc5_);
         §1!O§.§@[§(param1,_loc4_);
         this.§;" §(param1);
         param1.setProgram(§!!l§.§`7§.§+§(_loc6_));
         param1.setVertexBufferAt(0,this.§[!s§,§+r§.§%"!§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§ !^§ == null || this.§!!^§)
         {
            param1.setVertexBufferAt(2,this.§&"2§,§+r§.§"!H§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §0!R§[0] = §0!R§[1] = §0!R§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §0!R§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§0!R§,1);
         }
         if(this.§ !^§)
         {
            param1.setTextureAt(0,this.§ !^§.getBase(param1));
            param1.setVertexBufferAt(1,this.§ O§,§+r§.§@#§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§+!Z§,0,this.§&!H§ * 2);
         if(this.§ !^§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§ !^§ == null || this.§!!^§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§&!H§ = 0;
         this.§!!^§ = false;
         this.§ !^§ = null;
         this.§-!s§ = null;
      }
      
      public function §,M§(param1:§5!W§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§&!H§ + 1 > this.§#!I§.§34§ / 4)
         {
            this.§0>§();
         }
         if(this.§&!H§ == 0)
         {
            this.§ !^§ = param3;
            this.§-!s§ = param4;
            this.§#!I§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§&!H§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§#!I§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§!!^§ = true;
         }
         ++this.§&!H§;
      }
      
      public function §5"&§(param1:§5!W§, param2:Texture, param3:String) : Boolean
      {
         if(this.§ !^§ != null && param2 != null)
         {
            return this.§ !^§.root != param2.root || this.§ !^§.repeat != param2.repeat || this.§-!s§ != param3 || this.§!!^§ != param1.useColor || this.§&!H§ == 8192;
         }
         if(this.§ !^§ == null && param2 == null)
         {
            return false;
         }
         return this.§&!H§ != 0 || this.§!!^§ != param1.useColor;
      }
   }
}
