package §"v§
{
   import §,L§.§<!,§;
   import §2!g§.§2c§;
   import §2!g§.§<7§;
   import §2!g§.DisplayObject;
   import §2!g§.DisplayObjectContainer;
   import §5!4§.§!1§;
   import §=E§.§`F§;
   import §@j§.§8!'§;
   import §@j§.Texture;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §`P§
   {
      
      private static var §,_§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §3!n§:int;
      
      private var §@I§:Texture;
      
      private var §,8§:String;
      
      private var §+s§:§`F§;
      
      private var §`g§:VertexBuffer3D;
      
      private var §0^§:VertexBuffer3D;
      
      private var §7!e§:VertexBuffer3D;
      
      private var §&-§:Vector.<uint>;
      
      private var §,l§:IndexBuffer3D;
      
      private var §51§:Boolean = false;
      
      private var §3!V§:Boolean = false;
      
      public function §`P§()
      {
         super();
         § D§();
         this.§+s§ = new §`F§(0,true);
         this.§&-§ = new Vector.<uint>(0);
         this.§3!n§ = 0;
         this.§>&§();
      }
      
      public static function §8!5§(param1:DisplayObjectContainer, param2:Vector.<§`P§>) : void
      {
         §'!2§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §'!2§(param1:DisplayObject, param2:Vector.<§`P§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§2c§ = null;
         var _loc13_:§<7§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§`P§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §`P§());
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
               _loc11_.§ e§(_loc10_);
               param3 = §'!2§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §2c§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §2c§) as §<7§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§!!B§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §`P§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§^V§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function § D§() : void
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
         var _loc1_:§5!T§ = §5!T§.§!e§;
         if(_loc1_.§&H§(§9!C§(true)))
         {
            return;
         }
         var _loc2_:§<!,§ = new §<!,§();
         var _loc3_:§<!,§ = new §<!,§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§>!0§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§>!0§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§6!]§(§9!C§(_loc6_),_loc2_.§4w§,_loc3_.§4w§);
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
               _loc2_.§>!0§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§8!'§.NONE,§8!'§.§%!>§,§8!'§.§?z§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §8!'§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §8!'§.§%!>§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§>!0§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§6!]§(§0!W§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§4w§,_loc3_.§4w§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §9!C§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §0!W§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §8!'§.§%!>§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §%1§() : int
      {
         return this.§3!n§;
      }
      
      public function dispose() : void
      {
         if(this.§`g§)
         {
            this.§`g§.dispose();
         }
         if(this.§0^§)
         {
            this.§0^§.dispose();
         }
         if(this.§7!e§)
         {
            this.§7!e§.dispose();
         }
         if(this.§,l§)
         {
            this.§,l§.dispose();
         }
      }
      
      private function §>&§() : void
      {
         var _loc1_:int = this.§+s§.§@!@§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§+s§.§@!@§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§&-§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§&-§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§&-§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§&-§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§&-§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§&-§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§3!V§ = true;
      }
      
      private function §'y§(param1:Context3D) : Boolean
      {
         if(!this.§3!V§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §!1§();
         }
         if(this.§`g§)
         {
            this.§`g§.dispose();
         }
         if(this.§0^§)
         {
            this.§0^§.dispose();
         }
         if(this.§7!e§)
         {
            this.§7!e§.dispose();
         }
         if(this.§,l§)
         {
            this.§,l§.dispose();
         }
         var _loc2_:int = this.§+s§.§@!@§ / 4;
         this.§`g§ = param1.createVertexBuffer(_loc2_ * 4,§`F§.§1![§);
         this.§`g§.uploadFromByteArray(this.§+s§.§!4§,0,0,_loc2_ * 4);
         this.§0^§ = param1.createVertexBuffer(_loc2_ * 4,§`F§.§+^§);
         this.§0^§.uploadFromVector(this.§+s§.§7!C§,0,_loc2_ * 4);
         this.§7!e§ = param1.createVertexBuffer(_loc2_ * 4,§`F§.§5C§);
         this.§7!e§.uploadFromVector(this.§+s§.§4!Y§,0,_loc2_ * 4);
         this.§,l§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§,l§.uploadFromVector(this.§&-§,0,_loc2_ * 6);
         this.§3!V§ = false;
         return true;
      }
      
      private function §3![§(param1:Context3D) : void
      {
         if(!this.§'y§(param1))
         {
            this.§`g§.uploadFromByteArray(this.§+s§.§!4§,0,0,this.§3!n§ * 4);
            if(this.§51§)
            {
               this.§0^§.uploadFromVector(this.§+s§.§7!C§,0,this.§3!n§ * 4);
            }
            this.§7!e§.uploadFromVector(this.§+s§.§4!Y§,0,this.§3!n§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§3!n§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§+s§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§@I§ ? §0!W§(_loc5_,this.§@I§.mipMapping,this.§@I§.repeat,this.§,8§,this.§51§) : §9!C§(_loc5_);
         §&!i§.§"!M§(param1,_loc4_);
         this.§3![§(param1);
         param1.setProgram(§5!T§.§!e§.§+-§(_loc6_));
         param1.setVertexBufferAt(0,this.§7!e§,§`F§.§4j§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§@I§ == null || this.§51§)
         {
            param1.setVertexBufferAt(2,this.§0^§,§`F§.§'S§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §,_§[0] = §,_§[1] = §,_§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §,_§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§,_§,1);
         }
         if(this.§@I§)
         {
            param1.setTextureAt(0,this.§@I§.getBase(param1));
            param1.setVertexBufferAt(1,this.§`g§,§`F§.§4P§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§,l§,0,this.§3!n§ * 2);
         if(this.§@I§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§@I§ == null || this.§51§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§3!n§ = 0;
         this.§51§ = false;
         this.§@I§ = null;
         this.§,8§ = null;
      }
      
      public function §^V§(param1:§2c§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§3!n§ + 1 > this.§+s§.§@!@§ / 4)
         {
            this.§>&§();
         }
         if(this.§3!n§ == 0)
         {
            this.§@I§ = param3;
            this.§,8§ = param4;
            this.§+s§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§3!n§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§+s§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§51§ = true;
         }
         ++this.§3!n§;
      }
      
      public function §!!B§(param1:§2c§, param2:Texture, param3:String) : Boolean
      {
         if(this.§@I§ != null && param2 != null)
         {
            return this.§@I§.root != param2.root || this.§@I§.repeat != param2.repeat || this.§,8§ != param3 || this.§51§ != param1.useColor || this.§3!n§ == 8192;
         }
         if(this.§@I§ == null && param2 == null)
         {
            return false;
         }
         return this.§3!n§ != 0 || this.§51§ != param1.useColor;
      }
   }
}
