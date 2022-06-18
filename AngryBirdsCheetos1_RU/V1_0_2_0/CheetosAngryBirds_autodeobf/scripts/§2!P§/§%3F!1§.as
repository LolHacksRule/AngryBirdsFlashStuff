package §2!P§
{
   import §#"§.§%!7§;
   import §&b§.§true§;
   import §,H§.§;!9§;
   import §,H§.§>!C§;
   import §,H§.DisplayObject;
   import §,H§.DisplayObjectContainer;
   import §,Y§.§"2§;
   import §,Y§.Texture;
   import §][§.§&!E§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §?!1§
   {
      
      private static var § var§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §;!D§:int;
      
      private var §<!X§:Texture;
      
      private var §@x§:String;
      
      private var §4!P§:§true§;
      
      private var §2!+§:VertexBuffer3D;
      
      private var §@!3§:VertexBuffer3D;
      
      private var §2!^§:VertexBuffer3D;
      
      private var §8#§:Vector.<uint>;
      
      private var §<!&§:IndexBuffer3D;
      
      private var §2!M§:Boolean = false;
      
      private var § C§:Boolean = false;
      
      public function §?!1§()
      {
         super();
         §&k§();
         this.§4!P§ = new §true§(0,true);
         this.§8#§ = new Vector.<uint>(0);
         this.§;!D§ = 0;
         this.§'e§();
      }
      
      public static function §6!U§(param1:DisplayObjectContainer, param2:Vector.<§?!1§>) : void
      {
         §!8§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §!8§(param1:DisplayObject, param2:Vector.<§?!1§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§>!C§ = null;
         var _loc13_:§;!9§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§?!1§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §?!1§());
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
               _loc11_.§[!"§(_loc10_);
               param3 = §!8§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §>!C§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §>!C§) as §;!9§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§2!N§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §?!1§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§?!5§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §&k§() : void
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
         var _loc1_:§6=§ = §6=§.§4!8§;
         if(_loc1_.§5E§(§4X§(true)))
         {
            return;
         }
         var _loc2_:§%!7§ = new §%!7§();
         var _loc3_:§%!7§ = new §%!7§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§3y§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§3y§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§<!a§(§4X§(_loc6_),_loc2_.§+_§,_loc3_.§+_§);
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
               _loc2_.§3y§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§"2§.NONE,§"2§.§7![§,§"2§.§4!-§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §"2§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §"2§.§7![§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§3y§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§<!a§(§,!L§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§+_§,_loc3_.§+_§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §4X§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §,!L§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §"2§.§7![§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §`!!§() : int
      {
         return this.§;!D§;
      }
      
      public function dispose() : void
      {
         if(this.§2!+§)
         {
            this.§2!+§.dispose();
         }
         if(this.§@!3§)
         {
            this.§@!3§.dispose();
         }
         if(this.§2!^§)
         {
            this.§2!^§.dispose();
         }
         if(this.§<!&§)
         {
            this.§<!&§.dispose();
         }
      }
      
      private function §'e§() : void
      {
         var _loc1_:int = this.§4!P§.§2b§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§4!P§.§2b§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§8#§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§8#§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§8#§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§8#§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§8#§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§8#§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§ C§ = true;
      }
      
      private function §;!?§(param1:Context3D) : Boolean
      {
         if(!this.§ C§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §&!E§();
         }
         if(this.§2!+§)
         {
            this.§2!+§.dispose();
         }
         if(this.§@!3§)
         {
            this.§@!3§.dispose();
         }
         if(this.§2!^§)
         {
            this.§2!^§.dispose();
         }
         if(this.§<!&§)
         {
            this.§<!&§.dispose();
         }
         var _loc2_:int = this.§4!P§.§2b§ / 4;
         this.§2!+§ = param1.createVertexBuffer(_loc2_ * 4,§true§.§8!$§);
         this.§2!+§.uploadFromByteArray(this.§4!P§.§2'§,0,0,_loc2_ * 4);
         this.§@!3§ = param1.createVertexBuffer(_loc2_ * 4,§true§.§-C§);
         this.§@!3§.uploadFromVector(this.§4!P§.§',§,0,_loc2_ * 4);
         this.§2!^§ = param1.createVertexBuffer(_loc2_ * 4,§true§.§0!N§);
         this.§2!^§.uploadFromVector(this.§4!P§.§8k§,0,_loc2_ * 4);
         this.§<!&§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§<!&§.uploadFromVector(this.§8#§,0,_loc2_ * 6);
         this.§ C§ = false;
         return true;
      }
      
      private function §5!Z§(param1:Context3D) : void
      {
         if(!this.§;!?§(param1))
         {
            this.§2!+§.uploadFromByteArray(this.§4!P§.§2'§,0,0,this.§;!D§ * 4);
            if(this.§2!M§)
            {
               this.§@!3§.uploadFromVector(this.§4!P§.§',§,0,this.§;!D§ * 4);
            }
            this.§2!^§.uploadFromVector(this.§4!P§.§8k§,0,this.§;!D§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§;!D§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§4!P§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§<!X§ ? §,!L§(_loc5_,this.§<!X§.mipMapping,this.§<!X§.repeat,this.§@x§,this.§2!M§) : §4X§(_loc5_);
         §@9§.§!!9§(param1,_loc4_);
         this.§5!Z§(param1);
         param1.setProgram(§6=§.§4!8§.§2d§(_loc6_));
         param1.setVertexBufferAt(0,this.§2!^§,§true§.§+O§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§<!X§ == null || this.§2!M§)
         {
            param1.setVertexBufferAt(2,this.§@!3§,§true§.§<'§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            § var§[0] = § var§[1] = § var§[2] = !!_loc4_ ? Number(param3) : Number(1);
            § var§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§ var§,1);
         }
         if(this.§<!X§)
         {
            param1.setTextureAt(0,this.§<!X§.getBase(param1));
            param1.setVertexBufferAt(1,this.§2!+§,§true§.§-2§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§<!&§,0,this.§;!D§ * 2);
         if(this.§<!X§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§<!X§ == null || this.§2!M§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§;!D§ = 0;
         this.§2!M§ = false;
         this.§<!X§ = null;
         this.§@x§ = null;
      }
      
      public function §?!5§(param1:§>!C§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§;!D§ + 1 > this.§4!P§.§2b§ / 4)
         {
            this.§'e§();
         }
         if(this.§;!D§ == 0)
         {
            this.§<!X§ = param3;
            this.§@x§ = param4;
            this.§4!P§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§;!D§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§4!P§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§2!M§ = true;
         }
         ++this.§;!D§;
      }
      
      public function §2!N§(param1:§>!C§, param2:Texture, param3:String) : Boolean
      {
         if(this.§<!X§ != null && param2 != null)
         {
            return this.§<!X§.root != param2.root || this.§<!X§.repeat != param2.repeat || this.§@x§ != param3 || this.§2!M§ != param1.useColor || this.§;!D§ == 8192;
         }
         if(this.§<!X§ == null && param2 == null)
         {
            return false;
         }
         return this.§;!D§ != 0 || this.§2!M§ != param1.useColor;
      }
   }
}
