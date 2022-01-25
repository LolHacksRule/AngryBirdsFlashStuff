package §!!!§
{
   import §3!J§.§4!2§;
   import §3!J§.§8!l§;
   import §3!J§.DisplayObject;
   import §3!J§.DisplayObjectContainer;
   import §90§.§"!z§;
   import §=!4§.Texture;
   import §=!4§.§`'§;
   import §^!^§.§#!_§;
   import §^!w§.§2s§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §-!k§
   {
      
      private static var §4e§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var § !j§:int;
      
      private var §4>§:Texture;
      
      private var §?!z§:String;
      
      private var §2!^§:§#!_§;
      
      private var §3%§:VertexBuffer3D;
      
      private var §17§:VertexBuffer3D;
      
      private var §>7§:VertexBuffer3D;
      
      private var §4!;§:Vector.<uint>;
      
      private var §@X§:IndexBuffer3D;
      
      private var §;J§:Boolean = false;
      
      private var §?!5§:Boolean = false;
      
      public function §-!k§()
      {
         super();
         §"!'§();
         this.§2!^§ = new §#!_§(0,true);
         this.§4!;§ = new Vector.<uint>(0);
         this.§ !j§ = 0;
         this.§>!+§();
      }
      
      public static function §=!A§(param1:DisplayObjectContainer, param2:Vector.<§-!k§>) : void
      {
         §[!§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §[!§(param1:DisplayObject, param2:Vector.<§-!k§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§8!l§ = null;
         var _loc13_:§4!2§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§-!k§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §-!k§());
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
                  _loc11_.§3'§(_loc10_);
                  param3 = §[!§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is §8!l§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §8!l§) as §4!2§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§-!F§(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §-!k§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§ !z§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §"!'§() : void
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
         var _loc1_:§6!l§ = §6!l§.§+J§;
         if(_loc1_.§?R§(§<-§(true)))
         {
            return;
         }
         var _loc2_:§2s§ = new §2s§();
         var _loc3_:§2s§ = new §2s§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§@x§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§@x§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§]" §(§<-§(_loc6_),_loc2_.§+v§,_loc3_.§+v§);
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
               _loc2_.§@x§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§`'§.NONE,§`'§.§1!T§,§`'§.§&5§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §`'§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §`'§.§1!T§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§@x§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§]" §(§20§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§+v§,_loc3_.§+v§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §<-§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §20§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §`'§.§1!T§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §0=§() : int
      {
         return this.§ !j§;
      }
      
      public function dispose() : void
      {
         if(this.§3%§)
         {
            this.§3%§.dispose();
         }
         if(this.§17§)
         {
            this.§17§.dispose();
         }
         if(this.§>7§)
         {
            this.§>7§.dispose();
         }
         if(this.§@X§)
         {
            this.§@X§.dispose();
         }
      }
      
      private function §>!+§() : void
      {
         var _loc1_:int = this.§2!^§.§-!n§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§2!^§.§-!n§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§4!;§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§4!;§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§4!;§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§4!;§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§4!;§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§4!;§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§?!5§ = true;
      }
      
      private function §#!s§(param1:Context3D) : Boolean
      {
         if(!this.§?!5§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §"!z§();
         }
         if(this.§3%§)
         {
            this.§3%§.dispose();
         }
         if(this.§17§)
         {
            this.§17§.dispose();
         }
         if(this.§>7§)
         {
            this.§>7§.dispose();
         }
         if(this.§@X§)
         {
            this.§@X§.dispose();
         }
         var _loc2_:int = this.§2!^§.§-!n§ / 4;
         this.§3%§ = param1.createVertexBuffer(_loc2_ * 4,§#!_§.each);
         this.§3%§.uploadFromByteArray(this.§2!^§.§^%§,0,0,_loc2_ * 4);
         this.§17§ = param1.createVertexBuffer(_loc2_ * 4,§#!_§.§1+§);
         this.§17§.uploadFromVector(this.§2!^§.§?c§,0,_loc2_ * 4);
         this.§>7§ = param1.createVertexBuffer(_loc2_ * 4,§#!_§.§+!;§);
         this.§>7§.uploadFromVector(this.§2!^§.§%!0§,0,_loc2_ * 4);
         this.§@X§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§@X§.uploadFromVector(this.§4!;§,0,_loc2_ * 6);
         this.§?!5§ = false;
         return true;
      }
      
      private function §^!S§(param1:Context3D) : void
      {
         if(!this.§#!s§(param1))
         {
            this.§3%§.uploadFromByteArray(this.§2!^§.§^%§,0,0,this.§ !j§ * 4);
            if(this.§;J§)
            {
               this.§17§.uploadFromVector(this.§2!^§.§?c§,0,this.§ !j§ * 4);
            }
            this.§>7§.uploadFromVector(this.§2!^§.§%!0§,0,this.§ !j§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§ !j§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§2!^§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§4>§ ? §20§(_loc5_,this.§4>§.mipMapping,this.§4>§.repeat,this.§?!z§,this.§;J§) : §<-§(_loc5_);
         §<@§.§03§(param1,_loc4_);
         this.§^!S§(param1);
         param1.setProgram(§6!l§.§+J§.§=H§(_loc6_));
         param1.setVertexBufferAt(0,this.§>7§,§#!_§.§<U§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§4>§ == null || this.§;J§)
         {
            param1.setVertexBufferAt(2,this.§17§,§#!_§.§>!1§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §4e§[0] = §4e§[1] = §4e§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §4e§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§4e§,1);
         }
         if(this.§4>§)
         {
            param1.setTextureAt(0,this.§4>§.getBase(param1));
            param1.setVertexBufferAt(1,this.§3%§,§#!_§.§[!^§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§@X§,0,this.§ !j§ * 2);
         if(this.§4>§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§4>§ == null || this.§;J§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§ !j§ = 0;
         this.§;J§ = false;
         this.§4>§ = null;
         this.§?!z§ = null;
      }
      
      public function § !z§(param1:§8!l§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§ !j§ + 1 > this.§2!^§.§-!n§ / 4)
         {
            this.§>!+§();
         }
         if(this.§ !j§ == 0)
         {
            this.§4>§ = param3;
            this.§?!z§ = param4;
            this.§2!^§.§3!A§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§;J§ = true;
            }
         }
         var _loc6_:int = this.§ !j§ * 4;
         param1.copyVertexDataTo(this.§2!^§,_loc6_,param2,param5);
         ++this.§ !j§;
      }
      
      public function §-!F§(param1:§8!l§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§4>§ != null && param2 != null)
         {
            return this.§4>§.root != param2.root || this.§4>§.repeat != param2.repeat || this.§?!z§ != param3 || this.§;J§ != param1.useColor || this.§ !j§ == 8192;
         }
         if(this.§4>§ == null && param2 == null)
         {
            return false;
         }
         return this.§ !j§ != 0 || this.§;J§ != (param1.useColor || param4 != 1);
      }
   }
}
