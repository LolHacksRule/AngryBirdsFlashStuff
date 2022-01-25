package §+R§
{
   import §!v§.§-!S§;
   import §#!a§.§&S§;
   import §#!a§.Texture;
   import §;t§.§6!K§;
   import §;t§.§=_§;
   import §;t§.DisplayObject;
   import §;t§.DisplayObjectContainer;
   import §?X§.§8A§;
   import §^!L§.§-2§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §6W§
   {
      
      private static var §!!9§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §%W§:int;
      
      private var §6-§:Texture;
      
      private var §7!4§:String;
      
      private var §0&§:§-2§;
      
      private var §8+§:VertexBuffer3D;
      
      private var §3,§:VertexBuffer3D;
      
      private var §3!O§:VertexBuffer3D;
      
      private var §1+§:Vector.<uint>;
      
      private var §!!c§:IndexBuffer3D;
      
      private var §6!C§:Boolean = false;
      
      private var §@+§:Boolean = false;
      
      public function §6W§()
      {
         super();
         §2!!§();
         this.§0&§ = new §-2§(0,true);
         this.§1+§ = new Vector.<uint>(0);
         this.§%W§ = 0;
         this.§>O§();
      }
      
      public static function §#=§(param1:DisplayObjectContainer, param2:Vector.<§6W§>) : void
      {
         §-!2§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §-!2§(param1:DisplayObject, param2:Vector.<§6W§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§6!K§ = null;
         var _loc13_:§=_§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§6W§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §6W§());
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
               _loc11_.§?#§(_loc10_);
               param3 = §-!2§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §6!K§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §6!K§) as §=_§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§1! §(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §6W§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§]!]§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §2!!§() : void
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
         var _loc1_:§0O§ = §0O§.§=&§;
         if(_loc1_.§94§(§3j§(true)))
         {
            return;
         }
         var _loc2_:§-!S§ = new §-!S§();
         var _loc3_:§-!S§ = new §-!S§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§>!U§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§>!U§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§`!_§(§3j§(_loc6_),_loc2_.§3c§,_loc3_.§3c§);
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
               _loc2_.§>!U§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§&S§.NONE,§&S§.§+!$§,§&S§.§#`§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §&S§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §&S§.§+!$§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§>!U§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§`!_§(§[6§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§3c§,_loc3_.§3c§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §3j§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §[6§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §&S§.§+!$§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §,X§() : int
      {
         return this.§%W§;
      }
      
      public function dispose() : void
      {
         if(this.§8+§)
         {
            this.§8+§.dispose();
         }
         if(this.§3,§)
         {
            this.§3,§.dispose();
         }
         if(this.§3!O§)
         {
            this.§3!O§.dispose();
         }
         if(this.§!!c§)
         {
            this.§!!c§.dispose();
         }
      }
      
      private function §>O§() : void
      {
         var _loc1_:int = this.§0&§.§'!3§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§0&§.§'!3§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§1+§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§1+§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§1+§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§1+§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§1+§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§1+§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§@+§ = true;
      }
      
      private function §%Y§(param1:Context3D) : Boolean
      {
         if(!this.§@+§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §8A§();
         }
         if(this.§8+§)
         {
            this.§8+§.dispose();
         }
         if(this.§3,§)
         {
            this.§3,§.dispose();
         }
         if(this.§3!O§)
         {
            this.§3!O§.dispose();
         }
         if(this.§!!c§)
         {
            this.§!!c§.dispose();
         }
         var _loc2_:int = this.§0&§.§'!3§ / 4;
         this.§8+§ = param1.createVertexBuffer(_loc2_ * 4,§-2§.§+!&§);
         this.§8+§.uploadFromByteArray(this.§0&§.§=@§,0,0,_loc2_ * 4);
         this.§3,§ = param1.createVertexBuffer(_loc2_ * 4,§-2§.§4!G§);
         this.§3,§.uploadFromVector(this.§0&§.§!!#§,0,_loc2_ * 4);
         this.§3!O§ = param1.createVertexBuffer(_loc2_ * 4,§-2§.§]!7§);
         this.§3!O§.uploadFromVector(this.§0&§.§#!%§,0,_loc2_ * 4);
         this.§!!c§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§!!c§.uploadFromVector(this.§1+§,0,_loc2_ * 6);
         this.§@+§ = false;
         return true;
      }
      
      private function §>!C§(param1:Context3D) : void
      {
         if(!this.§%Y§(param1))
         {
            this.§8+§.uploadFromByteArray(this.§0&§.§=@§,0,0,this.§%W§ * 4);
            if(this.§6!C§)
            {
               this.§3,§.uploadFromVector(this.§0&§.§!!#§,0,this.§%W§ * 4);
            }
            this.§3!O§.uploadFromVector(this.§0&§.§#!%§,0,this.§%W§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§%W§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§0&§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§6-§ ? §[6§(_loc5_,this.§6-§.mipMapping,this.§6-§.repeat,this.§7!4§,this.§6!C§) : §3j§(_loc5_);
         §4!b§.§<!+§(param1,_loc4_);
         this.§>!C§(param1);
         param1.setProgram(§0O§.§=&§.§8!b§(_loc6_));
         param1.setVertexBufferAt(0,this.§3!O§,§-2§.§"[§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§6-§ == null || this.§6!C§)
         {
            param1.setVertexBufferAt(2,this.§3,§,§-2§.§2b§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §!!9§[0] = §!!9§[1] = §!!9§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §!!9§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§!!9§,1);
         }
         if(this.§6-§)
         {
            param1.setTextureAt(0,this.§6-§.getBase(param1));
            param1.setVertexBufferAt(1,this.§8+§,§-2§.§`!5§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§!!c§,0,this.§%W§ * 2);
         if(this.§6-§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§6-§ == null || this.§6!C§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§%W§ = 0;
         this.§6!C§ = false;
         this.§6-§ = null;
         this.§7!4§ = null;
      }
      
      public function §]!]§(param1:§6!K§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§%W§ + 1 > this.§0&§.§'!3§ / 4)
         {
            this.§>O§();
         }
         if(this.§%W§ == 0)
         {
            this.§6-§ = param3;
            this.§7!4§ = param4;
            this.§0&§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§%W§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§0&§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§6!C§ = true;
         }
         ++this.§%W§;
      }
      
      public function §1! §(param1:§6!K§, param2:Texture, param3:String) : Boolean
      {
         if(this.§6-§ != null && param2 != null)
         {
            return this.§6-§.root != param2.root || this.§6-§.repeat != param2.repeat || this.§7!4§ != param3 || this.§6!C§ != param1.useColor || this.§%W§ == 8192;
         }
         if(this.§6-§ == null && param2 == null)
         {
            return false;
         }
         return this.§%W§ != 0 || this.§6!C§ != param1.useColor;
      }
   }
}
