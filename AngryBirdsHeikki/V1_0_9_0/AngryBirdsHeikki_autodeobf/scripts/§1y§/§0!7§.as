package §1y§
{
   import § 0§.Texture;
   import § 0§.§^Q§;
   import §!q§.§#!J§;
   import §"=§.§7!F§;
   import §#!f§.§,!0§;
   import §#!f§.§9!,§;
   import §#!f§.DisplayObject;
   import §#!f§.DisplayObjectContainer;
   import §,!Q§.§@!-§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §0!7§
   {
      
      private static var §+g§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §#!D§:int;
      
      private var §`!%§:Texture;
      
      private var §3e§:String;
      
      private var §9!`§:§7!F§;
      
      private var §21§:VertexBuffer3D;
      
      private var §7`§:VertexBuffer3D;
      
      private var §@T§:VertexBuffer3D;
      
      private var §,2§:Vector.<uint>;
      
      private var §`!8§:IndexBuffer3D;
      
      private var §while§:Boolean = false;
      
      private var §<q§:Boolean = false;
      
      public function §0!7§()
      {
         super();
         §<o§();
         this.§9!`§ = new §7!F§(0,true);
         this.§,2§ = new Vector.<uint>(0);
         this.§#!D§ = 0;
         this.§,!]§();
      }
      
      public static function §?]§(param1:DisplayObjectContainer, param2:Vector.<§0!7§>) : void
      {
         §>s§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §>s§(param1:DisplayObject, param2:Vector.<§0!7§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§,!0§ = null;
         var _loc13_:§9!,§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§0!7§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §0!7§());
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
               _loc11_.§<b§(_loc10_);
               param3 = §>s§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §,!0§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §,!0§) as §9!,§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§@!R§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §0!7§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§>a§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §<o§() : void
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
         var _loc1_:§&!B§ = §&!B§.§^8§;
         if(_loc1_.§%7§(§0!f§(true)))
         {
            return;
         }
         var _loc2_:§@!-§ = new §@!-§();
         var _loc3_:§@!-§ = new §@!-§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§@9§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§@9§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§]j§(§0!f§(_loc6_),_loc2_.§>!=§,_loc3_.§>!=§);
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
               _loc2_.§@9§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§^Q§.NONE,§^Q§.§!!%§,§^Q§.§@m§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §^Q§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §^Q§.§!!%§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§@9§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§]j§(§>e§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§>!=§,_loc3_.§>!=§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §0!f§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §>e§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §^Q§.§!!%§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §&Y§() : int
      {
         return this.§#!D§;
      }
      
      public function dispose() : void
      {
         if(this.§21§)
         {
            this.§21§.dispose();
         }
         if(this.§7`§)
         {
            this.§7`§.dispose();
         }
         if(this.§@T§)
         {
            this.§@T§.dispose();
         }
         if(this.§`!8§)
         {
            this.§`!8§.dispose();
         }
      }
      
      private function §,!]§() : void
      {
         var _loc1_:int = this.§9!`§.§4k§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§9!`§.§4k§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§,2§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§,2§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§,2§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§,2§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§,2§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§,2§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§<q§ = true;
      }
      
      private function §^!>§(param1:Context3D) : Boolean
      {
         if(!this.§<q§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §#!J§();
         }
         if(this.§21§)
         {
            this.§21§.dispose();
         }
         if(this.§7`§)
         {
            this.§7`§.dispose();
         }
         if(this.§@T§)
         {
            this.§@T§.dispose();
         }
         if(this.§`!8§)
         {
            this.§`!8§.dispose();
         }
         var _loc2_:int = this.§9!`§.§4k§ / 4;
         this.§21§ = param1.createVertexBuffer(_loc2_ * 4,§7!F§.§=+§);
         this.§21§.uploadFromByteArray(this.§9!`§.§;!<§,0,0,_loc2_ * 4);
         this.§7`§ = param1.createVertexBuffer(_loc2_ * 4,§7!F§.§`G§);
         this.§7`§.uploadFromVector(this.§9!`§.§59§,0,_loc2_ * 4);
         this.§@T§ = param1.createVertexBuffer(_loc2_ * 4,§7!F§.§catch§);
         this.§@T§.uploadFromVector(this.§9!`§.§"Y§,0,_loc2_ * 4);
         this.§`!8§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§`!8§.uploadFromVector(this.§,2§,0,_loc2_ * 6);
         this.§<q§ = false;
         return true;
      }
      
      private function § W§(param1:Context3D) : void
      {
         if(!this.§^!>§(param1))
         {
            this.§21§.uploadFromByteArray(this.§9!`§.§;!<§,0,0,this.§#!D§ * 4);
            if(this.§while§)
            {
               this.§7`§.uploadFromVector(this.§9!`§.§59§,0,this.§#!D§ * 4);
            }
            this.§@T§.uploadFromVector(this.§9!`§.§"Y§,0,this.§#!D§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§#!D§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§9!`§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§`!%§ ? §>e§(_loc5_,this.§`!%§.mipMapping,this.§`!%§.repeat,this.§3e§,this.§while§) : §0!f§(_loc5_);
         §2n§.§3!E§(param1,_loc4_);
         this.§ W§(param1);
         param1.setProgram(§&!B§.§^8§.§&V§(_loc6_));
         param1.setVertexBufferAt(0,this.§@T§,§7!F§.§&7§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§`!%§ == null || this.§while§)
         {
            param1.setVertexBufferAt(2,this.§7`§,§7!F§.§class§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §+g§[0] = §+g§[1] = §+g§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §+g§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§+g§,1);
         }
         if(this.§`!%§)
         {
            param1.setTextureAt(0,this.§`!%§.getBase(param1));
            param1.setVertexBufferAt(1,this.§21§,§7!F§.§@f§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§`!8§,0,this.§#!D§ * 2);
         if(this.§`!%§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§`!%§ == null || this.§while§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§#!D§ = 0;
         this.§while§ = false;
         this.§`!%§ = null;
         this.§3e§ = null;
      }
      
      public function §>a§(param1:§,!0§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§#!D§ + 1 > this.§9!`§.§4k§ / 4)
         {
            this.§,!]§();
         }
         if(this.§#!D§ == 0)
         {
            this.§`!%§ = param3;
            this.§3e§ = param4;
            this.§9!`§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§#!D§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§9!`§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§while§ = true;
         }
         ++this.§#!D§;
      }
      
      public function §@!R§(param1:§,!0§, param2:Texture, param3:String) : Boolean
      {
         if(this.§`!%§ != null && param2 != null)
         {
            return this.§`!%§.root != param2.root || this.§`!%§.repeat != param2.repeat || this.§3e§ != param3 || this.§while§ != param1.useColor || this.§#!D§ == 8192;
         }
         if(this.§`!%§ == null && param2 == null)
         {
            return false;
         }
         return this.§#!D§ != 0 || this.§while§ != param1.useColor;
      }
   }
}
