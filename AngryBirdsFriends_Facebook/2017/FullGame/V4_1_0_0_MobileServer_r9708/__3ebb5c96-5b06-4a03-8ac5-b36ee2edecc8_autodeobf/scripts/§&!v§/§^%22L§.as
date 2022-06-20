package §&!v§
{
   import §,!p§.AGALMiniAssembler;
   import §,k§.§!=§;
   import §,k§.§'#e§;
   import §-"+§.Texture;
   import §1P§.Event;
   import §7v§.§-D§;
   import §9+§.Starling;
   import §9+§.§]"+§;
   import §>l§.§%"O§;
   import §>l§.§+!Y§;
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
   
   public class §^"L§ extends DisplayObject
   {
      
      private static const §^![§:String = "QB_q";
      
      public static const §&#=§:int = 0;
      
      public static const §@!v§:int = 1;
      
      public static const §%"Y§:int = 2;
      
      private static var §<#k§:Matrix = new Matrix();
      
      private static var §'#N§:Vector.<Number> = new <Number>[1,1,1,1];
      
      private static var §##]§:Matrix3D = new Matrix3D();
      
      private static var §%# §:Dictionary = new Dictionary();
       
      
      private var §%"h§:int;
      
      private var §5y§:Boolean;
      
      private var §5#D§:Boolean;
      
      private var §9$0§:Texture;
      
      private var §7#F§:int;
      
      private var §4Z§:§%"O§;
      
      private var §^"+§:VertexBuffer3D;
      
      private var §>">§:VertexBuffer3D;
      
      private var §0!s§:VertexBuffer3D;
      
      private var §^$$§:Vector.<uint>;
      
      private var §,#O§:IndexBuffer3D;
      
      public function §^"L§()
      {
         super();
         this.§4Z§ = new §%"O§(0,true);
         this.§^$$§ = new Vector.<uint>(0);
         this.§%"h§ = 0;
         this.§5#D§ = false;
         this.§5y§ = false;
         Starling.§?$#§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§`",§,false,0,true);
      }
      
      public static function §""f§(param1:DisplayObject, param2:Vector.<§^"L§>) : void
      {
         §4"I§(param1,param2,-1,new Matrix());
      }
      
      private static function §4"I§(param1:DisplayObject, param2:Vector.<§^"L§>, param3:int, param4:Matrix, param5:Number = 1.0, param6:int = -1, param7:Boolean = false) : int
      {
         var _loc8_:int = 0;
         var _loc9_:§^"L§ = null;
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
         var _loc13_:§0"s§ = param1 as §0"s§;
         var _loc14_:§^"L§ = param1 as §^"L§;
         var _loc15_:§!=§ = param1.filter;
         if(param3 == -1)
         {
            _loc10_ = true;
            param3 = 0;
            _loc11_ = 1;
            param6 = param1.blendMode;
            if(param2.length == 0)
            {
               param2.push(new §^"L§());
            }
            else
            {
               param2[0].reset();
            }
         }
         if(_loc15_ && !param7)
         {
            if(_loc15_.§["_§ == §'#e§.§>#R§)
            {
               param3 = §4"I§(param1,param2,param3,param4,param5,param6,true);
            }
            param3 = §4"I§(_loc15_.§""f§(param1),param2,param3,param4,param5,param6);
            if(_loc15_.§["_§ == §'#e§.§0#D§)
            {
               param3 = §4"I§(param1,param2,param3,param4,param5,param6,true);
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
                  _loc20_ = _loc18_.blendMode == §1i§.AUTO ? int(param6) : int(_loc18_.blendMode);
                  _loc17_.copyFrom(param4);
                  §]"+§.§"#y§(_loc17_,_loc18_);
                  param3 = §4"I§(_loc18_,param2,param3,_loc17_,param5 * _loc11_,_loc20_);
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
               _loc22_ = !!_loc25_ ? int(_loc25_.smoothing) : int(Image.§@!v§);
               _loc23_ = _loc13_.tinted;
               _loc24_ = _loc13_.§="&§;
            }
            else
            {
               _loc21_ = _loc14_.§9$0§;
               _loc22_ = _loc14_.§7#F§;
               _loc23_ = _loc14_.§5#D§;
               _loc24_ = _loc14_.§%"h§;
            }
            if((_loc9_ = param2[param3]).isStateChange(_loc23_,param5 * _loc11_,_loc21_,_loc22_,param6,_loc24_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §^"L§());
               }
               (_loc9_ = param2[param3]).reset();
            }
            if(_loc13_)
            {
               _loc9_.addQuad(_loc13_,param5,_loc21_,_loc22_,param4,param6);
            }
            else
            {
               _loc9_.§=$"§(_loc14_,param5,param4,param6);
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
      
      private static function §+#Y§() : void
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
         var _loc1_:Starling = Starling.§?$#§;
         if(_loc1_.§ "r§(§^![§))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         _loc3_ = "m44 op, va0, vc1 \n" + "mul v0, va1, vc0 \n";
         _loc4_ = "mov oc, v0       \n";
         _loc1_.§?"E§(§^![§,_loc2_.§+"3§(Context3DProgramType.VERTEX,_loc3_),_loc2_.§+"3§(Context3DProgramType.FRAGMENT,_loc4_));
         for each(_loc5_ in [true,false])
         {
            _loc3_ = !!_loc5_ ? "m44 op, va0, vc1 \n" + "mul v0, va1, vc0 \n" + "mov v1, va2      \n" : "m44 op, va0, vc1 \n" + "mov v1, va2      \n";
            _loc4_ = !!_loc5_ ? "tex ft1,  v1, fs0 <???> \n" + "mul  oc, ft1,  v0       \n" : "tex  oc,  v1, fs0 <???> \n";
            _loc6_ = [Image.§&#=§,Image.§@!v§,Image.§%"Y§];
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
                        if(_loc10_ == Image.§&#=§)
                        {
                           _loc12_.push("nearest",!!_loc9_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc10_ == Image.§@!v§)
                        {
                           _loc12_.push("linear",!!_loc9_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc9_ ? "miplinear" : "mipnone");
                        }
                        _loc1_.§?"E§(§-!U§(_loc5_,_loc9_,_loc8_,_loc11_,_loc10_),_loc2_.§+"3§(Context3DProgramType.VERTEX,_loc3_),_loc2_.§+"3§(Context3DProgramType.FRAGMENT,_loc4_.replace("???",_loc12_.join())));
                     }
                  }
               }
            }
         }
      }
      
      private static function §-!U§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bgra", param5:int = 1) : String
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
         if(param5 == §&#=§)
         {
            _loc6_ |= 1 << 3;
         }
         else if(param5 == §%"Y§)
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
         if((_loc7_ = §%# §[_loc6_]) == null)
         {
            _loc7_ = "QB_i." + _loc6_.toString(16);
            §%# §[_loc6_] = _loc7_;
         }
         return _loc7_;
      }
      
      override public function dispose() : void
      {
         Starling.§?$#§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§`",§);
         if(this.§^"+§)
         {
            this.§^"+§.dispose();
         }
         if(this.§>">§)
         {
            this.§>">§.dispose();
         }
         if(this.§0!s§)
         {
            this.§0!s§.dispose();
         }
         if(this.§,#O§)
         {
            this.§,#O§.dispose();
         }
         super.dispose();
      }
      
      private function §`",§(param1:Object) : void
      {
         this.§8"C§();
         §+#Y§();
      }
      
      public function clone() : §^"L§
      {
         var _loc1_:§^"L§ = new §^"L§();
         _loc1_.§4Z§ = this.§4Z§.clone(0,this.§%"h§ * 4);
         _loc1_.§^$$§ = this.§^$$§.slice(0,this.§%"h§ * 6);
         _loc1_.§%"h§ = this.§%"h§;
         _loc1_.§5#D§ = this.§5#D§;
         _loc1_.§9$0§ = this.§9$0§;
         _loc1_.§7#F§ = this.§7#F§;
         _loc1_.§5y§ = true;
         _loc1_.blendMode = blendMode;
         _loc1_.alpha = alpha;
         return _loc1_;
      }
      
      private function §'"#§(param1:int = -1) : void
      {
         var _loc2_:int = this.§9#Q§;
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
         this.§4Z§.numVertices = param1 * 4;
         var _loc3_:int = _loc2_;
         while(_loc3_ < param1)
         {
            this.§^$$§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§^$$§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§^$$§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§^$$§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§^$$§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§^$$§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§8"C§();
         §+#Y§();
      }
      
      private function §8"C§() : void
      {
         var _loc1_:int = this.§4Z§.numVertices;
         var _loc2_:int = this.§^$$§.length;
         var _loc3_:Context3D = Starling.context;
         if(this.§^"+§)
         {
            this.§^"+§.dispose();
         }
         if(this.§>">§)
         {
            this.§>">§.dispose();
         }
         if(this.§0!s§)
         {
            this.§0!s§.dispose();
         }
         if(this.§,#O§)
         {
            this.§,#O§.dispose();
         }
         if(_loc1_ == 0)
         {
            return;
         }
         if(_loc3_ == null)
         {
            throw new §-D§();
         }
         this.§^"+§ = _loc3_.createVertexBuffer(_loc1_,§%"O§.§"#l§);
         this.§^"+§.uploadFromVector(this.§4Z§.§@"d§,0,_loc1_);
         this.§>">§ = _loc3_.createVertexBuffer(_loc1_,§%"O§.§5q§);
         this.§>">§.uploadFromVector(this.§4Z§.§ "e§,0,_loc1_);
         this.§0!s§ = _loc3_.createVertexBuffer(_loc1_,§%"O§.§1-§);
         this.§0!s§.uploadFromVector(this.§4Z§.§@8§,0,_loc1_);
         this.§,#O§ = _loc3_.createIndexBuffer(_loc2_);
         this.§,#O§.uploadFromVector(this.§^$$§,0,_loc2_);
         this.§5y§ = false;
      }
      
      private function §=G§() : void
      {
         if(this.§^"+§ == null)
         {
            this.§8"C§();
         }
         else
         {
            this.§^"+§.uploadFromVector(this.§4Z§.§@"d§,0,this.§4Z§.numVertices);
            if(this.§9$0§ == null || this.tinted)
            {
               this.§>">§.uploadFromVector(this.§4Z§.§ "e§,0,this.§4Z§.numVertices);
            }
            if(this.§9$0§)
            {
               this.§0!s§.uploadFromVector(this.§4Z§.§@8§,0,this.§4Z§.numVertices);
            }
            this.§5y§ = false;
         }
      }
      
      public function §"!2§(param1:§]"+§, param2:Matrix, param3:Number = 1.0, param4:int = -1) : void
      {
         if(this.§%"h§ == 0)
         {
            return;
         }
         if(this.§5y§)
         {
            this.§=G§();
         }
         var _loc5_:Context3D = param1.context;
         var _loc6_:Boolean = this.§4Z§.premultipliedAlpha;
         var _loc7_:Boolean = this.§5#D§ || param3 != 1;
         var _loc8_:String = !!this.§9$0§ ? §-!U§(_loc7_,this.§9$0§.mipMapping,this.§9$0§.repeat,this.§9$0§.format,this.§7#F§) : §^![§;
         §'#N§[0] = §'#N§[1] = §'#N§[2] = !!_loc6_ ? Number(param3) : Number(1);
         §'#N§[3] = param3;
         §+!Y§.§[!o§(param2,§##]§);
         §]"+§.setBlendFactors(_loc6_,param4 != §1i§.AUTO ? int(param4) : int(this.blendMode));
         param1.§<$3§(Starling.§?$#§.§,T§(_loc8_));
         _loc5_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,0,§'#N§,1);
         _loc5_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,1,§##]§,true);
         _loc5_.setVertexBufferAt(0,this.§^"+§,0,Context3DVertexBufferFormat.FLOAT_2);
         if(this.§9$0§ == null || _loc7_)
         {
            _loc5_.setVertexBufferAt(1,this.§>">§,0,Context3DVertexBufferFormat.FLOAT_4);
         }
         if(this.§9$0§)
         {
            _loc5_.setTextureAt(0,this.§9$0§.getBase(_loc5_));
            _loc5_.setVertexBufferAt(2,this.§0!s§,0,Context3DVertexBufferFormat.FLOAT_2);
         }
         _loc5_.drawTriangles(this.§,#O§,0,this.§%"h§ * 2);
         if(this.§9$0§)
         {
            _loc5_.setTextureAt(0,null);
            _loc5_.setVertexBufferAt(2,null);
         }
         if(this.§9$0§ == null || _loc7_)
         {
            _loc5_.setVertexBufferAt(1,null);
         }
         _loc5_.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§%"h§ = 0;
         this.§9$0§ = null;
         this.§7#F§ = §@!v§;
         this.§5y§ = true;
      }
      
      public function §!"q§(param1:Image, param2:Number = 1.0, param3:Matrix = null, param4:int = -1) : void
      {
         this.addQuad(param1,param2,param1.texture,param1.smoothing,param3,param4);
      }
      
      public function addQuad(param1:§0"s§, param2:Number = 1.0, param3:Texture = null, param4:int = 1, param5:Matrix = null, param6:int = -1) : void
      {
         if(param5 == null)
         {
            param5 = param1.§!7§;
         }
         var _loc7_:Boolean = !!param3 ? param1.tinted || param2 != 1 : false;
         var _loc8_:Number = param2 * param1.alpha;
         var _loc9_:int = this.§%"h§ * 4;
         if(this.§%"h§ + param1.§="&§ > this.§4Z§.numVertices / 4)
         {
            this.§'"#§();
         }
         if(this.§%"h§ == 0)
         {
            this.blendMode = param6 >= §1i§.NONE ? int(param6) : int(param1.blendMode);
            this.§9$0§ = param3;
            this.§5#D§ = _loc7_;
            this.§7#F§ = param4;
            this.§4Z§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         param1.copyVertexDataTo(this.§4Z§,_loc9_,_loc7_,param5);
         if(_loc8_ != 1)
         {
            this.§4Z§.§"4§(_loc9_,_loc8_,4);
         }
         this.§5y§ = true;
         this.§%"h§ += param1.§="&§;
      }
      
      public function §=$"§(param1:§^"L§, param2:Number = 1.0, param3:Matrix = null, param4:int = -1) : void
      {
         if(param3 == null)
         {
            param3 = param1.§!7§;
         }
         var _loc5_:Boolean = param1.§5#D§ || param2 != 1;
         var _loc6_:Number = param2 * param1.alpha;
         var _loc7_:int = this.§%"h§ * 4;
         var _loc8_:int = param1.§1$ §;
         if(this.§%"h§ + _loc8_ > this.§9#Q§)
         {
            this.§'"#§(this.§%"h§ + _loc8_);
         }
         if(this.§%"h§ == 0)
         {
            this.blendMode = param4 >= §1i§.NONE ? int(param4) : int(param1.blendMode);
            this.§9$0§ = param1.§9$0§;
            this.§5#D§ = _loc5_;
            this.§7#F§ = param1.§7#F§;
            this.§4Z§.setPremultipliedAlpha(param1.§4Z§.premultipliedAlpha,false);
         }
         param1.§4Z§.copyTo(this.§4Z§,_loc7_,0,_loc8_ * 4,true,_loc5_ || _loc6_,this.§9$0§ != null,param3);
         if(_loc6_ != 1)
         {
            this.§4Z§.§"4§(_loc7_,_loc6_,_loc8_ * 4);
         }
         this.§5y§ = true;
         this.§%"h§ += _loc8_;
      }
      
      public function isStateChange(param1:Boolean, param2:Number, param3:Texture, param4:int, param5:int, param6:int) : Boolean
      {
         if(this.§9$0§ != null)
         {
            if(param3 != null)
            {
               return this.§9$0§.root != param3.root || this.§7#F§ != param4 || this.§5#D§ != (param1 || param2 != 1) || this.§%"h§ + param6 > 8192 || this.§9$0§.repeat != param3.repeat || this.blendMode != param5;
            }
            return true;
         }
         if(param3 != null)
         {
            return this.§%"h§ > 0;
         }
         return this.§%"h§ + param6 > 8192;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         if(param2 == null)
         {
            param2 = new Rectangle();
         }
         var _loc3_:Matrix = param1 == this ? null : §='§(param1,§<#k§);
         return this.§4Z§.getBounds(_loc3_,0,this.§%"h§ * 4,param2);
      }
      
      override public function render(param1:§]"+§, param2:Number) : void
      {
         if(this.§%"h§)
         {
            param1.§&!K§();
            param1.§[a§();
            this.§"!2§(param1,param1.§!p§,alpha * param2,param1.blendMode);
         }
      }
      
      public function get §1$ §() : int
      {
         return this.§%"h§;
      }
      
      public function get tinted() : Boolean
      {
         return this.§5#D§;
      }
      
      public function get texture() : Texture
      {
         return this.§9$0§;
      }
      
      public function get smoothing() : int
      {
         return this.§7#F§;
      }
      
      private function get §9#Q§() : int
      {
         return this.§4Z§.numVertices / 4;
      }
   }
}
