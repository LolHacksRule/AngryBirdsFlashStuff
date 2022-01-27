package § "-§
{
   import §&"s§.§?g§;
   import §&"s§.Texture;
   import §7"G§.§%!§;
   import §7_§.§2"[§;
   import §<"2§.§'O§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   import §use§.§,!u§;
   import §use§.§-"z§;
   import §use§.DisplayObject;
   import §use§.DisplayObjectContainer;
   
   public class §7"n§
   {
      
      private static var §["E§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §">§:int;
      
      private var §"!`§:Texture;
      
      private var §>!o§:String;
      
      private var §!k§:§%!§;
      
      private var §3"0§:VertexBuffer3D;
      
      private var §7!3§:VertexBuffer3D;
      
      private var §>"a§:VertexBuffer3D;
      
      private var §>a§:Vector.<uint>;
      
      private var §;! §:IndexBuffer3D;
      
      private var §^B§:Boolean = false;
      
      private var §]!7§:Boolean = false;
      
      public function §7"n§()
      {
         super();
         §0"!§();
         this.§!k§ = new §%!§(0,true);
         this.§>a§ = new Vector.<uint>(0);
         this.§">§ = 0;
         this.§'"H§();
      }
      
      public static function §@"E§(param1:DisplayObjectContainer, param2:Vector.<§7"n§>) : void
      {
         §3!@§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §3!@§(param1:DisplayObject, param2:Vector.<§7"n§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§-"z§ = null;
         var _loc13_:§,!u§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§7"n§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §7"n§());
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
            if((param5 *= param1.alpha) > 0)
            {
               _loc6_ = 0;
               while(_loc6_ < _loc9_)
               {
                  _loc11_ = _loc8_.getChildAt(_loc6_);
                  _loc10_.copyFrom(param4);
                  _loc11_.§!!a§(_loc10_);
                  param3 = §3!@§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is §-"z§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §-"z§) as §,!u§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§'"!§(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §7"n§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§,"F§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §0"!§() : void
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
         var _loc1_:§6!R§ = §6!R§.§+!d§;
         if(_loc1_.§?T§(§0"i§(true)))
         {
            return;
         }
         var _loc2_:§'O§ = new §'O§();
         var _loc3_:§'O§ = new §'O§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§]U§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§]U§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§8"n§(§0"i§(_loc6_),_loc2_.§1!r§,_loc3_.§1!r§);
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
               _loc2_.§]U§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§?g§.NONE,§?g§.§["§,§?g§.§-!V§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §?g§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §?g§.§["§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§]U§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§8"n§(§,!1§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§1!r§,_loc3_.§1!r§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §0"i§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §,!1§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §?g§.§["§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §`"k§() : int
      {
         return this.§">§;
      }
      
      public function dispose() : void
      {
         if(this.§3"0§)
         {
            this.§3"0§.dispose();
         }
         if(this.§7!3§)
         {
            this.§7!3§.dispose();
         }
         if(this.§>"a§)
         {
            this.§>"a§.dispose();
         }
         if(this.§;! §)
         {
            this.§;! §.dispose();
         }
      }
      
      private function §'"H§() : void
      {
         var _loc1_:int = this.§!k§.§3"L§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§!k§.§3"L§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§>a§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§>a§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§>a§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§>a§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§>a§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§>a§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§]!7§ = true;
      }
      
      private function §]?§(param1:Context3D) : Boolean
      {
         if(!this.§]!7§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §2"[§();
         }
         if(this.§3"0§)
         {
            this.§3"0§.dispose();
         }
         if(this.§7!3§)
         {
            this.§7!3§.dispose();
         }
         if(this.§>"a§)
         {
            this.§>"a§.dispose();
         }
         if(this.§;! §)
         {
            this.§;! §.dispose();
         }
         var _loc2_:int = this.§!k§.§3"L§ / 4;
         this.§3"0§ = param1.createVertexBuffer(_loc2_ * 4,§%!§.§1"D§);
         this.§3"0§.uploadFromByteArray(this.§!k§.§9!v§,0,0,_loc2_ * 4);
         this.§7!3§ = param1.createVertexBuffer(_loc2_ * 4,§%!§.§6"4§);
         this.§7!3§.uploadFromVector(this.§!k§.§4#!§,0,_loc2_ * 4);
         this.§>"a§ = param1.createVertexBuffer(_loc2_ * 4,§%!§.§&"j§);
         this.§>"a§.uploadFromVector(this.§!k§.§1"2§,0,_loc2_ * 4);
         this.§;! § = param1.createIndexBuffer(_loc2_ * 6);
         this.§;! §.uploadFromVector(this.§>a§,0,_loc2_ * 6);
         this.§]!7§ = false;
         return true;
      }
      
      private function §="q§(param1:Context3D) : void
      {
         if(!this.§]?§(param1))
         {
            this.§3"0§.uploadFromByteArray(this.§!k§.§9!v§,0,0,this.§">§ * 4);
            if(this.§^B§)
            {
               this.§7!3§.uploadFromVector(this.§!k§.§4#!§,0,this.§">§ * 4);
            }
            this.§>"a§.uploadFromVector(this.§!k§.§1"2§,0,this.§">§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§">§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§!k§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§"!`§ ? §,!1§(_loc5_,this.§"!`§.mipMapping,this.§"!`§.repeat,this.§>!o§,this.§^B§) : §0"i§(_loc5_);
         §"!_§.§3g§(param1,_loc4_);
         this.§="q§(param1);
         param1.setProgram(§6!R§.§+!d§.§^"V§(_loc6_));
         param1.setVertexBufferAt(0,this.§>"a§,§%!§.§<"m§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§"!`§ == null || this.§^B§)
         {
            param1.setVertexBufferAt(2,this.§7!3§,§%!§.§ Z§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §["E§[0] = §["E§[1] = §["E§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §["E§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§["E§,1);
         }
         if(this.§"!`§)
         {
            param1.setTextureAt(0,this.§"!`§.getBase(param1));
            param1.setVertexBufferAt(1,this.§3"0§,§%!§.§5!y§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§;! §,0,this.§">§ * 2);
         if(this.§"!`§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§"!`§ == null || this.§^B§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§">§ = 0;
         this.§^B§ = false;
         this.§"!`§ = null;
         this.§>!o§ = null;
      }
      
      public function §,"F§(param1:§-"z§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§">§ + 1 > this.§!k§.§3"L§ / 4)
         {
            this.§'"H§();
         }
         if(this.§">§ == 0)
         {
            this.§"!`§ = param3;
            this.§>!o§ = param4;
            this.§!k§.§2!&§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§^B§ = true;
            }
         }
         var _loc6_:int = this.§">§ * 4;
         param1.copyVertexDataTo(this.§!k§,_loc6_,param2,param5);
         ++this.§">§;
      }
      
      public function §'"!§(param1:§-"z§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§"!`§ != null && param2 != null)
         {
            return this.§"!`§.root != param2.root || this.§"!`§.repeat != param2.repeat || this.§>!o§ != param3 || this.§^B§ != param1.useColor || this.§">§ == 8192;
         }
         if(this.§"!`§ == null && param2 == null)
         {
            return false;
         }
         return this.§">§ != 0 || this.§^B§ != (param1.useColor || param4 != 1);
      }
   }
}
