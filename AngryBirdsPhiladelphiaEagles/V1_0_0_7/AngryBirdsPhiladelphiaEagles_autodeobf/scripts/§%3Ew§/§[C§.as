package §>w§
{
   import §"`§.§#X§;
   import §"`§.Texture;
   import §#!5§.§case §;
   import §+!$§.§ !H§;
   import §06§.AGALMiniAssembler;
   import §4G§.§5T§;
   import §4G§.DisplayObject;
   import §4G§.DisplayObjectContainer;
   import §4G§.§`l§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §[C§
   {
      
      private static var §'!"§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §8o§:int;
      
      private var §;!'§:Texture;
      
      private var §2!6§:String;
      
      private var §=i§:§case §;
      
      private var §!!K§:VertexBuffer3D;
      
      private var §9j§:VertexBuffer3D;
      
      private var §@R§:VertexBuffer3D;
      
      private var §+A§:Vector.<uint>;
      
      private var §%C§:IndexBuffer3D;
      
      private var §<a§:Boolean = false;
      
      private var §9Q§:Boolean = false;
      
      public function §[C§()
      {
         super();
         §9a§();
         this.§=i§ = new §case §(0,true);
         this.§+A§ = new Vector.<uint>(0);
         this.§8o§ = 0;
         this.§#!C§();
      }
      
      public static function § !?§(param1:DisplayObjectContainer, param2:Vector.<§[C§>) : void
      {
         §,E§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §,E§(param1:DisplayObject, param2:Vector.<§[C§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§5T§ = null;
         var _loc13_:§`l§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§[C§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §[C§());
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
               _loc11_.§&O§(_loc10_);
               param3 = §,E§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §5T§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §5T§) as §`l§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§#!%§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §[C§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§34§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §9a§() : void
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
         var _loc1_:§#0§ = §#0§.§#4§;
         if(_loc1_.§<i§(§'b§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§^b§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§^b§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§=Y§(§'b§(_loc6_),_loc2_.§6]§,_loc3_.§6]§);
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
               _loc2_.§^b§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§#X§.NONE,§#X§.§8O§,§#X§.§5w§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §#X§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §#X§.§8O§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§^b§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§=Y§(§ !3§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§6]§,_loc3_.§6]§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §'b§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function § !3§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §#X§.§8O§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §%6§() : int
      {
         return this.§8o§;
      }
      
      public function dispose() : void
      {
         if(this.§!!K§)
         {
            this.§!!K§.dispose();
         }
         if(this.§9j§)
         {
            this.§9j§.dispose();
         }
         if(this.§@R§)
         {
            this.§@R§.dispose();
         }
         if(this.§%C§)
         {
            this.§%C§.dispose();
         }
      }
      
      private function §#!C§() : void
      {
         var _loc1_:int = this.§=i§.§^q§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§=i§.§^q§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§+A§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§+A§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§+A§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§+A§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§+A§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§+A§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§9Q§ = true;
      }
      
      private function §2!§(param1:Context3D) : Boolean
      {
         if(!this.§9Q§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new § !H§();
         }
         if(this.§!!K§)
         {
            this.§!!K§.dispose();
         }
         if(this.§9j§)
         {
            this.§9j§.dispose();
         }
         if(this.§@R§)
         {
            this.§@R§.dispose();
         }
         if(this.§%C§)
         {
            this.§%C§.dispose();
         }
         var _loc2_:int = this.§=i§.§^q§ / 4;
         this.§!!K§ = param1.createVertexBuffer(_loc2_ * 4,§case §.§+'§);
         this.§!!K§.uploadFromByteArray(this.§=i§.§<Z§,0,0,_loc2_ * 4);
         this.§9j§ = param1.createVertexBuffer(_loc2_ * 4,§case §.§5!>§);
         this.§9j§.uploadFromVector(this.§=i§.§]!2§,0,_loc2_ * 4);
         this.§@R§ = param1.createVertexBuffer(_loc2_ * 4,§case §.§2f§);
         this.§@R§.uploadFromVector(this.§=i§.§,!!§,0,_loc2_ * 4);
         this.§%C§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§%C§.uploadFromVector(this.§+A§,0,_loc2_ * 6);
         this.§9Q§ = false;
         return true;
      }
      
      private function §2-§(param1:Context3D) : void
      {
         if(!this.§2!§(param1))
         {
            this.§!!K§.uploadFromByteArray(this.§=i§.§<Z§,0,0,this.§8o§ * 4);
            if(this.§<a§)
            {
               this.§9j§.uploadFromVector(this.§=i§.§]!2§,0,this.§8o§ * 4);
            }
            this.§@R§.uploadFromVector(this.§=i§.§,!!§,0,this.§8o§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§8o§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§=i§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§;!'§ ? § !3§(_loc5_,this.§;!'§.mipMapping,this.§;!'§.repeat,this.§2!6§,this.§<a§) : §'b§(_loc5_);
         §"!,§.§8G§(param1,_loc4_);
         this.§2-§(param1);
         param1.setProgram(§#0§.§#4§.§ x§(_loc6_));
         param1.setVertexBufferAt(0,this.§@R§,§case §.§=N§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§;!'§ == null || this.§<a§)
         {
            param1.setVertexBufferAt(2,this.§9j§,§case §.§6?§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §'!"§[0] = §'!"§[1] = §'!"§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §'!"§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§'!"§,1);
         }
         if(this.§;!'§)
         {
            param1.setTextureAt(0,this.§;!'§.getBase(param1));
            param1.setVertexBufferAt(1,this.§!!K§,§case §.§2V§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§%C§,0,this.§8o§ * 2);
         if(this.§;!'§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§;!'§ == null || this.§<a§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§8o§ = 0;
         this.§<a§ = false;
         this.§;!'§ = null;
         this.§2!6§ = null;
      }
      
      public function §34§(param1:§5T§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§8o§ + 1 > this.§=i§.§^q§ / 4)
         {
            this.§#!C§();
         }
         if(this.§8o§ == 0)
         {
            this.§;!'§ = param3;
            this.§2!6§ = param4;
            this.§=i§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§8o§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§=i§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§<a§ = true;
         }
         ++this.§8o§;
      }
      
      public function §#!%§(param1:§5T§, param2:Texture, param3:String) : Boolean
      {
         if(this.§;!'§ != null && param2 != null)
         {
            return this.§;!'§.root != param2.root || this.§;!'§.repeat != param2.repeat || this.§2!6§ != param3 || this.§<a§ != param1.useColor || this.§8o§ == 8192;
         }
         if(this.§;!'§ == null && param2 == null)
         {
            return false;
         }
         return this.§8o§ != 0 || this.§<a§ != param1.useColor;
      }
   }
}
