package §@!X§
{
   import §-!`§.§7!J§;
   import §-!`§.§8!p§;
   import §-!`§.DisplayObject;
   import §-!`§.DisplayObjectContainer;
   import §0!-§.§89§;
   import §0!-§.Texture;
   import §6!@§.§3!'§;
   import §6$§.AGALMiniAssembler;
   import §6x§.§9!§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §#L§
   {
      
      private static var §@+§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §,!e§:int;
      
      private var §;O§:Texture;
      
      private var §!!9§:String;
      
      private var §8<§:§9!§;
      
      private var §+[§:VertexBuffer3D;
      
      private var §'9§:VertexBuffer3D;
      
      private var §>b§:VertexBuffer3D;
      
      private var §`f§:Vector.<uint>;
      
      private var §7[§:IndexBuffer3D;
      
      private var §%Z§:Boolean = false;
      
      private var §'!F§:Boolean = false;
      
      public function §#L§()
      {
         super();
         §`S§();
         this.§8<§ = new §9!§(0,true);
         this.§`f§ = new Vector.<uint>(0);
         this.§,!e§ = 0;
         this.§,!l§();
      }
      
      public static function §0z§(param1:DisplayObjectContainer, param2:Vector.<§#L§>) : void
      {
         §>J§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §>J§(param1:DisplayObject, param2:Vector.<§#L§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§8!p§ = null;
         var _loc13_:§7!J§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§#L§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §#L§());
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
               §"W§.§'!&§(_loc10_,_loc11_);
               param3 = §>J§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §8!p§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §8!p§) as §7!J§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§2D§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §#L§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§[!9§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §`S§() : void
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
         var _loc1_:§7j§ = §7j§.§else§;
         if(_loc1_.§%!@§(§3`§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§]!D§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§]!D§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§"!U§(§3`§(_loc6_),_loc2_.§-x§,_loc3_.§-x§);
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
               _loc2_.§]!D§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§89§.NONE,§89§.§8!;§,§89§.§7K§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §89§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §89§.§8!;§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§]!D§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§"!U§(§9F§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§-x§,_loc3_.§-x§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §3`§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §9F§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §89§.§8!;§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §1!Z§() : int
      {
         return this.§,!e§;
      }
      
      public function dispose() : void
      {
         if(this.§+[§)
         {
            this.§+[§.dispose();
         }
         if(this.§'9§)
         {
            this.§'9§.dispose();
         }
         if(this.§>b§)
         {
            this.§>b§.dispose();
         }
         if(this.§7[§)
         {
            this.§7[§.dispose();
         }
      }
      
      private function §,!l§() : void
      {
         var _loc1_:int = this.§8<§.§9m§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§8<§.§9m§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§`f§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§`f§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§`f§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§`f§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§`f§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§`f§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§'!F§ = true;
      }
      
      private function §!E§(param1:Context3D) : Boolean
      {
         if(!this.§'!F§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §3!'§();
         }
         if(this.§+[§)
         {
            this.§+[§.dispose();
         }
         if(this.§'9§)
         {
            this.§'9§.dispose();
         }
         if(this.§>b§)
         {
            this.§>b§.dispose();
         }
         if(this.§7[§)
         {
            this.§7[§.dispose();
         }
         var _loc2_:int = this.§8<§.§9m§ / 4;
         this.§+[§ = param1.createVertexBuffer(_loc2_ * 4,§9!§.§4>§);
         this.§+[§.uploadFromByteArray(this.§8<§.§>!I§,0,0,_loc2_ * 4);
         this.§'9§ = param1.createVertexBuffer(_loc2_ * 4,§9!§.§#!R§);
         this.§'9§.uploadFromVector(this.§8<§.§`!7§,0,_loc2_ * 4);
         this.§>b§ = param1.createVertexBuffer(_loc2_ * 4,§9!§.§1W§);
         this.§>b§.uploadFromVector(this.§8<§.§1!P§,0,_loc2_ * 4);
         this.§7[§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§7[§.uploadFromVector(this.§`f§,0,_loc2_ * 6);
         this.§'!F§ = false;
         return true;
      }
      
      private function §9!b§(param1:Context3D) : void
      {
         if(!this.§!E§(param1))
         {
            this.§+[§.uploadFromByteArray(this.§8<§.§>!I§,0,0,this.§,!e§ * 4);
            if(this.§%Z§)
            {
               this.§'9§.uploadFromVector(this.§8<§.§`!7§,0,this.§,!e§ * 4);
            }
            this.§>b§.uploadFromVector(this.§8<§.§1!P§,0,this.§,!e§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§,!e§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§8<§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§;O§ ? §9F§(_loc5_,this.§;O§.mipMapping,this.§;O§.repeat,this.§!!9§,this.§%Z§) : §3`§(_loc5_);
         §"W§.§"!b§(param1,_loc4_);
         this.§9!b§(param1);
         param1.setProgram(§7j§.§else§.§+!l§(_loc6_));
         param1.setVertexBufferAt(0,this.§>b§,§9!§.§3!V§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§;O§ == null || this.§%Z§)
         {
            param1.setVertexBufferAt(2,this.§'9§,§9!§.§5Q§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §@+§[0] = §@+§[1] = §@+§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §@+§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§@+§,1);
         }
         if(this.§;O§)
         {
            param1.setTextureAt(0,this.§;O§.getBase(param1));
            param1.setVertexBufferAt(1,this.§+[§,§9!§.§<!l§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§7[§,0,this.§,!e§ * 2);
         if(this.§;O§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§;O§ == null || this.§%Z§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§,!e§ = 0;
         this.§%Z§ = false;
         this.§;O§ = null;
         this.§!!9§ = null;
      }
      
      public function §[!9§(param1:§8!p§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§,!e§ + 1 > this.§8<§.§9m§ / 4)
         {
            this.§,!l§();
         }
         if(this.§,!e§ == 0)
         {
            this.§;O§ = param3;
            this.§!!9§ = param4;
            this.§8<§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§,!e§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§8<§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§%Z§ = true;
         }
         ++this.§,!e§;
      }
      
      public function §2D§(param1:§8!p§, param2:Texture, param3:String) : Boolean
      {
         if(this.§;O§ != null && param2 != null)
         {
            return this.§;O§.root != param2.root || this.§;O§.repeat != param2.repeat || this.§!!9§ != param3 || this.§%Z§ != param1.useColor || this.§,!e§ == 8192;
         }
         if(this.§;O§ == null && param2 == null)
         {
            return false;
         }
         return this.§,!e§ != 0 || this.§%Z§ != param1.useColor;
      }
   }
}
