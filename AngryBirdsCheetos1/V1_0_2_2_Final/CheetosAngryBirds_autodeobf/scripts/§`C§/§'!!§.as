package §`C§
{
   import §4!+§.§^u§;
   import §;! §.§?!T§;
   import §=!S§.§]!G§;
   import §]!B§.§1!;§;
   import §]!B§.Texture;
   import §]@§.§9!<§;
   import §]@§.DisplayObject;
   import §]@§.DisplayObjectContainer;
   import §]@§.§`!C§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §'!!§
   {
      
      private static var §;I§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §!b§:int;
      
      private var §@!"§:Texture;
      
      private var §,Y§:String;
      
      private var §6!3§:§?!T§;
      
      private var §+!@§:VertexBuffer3D;
      
      private var §&z§:VertexBuffer3D;
      
      private var §^!B§:VertexBuffer3D;
      
      private var §;E§:Vector.<uint>;
      
      private var §-!>§:IndexBuffer3D;
      
      private var §2!2§:Boolean = false;
      
      private var §#"§:Boolean = false;
      
      public function §'!!§()
      {
         super();
         §@!H§();
         this.§6!3§ = new §?!T§(0,true);
         this.§;E§ = new Vector.<uint>(0);
         this.§!b§ = 0;
         this.§'c§();
      }
      
      public static function §&L§(param1:DisplayObjectContainer, param2:Vector.<§'!!§>) : void
      {
         §1+§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §1+§(param1:DisplayObject, param2:Vector.<§'!!§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§9!<§ = null;
         var _loc13_:§`!C§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§'!!§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §'!!§());
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
               _loc11_.§]d§(_loc10_);
               param3 = §1+§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §9!<§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §9!<§) as §`!C§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§@w§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §'!!§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§'K§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §@!H§() : void
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
         var _loc1_:§9!'§ = §9!'§.§7!Z§;
         if(_loc1_.§!P§(§[!Q§(true)))
         {
            return;
         }
         var _loc2_:§^u§ = new §^u§();
         var _loc3_:§^u§ = new §^u§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§8!S§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§8!S§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§8V§(§[!Q§(_loc6_),_loc2_.§'Y§,_loc3_.§'Y§);
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
               _loc2_.§8!S§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§1!;§.NONE,§1!;§.§&@§,§1!;§.§>!7§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §1!;§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §1!;§.§&@§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§8!S§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§8V§(§ !S§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§'Y§,_loc3_.§'Y§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §[!Q§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function § !S§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §1!;§.§&@§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §'6§() : int
      {
         return this.§!b§;
      }
      
      public function dispose() : void
      {
         if(this.§+!@§)
         {
            this.§+!@§.dispose();
         }
         if(this.§&z§)
         {
            this.§&z§.dispose();
         }
         if(this.§^!B§)
         {
            this.§^!B§.dispose();
         }
         if(this.§-!>§)
         {
            this.§-!>§.dispose();
         }
      }
      
      private function §'c§() : void
      {
         var _loc1_:int = this.§6!3§.§>"§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§6!3§.§>"§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§;E§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§;E§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§;E§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§;E§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§;E§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§;E§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§#"§ = true;
      }
      
      private function §<!R§(param1:Context3D) : Boolean
      {
         if(!this.§#"§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §]!G§();
         }
         if(this.§+!@§)
         {
            this.§+!@§.dispose();
         }
         if(this.§&z§)
         {
            this.§&z§.dispose();
         }
         if(this.§^!B§)
         {
            this.§^!B§.dispose();
         }
         if(this.§-!>§)
         {
            this.§-!>§.dispose();
         }
         var _loc2_:int = this.§6!3§.§>"§ / 4;
         this.§+!@§ = param1.createVertexBuffer(_loc2_ * 4,§?!T§.§@t§);
         this.§+!@§.uploadFromByteArray(this.§6!3§.§8!H§,0,0,_loc2_ * 4);
         this.§&z§ = param1.createVertexBuffer(_loc2_ * 4,§?!T§.§`2§);
         this.§&z§.uploadFromVector(this.§6!3§.§8l§,0,_loc2_ * 4);
         this.§^!B§ = param1.createVertexBuffer(_loc2_ * 4,§?!T§.§!!6§);
         this.§^!B§.uploadFromVector(this.§6!3§.§<!9§,0,_loc2_ * 4);
         this.§-!>§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§-!>§.uploadFromVector(this.§;E§,0,_loc2_ * 6);
         this.§#"§ = false;
         return true;
      }
      
      private function §[!9§(param1:Context3D) : void
      {
         if(!this.§<!R§(param1))
         {
            this.§+!@§.uploadFromByteArray(this.§6!3§.§8!H§,0,0,this.§!b§ * 4);
            if(this.§2!2§)
            {
               this.§&z§.uploadFromVector(this.§6!3§.§8l§,0,this.§!b§ * 4);
            }
            this.§^!B§.uploadFromVector(this.§6!3§.§<!9§,0,this.§!b§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§!b§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§6!3§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§@!"§ ? § !S§(_loc5_,this.§@!"§.mipMapping,this.§@!"§.repeat,this.§,Y§,this.§2!2§) : §[!Q§(_loc5_);
         §'!N§.§,c§(param1,_loc4_);
         this.§[!9§(param1);
         param1.setProgram(§9!'§.§7!Z§.§@!O§(_loc6_));
         param1.setVertexBufferAt(0,this.§^!B§,§?!T§.§94§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§@!"§ == null || this.§2!2§)
         {
            param1.setVertexBufferAt(2,this.§&z§,§?!T§.§&!E§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §;I§[0] = §;I§[1] = §;I§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §;I§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§;I§,1);
         }
         if(this.§@!"§)
         {
            param1.setTextureAt(0,this.§@!"§.getBase(param1));
            param1.setVertexBufferAt(1,this.§+!@§,§?!T§.§0a§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§-!>§,0,this.§!b§ * 2);
         if(this.§@!"§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§@!"§ == null || this.§2!2§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§!b§ = 0;
         this.§2!2§ = false;
         this.§@!"§ = null;
         this.§,Y§ = null;
      }
      
      public function §'K§(param1:§9!<§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§!b§ + 1 > this.§6!3§.§>"§ / 4)
         {
            this.§'c§();
         }
         if(this.§!b§ == 0)
         {
            this.§@!"§ = param3;
            this.§,Y§ = param4;
            this.§6!3§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§!b§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§6!3§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§2!2§ = true;
         }
         ++this.§!b§;
      }
      
      public function §@w§(param1:§9!<§, param2:Texture, param3:String) : Boolean
      {
         if(this.§@!"§ != null && param2 != null)
         {
            return this.§@!"§.root != param2.root || this.§@!"§.repeat != param2.repeat || this.§,Y§ != param3 || this.§2!2§ != param1.useColor || this.§!b§ == 8192;
         }
         if(this.§@!"§ == null && param2 == null)
         {
            return false;
         }
         return this.§!b§ != 0 || this.§2!2§ != param1.useColor;
      }
   }
}
