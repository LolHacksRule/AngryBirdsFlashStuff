package §-Z§
{
   import §#a§.AGALMiniAssembler;
   import §3!$§.§+^§;
   import §5d§.§=i§;
   import §[P§.§@!$§;
   import §[P§.Texture;
   import §^V§.§09§;
   import §^V§.§1!,§;
   import §^V§.DisplayObject;
   import §^V§.DisplayObjectContainer;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §0o§
   {
      
      private static var §"L§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §;-§:int;
      
      private var §0W§:Texture;
      
      private var §3E§:String;
      
      private var §;#§:§+^§;
      
      private var §]#§:VertexBuffer3D;
      
      private var §]8§:VertexBuffer3D;
      
      private var §25§:VertexBuffer3D;
      
      private var §0g§:Vector.<uint>;
      
      private var §'5§:IndexBuffer3D;
      
      private var §&4§:Boolean = false;
      
      private var §<S§:Boolean = false;
      
      public function §0o§()
      {
         super();
         § b§();
         this.§;#§ = new §+^§(0,true);
         this.§0g§ = new Vector.<uint>(0);
         this.§;-§ = 0;
         this.§3!F§();
      }
      
      public static function §,!#§(param1:DisplayObjectContainer, param2:Vector.<§0o§>) : void
      {
         § t§(param1,param2,-1,new Matrix3D());
      }
      
      private static function § t§(param1:DisplayObject, param2:Vector.<§0o§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§09§ = null;
         var _loc13_:§1!,§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§0o§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §0o§());
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
               § G§.§3T§(_loc10_,_loc11_);
               param3 = § t§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §09§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §09§) as §1!,§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§9J§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §0o§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§-h§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function § b§() : void
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
         var _loc1_:§?h§ = §?h§.§ n§;
         if(_loc1_.§7g§(§'W§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§0!,§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§0!,§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§-V§(§'W§(_loc6_),_loc2_.§]K§,_loc3_.§]K§);
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
               _loc2_.§0!,§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§@!$§.NONE,§@!$§.§]!$§,§@!$§.§-b§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §@!$§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §@!$§.§]!$§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§0!,§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§-V§(§4I§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§]K§,_loc3_.§]K§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §'W§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §4I§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §@!$§.§]!$§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §%!,§() : int
      {
         return this.§;-§;
      }
      
      public function dispose() : void
      {
         if(this.§]#§)
         {
            this.§]#§.dispose();
         }
         if(this.§]8§)
         {
            this.§]8§.dispose();
         }
         if(this.§25§)
         {
            this.§25§.dispose();
         }
         if(this.§'5§)
         {
            this.§'5§.dispose();
         }
      }
      
      private function §3!F§() : void
      {
         var _loc1_:int = this.§;#§.§7U§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§;#§.§7U§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§0g§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§0g§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§0g§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§0g§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§0g§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§0g§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§<S§ = true;
      }
      
      private function §1+§(param1:Context3D) : Boolean
      {
         if(!this.§<S§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §=i§();
         }
         if(this.§]#§)
         {
            this.§]#§.dispose();
         }
         if(this.§]8§)
         {
            this.§]8§.dispose();
         }
         if(this.§25§)
         {
            this.§25§.dispose();
         }
         if(this.§'5§)
         {
            this.§'5§.dispose();
         }
         var _loc2_:int = this.§;#§.§7U§ / 4;
         this.§]#§ = param1.createVertexBuffer(_loc2_ * 4,§+^§.§6!4§);
         this.§]#§.uploadFromByteArray(this.§;#§.§]!E§,0,0,_loc2_ * 4);
         this.§]8§ = param1.createVertexBuffer(_loc2_ * 4,§+^§.§"!%§);
         this.§]8§.uploadFromVector(this.§;#§.§3!?§,0,_loc2_ * 4);
         this.§25§ = param1.createVertexBuffer(_loc2_ * 4,§+^§.§>!E§);
         this.§25§.uploadFromVector(this.§;#§.§[&§,0,_loc2_ * 4);
         this.§'5§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§'5§.uploadFromVector(this.§0g§,0,_loc2_ * 6);
         this.§<S§ = false;
         return true;
      }
      
      private function §&c§(param1:Context3D) : void
      {
         if(!this.§1+§(param1))
         {
            this.§]#§.uploadFromByteArray(this.§;#§.§]!E§,0,0,this.§;-§ * 4);
            if(this.§&4§)
            {
               this.§]8§.uploadFromVector(this.§;#§.§3!?§,0,this.§;-§ * 4);
            }
            this.§25§.uploadFromVector(this.§;#§.§[&§,0,this.§;-§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§;-§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§;#§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§0W§ ? §4I§(_loc5_,this.§0W§.mipMapping,this.§0W§.repeat,this.§3E§,this.§&4§) : §'W§(_loc5_);
         § G§.§0r§(param1,_loc4_);
         this.§&c§(param1);
         param1.setProgram(§?h§.§ n§.§;?§(_loc6_));
         param1.setVertexBufferAt(0,this.§25§,§+^§.§;u§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§0W§ == null || this.§&4§)
         {
            param1.setVertexBufferAt(2,this.§]8§,§+^§.§;F§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §"L§[0] = §"L§[1] = §"L§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §"L§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§"L§,1);
         }
         if(this.§0W§)
         {
            param1.setTextureAt(0,this.§0W§.getBase(param1));
            param1.setVertexBufferAt(1,this.§]#§,§+^§.§!^§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§'5§,0,this.§;-§ * 2);
         if(this.§0W§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§0W§ == null || this.§&4§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§;-§ = 0;
         this.§&4§ = false;
         this.§0W§ = null;
         this.§3E§ = null;
      }
      
      public function §-h§(param1:§09§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§;-§ + 1 > this.§;#§.§7U§ / 4)
         {
            this.§3!F§();
         }
         if(this.§;-§ == 0)
         {
            this.§0W§ = param3;
            this.§3E§ = param4;
            this.§;#§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§;-§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§;#§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§&4§ = true;
         }
         ++this.§;-§;
      }
      
      public function §9J§(param1:§09§, param2:Texture, param3:String) : Boolean
      {
         if(this.§0W§ != null && param2 != null)
         {
            return this.§0W§.root != param2.root || this.§0W§.repeat != param2.repeat || this.§3E§ != param3 || this.§&4§ != param1.useColor || this.§;-§ == 8192;
         }
         if(this.§0W§ == null && param2 == null)
         {
            return false;
         }
         return this.§;-§ != 0 || this.§&4§ != param1.useColor;
      }
   }
}
