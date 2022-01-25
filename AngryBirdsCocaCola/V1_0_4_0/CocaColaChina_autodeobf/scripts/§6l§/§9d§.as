package §6l§
{
   import § !K§.§&&§;
   import § !K§.§5+§;
   import § !K§.DisplayObject;
   import § !K§.DisplayObjectContainer;
   import §"![§.§ !;§;
   import §"![§.Texture;
   import §%7§.§ !+§;
   import §9!^§.§17§;
   import §;S§.§2w§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §9d§
   {
      
      private static var §1"§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §;]§:int;
      
      private var §<z§:Texture;
      
      private var §5n§:String;
      
      private var §>!@§:§17§;
      
      private var §0!>§:VertexBuffer3D;
      
      private var §1!!§:VertexBuffer3D;
      
      private var §7!4§:VertexBuffer3D;
      
      private var §^h§:Vector.<uint>;
      
      private var §-i§:IndexBuffer3D;
      
      private var §9y§:Boolean = false;
      
      private var §-C§:Boolean = false;
      
      public function §9d§()
      {
         super();
         §&0§();
         this.§>!@§ = new §17§(0,true);
         this.§^h§ = new Vector.<uint>(0);
         this.§;]§ = 0;
         this.§6V§();
      }
      
      public static function §0<§(param1:DisplayObjectContainer, param2:Vector.<§9d§>) : void
      {
         §^!8§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §^!8§(param1:DisplayObject, param2:Vector.<§9d§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§&&§ = null;
         var _loc13_:§5+§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§9d§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §9d§());
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
               _loc11_.§8!-§(_loc10_);
               param3 = §^!8§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §&&§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §&&§) as §5+§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§'!W§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §9d§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§<$§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §&0§() : void
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
         var _loc1_:§79§ = §79§.§#[§;
         if(_loc1_.§]h§(§-!E§(true)))
         {
            return;
         }
         var _loc2_:§ !+§ = new § !+§();
         var _loc3_:§ !+§ = new § !+§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§6!Z§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§6!Z§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§`T§(§-!E§(_loc6_),_loc2_.§case§,_loc3_.§case§);
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
               _loc2_.§6!Z§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§ !;§.NONE,§ !;§.§,4§,§ !;§.§"!d§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == § !;§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == § !;§.§,4§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§6!Z§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§`T§(§"!"§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§case§,_loc3_.§case§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §-!E§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §"!"§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != § !;§.§,4§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §1d§() : int
      {
         return this.§;]§;
      }
      
      public function dispose() : void
      {
         if(this.§0!>§)
         {
            this.§0!>§.dispose();
         }
         if(this.§1!!§)
         {
            this.§1!!§.dispose();
         }
         if(this.§7!4§)
         {
            this.§7!4§.dispose();
         }
         if(this.§-i§)
         {
            this.§-i§.dispose();
         }
      }
      
      private function §6V§() : void
      {
         var _loc1_:int = this.§>!@§.§ x§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§>!@§.§ x§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§^h§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§^h§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§^h§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§^h§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§^h§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§^h§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§-C§ = true;
      }
      
      private function §>a§(param1:Context3D) : Boolean
      {
         if(!this.§-C§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §2w§();
         }
         if(this.§0!>§)
         {
            this.§0!>§.dispose();
         }
         if(this.§1!!§)
         {
            this.§1!!§.dispose();
         }
         if(this.§7!4§)
         {
            this.§7!4§.dispose();
         }
         if(this.§-i§)
         {
            this.§-i§.dispose();
         }
         var _loc2_:int = this.§>!@§.§ x§ / 4;
         this.§0!>§ = param1.createVertexBuffer(_loc2_ * 4,§17§.§!!+§);
         this.§0!>§.uploadFromByteArray(this.§>!@§.§%<§,0,0,_loc2_ * 4);
         this.§1!!§ = param1.createVertexBuffer(_loc2_ * 4,§17§.§+!"§);
         this.§1!!§.uploadFromVector(this.§>!@§.§4!'§,0,_loc2_ * 4);
         this.§7!4§ = param1.createVertexBuffer(_loc2_ * 4,§17§.§>!_§);
         this.§7!4§.uploadFromVector(this.§>!@§.§0!;§,0,_loc2_ * 4);
         this.§-i§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§-i§.uploadFromVector(this.§^h§,0,_loc2_ * 6);
         this.§-C§ = false;
         return true;
      }
      
      private function §"4§(param1:Context3D) : void
      {
         if(!this.§>a§(param1))
         {
            this.§0!>§.uploadFromByteArray(this.§>!@§.§%<§,0,0,this.§;]§ * 4);
            if(this.§9y§)
            {
               this.§1!!§.uploadFromVector(this.§>!@§.§4!'§,0,this.§;]§ * 4);
            }
            this.§7!4§.uploadFromVector(this.§>!@§.§0!;§,0,this.§;]§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§;]§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§>!@§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§<z§ ? §"!"§(_loc5_,this.§<z§.mipMapping,this.§<z§.repeat,this.§5n§,this.§9y§) : §-!E§(_loc5_);
         §23§.§"!]§(param1,_loc4_);
         this.§"4§(param1);
         param1.setProgram(§79§.§#[§.§?B§(_loc6_));
         param1.setVertexBufferAt(0,this.§7!4§,§17§.§#i§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§<z§ == null || this.§9y§)
         {
            param1.setVertexBufferAt(2,this.§1!!§,§17§.§3!L§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §1"§[0] = §1"§[1] = §1"§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §1"§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§1"§,1);
         }
         if(this.§<z§)
         {
            param1.setTextureAt(0,this.§<z§.getBase(param1));
            param1.setVertexBufferAt(1,this.§0!>§,§17§.§+!@§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§-i§,0,this.§;]§ * 2);
         if(this.§<z§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§<z§ == null || this.§9y§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§;]§ = 0;
         this.§9y§ = false;
         this.§<z§ = null;
         this.§5n§ = null;
      }
      
      public function §<$§(param1:§&&§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§;]§ + 1 > this.§>!@§.§ x§ / 4)
         {
            this.§6V§();
         }
         if(this.§;]§ == 0)
         {
            this.§<z§ = param3;
            this.§5n§ = param4;
            this.§>!@§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§;]§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§>!@§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§9y§ = true;
         }
         ++this.§;]§;
      }
      
      public function §'!W§(param1:§&&§, param2:Texture, param3:String) : Boolean
      {
         if(this.§<z§ != null && param2 != null)
         {
            return this.§<z§.root != param2.root || this.§<z§.repeat != param2.repeat || this.§5n§ != param3 || this.§9y§ != param1.useColor || this.§;]§ == 8192;
         }
         if(this.§<z§ == null && param2 == null)
         {
            return false;
         }
         return this.§;]§ != 0 || this.§9y§ != param1.useColor;
      }
   }
}
