package §,#e§
{
   import §"#k§.§79§;
   import §"#k§.Starling;
   import §'"T§.§^G§;
   import §,$&§.Event;
   import §-#]§.Texture;
   import §0U§.AGALMiniAssembler;
   import §8#p§.§"_§;
   import §8#p§.§>!B§;
   import §[!_§.§,"I§;
   import §[!_§.§`#!§;
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
   
   public class §^n§ extends DisplayObject
   {
      
      private static const §8D§:String = "QB_q";
      
      public static const §0#s§:int = 0;
      
      public static const §[!X§:int = 1;
      
      public static const §9$2§:int = 2;
      
      private static var §>"P§:Matrix = new Matrix();
      
      private static var §5#=§:Vector.<Number> = new <Number>[1,1,1,1];
      
      private static var §2!n§:Matrix3D = new Matrix3D();
      
      private static var §,2§:Dictionary = new Dictionary();
       
      
      private var §@"V§:int;
      
      private var §^W§:Boolean;
      
      private var §!!h§:Boolean;
      
      private var §[!-§:Texture;
      
      private var §1#y§:int;
      
      private var §?#9§:§>!B§;
      
      private var §2!R§:VertexBuffer3D;
      
      private var §9!`§:VertexBuffer3D;
      
      private var §'c§:VertexBuffer3D;
      
      private var §0"o§:Vector.<uint>;
      
      private var §3!S§:IndexBuffer3D;
      
      private var §="9§:Boolean = false;
      
      public function §^n§()
      {
         super();
         this.§?#9§ = new §>!B§(0,true);
         this.§0"o§ = new Vector.<uint>(0);
         this.§@"V§ = 0;
         this.§!!h§ = false;
         this.§^W§ = false;
         Starling.§4$#§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§>E§,false,0,true);
      }
      
      public static function §[!d§(param1:DisplayObject, param2:Vector.<§^n§>) : void
      {
         §^T§(param1,param2,-1,new Matrix());
      }
      
      private static function §^T§(param1:DisplayObject, param2:Vector.<§^n§>, param3:int, param4:Matrix, param5:Number = 1.0, param6:int = -1, param7:Boolean = false) : int
      {
         var _loc8_:int = 0;
         var _loc9_:§^n§ = null;
         var _loc16_:int = 0;
         var _loc17_:Matrix = null;
         var _loc18_:DisplayObject = null;
         var _loc19_:Boolean = false;
         var _loc20_:int = 0;
         var _loc21_:Texture = null;
         var _loc22_:int = 0;
         var _loc23_:Boolean = false;
         var _loc24_:int = 0;
         var _loc25_:Image = null;
         var _loc10_:Boolean = false;
         var _loc11_:Number = param1.alpha;
         var _loc12_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         var _loc13_:§;!`§ = param1 as §;!`§;
         var _loc14_:§^n§ = param1 as §^n§;
         var _loc15_:§`#!§ = param1.filter;
         if(param3 == -1)
         {
            _loc10_ = true;
            param3 = 0;
            _loc11_ = 1;
            param6 = param1.blendMode;
            if(param2.length == 0)
            {
               param2.push(new §^n§());
            }
            else
            {
               param2[0].reset();
            }
         }
         if(_loc15_ && !param7)
         {
            if(_loc15_.§-!N§ == §,"I§.§`#T§)
            {
               param3 = §^T§(param1,param2,param3,param4,param5,param6,true);
            }
            param3 = §^T§(_loc15_.§[!d§(param1),param2,param3,param4,param5,param6);
            if(_loc15_.§-!N§ == §,"I§.§##S§)
            {
               param3 = §^T§(param1,param2,param3,param4,param5,param6,true);
            }
         }
         else if(_loc12_)
         {
            _loc16_ = _loc12_.numChildren;
            _loc17_ = new Matrix();
            _loc8_ = 0;
            while(_loc8_ < _loc16_)
            {
               if(_loc19_ = (_loc18_ = _loc12_.getChildAt(_loc8_)).alpha != 0 && _loc18_.visible && _loc18_.scaleX != 0 && _loc18_.scaleY != 0)
               {
                  _loc20_ = _loc18_.blendMode == §4!_§.AUTO ? int(param6) : int(_loc18_.blendMode);
                  _loc17_.copyFrom(param4);
                  §79§.§]"v§(_loc17_,_loc18_);
                  param3 = §^T§(_loc18_,param2,param3,_loc17_,param5 * _loc11_,_loc20_);
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
               _loc22_ = !!_loc25_ ? int(_loc25_.smoothing) : int(Image.§[!X§);
               _loc23_ = _loc13_.tinted;
               _loc24_ = _loc13_.§ w§;
            }
            else
            {
               _loc21_ = _loc14_.§[!-§;
               _loc22_ = _loc14_.§1#y§;
               _loc23_ = _loc14_.§!!h§;
               _loc24_ = _loc14_.§@"V§;
            }
            if((_loc9_ = param2[param3]).isStateChange(_loc23_,param5 * _loc11_,_loc21_,_loc22_,param6,_loc24_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §^n§());
               }
               (_loc9_ = param2[param3]).reset();
            }
            if(_loc13_)
            {
               _loc9_.addQuad(_loc13_,param5,_loc21_,_loc22_,param4,param6);
            }
            else
            {
               _loc9_.§2!§(_loc14_,param5,param4,param6);
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
      
      private static function §1"d§() : void
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
         var _loc1_:Starling = Starling.§4$#§;
         if(_loc1_.§]!G§(§8D§))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         _loc3_ = "m44 op, va0, vc1 \n" + "mul v0, va1, vc0 \n";
         _loc4_ = "mov oc, v0       \n";
         _loc1_.§5!^§(§8D§,_loc2_.§,#q§(Context3DProgramType.VERTEX,_loc3_),_loc2_.§,#q§(Context3DProgramType.FRAGMENT,_loc4_));
         for each(_loc5_ in [true,false])
         {
            _loc3_ = !!_loc5_ ? "m44 op, va0, vc1 \n" + "mul v0, va1, vc0 \n" + "mov v1, va2      \n" : "m44 op, va0, vc1 \n" + "mov v1, va2      \n";
            _loc4_ = !!_loc5_ ? "tex ft1,  v1, fs0 <???> \n" + "mul  oc, ft1,  v0       \n" : "tex  oc,  v1, fs0 <???> \n";
            _loc6_ = [Image.§0#s§,Image.§[!X§,Image.§9$2§];
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
                        if(_loc10_ == Image.§0#s§)
                        {
                           _loc12_.push("nearest",!!_loc9_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc10_ == Image.§[!X§)
                        {
                           _loc12_.push("linear",!!_loc9_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc9_ ? "miplinear" : "mipnone");
                        }
                        _loc1_.§5!^§(§>!M§(_loc5_,_loc9_,_loc8_,_loc11_,_loc10_),_loc2_.§,#q§(Context3DProgramType.VERTEX,_loc3_),_loc2_.§,#q§(Context3DProgramType.FRAGMENT,_loc4_.replace("???",_loc12_.join())));
                     }
                  }
               }
            }
         }
      }
      
      private static function §>!M§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bgra", param5:int = 1) : String
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
         if(param5 == §0#s§)
         {
            _loc6_ |= 1 << 3;
         }
         else if(param5 == §9$2§)
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
         if((_loc7_ = §,2§[_loc6_]) == null)
         {
            _loc7_ = "QB_i." + _loc6_.toString(16);
            §,2§[_loc6_] = _loc7_;
         }
         return _loc7_;
      }
      
      override public function dispose() : void
      {
         this.§="9§ = true;
         Starling.§4$#§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§>E§);
         if(this.§2!R§)
         {
            this.§2!R§.dispose();
         }
         if(this.§9!`§)
         {
            this.§9!`§.dispose();
         }
         if(this.§'c§)
         {
            this.§'c§.dispose();
         }
         if(this.§3!S§)
         {
            this.§3!S§.dispose();
         }
         super.dispose();
      }
      
      private function §>E§(param1:Object) : void
      {
         this.§,!H§();
         §1"d§();
      }
      
      public function clone() : §^n§
      {
         var _loc1_:§^n§ = new §^n§();
         _loc1_.§?#9§ = this.§?#9§.clone(0,this.§@"V§ * 4);
         _loc1_.§0"o§ = this.§0"o§.slice(0,this.§@"V§ * 6);
         _loc1_.§@"V§ = this.§@"V§;
         _loc1_.§!!h§ = this.§!!h§;
         _loc1_.§[!-§ = this.§[!-§;
         _loc1_.§1#y§ = this.§1#y§;
         _loc1_.§^W§ = true;
         _loc1_.blendMode = blendMode;
         _loc1_.alpha = alpha;
         return _loc1_;
      }
      
      private function §%"5§(param1:int = -1) : void
      {
         var _loc2_:int = this.§8'§;
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
         this.§?#9§.numVertices = param1 * 4;
         var _loc3_:int = _loc2_;
         while(_loc3_ < param1)
         {
            this.§0"o§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§0"o§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§0"o§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§0"o§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§0"o§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§0"o§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§,!H§();
         §1"d§();
      }
      
      private function §,!H§() : void
      {
         var _loc1_:int = this.§?#9§.numVertices;
         var _loc2_:int = this.§0"o§.length;
         var _loc3_:Context3D = Starling.context;
         if(this.§2!R§)
         {
            this.§2!R§.dispose();
         }
         if(this.§9!`§)
         {
            this.§9!`§.dispose();
         }
         if(this.§'c§)
         {
            this.§'c§.dispose();
         }
         if(this.§3!S§)
         {
            this.§3!S§.dispose();
         }
         if(_loc1_ == 0)
         {
            return;
         }
         if(_loc3_ == null)
         {
            throw new §^G§();
         }
         this.§2!R§ = _loc3_.createVertexBuffer(_loc1_,§>!B§.§'p§);
         this.§2!R§.uploadFromVector(this.§?#9§.§@1§,0,_loc1_);
         this.§9!`§ = _loc3_.createVertexBuffer(_loc1_,§>!B§.§;",§);
         this.§9!`§.uploadFromVector(this.§?#9§.§4l§,0,_loc1_);
         this.§'c§ = _loc3_.createVertexBuffer(_loc1_,§>!B§.§^!c§);
         this.§'c§.uploadFromVector(this.§?#9§.§,#%§,0,_loc1_);
         this.§3!S§ = _loc3_.createIndexBuffer(_loc2_);
         this.§3!S§.uploadFromVector(this.§0"o§,0,_loc2_);
         this.§^W§ = false;
      }
      
      private function §8R§() : void
      {
         if(this.§2!R§ == null)
         {
            this.§,!H§();
            this.§^W§ = false;
         }
         else
         {
            this.§2!R§.uploadFromVector(this.§?#9§.§@1§,0,this.§@"V§ * 4);
            if(this.§[!-§ == null || this.tinted)
            {
               this.§9!`§.uploadFromVector(this.§?#9§.§4l§,0,this.§@"V§ * 4);
            }
            if(this.§[!-§)
            {
               this.§'c§.uploadFromVector(this.§?#9§.§,#%§,0,this.§@"V§ * 4);
            }
            this.§^W§ = false;
         }
      }
      
      public function §4"V§(param1:§79§, param2:Matrix, param3:Number = 1.0, param4:int = -1) : void
      {
         if(this.§@"V§ == 0)
         {
            return;
         }
         if(Starling.§4$#§.§^#0§ || this.§="9§)
         {
            return;
         }
         if(this.§^W§)
         {
            this.§8R§();
         }
         var _loc5_:Context3D = param1.context;
         var _loc6_:Boolean = this.§?#9§.premultipliedAlpha;
         var _loc7_:Boolean = this.§!!h§ || param3 != 1;
         var _loc8_:String = !!this.§[!-§ ? §>!M§(_loc7_,this.§[!-§.mipMapping,this.§[!-§.repeat,this.§[!-§.format,this.§1#y§) : §8D§;
         §5#=§[0] = §5#=§[1] = §5#=§[2] = !!_loc6_ ? Number(param3) : Number(1);
         §5#=§[3] = param3;
         §"_§.§"r§(param2,§2!n§);
         §79§.setBlendFactors(_loc6_,param4 != §4!_§.AUTO ? int(param4) : int(this.blendMode));
         param1.§"!§(Starling.§4$#§.§+!!§(_loc8_));
         _loc5_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,0,§5#=§,1);
         _loc5_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,1,§2!n§,true);
         _loc5_.setVertexBufferAt(0,this.§2!R§,0,Context3DVertexBufferFormat.FLOAT_2);
         if(this.§[!-§ == null || _loc7_)
         {
            _loc5_.setVertexBufferAt(1,this.§9!`§,0,Context3DVertexBufferFormat.FLOAT_4);
         }
         if(this.§[!-§)
         {
            _loc5_.setTextureAt(0,this.§[!-§.getBase(_loc5_));
            _loc5_.setVertexBufferAt(2,this.§'c§,0,Context3DVertexBufferFormat.FLOAT_2);
         }
         _loc5_.drawTriangles(this.§3!S§,0,this.§@"V§ * 2);
         if(this.§[!-§)
         {
            _loc5_.setTextureAt(0,null);
            _loc5_.setVertexBufferAt(2,null);
         }
         if(this.§[!-§ == null || _loc7_)
         {
            _loc5_.setVertexBufferAt(1,null);
         }
         _loc5_.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§@"V§ = 0;
         this.§[!-§ = null;
         this.§1#y§ = §[!X§;
         this.§^W§ = true;
      }
      
      public function §5!S§(param1:Image, param2:Number = 1.0, param3:Matrix = null, param4:int = -1) : void
      {
         this.addQuad(param1,param2,param1.texture,param1.smoothing,param3,param4);
      }
      
      public function addQuad(param1:§;!`§, param2:Number = 1.0, param3:Texture = null, param4:int = 1, param5:Matrix = null, param6:int = -1) : void
      {
         if(param5 == null)
         {
            param5 = param1.§'"A§;
         }
         var _loc7_:Boolean = !!param3 ? param1.tinted || param2 != 1 : false;
         var _loc8_:Number = param2 * param1.alpha;
         var _loc9_:int = this.§@"V§ * 4;
         if(this.§@"V§ + param1.§ w§ > this.§?#9§.numVertices / 4)
         {
            this.§%"5§();
         }
         if(this.§@"V§ == 0)
         {
            this.blendMode = param6 >= §4!_§.NONE ? int(param6) : int(param1.blendMode);
            this.§[!-§ = param3;
            this.§!!h§ = _loc7_;
            this.§1#y§ = param4;
            this.§?#9§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         param1.copyVertexDataTo(this.§?#9§,_loc9_,_loc7_,param5);
         if(_loc8_ != 1)
         {
            this.§?#9§.§##^§(_loc9_,_loc8_,4);
         }
         this.§^W§ = true;
         this.§@"V§ += param1.§ w§;
      }
      
      public function §2!§(param1:§^n§, param2:Number = 1.0, param3:Matrix = null, param4:int = -1) : void
      {
         if(param3 == null)
         {
            param3 = param1.§'"A§;
         }
         var _loc5_:Boolean = param1.§!!h§ || param2 != 1;
         var _loc6_:Number = param2 * param1.alpha;
         var _loc7_:int = this.§@"V§ * 4;
         var _loc8_:int = param1.§+E§;
         if(this.§@"V§ + _loc8_ > this.§8'§)
         {
            this.§%"5§(this.§@"V§ + _loc8_);
         }
         if(this.§@"V§ == 0)
         {
            this.blendMode = param4 >= §4!_§.NONE ? int(param4) : int(param1.blendMode);
            this.§[!-§ = param1.§[!-§;
            this.§!!h§ = _loc5_;
            this.§1#y§ = param1.§1#y§;
            this.§?#9§.setPremultipliedAlpha(param1.§?#9§.premultipliedAlpha,false);
         }
         param1.§?#9§.copyTo(this.§?#9§,_loc7_,0,_loc8_ * 4,true,_loc5_ || _loc6_,this.§[!-§ != null,param3);
         if(_loc6_ != 1)
         {
            this.§?#9§.§##^§(_loc7_,_loc6_,_loc8_ * 4);
         }
         this.§^W§ = true;
         this.§@"V§ += _loc8_;
      }
      
      public function isStateChange(param1:Boolean, param2:Number, param3:Texture, param4:int, param5:int, param6:int) : Boolean
      {
         if(this.§[!-§ != null)
         {
            if(param3 != null)
            {
               return this.§[!-§.root != param3.root || this.§1#y§ != param4 || this.§!!h§ != (param1 || param2 != 1) || this.§@"V§ + param6 > 8192 || this.§[!-§.repeat != param3.repeat || this.blendMode != param5;
            }
            return true;
         }
         if(param3 != null)
         {
            return this.§@"V§ > 0;
         }
         return this.§@"V§ + param6 > 8192;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         if(param2 == null)
         {
            param2 = new Rectangle();
         }
         var _loc3_:Matrix = param1 == this ? null : §0#n§(param1,§>"P§);
         return this.§?#9§.getBounds(_loc3_,0,this.§@"V§ * 4,param2);
      }
      
      override public function render(param1:§79§, param2:Number) : void
      {
         if(this.§@"V§)
         {
            param1.§6@§();
            param1.§ "4§();
            this.§4"V§(param1,param1.§9!§,alpha * param2,param1.blendMode);
         }
      }
      
      public function get §+E§() : int
      {
         return this.§@"V§;
      }
      
      public function get tinted() : Boolean
      {
         return this.§!!h§;
      }
      
      public function get texture() : Texture
      {
         return this.§[!-§;
      }
      
      public function get smoothing() : int
      {
         return this.§1#y§;
      }
      
      private function get §8'§() : int
      {
         return this.§?#9§.numVertices / 4;
      }
   }
}
