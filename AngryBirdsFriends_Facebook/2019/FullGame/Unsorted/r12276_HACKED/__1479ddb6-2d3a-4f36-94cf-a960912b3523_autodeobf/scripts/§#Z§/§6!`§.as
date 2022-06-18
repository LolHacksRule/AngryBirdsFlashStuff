package §#Z§
{
   import § G§.AGALMiniAssembler;
   import §""4§.Texture;
   import §&§.§""F§;
   import §&§.Starling;
   import §0"D§.§ #r§;
   import §0"D§.§,4§;
   import §8!M§.§07§;
   import §8!M§.§^"D§;
   import §8"'§.§1#O§;
   import §<!S§.Event;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   
   public class §6!`§ extends DisplayObject
   {
      
      private static const §9"k§:String = "QB_q";
      
      public static const §"m§:int = 0;
      
      public static const §3"6§:int = 1;
      
      public static const §=o§:int = 2;
      
      private static var §5y§:Matrix = new Matrix();
      
      private static var §>"o§:Vector.<Number> = new <Number>[1,1,1,1];
      
      private static var §!"n§:Matrix3D = new Matrix3D();
      
      private static var §-#T§:Dictionary = new Dictionary();
       
      
      private var §6!X§:int;
      
      private var §%!&§:Boolean;
      
      private var §try§:Boolean;
      
      private var §+!E§:Texture;
      
      private var §4"U§:int;
      
      private var §3!-§:§,4§;
      
      private var §^!3§:VertexBuffer3D;
      
      private var §,"u§:VertexBuffer3D;
      
      private var §`!"§:VertexBuffer3D;
      
      private var §@"K§:Vector.<uint>;
      
      private var §6#`§:IndexBuffer3D;
      
      private var §[!G§:Boolean = false;
      
      public function §6!`§()
      {
         super();
         this.§3!-§ = new §,4§(0,true);
         this.§@"K§ = new Vector.<uint>(0);
         this.§6!X§ = 0;
         this.§try§ = false;
         this.§%!&§ = false;
         Starling.§%!q§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§^#e§,false,0,true);
      }
      
      public static function §0"9§(param1:DisplayObject, param2:Vector.<§6!`§>) : void
      {
         §5#d§(param1,param2,-1,new Matrix());
      }
      
      private static function §5#d§(param1:DisplayObject, param2:Vector.<§6!`§>, param3:int, param4:Matrix, param5:Number = 1.0, param6:int = -1, param7:Boolean = false) : int
      {
         var _loc8_:int = 0;
         var _loc9_:§6!`§ = null;
         var _loc16_:int = 0;
         var _loc17_:Matrix = null;
         var _loc18_:DisplayObject = null;
         var _loc20_:int = 0;
         var _loc21_:Texture = null;
         var _loc22_:int = 0;
         var _loc23_:Boolean = false;
         var _loc24_:int = 0;
         var _loc25_:Image = null;
         var _loc10_:Boolean = false;
         var _loc11_:Number = param1.alpha;
         var _loc12_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         var _loc13_:§6J§ = param1 as §6J§;
         var _loc14_:§6!`§ = param1 as §6!`§;
         var _loc15_:§07§ = param1.filter;
         if(param3 == -1)
         {
            _loc10_ = true;
            param3 = 0;
            _loc11_ = 1;
            param6 = param1.blendMode;
            if(param2.length == 0)
            {
               param2.push(new §6!`§());
            }
            else
            {
               param2[0].reset();
            }
         }
         if(_loc15_ && !param7)
         {
            if(_loc15_.§<"$§ == §^"D§.§>"1§)
            {
               param3 = §5#d§(param1,param2,param3,param4,param5,param6,true);
            }
            param3 = §5#d§(_loc15_.§0"9§(param1),param2,param3,param4,param5,param6);
            if(_loc15_.§<"$§ == §^"D§.§>"A§)
            {
               param3 = §5#d§(param1,param2,param3,param4,param5,param6,true);
            }
         }
         else if(_loc12_)
         {
            _loc16_ = _loc12_.numChildren;
            _loc17_ = new Matrix();
            _loc8_ = 0;
            while(_loc8_ < _loc16_)
            {
               if((_loc18_ = _loc12_.getChildAt(_loc8_)).alpha != 0 && _loc18_.visible && _loc18_.scaleX != 0 && _loc18_.scaleY != 0)
               {
                  _loc20_ = _loc18_.blendMode == §1$§.AUTO ? int(param6) : int(_loc18_.blendMode);
                  _loc17_.copyFrom(param4);
                  §""F§.§#!%§(_loc17_,_loc18_);
                  param3 = §5#d§(_loc18_,param2,param3,_loc17_,param5 * _loc11_,_loc20_);
               }
               _loc8_++;
            }
         }
         else
         {
            if(!(_loc13_ || _loc14_))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            if(_loc13_)
            {
               _loc21_ = !!(_loc25_ = _loc13_ as Image) ? _loc25_.texture : null;
               _loc22_ = !!_loc25_ ? int(_loc25_.smoothing) : int(Image.§3"6§);
               _loc23_ = _loc13_.tinted;
               _loc24_ = _loc13_.§"#7§;
            }
            else
            {
               _loc21_ = _loc14_.§+!E§;
               _loc22_ = _loc14_.§4"U§;
               _loc23_ = _loc14_.§try§;
               _loc24_ = _loc14_.§6!X§;
            }
            if((_loc9_ = param2[param3]).isStateChange(_loc23_,param5 * _loc11_,_loc21_,_loc22_,param6,_loc24_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §6!`§());
               }
               (_loc9_ = param2[param3]).reset();
            }
            if(_loc13_)
            {
               _loc9_.addQuad(_loc13_,param5,_loc21_,_loc22_,param4,param6);
            }
            else
            {
               _loc9_.§'"'§(_loc14_,param5,param4,param6);
            }
         }
         if(_loc10_)
         {
            _loc8_ = param2.length - 1;
            while(_loc8_ > param3)
            {
               param2.pop().dispose();
               _loc8_--;
            }
         }
         return param3;
      }
      
      private static function §^^§() : void
      {
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:Boolean = false;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:int = 0;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc1_:Starling = Starling.§%!q§;
         if(_loc1_.§&"S§(§9"k§))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         _loc3_ = "m44 op, va0, vc1 \n" + "mul v0, va1, vc0 \n";
         _loc4_ = "mov oc, v0       \n";
         _loc1_.§,#§(§9"k§,_loc2_.§6$!§(Context3DProgramType.VERTEX,_loc3_),_loc2_.§6$!§(Context3DProgramType.FRAGMENT,_loc4_));
         for each(_loc5_ in [true,false])
         {
            _loc3_ = !!_loc5_ ? "m44 op, va0, vc1 \n" + "mul v0, va1, vc0 \n" + "mov v1, va2      \n" : "m44 op, va0, vc1 \n" + "mov v1, va2      \n";
            _loc4_ = !!_loc5_ ? "tex ft1,  v1, fs0 <???> \n" + "mul  oc, ft1,  v0       \n" : "tex  oc,  v1, fs0 <???> \n";
            _loc6_ = [Image.§"m§,Image.§3"6§,Image.§=o§];
            _loc7_ = [Context3DTextureFormat.BGRA,Context3DTextureFormat.COMPRESSED,"compressedAlpha"];
            for each(_loc8_ in [true,false])
            {
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in _loc6_)
                  {
                     for each(_loc11_ in _loc7_)
                     {
                        _loc12_ = ["2d",!!_loc8_ ? "repeat" : "clamp"];
                        if(_loc11_ == Context3DTextureFormat.COMPRESSED)
                        {
                           _loc12_.push("dxt1");
                        }
                        else if(_loc11_ == "compressedAlpha")
                        {
                           _loc12_.push("dxt5");
                        }
                        if(_loc10_ == Image.§"m§)
                        {
                           _loc12_.push("nearest",!!_loc9_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc10_ == Image.§3"6§)
                        {
                           _loc12_.push("linear",!!_loc9_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc9_ ? "miplinear" : "mipnone");
                        }
                        _loc1_.§,#§(§,Z§(_loc5_,_loc9_,_loc8_,_loc11_,_loc10_),_loc2_.§6$!§(Context3DProgramType.VERTEX,_loc3_),_loc2_.§6$!§(Context3DProgramType.FRAGMENT,_loc4_.replace("???",_loc12_.join())));
                     }
                  }
               }
            }
         }
      }
      
      private static function §,Z§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bgra", param5:int = 1) : String
      {
         var _loc6_:uint = 0;
         if(param1)
         {
            _loc6_ |= 1;
         }
         if(param2)
         {
            _loc6_ |= 1 << 1;
         }
         if(param3)
         {
            _loc6_ |= 1 << 2;
         }
         if(param5 == §"m§)
         {
            _loc6_ |= 1 << 3;
         }
         else if(param5 == §=o§)
         {
            _loc6_ |= 1 << 4;
         }
         if(param4 == Context3DTextureFormat.COMPRESSED)
         {
            _loc6_ |= 1 << 5;
         }
         else if(param4 == "compressedAlpha")
         {
            _loc6_ |= 1 << 6;
         }
         var _loc7_:String;
         if((_loc7_ = §-#T§[_loc6_]) == null)
         {
            _loc7_ = "QB_i." + _loc6_.toString(16);
            §-#T§[_loc6_] = _loc7_;
         }
         return _loc7_;
      }
      
      override public function dispose() : void
      {
         this.§[!G§ = true;
         Starling.§%!q§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§^#e§);
         if(this.§^!3§)
         {
            this.§^!3§.dispose();
         }
         if(this.§,"u§)
         {
            this.§,"u§.dispose();
         }
         if(this.§`!"§)
         {
            this.§`!"§.dispose();
         }
         if(this.§6#`§)
         {
            this.§6#`§.dispose();
         }
         super.dispose();
      }
      
      private function §^#e§(param1:Object) : void
      {
         this.§&!0§();
         §^^§();
      }
      
      public function clone() : §6!`§
      {
         var _loc1_:§6!`§ = new §6!`§();
         _loc1_.§3!-§ = this.§3!-§.clone(0,this.§6!X§ * 4);
         _loc1_.§@"K§ = this.§@"K§.slice(0,this.§6!X§ * 6);
         _loc1_.§6!X§ = this.§6!X§;
         _loc1_.§try§ = this.§try§;
         _loc1_.§+!E§ = this.§+!E§;
         _loc1_.§4"U§ = this.§4"U§;
         _loc1_.§%!&§ = true;
         _loc1_.blendMode = blendMode;
         _loc1_.alpha = alpha;
         return _loc1_;
      }
      
      private function §9"X§(param1:int = -1) : void
      {
         var _loc2_:int = this.§>#8§;
         if(param1 < 0)
         {
            param1 = _loc2_ * 2;
         }
         if(param1 == 0)
         {
            param1 = 16;
         }
         if(param1 <= _loc2_)
         {
            return;
         }
         this.§3!-§.numVertices = param1 * 4;
         var _loc3_:int = _loc2_;
         while(_loc3_ < param1)
         {
            this.§@"K§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§@"K§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§@"K§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§@"K§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§@"K§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§@"K§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§&!0§();
         §^^§();
      }
      
      private function §&!0§() : void
      {
         var _loc1_:int = this.§3!-§.numVertices;
         var _loc2_:int = this.§@"K§.length;
         var _loc3_:Context3D = Starling.context;
         if(this.§^!3§)
         {
            this.§^!3§.dispose();
         }
         if(this.§,"u§)
         {
            this.§,"u§.dispose();
         }
         if(this.§`!"§)
         {
            this.§`!"§.dispose();
         }
         if(this.§6#`§)
         {
            this.§6#`§.dispose();
         }
         if(_loc1_ == 0)
         {
            return;
         }
         if(_loc3_ == null)
         {
            throw new §1#O§();
         }
         this.§^!3§ = _loc3_.createVertexBuffer(_loc1_,§,4§.§1#>§);
         this.§^!3§.uploadFromVector(this.§3!-§.§^$§,0,_loc1_);
         this.§,"u§ = _loc3_.createVertexBuffer(_loc1_,§,4§.§^f§);
         this.§,"u§.uploadFromVector(this.§3!-§.§9^§,0,_loc1_);
         this.§`!"§ = _loc3_.createVertexBuffer(_loc1_,§,4§.§^$?§);
         this.§`!"§.uploadFromVector(this.§3!-§.§0"8§,0,_loc1_);
         this.§6#`§ = _loc3_.createIndexBuffer(_loc2_);
         this.§6#`§.uploadFromVector(this.§@"K§,0,_loc2_);
         this.§%!&§ = false;
      }
      
      private function §-"g§() : void
      {
         if(this.§^!3§ == null)
         {
            this.§&!0§();
            this.§%!&§ = false;
         }
         else
         {
            this.§^!3§.uploadFromVector(this.§3!-§.§^$§,0,this.§6!X§ * 4);
            if(this.§+!E§ == null || this.tinted)
            {
               this.§,"u§.uploadFromVector(this.§3!-§.§9^§,0,this.§6!X§ * 4);
            }
            if(this.§+!E§)
            {
               this.§`!"§.uploadFromVector(this.§3!-§.§0"8§,0,this.§6!X§ * 4);
            }
            this.§%!&§ = false;
         }
      }
      
      public function §%O§(param1:§""F§, param2:Matrix, param3:Number = 1.0, param4:int = -1) : void
      {
         if(this.§6!X§ == 0)
         {
            return;
         }
         if(Starling.§%!q§.§`r§ || this.§[!G§)
         {
            return;
         }
         if(this.§%!&§)
         {
            this.§-"g§();
         }
         var _loc5_:Context3D = param1.context;
         var _loc6_:Boolean = this.§3!-§.premultipliedAlpha;
         var _loc7_:Boolean = this.§try§ || param3 != 1;
         var _loc8_:String = !!this.§+!E§ ? §,Z§(_loc7_,this.§+!E§.mipMapping,this.§+!E§.repeat,this.§+!E§.format,this.§4"U§) : §9"k§;
         §>"o§[0] = §>"o§[1] = §>"o§[2] = !!_loc6_ ? Number(param3) : Number(1);
         §>"o§[3] = param3;
         § #r§.§+"O§(param2,§!"n§);
         §""F§.setBlendFactors(_loc6_,param4 != §1$§.AUTO ? int(param4) : int(this.blendMode));
         param1.§?#5§(Starling.§%!q§.§8#j§(_loc8_));
         _loc5_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,0,§>"o§,1);
         _loc5_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,1,§!"n§,true);
         _loc5_.setVertexBufferAt(0,this.§^!3§,0,Context3DVertexBufferFormat.FLOAT_2);
         if(this.§+!E§ == null || _loc7_)
         {
            _loc5_.setVertexBufferAt(1,this.§,"u§,0,Context3DVertexBufferFormat.FLOAT_4);
         }
         if(this.§+!E§)
         {
            _loc5_.setTextureAt(0,this.§+!E§.getBase(_loc5_));
            _loc5_.setVertexBufferAt(2,this.§`!"§,0,Context3DVertexBufferFormat.FLOAT_2);
         }
         _loc5_.drawTriangles(this.§6#`§,0,this.§6!X§ * 2);
         if(this.§+!E§)
         {
            _loc5_.setTextureAt(0,null);
            _loc5_.setVertexBufferAt(2,null);
         }
         if(this.§+!E§ == null || _loc7_)
         {
            _loc5_.setVertexBufferAt(1,null);
         }
         _loc5_.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§6!X§ = 0;
         this.§+!E§ = null;
         this.§4"U§ = §3"6§;
         this.§%!&§ = true;
      }
      
      public function §6!+§(param1:Image, param2:Number = 1.0, param3:Matrix = null, param4:int = -1) : void
      {
         this.addQuad(param1,param2,param1.texture,param1.smoothing,param3,param4);
      }
      
      public function addQuad(param1:§6J§, param2:Number = 1.0, param3:Texture = null, param4:int = 1, param5:Matrix = null, param6:int = -1) : void
      {
         if(param5 == null)
         {
            param5 = param1.§9!5§;
         }
         var _loc7_:Boolean = !!param3 ? param1.tinted || param2 != 1 : false;
         var _loc8_:Number = param2 * param1.alpha;
         var _loc9_:int = this.§6!X§ * 4;
         if(this.§6!X§ + param1.§"#7§ > this.§3!-§.numVertices / 4)
         {
            this.§9"X§();
         }
         if(this.§6!X§ == 0)
         {
            this.blendMode = param6 >= §1$§.NONE ? int(param6) : int(param1.blendMode);
            this.§+!E§ = param3;
            this.§try§ = _loc7_;
            this.§4"U§ = param4;
            this.§3!-§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         param1.copyVertexDataTo(this.§3!-§,_loc9_,_loc7_,param5);
         if(_loc8_ != 1)
         {
            this.§3!-§.§ !4§(_loc9_,_loc8_,4);
         }
         this.§%!&§ = true;
         this.§6!X§ += param1.§"#7§;
      }
      
      public function §'"'§(param1:§6!`§, param2:Number = 1.0, param3:Matrix = null, param4:int = -1) : void
      {
         if(param3 == null)
         {
            param3 = param1.§9!5§;
         }
         var _loc5_:Boolean = param1.§try§ || param2 != 1;
         var _loc6_:Number = param2 * param1.alpha;
         var _loc7_:int = this.§6!X§ * 4;
         var _loc8_:int = param1.§3#R§;
         if(this.§6!X§ + _loc8_ > this.§>#8§)
         {
            this.§9"X§(this.§6!X§ + _loc8_);
         }
         if(this.§6!X§ == 0)
         {
            this.blendMode = param4 >= §1$§.NONE ? int(param4) : int(param1.blendMode);
            this.§+!E§ = param1.§+!E§;
            this.§try§ = _loc5_;
            this.§4"U§ = param1.§4"U§;
            this.§3!-§.setPremultipliedAlpha(param1.§3!-§.premultipliedAlpha,false);
         }
         param1.§3!-§.copyTo(this.§3!-§,_loc7_,0,_loc8_ * 4,true,_loc5_ || _loc6_,this.§+!E§ != null,param3);
         if(_loc6_ != 1)
         {
            this.§3!-§.§ !4§(_loc7_,_loc6_,_loc8_ * 4);
         }
         this.§%!&§ = true;
         this.§6!X§ += _loc8_;
      }
      
      public function isStateChange(param1:Boolean, param2:Number, param3:Texture, param4:int, param5:int, param6:int) : Boolean
      {
         if(this.§+!E§ != null)
         {
            if(param3 != null)
            {
               return this.§+!E§.root != param3.root || this.§4"U§ != param4 || this.§try§ != (param1 || param2 != 1) || this.§6!X§ + param6 > 8192 || this.§+!E§.repeat != param3.repeat || this.blendMode != param5;
            }
            return true;
         }
         if(param3 != null)
         {
            return this.§6!X§ > 0;
         }
         return this.§6!X§ + param6 > 8192;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         if(param2 == null)
         {
            param2 = new Rectangle();
         }
         var _loc3_:Matrix = param1 == this ? null : §?P§(param1,§5y§);
         return this.§3!-§.getBounds(_loc3_,0,this.§6!X§ * 4,param2);
      }
      
      override public function render(param1:§""F§, param2:Number) : void
      {
         if(this.§6!X§)
         {
            param1.§&"!§();
            param1.§?$&§();
            this.§%O§(param1,param1.§-A§,alpha * param2,param1.blendMode);
         }
      }
      
      public function get §3#R§() : int
      {
         return this.§6!X§;
      }
      
      public function get tinted() : Boolean
      {
         return this.§try§;
      }
      
      public function get texture() : Texture
      {
         return this.§+!E§;
      }
      
      public function get smoothing() : int
      {
         return this.§4"U§;
      }
      
      private function get §>#8§() : int
      {
         return this.§3!-§.numVertices / 4;
      }
   }
}
