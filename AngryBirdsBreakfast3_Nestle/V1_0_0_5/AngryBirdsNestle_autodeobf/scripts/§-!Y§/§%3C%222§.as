package §-!Y§
{
   import §,!q§.§#!H§;
   import §,!q§.§+Q§;
   import §,!q§.DisplayObject;
   import §,!q§.DisplayObjectContainer;
   import §-$§.§6"5§;
   import §6M§.§[!E§;
   import §?V§.§@A§;
   import §?V§.Texture;
   import §]"1§.§`n§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §<"2§
   {
      
      private static var §6z§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §;@§:int;
      
      private var §4f§:Texture;
      
      private var §-3§:String;
      
      private var §;<§:§6"5§;
      
      private var §-!§:VertexBuffer3D;
      
      private var §-!p§:VertexBuffer3D;
      
      private var §9r§:VertexBuffer3D;
      
      private var §@9§:Vector.<uint>;
      
      private var §>!5§:IndexBuffer3D;
      
      private var §2!k§:Boolean = false;
      
      private var §4§:Boolean = false;
      
      public function §<"2§()
      {
         super();
         §-!k§();
         this.§;<§ = new §6"5§(0,true);
         this.§@9§ = new Vector.<uint>(0);
         this.§;@§ = 0;
         this.§<!3§();
      }
      
      public static function §"!>§(param1:DisplayObjectContainer, param2:Vector.<§<"2§>) : void
      {
         §<K§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §<K§(param1:DisplayObject, param2:Vector.<§<"2§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§#!H§ = null;
         var _loc13_:§+Q§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§<"2§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §<"2§());
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
                  _loc11_.§2!Q§(_loc10_);
                  param3 = §<K§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is §#!H§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §#!H§) as §+Q§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§@g§(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §<"2§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§+r§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §-!k§() : void
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
         var _loc1_:§%!%§ = §%!%§.§"T§;
         if(_loc1_.§8&§(§?g§(true)))
         {
            return;
         }
         var _loc2_:§[!E§ = new §[!E§();
         var _loc3_:§[!E§ = new §[!E§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§1#§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§1#§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§1"3§(§?g§(_loc6_),_loc2_.§=g§,_loc3_.§=g§);
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
               _loc2_.§1#§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§@A§.NONE,§@A§.§,9§,§@A§.§[!b§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §@A§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §@A§.§,9§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§1#§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§1"3§(§8!G§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§=g§,_loc3_.§=g§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §?g§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §8!G§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §@A§.§,9§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §7!8§() : int
      {
         return this.§;@§;
      }
      
      public function dispose() : void
      {
         if(this.§-!§)
         {
            this.§-!§.dispose();
         }
         if(this.§-!p§)
         {
            this.§-!p§.dispose();
         }
         if(this.§9r§)
         {
            this.§9r§.dispose();
         }
         if(this.§>!5§)
         {
            this.§>!5§.dispose();
         }
      }
      
      private function §<!3§() : void
      {
         var _loc1_:int = this.§;<§.§"@§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§;<§.§"@§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§@9§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§@9§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§@9§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§@9§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§@9§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§@9§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§4§ = true;
      }
      
      private function §break§(param1:Context3D) : Boolean
      {
         if(!this.§4§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §`n§();
         }
         if(this.§-!§)
         {
            this.§-!§.dispose();
         }
         if(this.§-!p§)
         {
            this.§-!p§.dispose();
         }
         if(this.§9r§)
         {
            this.§9r§.dispose();
         }
         if(this.§>!5§)
         {
            this.§>!5§.dispose();
         }
         var _loc2_:int = this.§;<§.§"@§ / 4;
         this.§-!§ = param1.createVertexBuffer(_loc2_ * 4,§6"5§.§"<§);
         this.§-!§.uploadFromByteArray(this.§;<§.§]!p§,0,0,_loc2_ * 4);
         this.§-!p§ = param1.createVertexBuffer(_loc2_ * 4,§6"5§.§6!B§);
         this.§-!p§.uploadFromVector(this.§;<§.§+!N§,0,_loc2_ * 4);
         this.§9r§ = param1.createVertexBuffer(_loc2_ * 4,§6"5§.§<!=§);
         this.§9r§.uploadFromVector(this.§;<§.§@!%§,0,_loc2_ * 4);
         this.§>!5§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§>!5§.uploadFromVector(this.§@9§,0,_loc2_ * 6);
         this.§4§ = false;
         return true;
      }
      
      private function §&h§(param1:Context3D) : void
      {
         if(!this.§break§(param1))
         {
            this.§-!§.uploadFromByteArray(this.§;<§.§]!p§,0,0,this.§;@§ * 4);
            if(this.§2!k§)
            {
               this.§-!p§.uploadFromVector(this.§;<§.§+!N§,0,this.§;@§ * 4);
            }
            this.§9r§.uploadFromVector(this.§;<§.§@!%§,0,this.§;@§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§;@§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§;<§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§4f§ ? §8!G§(_loc5_,this.§4f§.mipMapping,this.§4f§.repeat,this.§-3§,this.§2!k§) : §?g§(_loc5_);
         §,!f§.§&u§(param1,_loc4_);
         this.§&h§(param1);
         param1.setProgram(§%!%§.§"T§.§1'§(_loc6_));
         param1.setVertexBufferAt(0,this.§9r§,§6"5§.§"!L§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§4f§ == null || this.§2!k§)
         {
            param1.setVertexBufferAt(2,this.§-!p§,§6"5§.§%!;§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §6z§[0] = §6z§[1] = §6z§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §6z§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§6z§,1);
         }
         if(this.§4f§)
         {
            param1.setTextureAt(0,this.§4f§.getBase(param1));
            param1.setVertexBufferAt(1,this.§-!§,§6"5§.§1I§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§>!5§,0,this.§;@§ * 2);
         if(this.§4f§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§4f§ == null || this.§2!k§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§;@§ = 0;
         this.§2!k§ = false;
         this.§4f§ = null;
         this.§-3§ = null;
      }
      
      public function §+r§(param1:§#!H§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§;@§ + 1 > this.§;<§.§"@§ / 4)
         {
            this.§<!3§();
         }
         if(this.§;@§ == 0)
         {
            this.§4f§ = param3;
            this.§-3§ = param4;
            this.§;<§.§3"4§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§2!k§ = true;
            }
         }
         var _loc6_:int = this.§;@§ * 4;
         param1.copyVertexDataTo(this.§;<§,_loc6_,param2,param5);
         ++this.§;@§;
      }
      
      public function §@g§(param1:§#!H§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§4f§ != null && param2 != null)
         {
            return this.§4f§.root != param2.root || this.§4f§.repeat != param2.repeat || this.§-3§ != param3 || this.§2!k§ != param1.useColor || this.§;@§ == 8192;
         }
         if(this.§4f§ == null && param2 == null)
         {
            return false;
         }
         return this.§;@§ != 0 || this.§2!k§ != (param1.useColor || param4 != 1);
      }
   }
}
