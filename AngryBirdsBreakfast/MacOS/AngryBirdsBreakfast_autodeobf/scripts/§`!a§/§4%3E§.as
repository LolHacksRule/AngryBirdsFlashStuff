package §`!a§
{
   import §%q§.§+,§;
   import §%q§.Texture;
   import §'O§.§+!-§;
   import §+o§.§3C§;
   import §3!5§.§%!y§;
   import §6![§.§ !f§;
   import §6![§.§1!J§;
   import §6![§.DisplayObject;
   import §6![§.DisplayObjectContainer;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §4>§
   {
      
      private static var §-!K§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §!!p§:int;
      
      private var §5"&§:Texture;
      
      private var §^!T§:String;
      
      private var §1!&§:§3C§;
      
      private var §8"&§:VertexBuffer3D;
      
      private var §<!]§:VertexBuffer3D;
      
      private var §4H§:VertexBuffer3D;
      
      private var §=W§:Vector.<uint>;
      
      private var §&8§:IndexBuffer3D;
      
      private var §`s§:Boolean = false;
      
      private var §<!N§:Boolean = false;
      
      public function §4>§()
      {
         super();
         §1P§();
         this.§1!&§ = new §3C§(0,true);
         this.§=W§ = new Vector.<uint>(0);
         this.§!!p§ = 0;
         this.§[!S§();
      }
      
      public static function §#2§(param1:DisplayObjectContainer, param2:Vector.<§4>§>) : void
      {
         §18§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §18§(param1:DisplayObject, param2:Vector.<§4>§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§ !f§ = null;
         var _loc13_:§1!J§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§4>§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §4>§());
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
                  _loc11_.§9K§(_loc10_);
                  param3 = §18§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is § !f§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as § !f§) as §1!J§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§%@§(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §4>§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§!Y§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §1P§() : void
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
         var _loc1_:§1"&§ = §1"&§.§1i§;
         if(_loc1_.§^-§(§33§(true)))
         {
            return;
         }
         var _loc2_:§%!y§ = new §%!y§();
         var _loc3_:§%!y§ = new §%!y§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§9!d§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§9!d§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§'!B§(§33§(_loc6_),_loc2_.§&!%§,_loc3_.§&!%§);
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
               _loc2_.§9!d§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§+,§.NONE,§+,§.§7q§,§+,§.§]!h§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §+,§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §+,§.§7q§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§9!d§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§'!B§(§0!<§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§&!%§,_loc3_.§&!%§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §33§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §0!<§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §+,§.§7q§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §%2§() : int
      {
         return this.§!!p§;
      }
      
      public function dispose() : void
      {
         if(this.§8"&§)
         {
            this.§8"&§.dispose();
         }
         if(this.§<!]§)
         {
            this.§<!]§.dispose();
         }
         if(this.§4H§)
         {
            this.§4H§.dispose();
         }
         if(this.§&8§)
         {
            this.§&8§.dispose();
         }
      }
      
      private function §[!S§() : void
      {
         var _loc1_:int = this.§1!&§.§6<§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§1!&§.§6<§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§=W§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§=W§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§=W§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§=W§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§=W§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§=W§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§<!N§ = true;
      }
      
      private function §?!s§(param1:Context3D) : Boolean
      {
         if(!this.§<!N§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §+!-§();
         }
         if(this.§8"&§)
         {
            this.§8"&§.dispose();
         }
         if(this.§<!]§)
         {
            this.§<!]§.dispose();
         }
         if(this.§4H§)
         {
            this.§4H§.dispose();
         }
         if(this.§&8§)
         {
            this.§&8§.dispose();
         }
         var _loc2_:int = this.§1!&§.§6<§ / 4;
         this.§8"&§ = param1.createVertexBuffer(_loc2_ * 4,§3C§.§^!§);
         this.§8"&§.uploadFromByteArray(this.§1!&§.§8!b§,0,0,_loc2_ * 4);
         this.§<!]§ = param1.createVertexBuffer(_loc2_ * 4,§3C§.§!"&§);
         this.§<!]§.uploadFromVector(this.§1!&§.§<!G§,0,_loc2_ * 4);
         this.§4H§ = param1.createVertexBuffer(_loc2_ * 4,§3C§.§'!F§);
         this.§4H§.uploadFromVector(this.§1!&§.§''§,0,_loc2_ * 4);
         this.§&8§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§&8§.uploadFromVector(this.§=W§,0,_loc2_ * 6);
         this.§<!N§ = false;
         return true;
      }
      
      private function §3!j§(param1:Context3D) : void
      {
         if(!this.§?!s§(param1))
         {
            this.§8"&§.uploadFromByteArray(this.§1!&§.§8!b§,0,0,this.§!!p§ * 4);
            if(this.§`s§)
            {
               this.§<!]§.uploadFromVector(this.§1!&§.§<!G§,0,this.§!!p§ * 4);
            }
            this.§4H§.uploadFromVector(this.§1!&§.§''§,0,this.§!!p§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§!!p§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§1!&§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§5"&§ ? §0!<§(_loc5_,this.§5"&§.mipMapping,this.§5"&§.repeat,this.§^!T§,this.§`s§) : §33§(_loc5_);
         §0L§.§@M§(param1,_loc4_);
         this.§3!j§(param1);
         param1.setProgram(§1"&§.§1i§.§>p§(_loc6_));
         param1.setVertexBufferAt(0,this.§4H§,§3C§.§2!F§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§5"&§ == null || this.§`s§)
         {
            param1.setVertexBufferAt(2,this.§<!]§,§3C§.§0!g§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §-!K§[0] = §-!K§[1] = §-!K§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §-!K§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§-!K§,1);
         }
         if(this.§5"&§)
         {
            param1.setTextureAt(0,this.§5"&§.getBase(param1));
            param1.setVertexBufferAt(1,this.§8"&§,§3C§.§null §,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§&8§,0,this.§!!p§ * 2);
         if(this.§5"&§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§5"&§ == null || this.§`s§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§!!p§ = 0;
         this.§`s§ = false;
         this.§5"&§ = null;
         this.§^!T§ = null;
      }
      
      public function §!Y§(param1:§ !f§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§!!p§ + 1 > this.§1!&§.§6<§ / 4)
         {
            this.§[!S§();
         }
         if(this.§!!p§ == 0)
         {
            this.§5"&§ = param3;
            this.§^!T§ = param4;
            this.§1!&§.§!'§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§`s§ = true;
            }
         }
         var _loc6_:int = this.§!!p§ * 4;
         param1.copyVertexDataTo(this.§1!&§,_loc6_,param2,param5);
         ++this.§!!p§;
      }
      
      public function §%@§(param1:§ !f§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§5"&§ != null && param2 != null)
         {
            return this.§5"&§.root != param2.root || this.§5"&§.repeat != param2.repeat || this.§^!T§ != param3 || this.§`s§ != param1.useColor || this.§!!p§ == 8192;
         }
         if(this.§5"&§ == null && param2 == null)
         {
            return false;
         }
         return this.§!!p§ != 0 || this.§`s§ != (param1.useColor || param4 != 1);
      }
   }
}
