package §!6§
{
   import §!#`§.Event;
   import §""'§.Texture;
   import §#"l§.§ #b§;
   import §#"l§.§<#^§;
   import §'!I§.AGALMiniAssembler;
   import §3!"§.§&!Q§;
   import §3!"§.§6"E§;
   import §3!z§.§^!g§;
   import §]"P§.§4!9§;
   import §]"P§.Starling;
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
   
   public class §9$'§ extends DisplayObject
   {
      
      private static const §0"0§:String = "QB_q";
      
      public static const §;!,§:int = 0;
      
      public static const §'#w§:int = 1;
      
      public static const §65§:int = 2;
      
      private static var §0$-§:Matrix = new Matrix();
      
      private static var §=!C§:Vector.<Number> = new <Number>[1,1,1,1];
      
      private static var §!5§:Matrix3D = new Matrix3D();
      
      private static var §5#;§:Dictionary = new Dictionary();
       
      
      private var §="5§:int;
      
      private var §=!^§:Boolean;
      
      private var §-#+§:Boolean;
      
      private var §;Z§:Texture;
      
      private var §5"8§:int;
      
      private var §[#7§:§ #b§;
      
      private var §-!C§:VertexBuffer3D;
      
      private var §%"=§:VertexBuffer3D;
      
      private var §>9§:VertexBuffer3D;
      
      private var §^"F§:Vector.<uint>;
      
      private var §,#c§:IndexBuffer3D;
      
      private var §+"c§:Boolean = false;
      
      public function §9$'§()
      {
         super();
         this.§[#7§ = new § #b§(0,true);
         this.§^"F§ = new Vector.<uint>(0);
         this.§="5§ = 0;
         this.§-#+§ = false;
         this.§=!^§ = false;
         Starling.§3!I§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§-s§,false,0,true);
      }
      
      public static function §=!9§(param1:DisplayObject, param2:Vector.<§9$'§>) : void
      {
         §?t§(param1,param2,-1,new Matrix());
      }
      
      private static function §?t§(param1:DisplayObject, param2:Vector.<§9$'§>, param3:int, param4:Matrix, param5:Number = 1.0, param6:int = -1, param7:Boolean = false) : int
      {
         var _loc8_:int = 0;
         var _loc9_:§9$'§ = null;
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
         var _loc13_:§4";§ = param1 as §4";§;
         var _loc14_:§9$'§ = param1 as §9$'§;
         var _loc15_:§&!Q§ = param1.filter;
         if(param3 == -1)
         {
            _loc10_ = true;
            param3 = 0;
            _loc11_ = 1;
            param6 = param1.blendMode;
            if(param2.length == 0)
            {
               param2.push(new §9$'§());
            }
            else
            {
               param2[0].reset();
            }
         }
         if(_loc15_ && !param7)
         {
            if(_loc15_.§,"C§ == §6"E§.§=!v§)
            {
               param3 = §?t§(param1,param2,param3,param4,param5,param6,true);
            }
            param3 = §?t§(_loc15_.§=!9§(param1),param2,param3,param4,param5,param6);
            if(_loc15_.§,"C§ == §6"E§.§4!5§)
            {
               param3 = §?t§(param1,param2,param3,param4,param5,param6,true);
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
                  _loc20_ = _loc18_.blendMode == §9#6§.AUTO ? int(param6) : int(_loc18_.blendMode);
                  _loc17_.copyFrom(param4);
                  §4!9§.§0!C§(_loc17_,_loc18_);
                  param3 = §?t§(_loc18_,param2,param3,_loc17_,param5 * _loc11_,_loc20_);
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
               _loc22_ = !!_loc25_ ? int(_loc25_.smoothing) : int(Image.§'#w§);
               _loc23_ = _loc13_.tinted;
               _loc24_ = _loc13_.§""#§;
            }
            else
            {
               _loc21_ = _loc14_.§;Z§;
               _loc22_ = _loc14_.§5"8§;
               _loc23_ = _loc14_.§-#+§;
               _loc24_ = _loc14_.§="5§;
            }
            if((_loc9_ = param2[param3]).isStateChange(_loc23_,param5 * _loc11_,_loc21_,_loc22_,param6,_loc24_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §9$'§());
               }
               (_loc9_ = param2[param3]).reset();
            }
            if(_loc13_)
            {
               _loc9_.addQuad(_loc13_,param5,_loc21_,_loc22_,param4,param6);
            }
            else
            {
               _loc9_.§!u§(_loc14_,param5,param4,param6);
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
      
      private static function §`"u§() : void
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
         var _loc1_:Starling = Starling.§3!I§;
         if(_loc1_.§!j§(§0"0§))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         _loc3_ = "m44 op, va0, vc1 \n" + "mul v0, va1, vc0 \n";
         _loc4_ = "mov oc, v0       \n";
         _loc1_.§`"I§(§0"0§,_loc2_.§-l§(Context3DProgramType.VERTEX,_loc3_),_loc2_.§-l§(Context3DProgramType.FRAGMENT,_loc4_));
         for each(_loc5_ in [true,false])
         {
            _loc3_ = !!_loc5_ ? "m44 op, va0, vc1 \n" + "mul v0, va1, vc0 \n" + "mov v1, va2      \n" : "m44 op, va0, vc1 \n" + "mov v1, va2      \n";
            _loc4_ = !!_loc5_ ? "tex ft1,  v1, fs0 <???> \n" + "mul  oc, ft1,  v0       \n" : "tex  oc,  v1, fs0 <???> \n";
            _loc6_ = [Image.§;!,§,Image.§'#w§,Image.§65§];
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
                        if(_loc10_ == Image.§;!,§)
                        {
                           _loc12_.push("nearest",!!_loc9_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc10_ == Image.§'#w§)
                        {
                           _loc12_.push("linear",!!_loc9_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc9_ ? "miplinear" : "mipnone");
                        }
                        _loc1_.§`"I§(§82§(_loc5_,_loc9_,_loc8_,_loc11_,_loc10_),_loc2_.§-l§(Context3DProgramType.VERTEX,_loc3_),_loc2_.§-l§(Context3DProgramType.FRAGMENT,_loc4_.replace("???",_loc12_.join())));
                     }
                  }
               }
            }
         }
      }
      
      private static function §82§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bgra", param5:int = 1) : String
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
         if(param5 == §;!,§)
         {
            _loc6_ |= 1 << 3;
         }
         else if(param5 == §65§)
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
         if((_loc7_ = §5#;§[_loc6_]) == null)
         {
            _loc7_ = "QB_i." + _loc6_.toString(16);
            §5#;§[_loc6_] = _loc7_;
         }
         return _loc7_;
      }
      
      override public function dispose() : void
      {
         this.§+"c§ = true;
         Starling.§3!I§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§-s§);
         if(this.§-!C§)
         {
            this.§-!C§.dispose();
         }
         if(this.§%"=§)
         {
            this.§%"=§.dispose();
         }
         if(this.§>9§)
         {
            this.§>9§.dispose();
         }
         if(this.§,#c§)
         {
            this.§,#c§.dispose();
         }
         super.dispose();
      }
      
      private function §-s§(param1:Object) : void
      {
         this.§;"$§();
         §`"u§();
      }
      
      public function clone() : §9$'§
      {
         var _loc1_:§9$'§ = new §9$'§();
         _loc1_.§[#7§ = this.§[#7§.clone(0,this.§="5§ * 4);
         _loc1_.§^"F§ = this.§^"F§.slice(0,this.§="5§ * 6);
         _loc1_.§="5§ = this.§="5§;
         _loc1_.§-#+§ = this.§-#+§;
         _loc1_.§;Z§ = this.§;Z§;
         _loc1_.§5"8§ = this.§5"8§;
         _loc1_.§=!^§ = true;
         _loc1_.blendMode = blendMode;
         _loc1_.alpha = alpha;
         return _loc1_;
      }
      
      private function §?$+§(param1:int = -1) : void
      {
         var _loc2_:int = this.§[4§;
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
         this.§[#7§.numVertices = param1 * 4;
         var _loc3_:int = _loc2_;
         while(_loc3_ < param1)
         {
            this.§^"F§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§^"F§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§^"F§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§^"F§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§^"F§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§^"F§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§;"$§();
         §`"u§();
      }
      
      private function §;"$§() : void
      {
         var _loc1_:int = this.§[#7§.numVertices;
         var _loc2_:int = this.§^"F§.length;
         var _loc3_:Context3D = Starling.context;
         if(this.§-!C§)
         {
            this.§-!C§.dispose();
         }
         if(this.§%"=§)
         {
            this.§%"=§.dispose();
         }
         if(this.§>9§)
         {
            this.§>9§.dispose();
         }
         if(this.§,#c§)
         {
            this.§,#c§.dispose();
         }
         if(_loc1_ == 0)
         {
            return;
         }
         if(_loc3_ == null)
         {
            throw new §^!g§();
         }
         this.§-!C§ = _loc3_.createVertexBuffer(_loc1_,§ #b§.§%";§);
         this.§-!C§.uploadFromVector(this.§[#7§.§>!H§,0,_loc1_);
         this.§%"=§ = _loc3_.createVertexBuffer(_loc1_,§ #b§.§@5§);
         this.§%"=§.uploadFromVector(this.§[#7§.§[#h§,0,_loc1_);
         this.§>9§ = _loc3_.createVertexBuffer(_loc1_,§ #b§.§&"q§);
         this.§>9§.uploadFromVector(this.§[#7§.§`#d§,0,_loc1_);
         this.§,#c§ = _loc3_.createIndexBuffer(_loc2_);
         this.§,#c§.uploadFromVector(this.§^"F§,0,_loc2_);
         this.§=!^§ = false;
      }
      
      private function §>#Y§() : void
      {
         if(this.§-!C§ == null)
         {
            this.§;"$§();
            this.§=!^§ = false;
         }
         else
         {
            this.§-!C§.uploadFromVector(this.§[#7§.§>!H§,0,this.§="5§ * 4);
            if(this.§;Z§ == null || this.tinted)
            {
               this.§%"=§.uploadFromVector(this.§[#7§.§[#h§,0,this.§="5§ * 4);
            }
            if(this.§;Z§)
            {
               this.§>9§.uploadFromVector(this.§[#7§.§`#d§,0,this.§="5§ * 4);
            }
            this.§=!^§ = false;
         }
      }
      
      public function §`#Z§(param1:§4!9§, param2:Matrix, param3:Number = 1.0, param4:int = -1) : void
      {
         if(this.§="5§ == 0)
         {
            return;
         }
         if(Starling.§3!I§.§#"9§ || this.§+"c§)
         {
            return;
         }
         if(this.§=!^§)
         {
            this.§>#Y§();
         }
         var _loc5_:Context3D = param1.context;
         var _loc6_:Boolean = this.§[#7§.premultipliedAlpha;
         var _loc7_:Boolean = this.§-#+§ || param3 != 1;
         var _loc8_:String = !!this.§;Z§ ? §82§(_loc7_,this.§;Z§.mipMapping,this.§;Z§.repeat,this.§;Z§.format,this.§5"8§) : §0"0§;
         §=!C§[0] = §=!C§[1] = §=!C§[2] = !!_loc6_ ? Number(param3) : Number(1);
         §=!C§[3] = param3;
         §<#^§.§+!h§(param2,§!5§);
         §4!9§.setBlendFactors(_loc6_,param4 != §9#6§.AUTO ? int(param4) : int(this.blendMode));
         param1.§=h§(Starling.§3!I§.§"#r§(_loc8_));
         _loc5_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,0,§=!C§,1);
         _loc5_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,1,§!5§,true);
         _loc5_.setVertexBufferAt(0,this.§-!C§,0,Context3DVertexBufferFormat.FLOAT_2);
         if(this.§;Z§ == null || _loc7_)
         {
            _loc5_.setVertexBufferAt(1,this.§%"=§,0,Context3DVertexBufferFormat.FLOAT_4);
         }
         if(this.§;Z§)
         {
            _loc5_.setTextureAt(0,this.§;Z§.getBase(_loc5_));
            _loc5_.setVertexBufferAt(2,this.§>9§,0,Context3DVertexBufferFormat.FLOAT_2);
         }
         _loc5_.drawTriangles(this.§,#c§,0,this.§="5§ * 2);
         if(this.§;Z§)
         {
            _loc5_.setTextureAt(0,null);
            _loc5_.setVertexBufferAt(2,null);
         }
         if(this.§;Z§ == null || _loc7_)
         {
            _loc5_.setVertexBufferAt(1,null);
         }
         _loc5_.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§="5§ = 0;
         this.§;Z§ = null;
         this.§5"8§ = §'#w§;
         this.§=!^§ = true;
      }
      
      public function §]!A§(param1:Image, param2:Number = 1.0, param3:Matrix = null, param4:int = -1) : void
      {
         this.addQuad(param1,param2,param1.texture,param1.smoothing,param3,param4);
      }
      
      public function addQuad(param1:§4";§, param2:Number = 1.0, param3:Texture = null, param4:int = 1, param5:Matrix = null, param6:int = -1) : void
      {
         if(param5 == null)
         {
            param5 = param1.§5!F§;
         }
         var _loc7_:Boolean = !!param3 ? param1.tinted || param2 != 1 : false;
         var _loc8_:Number = param2 * param1.alpha;
         var _loc9_:int = this.§="5§ * 4;
         if(this.§="5§ + param1.§""#§ > this.§[#7§.numVertices / 4)
         {
            this.§?$+§();
         }
         if(this.§="5§ == 0)
         {
            this.blendMode = param6 >= §9#6§.NONE ? int(param6) : int(param1.blendMode);
            this.§;Z§ = param3;
            this.§-#+§ = _loc7_;
            this.§5"8§ = param4;
            this.§[#7§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         param1.copyVertexDataTo(this.§[#7§,_loc9_,_loc7_,param5);
         if(_loc8_ != 1)
         {
            this.§[#7§.§^&§(_loc9_,_loc8_,4);
         }
         this.§=!^§ = true;
         this.§="5§ += param1.§""#§;
      }
      
      public function §!u§(param1:§9$'§, param2:Number = 1.0, param3:Matrix = null, param4:int = -1) : void
      {
         if(param3 == null)
         {
            param3 = param1.§5!F§;
         }
         var _loc5_:Boolean = param1.§-#+§ || param2 != 1;
         var _loc6_:Number = param2 * param1.alpha;
         var _loc7_:int = this.§="5§ * 4;
         var _loc8_:int = param1.§[r§;
         if(this.§="5§ + _loc8_ > this.§[4§)
         {
            this.§?$+§(this.§="5§ + _loc8_);
         }
         if(this.§="5§ == 0)
         {
            this.blendMode = param4 >= §9#6§.NONE ? int(param4) : int(param1.blendMode);
            this.§;Z§ = param1.§;Z§;
            this.§-#+§ = _loc5_;
            this.§5"8§ = param1.§5"8§;
            this.§[#7§.setPremultipliedAlpha(param1.§[#7§.premultipliedAlpha,false);
         }
         param1.§[#7§.copyTo(this.§[#7§,_loc7_,0,_loc8_ * 4,true,_loc5_ || _loc6_,this.§;Z§ != null,param3);
         if(_loc6_ != 1)
         {
            this.§[#7§.§^&§(_loc7_,_loc6_,_loc8_ * 4);
         }
         this.§=!^§ = true;
         this.§="5§ += _loc8_;
      }
      
      public function isStateChange(param1:Boolean, param2:Number, param3:Texture, param4:int, param5:int, param6:int) : Boolean
      {
         if(this.§;Z§ != null)
         {
            if(param3 != null)
            {
               return this.§;Z§.root != param3.root || this.§5"8§ != param4 || this.§-#+§ != (param1 || param2 != 1) || this.§="5§ + param6 > 8192 || this.§;Z§.repeat != param3.repeat || this.blendMode != param5;
            }
            return true;
         }
         if(param3 != null)
         {
            return this.§="5§ > 0;
         }
         return this.§="5§ + param6 > 8192;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         if(param2 == null)
         {
            param2 = new Rectangle();
         }
         var _loc3_:Matrix = param1 == this ? null : §!"?§(param1,§0$-§);
         return this.§[#7§.getBounds(_loc3_,0,this.§="5§ * 4,param2);
      }
      
      override public function render(param1:§4!9§, param2:Number) : void
      {
         if(this.§="5§)
         {
            param1.§%"6§();
            param1.§&!f§();
            this.§`#Z§(param1,param1.§!!M§,alpha * param2,param1.blendMode);
         }
      }
      
      public function get §[r§() : int
      {
         return this.§="5§;
      }
      
      public function get tinted() : Boolean
      {
         return this.§-#+§;
      }
      
      public function get texture() : Texture
      {
         return this.§;Z§;
      }
      
      public function get smoothing() : int
      {
         return this.§5"8§;
      }
      
      private function get §[4§() : int
      {
         return this.§[#7§.numVertices / 4;
      }
   }
}
