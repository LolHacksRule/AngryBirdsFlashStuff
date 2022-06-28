package §"$§
{
   import §'_§.§'h§;
   import §'_§.Texture;
   import §1!&§.§!!9§;
   import §1!&§.§&p§;
   import §1!&§.DisplayObject;
   import §1!&§.DisplayObjectContainer;
   import §8N§.AGALMiniAssembler;
   import §@%§.§-a§;
   import §@2§.VertexData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class QuadBatch
   {
      
      private static var §=!2§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §],§:int;
      
      private var §[G§:Texture;
      
      private var §=T§:String;
      
      private var §%?§:VertexData;
      
      private var §6!2§:VertexBuffer3D;
      
      private var §4!i§:VertexBuffer3D;
      
      private var §74§:VertexBuffer3D;
      
      private var §'!F§:Vector.<uint>;
      
      private var §`!K§:IndexBuffer3D;
      
      private var §!y§:Boolean = false;
      
      private var §<+§:Boolean = false;
      
      public function QuadBatch()
      {
         super();
         §9R§();
         this.§%?§ = new VertexData(0,true);
         this.§'!F§ = new Vector.<uint>(0);
         this.§],§ = 0;
         this.§#!;§();
      }
      
      public static function §#U§(param1:DisplayObjectContainer, param2:Vector.<QuadBatch>) : void
      {
         §"u§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §"u§(param1:DisplayObject, param2:Vector.<QuadBatch>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§!!9§ = null;
         var _loc13_:§&p§ = null;
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
               _loc11_.§+C§(_loc10_);
               param3 = §"u§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §!!9§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc12_ = param1 as §!!9§;
            _loc13_ = _loc12_ as §&p§;
            _loc14_ = Boolean(_loc13_) ? _loc13_.texture : null;
            _loc15_ = Boolean(_loc13_) ? _loc13_.smoothing : null;
            _loc16_ = param2[param3];
            if(_loc16_.§!#§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new QuadBatch());
               }
               _loc16_ = param2[param3];
               _loc16_.reset();
            }
            _loc16_.§^!K§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §9R§() : void
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
         var _loc1_:Starling = Starling.§'!A§;
         if(_loc1_.§@!Q§(§;o§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§"!T§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§"!T§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§8V§(§;o§(_loc6_),_loc2_.§default§,_loc3_.§default§);
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
               _loc2_.§"!T§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§'h§.NONE,§'h§.§?!4§,§'h§.§^`§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §'h§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §'h§.§?!4§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§"!T§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§8V§(§8<§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§default§,_loc3_.§default§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §;o§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §8<§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §'h§.§?!4§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §5!#§() : int
      {
         return this.§],§;
      }
      
      public function dispose() : void
      {
         if(this.§6!2§)
         {
            this.§6!2§.dispose();
         }
         if(this.§4!i§)
         {
            this.§4!i§.dispose();
         }
         if(this.§74§)
         {
            this.§74§.dispose();
         }
         if(this.§`!K§)
         {
            this.§`!K§.dispose();
         }
      }
      
      private function §#!;§() : void
      {
         var _loc1_:int = this.§%?§.§]!;§ / 4;
         var _loc2_:int = _loc1_ == 0 ? int(16) : int(_loc1_ * 2);
         this.§%?§.§]!;§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§'!F§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§'!F§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§'!F§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§'!F§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§'!F§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§'!F§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§<+§ = true;
      }
      
      private function §=![§(param1:Context3D) : Boolean
      {
         if(!this.§<+§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §-a§();
         }
         if(this.§6!2§)
         {
            this.§6!2§.dispose();
         }
         if(this.§4!i§)
         {
            this.§4!i§.dispose();
         }
         if(this.§74§)
         {
            this.§74§.dispose();
         }
         if(this.§`!K§)
         {
            this.§`!K§.dispose();
         }
         var _loc2_:int = this.§%?§.§]!;§ / 4;
         this.§6!2§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§'M§);
         this.§6!2§.uploadFromByteArray(this.§%?§.§%0§,0,0,_loc2_ * 4);
         this.§4!i§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§6`§);
         this.§4!i§.uploadFromVector(this.§%?§.§&+§,0,_loc2_ * 4);
         this.§74§ = param1.createVertexBuffer(_loc2_ * 4,VertexData.§?F§);
         this.§74§.uploadFromVector(this.§%?§.§7!a§,0,_loc2_ * 4);
         this.§`!K§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§`!K§.uploadFromVector(this.§'!F§,0,_loc2_ * 6);
         this.§<+§ = false;
         return true;
      }
      
      private function §;!S§(param1:Context3D) : void
      {
         if(!this.§=![§(param1))
         {
            this.§6!2§.uploadFromByteArray(this.§%?§.§%0§,0,0,this.§],§ * 4);
            if(this.§!y§)
            {
               this.§4!i§.uploadFromVector(this.§%?§.§&+§,0,this.§],§ * 4);
            }
            this.§74§.uploadFromVector(this.§%?§.§7!a§,0,this.§],§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§],§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§%?§.premultipliedAlpha;
         var _loc5_:Boolean = param3 != 1;
         var _loc6_:String = Boolean(this.§[G§) ? §8<§(_loc5_,this.§[G§.mipMapping,this.§[G§.repeat,this.§=T§,this.§!y§) : §;o§(_loc5_);
         RenderSupport.§[!]§(param1,_loc4_);
         this.§;!S§(param1);
         param1.setProgram(Starling.§'!A§.§3t§(_loc6_));
         param1.setVertexBufferAt(0,this.§74§,VertexData.§`[§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§[G§ == null || this.§!y§)
         {
            param1.setVertexBufferAt(2,this.§4!i§,VertexData.§]!C§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §=!2§[0] = §=!2§[1] = §=!2§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §=!2§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§=!2§,1);
         }
         if(this.§[G§)
         {
            param1.setTextureAt(0,this.§[G§.getBase(param1));
            param1.setVertexBufferAt(1,this.§6!2§,VertexData.§[^§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§`!K§,0,this.§],§ * 2);
         if(this.§[G§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§[G§ == null || this.§!y§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§],§ = 0;
         this.§!y§ = false;
         this.§[G§ = null;
         this.§=T§ = null;
      }
      
      public function §^!K§(param1:§!!9§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§],§ + 1 > this.§%?§.§]!;§ / 4)
         {
            this.§#!;§();
         }
         if(this.§],§ == 0)
         {
            this.§[G§ = param3;
            this.§=T§ = param4;
            this.§%?§.setPremultipliedAlpha(Boolean(param3) ? Boolean(param3.premultipliedAlpha) : Boolean(true),false);
         }
         var _loc6_:int = this.§],§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§%?§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§!y§ = true;
         }
         ++this.§],§;
      }
      
      public function §!#§(param1:§!!9§, param2:Texture, param3:String) : Boolean
      {
         if(this.§[G§ != null && param2 != null)
         {
            return this.§[G§.root != param2.root || this.§[G§.repeat != param2.repeat || this.§=T§ != param3 || this.§!y§ != param1.useColor || this.§],§ == 8192;
         }
         if(this.§[G§ == null && param2 == null)
         {
            return false;
         }
         return this.§],§ != 0 || this.§!y§ != param1.useColor;
      }
   }
}
