package §>N§
{
   import §+a§.§"!>§;
   import §+a§.Texture;
   import §-!%§.§'-§;
   import §-^§.§@!`§;
   import §9!a§.§"z§;
   import §9!a§.DisplayObject;
   import §9!a§.DisplayObjectContainer;
   import §9!a§.§]o§;
   import §[y§.§'!?§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §1!+§
   {
      
      private static var §2!=§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §'`§:int;
      
      private var §,!`§:Texture;
      
      private var §17§:String;
      
      private var §1;§:§'-§;
      
      private var §0!O§:VertexBuffer3D;
      
      private var §?=§:VertexBuffer3D;
      
      private var §3p§:VertexBuffer3D;
      
      private var §!!^§:Vector.<uint>;
      
      private var §&2§:IndexBuffer3D;
      
      private var §>M§:Boolean = false;
      
      private var §+!$§:Boolean = false;
      
      public function §1!+§()
      {
         super();
         §#B§();
         this.§1;§ = new §'-§(0,true);
         this.§!!^§ = new Vector.<uint>(0);
         this.§'`§ = 0;
         this.§1!'§();
      }
      
      public static function §try §(param1:DisplayObjectContainer, param2:Vector.<§1!+§>) : void
      {
         §,!^§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §,!^§(param1:DisplayObject, param2:Vector.<§1!+§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§]o§ = null;
         var _loc13_:§"z§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§1!+§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §1!+§());
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
               _loc11_.§7S§(_loc10_);
               param3 = §,!^§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §]o§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §]o§) as §"z§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§>p§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §1!+§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§"o§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §#B§() : void
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
         var _loc1_:§"u§ = §"u§.§-2§;
         if(_loc1_.§=!U§(§4!^§(true)))
         {
            return;
         }
         var _loc2_:§@!`§ = new §@!`§();
         var _loc3_:§@!`§ = new §@!`§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§-h§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§-h§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§8!2§(§4!^§(_loc6_),_loc2_.§^!^§,_loc3_.§^!^§);
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
               _loc2_.§-h§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§"!>§.NONE,§"!>§.§`5§,§"!>§.§^!J§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §"!>§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §"!>§.§`5§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§-h§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§8!2§(§?i§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§^!^§,_loc3_.§^!^§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §4!^§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §?i§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §"!>§.§`5§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §1Q§() : int
      {
         return this.§'`§;
      }
      
      public function dispose() : void
      {
         if(this.§0!O§)
         {
            this.§0!O§.dispose();
         }
         if(this.§?=§)
         {
            this.§?=§.dispose();
         }
         if(this.§3p§)
         {
            this.§3p§.dispose();
         }
         if(this.§&2§)
         {
            this.§&2§.dispose();
         }
      }
      
      private function §1!'§() : void
      {
         var _loc1_:int = this.§1;§.§"!G§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§1;§.§"!G§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§!!^§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§!!^§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§!!^§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§!!^§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§!!^§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§!!^§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§+!$§ = true;
      }
      
      private function §2!&§(param1:Context3D) : Boolean
      {
         if(!this.§+!$§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §'!?§();
         }
         if(this.§0!O§)
         {
            this.§0!O§.dispose();
         }
         if(this.§?=§)
         {
            this.§?=§.dispose();
         }
         if(this.§3p§)
         {
            this.§3p§.dispose();
         }
         if(this.§&2§)
         {
            this.§&2§.dispose();
         }
         var _loc2_:int = this.§1;§.§"!G§ / 4;
         this.§0!O§ = param1.createVertexBuffer(_loc2_ * 4,§'-§.§@-§);
         this.§0!O§.uploadFromByteArray(this.§1;§.§1!M§,0,0,_loc2_ * 4);
         this.§?=§ = param1.createVertexBuffer(_loc2_ * 4,§'-§.§1[§);
         this.§?=§.uploadFromVector(this.§1;§.§6!<§,0,_loc2_ * 4);
         this.§3p§ = param1.createVertexBuffer(_loc2_ * 4,§'-§.§5!0§);
         this.§3p§.uploadFromVector(this.§1;§.§ W§,0,_loc2_ * 4);
         this.§&2§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§&2§.uploadFromVector(this.§!!^§,0,_loc2_ * 6);
         this.§+!$§ = false;
         return true;
      }
      
      private function §2r§(param1:Context3D) : void
      {
         if(!this.§2!&§(param1))
         {
            this.§0!O§.uploadFromByteArray(this.§1;§.§1!M§,0,0,this.§'`§ * 4);
            if(this.§>M§)
            {
               this.§?=§.uploadFromVector(this.§1;§.§6!<§,0,this.§'`§ * 4);
            }
            this.§3p§.uploadFromVector(this.§1;§.§ W§,0,this.§'`§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§'`§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§1;§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§,!`§ ? §?i§(_loc5_,this.§,!`§.mipMapping,this.§,!`§.repeat,this.§17§,this.§>M§) : §4!^§(_loc5_);
         §>q§.§ 4§(param1,_loc4_);
         this.§2r§(param1);
         param1.setProgram(§"u§.§-2§.§8!^§(_loc6_));
         param1.setVertexBufferAt(0,this.§3p§,§'-§.§9!&§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§,!`§ == null || this.§>M§)
         {
            param1.setVertexBufferAt(2,this.§?=§,§'-§.§>6§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §2!=§[0] = §2!=§[1] = §2!=§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §2!=§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§2!=§,1);
         }
         if(this.§,!`§)
         {
            param1.setTextureAt(0,this.§,!`§.getBase(param1));
            param1.setVertexBufferAt(1,this.§0!O§,§'-§.§>&§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§&2§,0,this.§'`§ * 2);
         if(this.§,!`§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§,!`§ == null || this.§>M§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§'`§ = 0;
         this.§>M§ = false;
         this.§,!`§ = null;
         this.§17§ = null;
      }
      
      public function §"o§(param1:§]o§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§'`§ + 1 > this.§1;§.§"!G§ / 4)
         {
            this.§1!'§();
         }
         if(this.§'`§ == 0)
         {
            this.§,!`§ = param3;
            this.§17§ = param4;
            this.§1;§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§'`§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§1;§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§>M§ = true;
         }
         ++this.§'`§;
      }
      
      public function §>p§(param1:§]o§, param2:Texture, param3:String) : Boolean
      {
         if(this.§,!`§ != null && param2 != null)
         {
            return this.§,!`§.root != param2.root || this.§,!`§.repeat != param2.repeat || this.§17§ != param3 || this.§>M§ != param1.useColor || this.§'`§ == 8192;
         }
         if(this.§,!`§ == null && param2 == null)
         {
            return false;
         }
         return this.§'`§ != 0 || this.§>M§ != param1.useColor;
      }
   }
}
