package §&#H§
{
   import §!!U§.§#"t§;
   import §!!U§.§2"D§;
   import §!!U§.DisplayObject;
   import §!!U§.DisplayObjectContainer;
   import §!#^§.§if §;
   import §&v§.§ +§;
   import §&v§.Texture;
   import §;8§.§'#]§;
   import §=]§.§%"G§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §%"Y§
   {
      
      private static var §%#4§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §%!$§:int;
      
      private var §#!d§:Texture;
      
      private var §3I§:String;
      
      private var §;q§:§%"G§;
      
      private var §^d§:VertexBuffer3D;
      
      private var §%![§:VertexBuffer3D;
      
      private var §7!E§:VertexBuffer3D;
      
      private var §+!'§:Vector.<uint>;
      
      private var §<#8§:IndexBuffer3D;
      
      private var §8!F§:Boolean = false;
      
      private var §>"C§:Boolean = false;
      
      public function §%"Y§()
      {
         super();
         §["y§();
         this.§;q§ = new §%"G§(0,true);
         this.§+!'§ = new Vector.<uint>(0);
         this.§%!$§ = 0;
         this.§]M§();
      }
      
      public static function §[;§(param1:DisplayObjectContainer, param2:Vector.<§%"Y§>) : void
      {
         §]!v§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §]!v§(param1:DisplayObject, param2:Vector.<§%"Y§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§2"D§ = null;
         var _loc13_:§#"t§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§%"Y§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §%"Y§());
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
                  _loc11_.§!]§(_loc10_);
                  param3 = §]!v§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is §2"D§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §2"D§) as §#"t§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§@c§(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §%"Y§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§54§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §["y§() : void
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
         var _loc1_:§3#J§ = §3#J§.§2!C§;
         if(_loc1_.§,"i§(§&!&§(true)))
         {
            return;
         }
         var _loc2_:§if § = new §if §();
         var _loc3_:§if § = new §if §();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§ "@§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§ "@§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§4#-§(§&!&§(_loc6_),_loc2_.§ #+§,_loc3_.§ #+§);
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
               _loc2_.§ "@§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§ +§.NONE,§ +§.§1#B§,§ +§.§5!^§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == § +§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == § +§.§1#B§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§ "@§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§4#-§(§5#@§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§ #+§,_loc3_.§ #+§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §&!&§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §5#@§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != § +§.§1#B§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §%">§() : int
      {
         return this.§%!$§;
      }
      
      public function dispose() : void
      {
         if(this.§^d§)
         {
            this.§^d§.dispose();
         }
         if(this.§%![§)
         {
            this.§%![§.dispose();
         }
         if(this.§7!E§)
         {
            this.§7!E§.dispose();
         }
         if(this.§<#8§)
         {
            this.§<#8§.dispose();
         }
      }
      
      private function §]M§() : void
      {
         var _loc1_:int = this.§;q§.§5#%§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§;q§.§5#%§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§+!'§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§+!'§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§+!'§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§+!'§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§+!'§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§+!'§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§>"C§ = true;
      }
      
      private function §8!-§(param1:Context3D) : Boolean
      {
         if(!this.§>"C§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §'#]§();
         }
         if(this.§^d§)
         {
            this.§^d§.dispose();
         }
         if(this.§%![§)
         {
            this.§%![§.dispose();
         }
         if(this.§7!E§)
         {
            this.§7!E§.dispose();
         }
         if(this.§<#8§)
         {
            this.§<#8§.dispose();
         }
         var _loc2_:int = this.§;q§.§5#%§ / 4;
         this.§^d§ = param1.createVertexBuffer(_loc2_ * 4,§%"G§.§<"<§);
         this.§^d§.uploadFromByteArray(this.§;q§.§ ";§,0,0,_loc2_ * 4);
         this.§%![§ = param1.createVertexBuffer(_loc2_ * 4,§%"G§.§4v§);
         this.§%![§.uploadFromVector(this.§;q§.§>"+§,0,_loc2_ * 4);
         this.§7!E§ = param1.createVertexBuffer(_loc2_ * 4,§%"G§.§'!Q§);
         this.§7!E§.uploadFromVector(this.§;q§.§%"!§,0,_loc2_ * 4);
         this.§<#8§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§<#8§.uploadFromVector(this.§+!'§,0,_loc2_ * 6);
         this.§>"C§ = false;
         return true;
      }
      
      private function §-"^§(param1:Context3D) : void
      {
         if(!this.§8!-§(param1))
         {
            this.§^d§.uploadFromByteArray(this.§;q§.§ ";§,0,0,this.§%!$§ * 4);
            if(this.§8!F§)
            {
               this.§%![§.uploadFromVector(this.§;q§.§>"+§,0,this.§%!$§ * 4);
            }
            this.§7!E§.uploadFromVector(this.§;q§.§%"!§,0,this.§%!$§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§%!$§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§;q§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§#!d§ ? §5#@§(_loc5_,this.§#!d§.mipMapping,this.§#!d§.repeat,this.§3I§,this.§8!F§) : §&!&§(_loc5_);
         §%"H§.§`!_§(param1,_loc4_);
         this.§-"^§(param1);
         param1.setProgram(§3#J§.§2!C§.§^!_§(_loc6_));
         param1.setVertexBufferAt(0,this.§7!E§,§%"G§.§42§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§#!d§ == null || this.§8!F§)
         {
            param1.setVertexBufferAt(2,this.§%![§,§%"G§.§`"§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §%#4§[0] = §%#4§[1] = §%#4§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §%#4§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§%#4§,1);
         }
         if(this.§#!d§)
         {
            param1.setTextureAt(0,this.§#!d§.getBase(param1));
            param1.setVertexBufferAt(1,this.§^d§,§%"G§.§&"o§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§<#8§,0,this.§%!$§ * 2);
         if(this.§#!d§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§#!d§ == null || this.§8!F§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§%!$§ = 0;
         this.§8!F§ = false;
         this.§#!d§ = null;
         this.§3I§ = null;
      }
      
      public function §54§(param1:§2"D§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§%!$§ + 1 > this.§;q§.§5#%§ / 4)
         {
            this.§]M§();
         }
         if(this.§%!$§ == 0)
         {
            this.§#!d§ = param3;
            this.§3I§ = param4;
            this.§;q§.§[!p§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§8!F§ = true;
            }
         }
         var _loc6_:int = this.§%!$§ * 4;
         param1.copyVertexDataTo(this.§;q§,_loc6_,param2,param5);
         ++this.§%!$§;
      }
      
      public function §@c§(param1:§2"D§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§#!d§ != null && param2 != null)
         {
            return this.§#!d§.root != param2.root || this.§#!d§.repeat != param2.repeat || this.§3I§ != param3 || this.§8!F§ != param1.useColor || this.§%!$§ == 8192;
         }
         if(this.§#!d§ == null && param2 == null)
         {
            return false;
         }
         return this.§%!$§ != 0 || this.§8!F§ != (param1.useColor || param4 != 1);
      }
   }
}
