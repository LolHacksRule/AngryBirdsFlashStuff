package §7!>§
{
   import §#!,§.§0!b§;
   import §#!,§.§6!Y§;
   import §#!,§.DisplayObject;
   import §#!,§.DisplayObjectContainer;
   import §'7§.VertexData;
   import §+8§.§<!a§;
   import §6!J§.§&!A§;
   import §6!J§.Texture;
   import §<O§.AGALMiniAssembler;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class QuadBatch
   {
      
      private static var §`!e§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §>!W§:int;
      
      private var §^![§:Texture;
      
      private var §=!=§:String;
      
      private var §7!$§:VertexData;
      
      private var §0![§:VertexBuffer3D;
      
      private var §^!K§:VertexBuffer3D;
      
      private var §&-§:VertexBuffer3D;
      
      private var §'Y§:Vector.<uint>;
      
      private var §'d§:IndexBuffer3D;
      
      private var §2!0§:Boolean = false;
      
      private var §]C§:Boolean = false;
      
      public function QuadBatch()
      {
         super();
         §5&§();
         this.§7!$§ = new VertexData(0,true);
         this.§'Y§ = new Vector.<uint>(0);
         this.§>!W§ = 0;
         this.§3T§();
      }
      
      public static function §,!$§(param1:DisplayObjectContainer, param2:Vector.<QuadBatch>) : void
      {
         §0l§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §0l§(param1:DisplayObject, param2:Vector.<QuadBatch>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§6!Y§ = null;
         var _loc13_:§0!b§ = null;
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
               _loc11_.§#!9§(_loc10_);
               param3 = §0l§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §6!Y§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc12_ = param1 as §6!Y§;
            _loc13_ = _loc12_ as §0!b§;
            _loc14_ = Boolean(_loc13_) ? _loc13_.texture : null;
            _loc15_ = Boolean(_loc13_) ? _loc13_.smoothing : null;
            _loc16_ = param2[param3];
            if(_loc16_.§>!>§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new QuadBatch());
               }
               _loc16_ = param2[param3];
               _loc16_.reset();
            }
            _loc16_.§8Q§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §5&§() : void
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
         var _loc1_:Starling = Starling.§7!+§;
         if(_loc1_.§ !L§(§"h§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§9o§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§9o§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§&Q§(§"h§(_loc6_),_loc2_.§=!D§,_loc3_.§=!D§);
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
               _loc2_.§9o§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§&!A§.NONE,§&!A§.§^Z§,§&!A§.§?k§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §&!A§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §&!A§.§^Z§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§9o§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§&Q§(§9%§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§=!D§,_loc3_.§=!D§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §"h§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §9%§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §&!A§.§^Z§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §'-§() : int
      {
         return this.§>!W§;
      }
      
      public function dispose() : void
      {
         if(this.§0![§)
         {
            this.§0![§.dispose();
         }
         if(this.§^!K§)
         {
            this.§^!K§.dispose();
         }
         if(this.§&-§)
         {
            this.§&-§.dispose();
         }
         if(this.§'d§)
         {
            this.§'d§.dispose();
         }
      }
      
      private function §3T§() : void
      {
         var _loc1_:int = this.§7!$§.§ !Z§ / 4;
         var _loc2_:int = _loc1_ == 0 ? int(16) : int(_loc1_ * 2);
         this.§7!$§.§ !Z§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§'Y§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§'Y§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§'Y§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§'Y§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§'Y§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§'Y§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§]C§ = true;
      }
      
      private function §1!_§(param1:Context3D) : Boolean
      {
         if(!this.§]C§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §<!a§();
         }
         if(this.§0![§)
         {
            this.§0![§.dispose();
         }
         if(this.§^!K§)
         {
            this.§^!K§.dispose();
         }
         if(this.§&-§)
         {
            this.§&-§.dispose();
         }
         if(this.§'d§)
         {
            this.§'d§.dispose();
         }
         var _loc2_:int = this.§7!$§.§ !Z§ / 4;
         this.§0![§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§4d§);
         this.§0![§.uploadFromByteArray(this.§7!$§.§%!T§,0,0,_loc2_ * 4);
         this.§^!K§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§@!e§);
         this.§^!K§.uploadFromVector(this.§7!$§.§]y§,0,_loc2_ * 4);
         this.§&-§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§!<§);
         this.§&-§.uploadFromVector(this.§7!$§.§&c§,0,_loc2_ * 4);
         this.§'d§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§'d§.uploadFromVector(this.§'Y§,0,_loc2_ * 6);
         this.§]C§ = false;
         return true;
      }
      
      private function §&V§(param1:Context3D) : void
      {
         if(!this.§1!_§(param1))
         {
            this.§0![§.uploadFromByteArray(this.§7!$§.§%!T§,0,0,this.§>!W§ * 4);
            if(this.§2!0§)
            {
               this.§^!K§.uploadFromVector(this.§7!$§.§]y§,0,this.§>!W§ * 4);
            }
            this.§&-§.uploadFromVector(this.§7!$§.§&c§,0,this.§>!W§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§>!W§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§7!$§.premultipliedAlpha;
         var _loc5_:Boolean = param3 != 1;
         var _loc6_:String = Boolean(this.§^![§) ? §9%§(_loc5_,this.§^![§.mipMapping,this.§^![§.repeat,this.§=!=§,this.§2!0§) : §"h§(_loc5_);
         RenderSupport.§1"§(param1,_loc4_);
         this.§&V§(param1);
         param1.setProgram(Starling.§7!+§.§#+§(_loc6_));
         param1.setVertexBufferAt(0,this.§&-§,VertexData.§@8§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§^![§ == null || this.§2!0§)
         {
            param1.setVertexBufferAt(2,this.§^!K§,VertexData.§8!Y§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §`!e§[0] = §`!e§[1] = §`!e§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §`!e§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§`!e§,1);
         }
         if(this.§^![§)
         {
            param1.setTextureAt(0,this.§^![§.getBase(param1));
            param1.setVertexBufferAt(1,this.§0![§,VertexData.§+!h§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§'d§,0,this.§>!W§ * 2);
         if(this.§^![§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§^![§ == null || this.§2!0§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§>!W§ = 0;
         this.§2!0§ = false;
         this.§^![§ = null;
         this.§=!=§ = null;
      }
      
      public function §8Q§(param1:§6!Y§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§>!W§ + 1 > this.§7!$§.§ !Z§ / 4)
         {
            this.§3T§();
         }
         if(this.§>!W§ == 0)
         {
            this.§^![§ = param3;
            this.§=!=§ = param4;
            this.§7!$§.setPremultipliedAlpha(Boolean(param3) ? Boolean(param3.premultipliedAlpha) : Boolean(true),false);
         }
         var _loc6_:int = this.§>!W§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§7!$§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§2!0§ = true;
         }
         ++this.§>!W§;
      }
      
      public function §>!>§(param1:§6!Y§, param2:Texture, param3:String) : Boolean
      {
         if(this.§^![§ != null && param2 != null)
         {
            return this.§^![§.root != param2.root || this.§^![§.repeat != param2.repeat || this.§=!=§ != param3 || this.§2!0§ != param1.useColor || this.§>!W§ == 8192;
         }
         if(this.§^![§ == null && param2 == null)
         {
            return false;
         }
         return this.§>!W§ != 0 || this.§2!0§ != param1.useColor;
      }
   }
}
