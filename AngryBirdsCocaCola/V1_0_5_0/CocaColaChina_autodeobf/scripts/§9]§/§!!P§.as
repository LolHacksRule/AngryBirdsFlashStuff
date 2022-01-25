package §9]§
{
   import §#!S§.§'`§;
   import §%Q§.§`j§;
   import §&!=§.§4z§;
   import §<!$§.§6f§;
   import §<!$§.DisplayObject;
   import §<!$§.DisplayObjectContainer;
   import §<!$§.§[!5§;
   import §@'§.§2!Y§;
   import §@'§.Texture;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §!!P§
   {
      
      private static var §6O§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §4a§:int;
      
      private var § !Y§:Texture;
      
      private var §#j§:String;
      
      private var § g§:§`j§;
      
      private var §%!P§:VertexBuffer3D;
      
      private var §3V§:VertexBuffer3D;
      
      private var §!x§:VertexBuffer3D;
      
      private var §8!Q§:Vector.<uint>;
      
      private var §8!@§:IndexBuffer3D;
      
      private var §<P§:Boolean = false;
      
      private var §[!3§:Boolean = false;
      
      public function §!!P§()
      {
         super();
         §'W§();
         this.§ g§ = new §`j§(0,true);
         this.§8!Q§ = new Vector.<uint>(0);
         this.§4a§ = 0;
         this.§>8§();
      }
      
      public static function §9e§(param1:DisplayObjectContainer, param2:Vector.<§!!P§>) : void
      {
         §]#§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §]#§(param1:DisplayObject, param2:Vector.<§!!P§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§6f§ = null;
         var _loc13_:§[!5§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§!!P§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §!!P§());
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
               _loc11_.§9G§(_loc10_);
               param3 = §]#§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §6f§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §6f§) as §[!5§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§#! §(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §!!P§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§-h§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §'W§() : void
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
         var _loc1_:§9J§ = §9J§.§?X§;
         if(_loc1_.§8!V§(§5!O§(true)))
         {
            return;
         }
         var _loc2_:§4z§ = new §4z§();
         var _loc3_:§4z§ = new §4z§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§ J§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§ J§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§ !I§(§5!O§(_loc6_),_loc2_.§@U§,_loc3_.§@U§);
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
               _loc2_.§ J§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§2!Y§.NONE,§2!Y§.§3!N§,§2!Y§.§7!O§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §2!Y§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §2!Y§.§3!N§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§ J§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§ !I§(§@!2§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§@U§,_loc3_.§@U§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §5!O§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §@!2§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §2!Y§.§3!N§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §^K§() : int
      {
         return this.§4a§;
      }
      
      public function dispose() : void
      {
         if(this.§%!P§)
         {
            this.§%!P§.dispose();
         }
         if(this.§3V§)
         {
            this.§3V§.dispose();
         }
         if(this.§!x§)
         {
            this.§!x§.dispose();
         }
         if(this.§8!@§)
         {
            this.§8!@§.dispose();
         }
      }
      
      private function §>8§() : void
      {
         var _loc1_:int = this.§ g§.§8R§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§ g§.§8R§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§8!Q§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§8!Q§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§8!Q§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§8!Q§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§8!Q§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§8!Q§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§[!3§ = true;
      }
      
      private function §[![§(param1:Context3D) : Boolean
      {
         if(!this.§[!3§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §'`§();
         }
         if(this.§%!P§)
         {
            this.§%!P§.dispose();
         }
         if(this.§3V§)
         {
            this.§3V§.dispose();
         }
         if(this.§!x§)
         {
            this.§!x§.dispose();
         }
         if(this.§8!@§)
         {
            this.§8!@§.dispose();
         }
         var _loc2_:int = this.§ g§.§8R§ / 4;
         this.§%!P§ = param1.createVertexBuffer(_loc2_ * 4,§`j§.§%!T§);
         this.§%!P§.uploadFromByteArray(this.§ g§.§;!K§,0,0,_loc2_ * 4);
         this.§3V§ = param1.createVertexBuffer(_loc2_ * 4,§`j§.§@!b§);
         this.§3V§.uploadFromVector(this.§ g§.§"H§,0,_loc2_ * 4);
         this.§!x§ = param1.createVertexBuffer(_loc2_ * 4,§`j§.§0f§);
         this.§!x§.uploadFromVector(this.§ g§.§6e§,0,_loc2_ * 4);
         this.§8!@§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§8!@§.uploadFromVector(this.§8!Q§,0,_loc2_ * 6);
         this.§[!3§ = false;
         return true;
      }
      
      private function §-x§(param1:Context3D) : void
      {
         if(!this.§[![§(param1))
         {
            this.§%!P§.uploadFromByteArray(this.§ g§.§;!K§,0,0,this.§4a§ * 4);
            if(this.§<P§)
            {
               this.§3V§.uploadFromVector(this.§ g§.§"H§,0,this.§4a§ * 4);
            }
            this.§!x§.uploadFromVector(this.§ g§.§6e§,0,this.§4a§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§4a§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§ g§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§ !Y§ ? §@!2§(_loc5_,this.§ !Y§.mipMapping,this.§ !Y§.repeat,this.§#j§,this.§<P§) : §5!O§(_loc5_);
         §0`§.§ !8§(param1,_loc4_);
         this.§-x§(param1);
         param1.setProgram(§9J§.§?X§.§?!B§(_loc6_));
         param1.setVertexBufferAt(0,this.§!x§,§`j§.§^!2§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§ !Y§ == null || this.§<P§)
         {
            param1.setVertexBufferAt(2,this.§3V§,§`j§.§8`§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §6O§[0] = §6O§[1] = §6O§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §6O§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§6O§,1);
         }
         if(this.§ !Y§)
         {
            param1.setTextureAt(0,this.§ !Y§.getBase(param1));
            param1.setVertexBufferAt(1,this.§%!P§,§`j§.§+_§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§8!@§,0,this.§4a§ * 2);
         if(this.§ !Y§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§ !Y§ == null || this.§<P§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§4a§ = 0;
         this.§<P§ = false;
         this.§ !Y§ = null;
         this.§#j§ = null;
      }
      
      public function §-h§(param1:§6f§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§4a§ + 1 > this.§ g§.§8R§ / 4)
         {
            this.§>8§();
         }
         if(this.§4a§ == 0)
         {
            this.§ !Y§ = param3;
            this.§#j§ = param4;
            this.§ g§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§4a§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§ g§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§<P§ = true;
         }
         ++this.§4a§;
      }
      
      public function §#! §(param1:§6f§, param2:Texture, param3:String) : Boolean
      {
         if(this.§ !Y§ != null && param2 != null)
         {
            return this.§ !Y§.root != param2.root || this.§ !Y§.repeat != param2.repeat || this.§#j§ != param3 || this.§<P§ != param1.useColor || this.§4a§ == 8192;
         }
         if(this.§ !Y§ == null && param2 == null)
         {
            return false;
         }
         return this.§4a§ != 0 || this.§<P§ != param1.useColor;
      }
   }
}
