package §0!F§
{
   import §3!U§.§0F§;
   import §3!U§.Texture;
   import §6!$§.§&!2§;
   import §9!T§.§21§;
   import §9!a§.§!$§;
   import §]!2§.§,!n§;
   import §]!2§.§?"2§;
   import §]!2§.DisplayObject;
   import §]!2§.DisplayObjectContainer;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §0!J§
   {
      
      private static var §>J§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §&!G§:int;
      
      private var §0"-§:Texture;
      
      private var §"w§:String;
      
      private var §&f§:§!$§;
      
      private var §09§:VertexBuffer3D;
      
      private var §#f§:VertexBuffer3D;
      
      private var §2!-§:VertexBuffer3D;
      
      private var §3T§:Vector.<uint>;
      
      private var §[!8§:IndexBuffer3D;
      
      private var §&"5§:Boolean = false;
      
      private var §2§:Boolean = false;
      
      public function §0!J§()
      {
         super();
         §!!b§();
         this.§&f§ = new §!$§(0,true);
         this.§3T§ = new Vector.<uint>(0);
         this.§&!G§ = 0;
         this.§]9§();
      }
      
      public static function §2U§(param1:DisplayObjectContainer, param2:Vector.<§0!J§>) : void
      {
         §"@§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §"@§(param1:DisplayObject, param2:Vector.<§0!J§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§?"2§ = null;
         var _loc13_:§,!n§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§0!J§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §0!J§());
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
               _loc11_.§"!]§(_loc10_);
               param3 = §"@§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §?"2§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §?"2§) as §,!n§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§`N§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §0!J§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§ !+§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §!!b§() : void
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
         var _loc1_:§^d§ = §^d§.§+!f§;
         if(_loc1_.§>F§(§4!O§(true)))
         {
            return;
         }
         var _loc2_:§21§ = new §21§();
         var _loc3_:§21§ = new §21§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§6!s§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§6!s§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§1e§(§4!O§(_loc6_),_loc2_.§]!'§,_loc3_.§]!'§);
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
               _loc2_.§6!s§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§0F§.NONE,§0F§.§%!M§,§0F§.§<p§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §0F§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §0F§.§%!M§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§6!s§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§1e§(§1!a§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§]!'§,_loc3_.§]!'§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §4!O§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §1!a§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §0F§.§%!M§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §6#§() : int
      {
         return this.§&!G§;
      }
      
      public function dispose() : void
      {
         if(this.§09§)
         {
            this.§09§.dispose();
         }
         if(this.§#f§)
         {
            this.§#f§.dispose();
         }
         if(this.§2!-§)
         {
            this.§2!-§.dispose();
         }
         if(this.§[!8§)
         {
            this.§[!8§.dispose();
         }
      }
      
      private function §]9§() : void
      {
         var _loc1_:int = this.§&f§.§!!d§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§&f§.§!!d§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§3T§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§3T§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§3T§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§3T§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§3T§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§3T§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§2§ = true;
      }
      
      private function §-"§(param1:Context3D) : Boolean
      {
         if(!this.§2§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §&!2§();
         }
         if(this.§09§)
         {
            this.§09§.dispose();
         }
         if(this.§#f§)
         {
            this.§#f§.dispose();
         }
         if(this.§2!-§)
         {
            this.§2!-§.dispose();
         }
         if(this.§[!8§)
         {
            this.§[!8§.dispose();
         }
         var _loc2_:int = this.§&f§.§!!d§ / 4;
         this.§09§ = param1.createVertexBuffer(_loc2_ * 4,§!$§.§<I§);
         this.§09§.uploadFromByteArray(this.§&f§.§'!M§,0,0,_loc2_ * 4);
         this.§#f§ = param1.createVertexBuffer(_loc2_ * 4,§!$§.§1!^§);
         this.§#f§.uploadFromVector(this.§&f§.§,&§,0,_loc2_ * 4);
         this.§2!-§ = param1.createVertexBuffer(_loc2_ * 4,§!$§.§"n§);
         this.§2!-§.uploadFromVector(this.§&f§.§2!E§,0,_loc2_ * 4);
         this.§[!8§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§[!8§.uploadFromVector(this.§3T§,0,_loc2_ * 6);
         this.§2§ = false;
         return true;
      }
      
      private function §+!p§(param1:Context3D) : void
      {
         if(!this.§-"§(param1))
         {
            this.§09§.uploadFromByteArray(this.§&f§.§'!M§,0,0,this.§&!G§ * 4);
            if(this.§&"5§)
            {
               this.§#f§.uploadFromVector(this.§&f§.§,&§,0,this.§&!G§ * 4);
            }
            this.§2!-§.uploadFromVector(this.§&f§.§2!E§,0,this.§&!G§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§&!G§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§&f§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§0"-§ ? §1!a§(_loc5_,this.§0"-§.mipMapping,this.§0"-§.repeat,this.§"w§,this.§&"5§) : §4!O§(_loc5_);
         §3`§.§@!y§(param1,_loc4_);
         this.§+!p§(param1);
         param1.setProgram(§^d§.§+!f§.§]!P§(_loc6_));
         param1.setVertexBufferAt(0,this.§2!-§,§!$§.§8!-§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§0"-§ == null || this.§&"5§)
         {
            param1.setVertexBufferAt(2,this.§#f§,§!$§.§&C§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §>J§[0] = §>J§[1] = §>J§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §>J§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§>J§,1);
         }
         if(this.§0"-§)
         {
            param1.setTextureAt(0,this.§0"-§.getBase(param1));
            param1.setVertexBufferAt(1,this.§09§,§!$§.§'6§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§[!8§,0,this.§&!G§ * 2);
         if(this.§0"-§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§0"-§ == null || this.§&"5§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§&!G§ = 0;
         this.§&"5§ = false;
         this.§0"-§ = null;
         this.§"w§ = null;
      }
      
      public function § !+§(param1:§?"2§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§&!G§ + 1 > this.§&f§.§!!d§ / 4)
         {
            this.§]9§();
         }
         if(this.§&!G§ == 0)
         {
            this.§0"-§ = param3;
            this.§"w§ = param4;
            this.§&f§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§&!G§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§&f§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§&"5§ = true;
         }
         ++this.§&!G§;
      }
      
      public function §`N§(param1:§?"2§, param2:Texture, param3:String) : Boolean
      {
         if(this.§0"-§ != null && param2 != null)
         {
            return this.§0"-§.root != param2.root || this.§0"-§.repeat != param2.repeat || this.§"w§ != param3 || this.§&"5§ != param1.useColor || this.§&!G§ == 8192;
         }
         if(this.§0"-§ == null && param2 == null)
         {
            return false;
         }
         return this.§&!G§ != 0 || this.§&"5§ != param1.useColor;
      }
   }
}
