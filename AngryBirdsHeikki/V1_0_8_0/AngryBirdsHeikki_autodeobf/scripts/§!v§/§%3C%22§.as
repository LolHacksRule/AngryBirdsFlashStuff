package §!v§
{
   import §#!6§.Texture;
   import §#!6§.§]!H§;
   import §%!N§.§7!N§;
   import §6K§.§#!-§;
   import §=!E§.§,!@§;
   import §=!E§.DisplayObject;
   import §=!E§.DisplayObjectContainer;
   import §=!E§.§try§;
   import §@!%§.§[u§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §<"§
   {
      
      private static var §^%§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §3!?§:int;
      
      private var §3c§:Texture;
      
      private var §!=§:String;
      
      private var §2! §:§#!-§;
      
      private var §;!3§:VertexBuffer3D;
      
      private var § !^§:VertexBuffer3D;
      
      private var §6f§:VertexBuffer3D;
      
      private var §1!V§:Vector.<uint>;
      
      private var §>!,§:IndexBuffer3D;
      
      private var §4!5§:Boolean = false;
      
      private var §6p§:Boolean = false;
      
      public function §<"§()
      {
         super();
         §5!c§();
         this.§2! § = new §#!-§(0,true);
         this.§1!V§ = new Vector.<uint>(0);
         this.§3!?§ = 0;
         this.§=r§();
      }
      
      public static function §^P§(param1:DisplayObjectContainer, param2:Vector.<§<"§>) : void
      {
         §-]§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §-]§(param1:DisplayObject, param2:Vector.<§<"§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§,!@§ = null;
         var _loc13_:§try§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§<"§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §<"§());
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
               _loc11_.§1!!§(_loc10_);
               param3 = §-]§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §,!@§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §,!@§) as §try§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§'W§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §<"§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§%D§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §5!c§() : void
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
         var _loc1_:§7[§ = §7[§.§&!J§;
         if(_loc1_.§6!#§(§;!B§(true)))
         {
            return;
         }
         var _loc2_:§[u§ = new §[u§();
         var _loc3_:§[u§ = new §[u§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§"!!§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§"!!§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§[t§(§;!B§(_loc6_),_loc2_.§>!R§,_loc3_.§>!R§);
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
               _loc2_.§"!!§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§]!H§.NONE,§]!H§.§2R§,§]!H§.§7,§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §]!H§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §]!H§.§2R§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§"!!§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§[t§(§[F§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§>!R§,_loc3_.§>!R§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §;!B§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §[F§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §]!H§.§2R§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §-!c§() : int
      {
         return this.§3!?§;
      }
      
      public function dispose() : void
      {
         if(this.§;!3§)
         {
            this.§;!3§.dispose();
         }
         if(this.§ !^§)
         {
            this.§ !^§.dispose();
         }
         if(this.§6f§)
         {
            this.§6f§.dispose();
         }
         if(this.§>!,§)
         {
            this.§>!,§.dispose();
         }
      }
      
      private function §=r§() : void
      {
         var _loc1_:int = this.§2! §.§]5§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§2! §.§]5§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§1!V§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§1!V§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§1!V§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§1!V§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§1!V§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§1!V§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§6p§ = true;
      }
      
      private function §&!Q§(param1:Context3D) : Boolean
      {
         if(!this.§6p§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §7!N§();
         }
         if(this.§;!3§)
         {
            this.§;!3§.dispose();
         }
         if(this.§ !^§)
         {
            this.§ !^§.dispose();
         }
         if(this.§6f§)
         {
            this.§6f§.dispose();
         }
         if(this.§>!,§)
         {
            this.§>!,§.dispose();
         }
         var _loc2_:int = this.§2! §.§]5§ / 4;
         this.§;!3§ = param1.createVertexBuffer(_loc2_ * 4,§#!-§.§4!7§);
         this.§;!3§.uploadFromByteArray(this.§2! §.§?!7§,0,0,_loc2_ * 4);
         this.§ !^§ = param1.createVertexBuffer(_loc2_ * 4,§#!-§.§"!Z§);
         this.§ !^§.uploadFromVector(this.§2! §.§2?§,0,_loc2_ * 4);
         this.§6f§ = param1.createVertexBuffer(_loc2_ * 4,§#!-§.§"!2§);
         this.§6f§.uploadFromVector(this.§2! §.§46§,0,_loc2_ * 4);
         this.§>!,§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§>!,§.uploadFromVector(this.§1!V§,0,_loc2_ * 6);
         this.§6p§ = false;
         return true;
      }
      
      private function §-!W§(param1:Context3D) : void
      {
         if(!this.§&!Q§(param1))
         {
            this.§;!3§.uploadFromByteArray(this.§2! §.§?!7§,0,0,this.§3!?§ * 4);
            if(this.§4!5§)
            {
               this.§ !^§.uploadFromVector(this.§2! §.§2?§,0,this.§3!?§ * 4);
            }
            this.§6f§.uploadFromVector(this.§2! §.§46§,0,this.§3!?§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§3!?§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§2! §.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§3c§ ? §[F§(_loc5_,this.§3c§.mipMapping,this.§3c§.repeat,this.§!=§,this.§4!5§) : §;!B§(_loc5_);
         §16§.§switch§(param1,_loc4_);
         this.§-!W§(param1);
         param1.setProgram(§7[§.§&!J§.§&Q§(_loc6_));
         param1.setVertexBufferAt(0,this.§6f§,§#!-§.§4!]§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§3c§ == null || this.§4!5§)
         {
            param1.setVertexBufferAt(2,this.§ !^§,§#!-§.§7!$§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §^%§[0] = §^%§[1] = §^%§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §^%§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§^%§,1);
         }
         if(this.§3c§)
         {
            param1.setTextureAt(0,this.§3c§.getBase(param1));
            param1.setVertexBufferAt(1,this.§;!3§,§#!-§.§8!O§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§>!,§,0,this.§3!?§ * 2);
         if(this.§3c§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§3c§ == null || this.§4!5§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§3!?§ = 0;
         this.§4!5§ = false;
         this.§3c§ = null;
         this.§!=§ = null;
      }
      
      public function §%D§(param1:§,!@§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§3!?§ + 1 > this.§2! §.§]5§ / 4)
         {
            this.§=r§();
         }
         if(this.§3!?§ == 0)
         {
            this.§3c§ = param3;
            this.§!=§ = param4;
            this.§2! §.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§3!?§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§2! §,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§4!5§ = true;
         }
         ++this.§3!?§;
      }
      
      public function §'W§(param1:§,!@§, param2:Texture, param3:String) : Boolean
      {
         if(this.§3c§ != null && param2 != null)
         {
            return this.§3c§.root != param2.root || this.§3c§.repeat != param2.repeat || this.§!=§ != param3 || this.§4!5§ != param1.useColor || this.§3!?§ == 8192;
         }
         if(this.§3c§ == null && param2 == null)
         {
            return false;
         }
         return this.§3!?§ != 0 || this.§4!5§ != param1.useColor;
      }
   }
}
