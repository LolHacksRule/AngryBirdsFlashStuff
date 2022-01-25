package §each §
{
   import §&!9§.§,l§;
   import §&!9§.Texture;
   import §'!>§.§3K§;
   import §0@§.§"%§;
   import §0@§.§1]§;
   import §0@§.DisplayObject;
   import §0@§.DisplayObjectContainer;
   import §;1§.§ !§;
   import §[! §.§'b§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §<F§
   {
      
      private static var §+!I§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §&q§:int;
      
      private var §<n§:Texture;
      
      private var §?!7§:String;
      
      private var §!e§:§3K§;
      
      private var § L§:VertexBuffer3D;
      
      private var §-!&§:VertexBuffer3D;
      
      private var §"^§:VertexBuffer3D;
      
      private var §]!H§:Vector.<uint>;
      
      private var §0N§:IndexBuffer3D;
      
      private var §&4§:Boolean = false;
      
      private var §^!m§:Boolean = false;
      
      public function §<F§()
      {
         super();
         §?!^§();
         this.§!e§ = new §3K§(0,true);
         this.§]!H§ = new Vector.<uint>(0);
         this.§&q§ = 0;
         this.§9%§();
      }
      
      public static function §#]§(param1:DisplayObjectContainer, param2:Vector.<§<F§>) : void
      {
         §>S§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §>S§(param1:DisplayObject, param2:Vector.<§<F§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§"%§ = null;
         var _loc13_:§1]§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§<F§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §<F§());
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
               _loc11_.§?!"§(_loc10_);
               param3 = §>S§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §"%§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §"%§) as §1]§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§`Y§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §<F§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§'!9§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §?!^§() : void
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
         var _loc1_:§'!3§ = §'!3§.§1!n§;
         if(_loc1_.§=u§(§'!P§(true)))
         {
            return;
         }
         var _loc2_:§ !§ = new § !§();
         var _loc3_:§ !§ = new § !§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§]!G§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§]!G§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§-!'§(§'!P§(_loc6_),_loc2_.§9!l§,_loc3_.§9!l§);
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
               _loc2_.§]!G§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§,l§.NONE,§,l§.§"!O§,§,l§.§-!_§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §,l§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §,l§.§"!O§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§]!G§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§-!'§(§#z§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§9!l§,_loc3_.§9!l§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §'!P§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §#z§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §,l§.§"!O§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §2!#§() : int
      {
         return this.§&q§;
      }
      
      public function dispose() : void
      {
         if(this.§ L§)
         {
            this.§ L§.dispose();
         }
         if(this.§-!&§)
         {
            this.§-!&§.dispose();
         }
         if(this.§"^§)
         {
            this.§"^§.dispose();
         }
         if(this.§0N§)
         {
            this.§0N§.dispose();
         }
      }
      
      private function §9%§() : void
      {
         var _loc1_:int = this.§!e§.§1q§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§!e§.§1q§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§]!H§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§]!H§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§]!H§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§]!H§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§]!H§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§]!H§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§^!m§ = true;
      }
      
      private function §=k§(param1:Context3D) : Boolean
      {
         if(!this.§^!m§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §'b§();
         }
         if(this.§ L§)
         {
            this.§ L§.dispose();
         }
         if(this.§-!&§)
         {
            this.§-!&§.dispose();
         }
         if(this.§"^§)
         {
            this.§"^§.dispose();
         }
         if(this.§0N§)
         {
            this.§0N§.dispose();
         }
         var _loc2_:int = this.§!e§.§1q§ / 4;
         this.§ L§ = param1.createVertexBuffer(_loc2_ * 4,§3K§.§#Q§);
         this.§ L§.uploadFromByteArray(this.§!e§.§5J§,0,0,_loc2_ * 4);
         this.§-!&§ = param1.createVertexBuffer(_loc2_ * 4,§3K§.§ null§);
         this.§-!&§.uploadFromVector(this.§!e§.§%!"§,0,_loc2_ * 4);
         this.§"^§ = param1.createVertexBuffer(_loc2_ * 4,§3K§.§+p§);
         this.§"^§.uploadFromVector(this.§!e§.§8I§,0,_loc2_ * 4);
         this.§0N§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§0N§.uploadFromVector(this.§]!H§,0,_loc2_ * 6);
         this.§^!m§ = false;
         return true;
      }
      
      private function §>,§(param1:Context3D) : void
      {
         if(!this.§=k§(param1))
         {
            this.§ L§.uploadFromByteArray(this.§!e§.§5J§,0,0,this.§&q§ * 4);
            if(this.§&4§)
            {
               this.§-!&§.uploadFromVector(this.§!e§.§%!"§,0,this.§&q§ * 4);
            }
            this.§"^§.uploadFromVector(this.§!e§.§8I§,0,this.§&q§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§&q§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§!e§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§<n§ ? §#z§(_loc5_,this.§<n§.mipMapping,this.§<n§.repeat,this.§?!7§,this.§&4§) : §'!P§(_loc5_);
         § if§.§^!d§(param1,_loc4_);
         this.§>,§(param1);
         param1.setProgram(§'!3§.§1!n§.§try §(_loc6_));
         param1.setVertexBufferAt(0,this.§"^§,§3K§.§[@§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§<n§ == null || this.§&4§)
         {
            param1.setVertexBufferAt(2,this.§-!&§,§3K§.§@!J§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §+!I§[0] = §+!I§[1] = §+!I§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §+!I§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§+!I§,1);
         }
         if(this.§<n§)
         {
            param1.setTextureAt(0,this.§<n§.getBase(param1));
            param1.setVertexBufferAt(1,this.§ L§,§3K§.§]!O§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§0N§,0,this.§&q§ * 2);
         if(this.§<n§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§<n§ == null || this.§&4§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§&q§ = 0;
         this.§&4§ = false;
         this.§<n§ = null;
         this.§?!7§ = null;
      }
      
      public function §'!9§(param1:§"%§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§&q§ + 1 > this.§!e§.§1q§ / 4)
         {
            this.§9%§();
         }
         if(this.§&q§ == 0)
         {
            this.§<n§ = param3;
            this.§?!7§ = param4;
            this.§!e§.§#!;§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§&q§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§!e§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§&4§ = true;
         }
         ++this.§&q§;
      }
      
      public function §`Y§(param1:§"%§, param2:Texture, param3:String) : Boolean
      {
         if(this.§<n§ != null && param2 != null)
         {
            return this.§<n§.root != param2.root || this.§<n§.repeat != param2.repeat || this.§?!7§ != param3 || this.§&4§ != param1.useColor || this.§&q§ == 8192;
         }
         if(this.§<n§ == null && param2 == null)
         {
            return false;
         }
         return this.§&q§ != 0 || this.§&4§ != param1.useColor;
      }
   }
}
