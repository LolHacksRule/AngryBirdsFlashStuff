package §0P§
{
   import §"v§.§`!M§;
   import §5!G§.AGALMiniAssembler;
   import §6!7§.§-m§;
   import §6!7§.§3x§;
   import §6!7§.DisplayObject;
   import §6!7§.DisplayObjectContainer;
   import §7i§.§=!C§;
   import §7i§.Texture;
   import §8g§.VertexData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class QuadBatch
   {
      
      private static var §[!7§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §!!P§:int;
      
      private var §5!%§:Texture;
      
      private var §=!i§:String;
      
      private var §;H§:VertexData;
      
      private var §"-§:VertexBuffer3D;
      
      private var §-!^§:VertexBuffer3D;
      
      private var §8!F§:VertexBuffer3D;
      
      private var §9X§:Vector.<uint>;
      
      private var §%!Z§:IndexBuffer3D;
      
      private var §<!K§:Boolean = false;
      
      private var §#!!§:Boolean = false;
      
      public function QuadBatch()
      {
         super();
         §&Z§();
         this.§;H§ = new VertexData(0,true);
         this.§9X§ = new Vector.<uint>(0);
         this.§!!P§ = 0;
         this.§>p§();
      }
      
      public static function §#X§(param1:DisplayObjectContainer, param2:Vector.<QuadBatch>) : void
      {
         §,!L§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §,!L§(param1:DisplayObject, param2:Vector.<QuadBatch>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§3x§ = null;
         var _loc13_:§-m§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:QuadBatch = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new QuadBatch());
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
            _loc8_ = param1 as DisplayObjectContainer;
            _loc9_ = _loc8_.numChildren;
            _loc10_ = new Matrix3D();
            param5 *= param1.alpha;
            _loc6_ = 0;
            while(_loc6_ < _loc9_)
            {
               _loc11_ = _loc8_.getChildAt(_loc6_);
               _loc10_.copyFrom(param4);
               _loc11_.§'d§(_loc10_);
               param3 = §,!L§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §3x§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc12_ = param1 as §3x§;
            _loc13_ = _loc12_ as §-m§;
            _loc14_ = Boolean(_loc13_) ? _loc13_.texture : null;
            _loc15_ = Boolean(_loc13_) ? _loc13_.smoothing : null;
            _loc16_ = param2[param3];
            if(_loc16_.§&&§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new QuadBatch());
               }
               _loc16_ = param2[param3];
               _loc16_.reset();
            }
            _loc16_.§<!#§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §&Z§() : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Array = null;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc1_:Starling = Starling.§!!F§;
         if(_loc1_.§8V§(§9!h§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§#!G§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§#!G§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§1_§(§9!h§(_loc6_),_loc2_.§<x§,_loc3_.§<x§);
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
               _loc2_.§#!G§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§=!C§.NONE,§=!C§.§1l§,§=!C§.§!!N§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §=!C§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §=!C§.§1l§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§#!G§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§1_§(§&!%§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§<x§,_loc3_.§<x§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §9!h§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §&!%§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc6_:String = !!param1 ? "QB_i*" : "QB_i\'";
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
         if(param4 != §=!C§.§1l§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §90§() : int
      {
         return this.§!!P§;
      }
      
      public function dispose() : void
      {
         if(this.§"-§)
         {
            this.§"-§.dispose();
         }
         if(this.§-!^§)
         {
            this.§-!^§.dispose();
         }
         if(this.§8!F§)
         {
            this.§8!F§.dispose();
         }
         if(this.§%!Z§)
         {
            this.§%!Z§.dispose();
         }
      }
      
      private function §>p§() : void
      {
         var _loc1_:int = this.§;H§.§>!B§ / 4;
         var _loc2_:int = _loc1_ == 0 ? int(16) : int(_loc1_ * 2);
         this.§;H§.§>!B§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§9X§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§9X§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§9X§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§9X§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§9X§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§9X§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§#!!§ = true;
      }
      
      private function §<!R§(param1:Context3D) : Boolean
      {
         if(!this.§#!!§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §`!M§();
         }
         if(this.§"-§)
         {
            this.§"-§.dispose();
         }
         if(this.§-!^§)
         {
            this.§-!^§.dispose();
         }
         if(this.§8!F§)
         {
            this.§8!F§.dispose();
         }
         if(this.§%!Z§)
         {
            this.§%!Z§.dispose();
         }
         var _loc2_:int = this.§;H§.§>!B§ / 4;
         this.§"-§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§1!§);
         this.§"-§.uploadFromByteArray(this.§;H§.§7k§,0,0,_loc2_ * 4);
         this.§-!^§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§`!-§);
         this.§-!^§.uploadFromVector(this.§;H§.§2!+§,0,_loc2_ * 4);
         this.§8!F§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§9;§);
         this.§8!F§.uploadFromVector(this.§;H§.§@#§,0,_loc2_ * 4);
         this.§%!Z§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§%!Z§.uploadFromVector(this.§9X§,0,_loc2_ * 6);
         this.§#!!§ = false;
         return true;
      }
      
      private function §^N§(param1:Context3D) : void
      {
         if(!this.§<!R§(param1))
         {
            this.§"-§.uploadFromByteArray(this.§;H§.§7k§,0,0,this.§!!P§ * 4);
            if(this.§<!K§)
            {
               this.§-!^§.uploadFromVector(this.§;H§.§2!+§,0,this.§!!P§ * 4);
            }
            this.§8!F§.uploadFromVector(this.§;H§.§@#§,0,this.§!!P§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§!!P§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§;H§.premultipliedAlpha;
         var _loc5_:Boolean = param3 != 1;
         var _loc6_:String = Boolean(this.§5!%§) ? §&!%§(_loc5_,this.§5!%§.mipMapping,this.§5!%§.repeat,this.§=!i§,this.§<!K§) : §9!h§(_loc5_);
         RenderSupport.§"6§(param1,_loc4_);
         this.§^N§(param1);
         param1.setProgram(Starling.§!!F§.§9!J§(_loc6_));
         param1.setVertexBufferAt(0,this.§8!F§,VertexData.§=!c§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§5!%§ == null || this.§<!K§)
         {
            param1.setVertexBufferAt(2,this.§-!^§,VertexData.§0J§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §[!7§[0] = §[!7§[1] = §[!7§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §[!7§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§[!7§,1);
         }
         if(this.§5!%§)
         {
            param1.setTextureAt(0,this.§5!%§.getBase(param1));
            param1.setVertexBufferAt(1,this.§"-§,VertexData.§ N§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§%!Z§,0,this.§!!P§ * 2);
         if(this.§5!%§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§5!%§ == null || this.§<!K§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§!!P§ = 0;
         this.§<!K§ = false;
         this.§5!%§ = null;
         this.§=!i§ = null;
      }
      
      public function §<!#§(param1:§3x§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§!!P§ + 1 > this.§;H§.§>!B§ / 4)
         {
            this.§>p§();
         }
         if(this.§!!P§ == 0)
         {
            this.§5!%§ = param3;
            this.§=!i§ = param4;
            this.§;H§.setPremultipliedAlpha(Boolean(param3) ? Boolean(param3.premultipliedAlpha) : Boolean(true),false);
         }
         var _loc6_:int = this.§!!P§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§;H§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§<!K§ = true;
         }
         ++this.§!!P§;
      }
      
      public function §&&§(param1:§3x§, param2:Texture, param3:String) : Boolean
      {
         if(this.§5!%§ != null && param2 != null)
         {
            return this.§5!%§.root != param2.root || this.§5!%§.repeat != param2.repeat || this.§=!i§ != param3 || this.§<!K§ != param1.useColor || this.§!!P§ == 8192;
         }
         if(this.§5!%§ == null && param2 == null)
         {
            return false;
         }
         return this.§!!P§ != 0 || this.§<!K§ != param1.useColor;
      }
   }
}
