package §"4§
{
   import §%I§.§-u§;
   import §%W§.§ true§;
   import §&!5§.§'!$§;
   import §&!5§.§2G§;
   import §&!5§.DisplayObject;
   import §&!5§.DisplayObjectContainer;
   import §]@§.§ R§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   import §switch§.Texture;
   import §switch§.§[&§;
   
   public class § !T§
   {
      
      private static var §1l§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §<n§:int;
      
      private var §+!3§:Texture;
      
      private var §`!+§:String;
      
      private var § !,§:§ true§;
      
      private var §;!B§:VertexBuffer3D;
      
      private var §^E§:VertexBuffer3D;
      
      private var §;!D§:VertexBuffer3D;
      
      private var §-O§:Vector.<uint>;
      
      private var § b§:IndexBuffer3D;
      
      private var §[k§:Boolean = false;
      
      private var §2U§:Boolean = false;
      
      public function § !T§()
      {
         super();
         §5+§();
         this.§ !,§ = new § true§(0,true);
         this.§-O§ = new Vector.<uint>(0);
         this.§<n§ = 0;
         this.§%c§();
      }
      
      public static function §[!G§(param1:DisplayObjectContainer, param2:Vector.<§ !T§>) : void
      {
         §^l§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §^l§(param1:DisplayObject, param2:Vector.<§ !T§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§2G§ = null;
         var _loc13_:§'!$§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§ !T§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new § !T§());
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
               _loc11_.§-!E§(_loc10_);
               param3 = §^l§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §2G§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §2G§) as §'!$§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§-!]§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new § !T§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§'a§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §5+§() : void
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
         var _loc1_:§<h§ = §<h§.§%!]§;
         if(_loc1_.§4!3§(§?Y§(true)))
         {
            return;
         }
         var _loc2_:§ R§ = new § R§();
         var _loc3_:§ R§ = new § R§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§1!L§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§1!L§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§%k§(§?Y§(_loc6_),_loc2_.§3R§,_loc3_.§3R§);
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
               _loc2_.§1!L§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§[&§.NONE,§[&§.§47§,§[&§.native];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §[&§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §[&§.§47§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§1!L§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§%k§(§%![§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§3R§,_loc3_.§3R§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §?Y§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §%![§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §[&§.§47§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §^W§() : int
      {
         return this.§<n§;
      }
      
      public function dispose() : void
      {
         if(this.§;!B§)
         {
            this.§;!B§.dispose();
         }
         if(this.§^E§)
         {
            this.§^E§.dispose();
         }
         if(this.§;!D§)
         {
            this.§;!D§.dispose();
         }
         if(this.§ b§)
         {
            this.§ b§.dispose();
         }
      }
      
      private function §%c§() : void
      {
         var _loc1_:int = this.§ !,§.§1o§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§ !,§.§1o§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§-O§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§-O§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§-O§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§-O§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§-O§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§-O§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§2U§ = true;
      }
      
      private function §"!$§(param1:Context3D) : Boolean
      {
         if(!this.§2U§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §-u§();
         }
         if(this.§;!B§)
         {
            this.§;!B§.dispose();
         }
         if(this.§^E§)
         {
            this.§^E§.dispose();
         }
         if(this.§;!D§)
         {
            this.§;!D§.dispose();
         }
         if(this.§ b§)
         {
            this.§ b§.dispose();
         }
         var _loc2_:int = this.§ !,§.§1o§ / 4;
         this.§;!B§ = param1.createVertexBuffer(_loc2_ * 4,§ true§.§0!Z§);
         this.§;!B§.uploadFromByteArray(this.§ !,§.§ get§,0,0,_loc2_ * 4);
         this.§^E§ = param1.createVertexBuffer(_loc2_ * 4,§ true§.§,V§);
         this.§^E§.uploadFromVector(this.§ !,§.§]!^§,0,_loc2_ * 4);
         this.§;!D§ = param1.createVertexBuffer(_loc2_ * 4,§ true§.§+l§);
         this.§;!D§.uploadFromVector(this.§ !,§.§;'§,0,_loc2_ * 4);
         this.§ b§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§ b§.uploadFromVector(this.§-O§,0,_loc2_ * 6);
         this.§2U§ = false;
         return true;
      }
      
      private function §!+§(param1:Context3D) : void
      {
         if(!this.§"!$§(param1))
         {
            this.§;!B§.uploadFromByteArray(this.§ !,§.§ get§,0,0,this.§<n§ * 4);
            if(this.§[k§)
            {
               this.§^E§.uploadFromVector(this.§ !,§.§]!^§,0,this.§<n§ * 4);
            }
            this.§;!D§.uploadFromVector(this.§ !,§.§;'§,0,this.§<n§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§<n§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§ !,§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§+!3§ ? §%![§(_loc5_,this.§+!3§.mipMapping,this.§+!3§.repeat,this.§`!+§,this.§[k§) : §?Y§(_loc5_);
         §+s§.§`?§(param1,_loc4_);
         this.§!+§(param1);
         param1.setProgram(§<h§.§%!]§.§7f§(_loc6_));
         param1.setVertexBufferAt(0,this.§;!D§,§ true§.§3!E§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§+!3§ == null || this.§[k§)
         {
            param1.setVertexBufferAt(2,this.§^E§,§ true§.§2!_§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §1l§[0] = §1l§[1] = §1l§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §1l§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§1l§,1);
         }
         if(this.§+!3§)
         {
            param1.setTextureAt(0,this.§+!3§.getBase(param1));
            param1.setVertexBufferAt(1,this.§;!B§,§ true§.§>!3§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§ b§,0,this.§<n§ * 2);
         if(this.§+!3§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§+!3§ == null || this.§[k§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§<n§ = 0;
         this.§[k§ = false;
         this.§+!3§ = null;
         this.§`!+§ = null;
      }
      
      public function §'a§(param1:§2G§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§<n§ + 1 > this.§ !,§.§1o§ / 4)
         {
            this.§%c§();
         }
         if(this.§<n§ == 0)
         {
            this.§+!3§ = param3;
            this.§`!+§ = param4;
            this.§ !,§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§<n§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§ !,§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§[k§ = true;
         }
         ++this.§<n§;
      }
      
      public function §-!]§(param1:§2G§, param2:Texture, param3:String) : Boolean
      {
         if(this.§+!3§ != null && param2 != null)
         {
            return this.§+!3§.root != param2.root || this.§+!3§.repeat != param2.repeat || this.§`!+§ != param3 || this.§[k§ != param1.useColor || this.§<n§ == 8192;
         }
         if(this.§+!3§ == null && param2 == null)
         {
            return false;
         }
         return this.§<n§ != 0 || this.§[k§ != param1.useColor;
      }
   }
}
