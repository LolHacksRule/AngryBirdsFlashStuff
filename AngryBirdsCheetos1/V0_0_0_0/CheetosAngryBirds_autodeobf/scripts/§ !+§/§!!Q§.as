package § !+§
{
   import §"! §.§@+§;
   import §2!-§.Texture;
   import §2!-§.§]!=§;
   import §<!M§.§;Z§;
   import §[!;§.§1@§;
   import §`a§.§>?§;
   import §`a§.§?!N§;
   import §`a§.DisplayObject;
   import §`a§.DisplayObjectContainer;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §!!Q§
   {
      
      private static var §5l§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §]>§:int;
      
      private var §<X§:Texture;
      
      private var §6h§:String;
      
      private var §"T§:§;Z§;
      
      private var §+!>§:VertexBuffer3D;
      
      private var §[9§:VertexBuffer3D;
      
      private var §+N§:VertexBuffer3D;
      
      private var §9W§:Vector.<uint>;
      
      private var §',§:IndexBuffer3D;
      
      private var §3L§:Boolean = false;
      
      private var §!!C§:Boolean = false;
      
      public function §!!Q§()
      {
         super();
         §]!L§();
         this.§"T§ = new §;Z§(0,true);
         this.§9W§ = new Vector.<uint>(0);
         this.§]>§ = 0;
         this.§5!>§();
      }
      
      public static function §>A§(param1:DisplayObjectContainer, param2:Vector.<§!!Q§>) : void
      {
         §6-§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §6-§(param1:DisplayObject, param2:Vector.<§!!Q§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§?!N§ = null;
         var _loc13_:§>?§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§!!Q§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §!!Q§());
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
               §%L§.§7!7§(_loc10_,_loc11_);
               param3 = §6-§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §?!N§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §?!N§) as §>?§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§56§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §!!Q§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§!"§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §]!L§() : void
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
         var _loc1_:§0Z§ = §0Z§.§4J§;
         if(_loc1_.§6!=§(§82§(true)))
         {
            return;
         }
         var _loc2_:§1@§ = new §1@§();
         var _loc3_:§1@§ = new §1@§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§'v§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§'v§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§"^§(§82§(_loc6_),_loc2_.§[!5§,_loc3_.§[!5§);
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
               _loc2_.§'v§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§]!=§.NONE,§]!=§.§8]§,§]!=§.§=_§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §]!=§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §]!=§.§8]§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§'v§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§"^§(§4=§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§[!5§,_loc3_.§[!5§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §82§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §4=§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §]!=§.§8]§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §^s§() : int
      {
         return this.§]>§;
      }
      
      public function dispose() : void
      {
         if(this.§+!>§)
         {
            this.§+!>§.dispose();
         }
         if(this.§[9§)
         {
            this.§[9§.dispose();
         }
         if(this.§+N§)
         {
            this.§+N§.dispose();
         }
         if(this.§',§)
         {
            this.§',§.dispose();
         }
      }
      
      private function §5!>§() : void
      {
         var _loc1_:int = this.§"T§.§[O§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§"T§.§[O§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§9W§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§9W§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§9W§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§9W§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§9W§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§9W§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§!!C§ = true;
      }
      
      private function §6j§(param1:Context3D) : Boolean
      {
         if(!this.§!!C§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §@+§();
         }
         if(this.§+!>§)
         {
            this.§+!>§.dispose();
         }
         if(this.§[9§)
         {
            this.§[9§.dispose();
         }
         if(this.§+N§)
         {
            this.§+N§.dispose();
         }
         if(this.§',§)
         {
            this.§',§.dispose();
         }
         var _loc2_:int = this.§"T§.§[O§ / 4;
         this.§+!>§ = param1.createVertexBuffer(_loc2_ * 4,§;Z§.§=!1§);
         this.§+!>§.uploadFromByteArray(this.§"T§.§3v§,0,0,_loc2_ * 4);
         this.§[9§ = param1.createVertexBuffer(_loc2_ * 4,§;Z§.§[3§);
         this.§[9§.uploadFromVector(this.§"T§.§@'§,0,_loc2_ * 4);
         this.§+N§ = param1.createVertexBuffer(_loc2_ * 4,§;Z§.§"1§);
         this.§+N§.uploadFromVector(this.§"T§.§;!2§,0,_loc2_ * 4);
         this.§',§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§',§.uploadFromVector(this.§9W§,0,_loc2_ * 6);
         this.§!!C§ = false;
         return true;
      }
      
      private function §3+§(param1:Context3D) : void
      {
         if(!this.§6j§(param1))
         {
            this.§+!>§.uploadFromByteArray(this.§"T§.§3v§,0,0,this.§]>§ * 4);
            if(this.§3L§)
            {
               this.§[9§.uploadFromVector(this.§"T§.§@'§,0,this.§]>§ * 4);
            }
            this.§+N§.uploadFromVector(this.§"T§.§;!2§,0,this.§]>§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§]>§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§"T§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§<X§ ? §4=§(_loc5_,this.§<X§.mipMapping,this.§<X§.repeat,this.§6h§,this.§3L§) : §82§(_loc5_);
         §%L§.§ !;§(param1,_loc4_);
         this.§3+§(param1);
         param1.setProgram(§0Z§.§4J§.§3!3§(_loc6_));
         param1.setVertexBufferAt(0,this.§+N§,§;Z§.§%E§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§<X§ == null || this.§3L§)
         {
            param1.setVertexBufferAt(2,this.§[9§,§;Z§.§>`§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §5l§[0] = §5l§[1] = §5l§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §5l§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§5l§,1);
         }
         if(this.§<X§)
         {
            param1.setTextureAt(0,this.§<X§.getBase(param1));
            param1.setVertexBufferAt(1,this.§+!>§,§;Z§.§`!5§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§',§,0,this.§]>§ * 2);
         if(this.§<X§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§<X§ == null || this.§3L§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§]>§ = 0;
         this.§3L§ = false;
         this.§<X§ = null;
         this.§6h§ = null;
      }
      
      public function §!"§(param1:§?!N§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§]>§ + 1 > this.§"T§.§[O§ / 4)
         {
            this.§5!>§();
         }
         if(this.§]>§ == 0)
         {
            this.§<X§ = param3;
            this.§6h§ = param4;
            this.§"T§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§]>§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§"T§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§3L§ = true;
         }
         ++this.§]>§;
      }
      
      public function §56§(param1:§?!N§, param2:Texture, param3:String) : Boolean
      {
         if(this.§<X§ != null && param2 != null)
         {
            return this.§<X§.root != param2.root || this.§<X§.repeat != param2.repeat || this.§6h§ != param3 || this.§3L§ != param1.useColor || this.§]>§ == 8192;
         }
         if(this.§<X§ == null && param2 == null)
         {
            return false;
         }
         return this.§]>§ != 0 || this.§3L§ != param1.useColor;
      }
   }
}
