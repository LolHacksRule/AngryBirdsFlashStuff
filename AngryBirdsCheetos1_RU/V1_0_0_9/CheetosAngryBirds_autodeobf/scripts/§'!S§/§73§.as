package §'!S§
{
   import §#!`§.§@!&§;
   import §#!`§.Texture;
   import §-W§.§%g§;
   import §6u§.§%!Y§;
   import §7u§.§&!C§;
   import §7u§.§&x§;
   import §7u§.DisplayObject;
   import §7u§.DisplayObjectContainer;
   import §@u§.§@!1§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §73§
   {
      
      private static var §30§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §;!_§:int;
      
      private var §"!`§:Texture;
      
      private var §#!>§:String;
      
      private var §7P§:§@!1§;
      
      private var §=!T§:VertexBuffer3D;
      
      private var §35§:VertexBuffer3D;
      
      private var §'!X§:VertexBuffer3D;
      
      private var §-!=§:Vector.<uint>;
      
      private var §5m§:IndexBuffer3D;
      
      private var §+O§:Boolean = false;
      
      private var §6"§:Boolean = false;
      
      public function §73§()
      {
         super();
         §@a§();
         this.§7P§ = new §@!1§(0,true);
         this.§-!=§ = new Vector.<uint>(0);
         this.§;!_§ = 0;
         this.§#!7§();
      }
      
      public static function §@!O§(param1:DisplayObjectContainer, param2:Vector.<§73§>) : void
      {
         §2x§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §2x§(param1:DisplayObject, param2:Vector.<§73§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§&x§ = null;
         var _loc13_:§&!C§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§73§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §73§());
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
               _loc11_.§0!"§(_loc10_);
               param3 = §2x§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §&x§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §&x§) as §&!C§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§6!4§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §73§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§<f§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §@a§() : void
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
         var _loc1_:§,!%§ = §,!%§.§]!C§;
         if(_loc1_.§@!2§(§06§(true)))
         {
            return;
         }
         var _loc2_:§%!Y§ = new §%!Y§();
         var _loc3_:§%!Y§ = new §%!Y§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§;&§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§;&§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§<!"§(§06§(_loc6_),_loc2_.§8[§,_loc3_.§8[§);
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
               _loc2_.§;&§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§@!&§.NONE,§@!&§.§]!6§,§@!&§.§[e§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §@!&§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §@!&§.§]!6§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§;&§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§<!"§(§"4§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§8[§,_loc3_.§8[§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §06§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §"4§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §@!&§.§]!6§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §`!W§() : int
      {
         return this.§;!_§;
      }
      
      public function dispose() : void
      {
         if(this.§=!T§)
         {
            this.§=!T§.dispose();
         }
         if(this.§35§)
         {
            this.§35§.dispose();
         }
         if(this.§'!X§)
         {
            this.§'!X§.dispose();
         }
         if(this.§5m§)
         {
            this.§5m§.dispose();
         }
      }
      
      private function §#!7§() : void
      {
         var _loc1_:int = this.§7P§.§'!%§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§7P§.§'!%§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§-!=§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§-!=§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§-!=§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§-!=§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§-!=§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§-!=§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§6"§ = true;
      }
      
      private function §`#§(param1:Context3D) : Boolean
      {
         if(!this.§6"§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §%g§();
         }
         if(this.§=!T§)
         {
            this.§=!T§.dispose();
         }
         if(this.§35§)
         {
            this.§35§.dispose();
         }
         if(this.§'!X§)
         {
            this.§'!X§.dispose();
         }
         if(this.§5m§)
         {
            this.§5m§.dispose();
         }
         var _loc2_:int = this.§7P§.§'!%§ / 4;
         this.§=!T§ = param1.createVertexBuffer(_loc2_ * 4,§@!1§.§3+§);
         this.§=!T§.uploadFromByteArray(this.§7P§.§9=§,0,0,_loc2_ * 4);
         this.§35§ = param1.createVertexBuffer(_loc2_ * 4,§@!1§.§#X§);
         this.§35§.uploadFromVector(this.§7P§.§6Y§,0,_loc2_ * 4);
         this.§'!X§ = param1.createVertexBuffer(_loc2_ * 4,§@!1§.§!9§);
         this.§'!X§.uploadFromVector(this.§7P§.§1^§,0,_loc2_ * 4);
         this.§5m§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§5m§.uploadFromVector(this.§-!=§,0,_loc2_ * 6);
         this.§6"§ = false;
         return true;
      }
      
      private function § `§(param1:Context3D) : void
      {
         if(!this.§`#§(param1))
         {
            this.§=!T§.uploadFromByteArray(this.§7P§.§9=§,0,0,this.§;!_§ * 4);
            if(this.§+O§)
            {
               this.§35§.uploadFromVector(this.§7P§.§6Y§,0,this.§;!_§ * 4);
            }
            this.§'!X§.uploadFromVector(this.§7P§.§1^§,0,this.§;!_§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§;!_§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§7P§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§"!`§ ? §"4§(_loc5_,this.§"!`§.mipMapping,this.§"!`§.repeat,this.§#!>§,this.§+O§) : §06§(_loc5_);
         §5[§.§!+§(param1,_loc4_);
         this.§ `§(param1);
         param1.setProgram(§,!%§.§]!C§.§4!P§(_loc6_));
         param1.setVertexBufferAt(0,this.§'!X§,§@!1§.§&E§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§"!`§ == null || this.§+O§)
         {
            param1.setVertexBufferAt(2,this.§35§,§@!1§.§#!Q§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §30§[0] = §30§[1] = §30§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §30§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§30§,1);
         }
         if(this.§"!`§)
         {
            param1.setTextureAt(0,this.§"!`§.getBase(param1));
            param1.setVertexBufferAt(1,this.§=!T§,§@!1§.§4!+§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§5m§,0,this.§;!_§ * 2);
         if(this.§"!`§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§"!`§ == null || this.§+O§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§;!_§ = 0;
         this.§+O§ = false;
         this.§"!`§ = null;
         this.§#!>§ = null;
      }
      
      public function §<f§(param1:§&x§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§;!_§ + 1 > this.§7P§.§'!%§ / 4)
         {
            this.§#!7§();
         }
         if(this.§;!_§ == 0)
         {
            this.§"!`§ = param3;
            this.§#!>§ = param4;
            this.§7P§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§;!_§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§7P§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§+O§ = true;
         }
         ++this.§;!_§;
      }
      
      public function §6!4§(param1:§&x§, param2:Texture, param3:String) : Boolean
      {
         if(this.§"!`§ != null && param2 != null)
         {
            return this.§"!`§.root != param2.root || this.§"!`§.repeat != param2.repeat || this.§#!>§ != param3 || this.§+O§ != param1.useColor || this.§;!_§ == 8192;
         }
         if(this.§"!`§ == null && param2 == null)
         {
            return false;
         }
         return this.§;!_§ != 0 || this.§+O§ != param1.useColor;
      }
   }
}
