package §2m§
{
   import §4!F§.AGALMiniAssembler;
   import §7H§.§'!w§;
   import §?]§.§7l§;
   import §?]§.Texture;
   import §[z§.§+"#§;
   import §`g§.§ O§;
   import §`g§.§"<§;
   import §`g§.DisplayObject;
   import §`g§.DisplayObjectContainer;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §^[§
   {
      
      private static var §%=§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §`7§:int;
      
      private var §%6§:Texture;
      
      private var §8M§:String;
      
      private var §[!K§:§'!w§;
      
      private var §#-§:VertexBuffer3D;
      
      private var §1!&§:VertexBuffer3D;
      
      private var §^!p§:VertexBuffer3D;
      
      private var §@!y§:Vector.<uint>;
      
      private var §else§:IndexBuffer3D;
      
      private var §7!W§:Boolean = false;
      
      private var §+=§:Boolean = false;
      
      public function §^[§()
      {
         super();
         §9!%§();
         this.§[!K§ = new §'!w§(0,true);
         this.§@!y§ = new Vector.<uint>(0);
         this.§`7§ = 0;
         this.§'k§();
      }
      
      public static function § l§(param1:DisplayObjectContainer, param2:Vector.<§^[§>) : void
      {
         §-§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §-§(param1:DisplayObject, param2:Vector.<§^[§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§ O§ = null;
         var _loc13_:§"<§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§^[§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §^[§());
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
                  _loc11_.§0!"§(_loc10_);
                  param3 = §-§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is § O§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as § O§) as §"<§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).get(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §^[§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§>$§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §9!%§() : void
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
         var _loc1_:§<!?§ = §<!?§.§,=§;
         if(_loc1_.§3h§(§%L§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§9!+§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§9!+§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§2!a§(§%L§(_loc6_),_loc2_.§;!M§,_loc3_.§;!M§);
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
               _loc2_.§9!+§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§7l§.NONE,§7l§.§6!%§,§7l§.§`!,§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §7l§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §7l§.§6!%§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§9!+§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§2!a§(§,2§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§;!M§,_loc3_.§;!M§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §%L§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §,2§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §7l§.§6!%§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §;!K§() : int
      {
         return this.§`7§;
      }
      
      public function dispose() : void
      {
         if(this.§#-§)
         {
            this.§#-§.dispose();
         }
         if(this.§1!&§)
         {
            this.§1!&§.dispose();
         }
         if(this.§^!p§)
         {
            this.§^!p§.dispose();
         }
         if(this.§else§)
         {
            this.§else§.dispose();
         }
      }
      
      private function §'k§() : void
      {
         var _loc1_:int = this.§[!K§.§52§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§[!K§.§52§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§@!y§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§@!y§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§@!y§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§@!y§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§@!y§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§@!y§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§+=§ = true;
      }
      
      private function §`!u§(param1:Context3D) : Boolean
      {
         if(!this.§+=§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §+"#§();
         }
         if(this.§#-§)
         {
            this.§#-§.dispose();
         }
         if(this.§1!&§)
         {
            this.§1!&§.dispose();
         }
         if(this.§^!p§)
         {
            this.§^!p§.dispose();
         }
         if(this.§else§)
         {
            this.§else§.dispose();
         }
         var _loc2_:int = this.§[!K§.§52§ / 4;
         this.§#-§ = param1.createVertexBuffer(_loc2_ * 4,§'!w§.§#![§);
         this.§#-§.uploadFromByteArray(this.§[!K§.§%r§,0,0,_loc2_ * 4);
         this.§1!&§ = param1.createVertexBuffer(_loc2_ * 4,§'!w§.§%I§);
         this.§1!&§.uploadFromVector(this.§[!K§.§<`§,0,_loc2_ * 4);
         this.§^!p§ = param1.createVertexBuffer(_loc2_ * 4,§'!w§.§9>§);
         this.§^!p§.uploadFromVector(this.§[!K§.§1'§,0,_loc2_ * 4);
         this.§else§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§else§.uploadFromVector(this.§@!y§,0,_loc2_ * 6);
         this.§+=§ = false;
         return true;
      }
      
      private function §%d§(param1:Context3D) : void
      {
         if(!this.§`!u§(param1))
         {
            this.§#-§.uploadFromByteArray(this.§[!K§.§%r§,0,0,this.§`7§ * 4);
            if(this.§7!W§)
            {
               this.§1!&§.uploadFromVector(this.§[!K§.§<`§,0,this.§`7§ * 4);
            }
            this.§^!p§.uploadFromVector(this.§[!K§.§1'§,0,this.§`7§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§`7§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§[!K§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§%6§ ? §,2§(_loc5_,this.§%6§.mipMapping,this.§%6§.repeat,this.§8M§,this.§7!W§) : §%L§(_loc5_);
         §@>§.§?!I§(param1,_loc4_);
         this.§%d§(param1);
         param1.setProgram(§<!?§.§,=§.§"u§(_loc6_));
         param1.setVertexBufferAt(0,this.§^!p§,§'!w§.§9!C§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§%6§ == null || this.§7!W§)
         {
            param1.setVertexBufferAt(2,this.§1!&§,§'!w§.§2Q§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §%=§[0] = §%=§[1] = §%=§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §%=§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§%=§,1);
         }
         if(this.§%6§)
         {
            param1.setTextureAt(0,this.§%6§.getBase(param1));
            param1.setVertexBufferAt(1,this.§#-§,§'!w§.§<h§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§else§,0,this.§`7§ * 2);
         if(this.§%6§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§%6§ == null || this.§7!W§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§`7§ = 0;
         this.§7!W§ = false;
         this.§%6§ = null;
         this.§8M§ = null;
      }
      
      public function §>$§(param1:§ O§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§`7§ + 1 > this.§[!K§.§52§ / 4)
         {
            this.§'k§();
         }
         if(this.§`7§ == 0)
         {
            this.§%6§ = param3;
            this.§8M§ = param4;
            this.§[!K§.§&!O§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§7!W§ = true;
            }
         }
         var _loc6_:int = this.§`7§ * 4;
         param1.copyVertexDataTo(this.§[!K§,_loc6_,param2,param5);
         ++this.§`7§;
      }
      
      public function get(param1:§ O§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§%6§ != null && param2 != null)
         {
            return this.§%6§.root != param2.root || this.§%6§.repeat != param2.repeat || this.§8M§ != param3 || this.§7!W§ != param1.useColor || this.§`7§ == 8192;
         }
         if(this.§%6§ == null && param2 == null)
         {
            return false;
         }
         return this.§`7§ != 0 || this.§7!W§ != (param1.useColor || param4 != 1);
      }
   }
}
