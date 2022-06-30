package §&L§
{
   import §!!S§.§5!T§;
   import §!!S§.Texture;
   import §6!;§.§!>§;
   import §6!;§.§;o§;
   import §6!;§.DisplayObject;
   import §6!;§.DisplayObjectContainer;
   import §<1§.§0!Z§;
   import §[Y§.§"Y§;
   import §`>§.§6v§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §<!U§
   {
      
      private static var §'!5§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §-V§:int;
      
      private var §8q§:Texture;
      
      private var §5!V§:String;
      
      private var §]!D§:§6v§;
      
      private var §7f§:VertexBuffer3D;
      
      private var §;f§:VertexBuffer3D;
      
      private var §9<§:VertexBuffer3D;
      
      private var §@!]§:Vector.<uint>;
      
      private var §?,§:IndexBuffer3D;
      
      private var §+6§:Boolean = false;
      
      private var §=!e§:Boolean = false;
      
      public function §<!U§()
      {
         super();
         §%b§();
         this.§]!D§ = new §6v§(0,true);
         this.§@!]§ = new Vector.<uint>(0);
         this.§-V§ = 0;
         this.§+!G§();
      }
      
      public static function §,X§(param1:DisplayObjectContainer, param2:Vector.<§<!U§>) : void
      {
         §=!6§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §=!6§(param1:DisplayObject, param2:Vector.<§<!U§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§;o§ = null;
         var _loc13_:§!>§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§<!U§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §<!U§());
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
                  _loc11_.§"!2§(_loc10_);
                  param3 = §=!6§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is §;o§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §;o§) as §!>§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§;!b§(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §<!U§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§<n§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §%b§() : void
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
         var _loc1_:§?]§ = §?]§.§`!H§;
         if(_loc1_.§6!Q§(§+w§(true)))
         {
            return;
         }
         var _loc2_:§"Y§ = new §"Y§();
         var _loc3_:§"Y§ = new §"Y§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§ !=§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§ !=§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§3!F§(§+w§(_loc6_),_loc2_.§3Y§,_loc3_.§3Y§);
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
               _loc2_.§ !=§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§5!T§.NONE,§5!T§.§7!2§,§5!T§.§[i§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §5!T§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §5!T§.§7!2§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§ !=§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§3!F§(§'X§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§3Y§,_loc3_.§3Y§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §+w§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §'X§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §5!T§.§7!2§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §<V§() : int
      {
         return this.§-V§;
      }
      
      public function dispose() : void
      {
         if(this.§7f§)
         {
            this.§7f§.dispose();
         }
         if(this.§;f§)
         {
            this.§;f§.dispose();
         }
         if(this.§9<§)
         {
            this.§9<§.dispose();
         }
         if(this.§?,§)
         {
            this.§?,§.dispose();
         }
      }
      
      private function §+!G§() : void
      {
         var _loc1_:int = this.§]!D§.§+!N§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§]!D§.§+!N§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§@!]§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§@!]§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§@!]§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§@!]§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§@!]§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§@!]§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§=!e§ = true;
      }
      
      private function §6!P§(param1:Context3D) : Boolean
      {
         if(!this.§=!e§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §0!Z§();
         }
         if(this.§7f§)
         {
            this.§7f§.dispose();
         }
         if(this.§;f§)
         {
            this.§;f§.dispose();
         }
         if(this.§9<§)
         {
            this.§9<§.dispose();
         }
         if(this.§?,§)
         {
            this.§?,§.dispose();
         }
         var _loc2_:int = this.§]!D§.§+!N§ / 4;
         this.§7f§ = param1.createVertexBuffer(_loc2_ * 4,§6v§.§=!E§);
         this.§7f§.uploadFromByteArray(this.§]!D§.§#!F§,0,0,_loc2_ * 4);
         this.§;f§ = param1.createVertexBuffer(_loc2_ * 4,§6v§.§8F§);
         this.§;f§.uploadFromVector(this.§]!D§.§?m§,0,_loc2_ * 4);
         this.§9<§ = param1.createVertexBuffer(_loc2_ * 4,§6v§.§[h§);
         this.§9<§.uploadFromVector(this.§]!D§.§%`§,0,_loc2_ * 4);
         this.§?,§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§?,§.uploadFromVector(this.§@!]§,0,_loc2_ * 6);
         this.§=!e§ = false;
         return true;
      }
      
      private function §0%§(param1:Context3D) : void
      {
         if(!this.§6!P§(param1))
         {
            this.§7f§.uploadFromByteArray(this.§]!D§.§#!F§,0,0,this.§-V§ * 4);
            if(this.§+6§)
            {
               this.§;f§.uploadFromVector(this.§]!D§.§?m§,0,this.§-V§ * 4);
            }
            this.§9<§.uploadFromVector(this.§]!D§.§%`§,0,this.§-V§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§-V§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§]!D§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§8q§ ? §'X§(_loc5_,this.§8q§.mipMapping,this.§8q§.repeat,this.§5!V§,this.§+6§) : §+w§(_loc5_);
         §'I§.§]Y§(param1,_loc4_);
         this.§0%§(param1);
         param1.setProgram(§?]§.§`!H§.§&5§(_loc6_));
         param1.setVertexBufferAt(0,this.§9<§,§6v§.§2X§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§8q§ == null || this.§+6§)
         {
            param1.setVertexBufferAt(2,this.§;f§,§6v§.§33§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §'!5§[0] = §'!5§[1] = §'!5§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §'!5§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§'!5§,1);
         }
         if(this.§8q§)
         {
            param1.setTextureAt(0,this.§8q§.getBase(param1));
            param1.setVertexBufferAt(1,this.§7f§,§6v§.§1v§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§?,§,0,this.§-V§ * 2);
         if(this.§8q§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§8q§ == null || this.§+6§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§-V§ = 0;
         this.§+6§ = false;
         this.§8q§ = null;
         this.§5!V§ = null;
      }
      
      public function §<n§(param1:§;o§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§-V§ + 1 > this.§]!D§.§+!N§ / 4)
         {
            this.§+!G§();
         }
         if(this.§-V§ == 0)
         {
            this.§8q§ = param3;
            this.§5!V§ = param4;
            this.§]!D§.§=Y§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§+6§ = true;
            }
         }
         var _loc6_:int = this.§-V§ * 4;
         param1.copyVertexDataTo(this.§]!D§,_loc6_,param2,param5);
         ++this.§-V§;
      }
      
      public function §;!b§(param1:§;o§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§8q§ != null && param2 != null)
         {
            return this.§8q§.root != param2.root || this.§8q§.repeat != param2.repeat || this.§5!V§ != param3 || this.§+6§ != param1.useColor || this.§-V§ == 8192;
         }
         if(this.§8q§ == null && param2 == null)
         {
            return false;
         }
         return this.§-V§ != 0 || this.§+6§ != (param1.useColor || param4 != 1);
      }
   }
}
