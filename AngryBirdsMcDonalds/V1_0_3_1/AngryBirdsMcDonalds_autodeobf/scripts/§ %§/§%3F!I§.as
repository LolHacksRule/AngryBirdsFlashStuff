package § %§
{
   import § if§.§5!;§;
   import §&Y§.§-!G§;
   import §&Y§.Texture;
   import §&c§.§%!a§;
   import §&c§.§2!]§;
   import §&c§.DisplayObject;
   import §&c§.DisplayObjectContainer;
   import §=G§.§#!N§;
   import §^!L§.§5!%§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §?!I§
   {
      
      private static var §@6§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §!i§:int;
      
      private var §]U§:Texture;
      
      private var §'O§:String;
      
      private var §5!L§:§#!N§;
      
      private var §%s§:VertexBuffer3D;
      
      private var §[!6§:VertexBuffer3D;
      
      private var §8!,§:VertexBuffer3D;
      
      private var §-!O§:Vector.<uint>;
      
      private var §4X§:IndexBuffer3D;
      
      private var §45§:Boolean = false;
      
      private var §<!Q§:Boolean = false;
      
      public function §?!I§()
      {
         super();
         §,$§();
         this.§5!L§ = new §#!N§(0,true);
         this.§-!O§ = new Vector.<uint>(0);
         this.§!i§ = 0;
         this.§;!Z§();
      }
      
      public static function §+4§(param1:DisplayObjectContainer, param2:Vector.<§?!I§>) : void
      {
         §!F§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §!F§(param1:DisplayObject, param2:Vector.<§?!I§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§2!]§ = null;
         var _loc13_:§%!a§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§?!I§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §?!I§());
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
               _loc11_.§=L§(_loc10_);
               param3 = §!F§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §2!]§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §2!]§) as §%!a§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§'<§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §?!I§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§5!g§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §,$§() : void
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
         var _loc1_:§`M§ = §`M§.§93§;
         if(_loc1_.§%c§(§8n§(true)))
         {
            return;
         }
         var _loc2_:§5!;§ = new §5!;§();
         var _loc3_:§5!;§ = new §5!;§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§?P§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§?P§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§4>§(§8n§(_loc6_),_loc2_.§0!k§,_loc3_.§0!k§);
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
               _loc2_.§?P§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§-!G§.NONE,§-!G§.§9A§,§-!G§.§+^§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §-!G§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §-!G§.§9A§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§?P§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§4>§(§;a§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§0!k§,_loc3_.§0!k§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §8n§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §;a§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §-!G§.§9A§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §>"§() : int
      {
         return this.§!i§;
      }
      
      public function dispose() : void
      {
         if(this.§%s§)
         {
            this.§%s§.dispose();
         }
         if(this.§[!6§)
         {
            this.§[!6§.dispose();
         }
         if(this.§8!,§)
         {
            this.§8!,§.dispose();
         }
         if(this.§4X§)
         {
            this.§4X§.dispose();
         }
      }
      
      private function §;!Z§() : void
      {
         var _loc1_:int = this.§5!L§.§>Y§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§5!L§.§>Y§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§-!O§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§-!O§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§-!O§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§-!O§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§-!O§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§-!O§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§<!Q§ = true;
      }
      
      private function §-!R§(param1:Context3D) : Boolean
      {
         if(!this.§<!Q§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §5!%§();
         }
         if(this.§%s§)
         {
            this.§%s§.dispose();
         }
         if(this.§[!6§)
         {
            this.§[!6§.dispose();
         }
         if(this.§8!,§)
         {
            this.§8!,§.dispose();
         }
         if(this.§4X§)
         {
            this.§4X§.dispose();
         }
         var _loc2_:int = this.§5!L§.§>Y§ / 4;
         this.§%s§ = param1.createVertexBuffer(_loc2_ * 4,§#!N§.§'7§);
         this.§%s§.uploadFromByteArray(this.§5!L§.§5p§,0,0,_loc2_ * 4);
         this.§[!6§ = param1.createVertexBuffer(_loc2_ * 4,§#!N§.§+T§);
         this.§[!6§.uploadFromVector(this.§5!L§.§4t§,0,_loc2_ * 4);
         this.§8!,§ = param1.createVertexBuffer(_loc2_ * 4,§#!N§.§!c§);
         this.§8!,§.uploadFromVector(this.§5!L§.§3!I§,0,_loc2_ * 4);
         this.§4X§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§4X§.uploadFromVector(this.§-!O§,0,_loc2_ * 6);
         this.§<!Q§ = false;
         return true;
      }
      
      private function §9G§(param1:Context3D) : void
      {
         if(!this.§-!R§(param1))
         {
            this.§%s§.uploadFromByteArray(this.§5!L§.§5p§,0,0,this.§!i§ * 4);
            if(this.§45§)
            {
               this.§[!6§.uploadFromVector(this.§5!L§.§4t§,0,this.§!i§ * 4);
            }
            this.§8!,§.uploadFromVector(this.§5!L§.§3!I§,0,this.§!i§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§!i§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§5!L§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§]U§ ? §;a§(_loc5_,this.§]U§.mipMapping,this.§]U§.repeat,this.§'O§,this.§45§) : §8n§(_loc5_);
         §3!e§.§-!6§(param1,_loc4_);
         this.§9G§(param1);
         param1.setProgram(§`M§.§93§.§99§(_loc6_));
         param1.setVertexBufferAt(0,this.§8!,§,§#!N§.§[!X§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§]U§ == null || this.§45§)
         {
            param1.setVertexBufferAt(2,this.§[!6§,§#!N§.§3L§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §@6§[0] = §@6§[1] = §@6§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §@6§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§@6§,1);
         }
         if(this.§]U§)
         {
            param1.setTextureAt(0,this.§]U§.getBase(param1));
            param1.setVertexBufferAt(1,this.§%s§,§#!N§.§9!5§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§4X§,0,this.§!i§ * 2);
         if(this.§]U§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§]U§ == null || this.§45§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§!i§ = 0;
         this.§45§ = false;
         this.§]U§ = null;
         this.§'O§ = null;
      }
      
      public function §5!g§(param1:§2!]§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§!i§ + 1 > this.§5!L§.§>Y§ / 4)
         {
            this.§;!Z§();
         }
         if(this.§!i§ == 0)
         {
            this.§]U§ = param3;
            this.§'O§ = param4;
            this.§5!L§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§!i§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§5!L§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§45§ = true;
         }
         ++this.§!i§;
      }
      
      public function §'<§(param1:§2!]§, param2:Texture, param3:String) : Boolean
      {
         if(this.§]U§ != null && param2 != null)
         {
            return this.§]U§.root != param2.root || this.§]U§.repeat != param2.repeat || this.§'O§ != param3 || this.§45§ != param1.useColor || this.§!i§ == 8192;
         }
         if(this.§]U§ == null && param2 == null)
         {
            return false;
         }
         return this.§!i§ != 0 || this.§45§ != param1.useColor;
      }
   }
}
