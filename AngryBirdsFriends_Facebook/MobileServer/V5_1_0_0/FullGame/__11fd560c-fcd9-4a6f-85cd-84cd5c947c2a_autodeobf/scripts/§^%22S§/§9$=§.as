package §^"S§
{
   import §!!1§.AGALMiniAssembler;
   import §+#B§.§;$%§;
   import §5!D§.§[!b§;
   import §5!D§.§`e§;
   import §5#m§.Event;
   import §9!<§.§+#q§;
   import §9!<§.§-!_§;
   import §9$;§.Texture;
   import §?"e§.Starling;
   import §?"e§.§[!Z§;
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
   
   public class §9$=§ extends DisplayObject
   {
      
      private static const §7W§:String = "QB_q";
      
      public static const §^"9§:int = 0;
      
      public static const §'#y§:int = 1;
      
      public static const §%!%§:int = 2;
      
      private static var §5#^§:Matrix = new Matrix();
      
      private static var §7"S§:Vector.<Number> = new <Number>[1,1,1,1];
      
      private static var §4"5§:Matrix3D = new Matrix3D();
      
      private static var §%"O§:Dictionary = new Dictionary();
       
      
      private var §&;§:int;
      
      private var §[!x§:Boolean;
      
      private var §[#v§:Boolean;
      
      private var §6!4§:Texture;
      
      private var §7V§:int;
      
      private var §3!n§:§`e§;
      
      private var § #4§:VertexBuffer3D;
      
      private var §?!2§:VertexBuffer3D;
      
      private var §[b§:VertexBuffer3D;
      
      private var §[!`§:Vector.<uint>;
      
      private var §#"?§:IndexBuffer3D;
      
      public function §9$=§()
      {
         super();
         this.§3!n§ = new §`e§(0,true);
         this.§[!`§ = new Vector.<uint>(0);
         this.§&;§ = 0;
         this.§[#v§ = false;
         this.§[!x§ = false;
         Starling.§@#K§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§!G§,false,0,true);
      }
      
      public static function §'!%§(param1:DisplayObject, param2:Vector.<§9$=§>) : void
      {
         §""s§(param1,param2,-1,new Matrix());
      }
      
      private static function §""s§(param1:DisplayObject, param2:Vector.<§9$=§>, param3:int, param4:Matrix, param5:Number = 1.0, param6:int = -1, param7:Boolean = false) : int
      {
         var _loc8_:int = 0;
         var _loc9_:§9$=§ = null;
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
         var _loc13_:§'#E§ = param1 as §'#E§;
         var _loc14_:§9$=§ = param1 as §9$=§;
         var _loc15_:§-!_§ = param1.filter;
         if(param3 == -1)
         {
            _loc10_ = true;
            param3 = 0;
            _loc11_ = 1;
            param6 = param1.blendMode;
            if(param2.length == 0)
            {
               param2.push(new §9$=§());
            }
            else
            {
               param2[0].reset();
            }
         }
         if(_loc15_ && !param7)
         {
            if(_loc15_.§!!v§ == §+#q§.§[#f§)
            {
               param3 = §""s§(param1,param2,param3,param4,param5,param6,true);
            }
            param3 = §""s§(_loc15_.§'!%§(param1),param2,param3,param4,param5,param6);
            if(_loc15_.§!!v§ == §+#q§.§[!-§)
            {
               param3 = §""s§(param1,param2,param3,param4,param5,param6,true);
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
                  _loc20_ = _loc18_.blendMode == §>$7§.AUTO ? int(param6) : int(_loc18_.blendMode);
                  _loc17_.copyFrom(param4);
                  §[!Z§.§2"l§(_loc17_,_loc18_);
                  param3 = §""s§(_loc18_,param2,param3,_loc17_,param5 * _loc11_,_loc20_);
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
               _loc22_ = !!_loc25_ ? int(_loc25_.smoothing) : int(Image.§'#y§);
               _loc23_ = _loc13_.tinted;
               _loc24_ = _loc13_.§,!Y§;
            }
            else
            {
               _loc21_ = _loc14_.§6!4§;
               _loc22_ = _loc14_.§7V§;
               _loc23_ = _loc14_.§[#v§;
               _loc24_ = _loc14_.§&;§;
            }
            if((_loc9_ = param2[param3]).isStateChange(_loc23_,param5 * _loc11_,_loc21_,_loc22_,param6,_loc24_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §9$=§());
               }
               (_loc9_ = param2[param3]).reset();
            }
            if(_loc13_)
            {
               _loc9_.addQuad(_loc13_,param5,_loc21_,_loc22_,param4,param6);
            }
            else
            {
               _loc9_.§ 3§(_loc14_,param5,param4,param6);
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
      
      private static function §+#D§() : void
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
         var _loc1_:Starling = Starling.§@#K§;
         if(_loc1_.§`!b§(§7W§))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         _loc3_ = "m44 op, va0, vc1 \n" + "mul v0, va1, vc0 \n";
         _loc4_ = "mov oc, v0       \n";
         _loc1_.§;F§(§7W§,_loc2_.§2#1§(Context3DProgramType.VERTEX,_loc3_),_loc2_.§2#1§(Context3DProgramType.FRAGMENT,_loc4_));
         for each(_loc5_ in [true,false])
         {
            _loc3_ = !!_loc5_ ? "m44 op, va0, vc1 \n" + "mul v0, va1, vc0 \n" + "mov v1, va2      \n" : "m44 op, va0, vc1 \n" + "mov v1, va2      \n";
            _loc4_ = !!_loc5_ ? "tex ft1,  v1, fs0 <???> \n" + "mul  oc, ft1,  v0       \n" : "tex  oc,  v1, fs0 <???> \n";
            _loc6_ = [Image.§^"9§,Image.§'#y§,Image.§%!%§];
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
                        if(_loc10_ == Image.§^"9§)
                        {
                           _loc12_.push("nearest",!!_loc9_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc10_ == Image.§'#y§)
                        {
                           _loc12_.push("linear",!!_loc9_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc9_ ? "miplinear" : "mipnone");
                        }
                        _loc1_.§;F§(§<!§(_loc5_,_loc9_,_loc8_,_loc11_,_loc10_),_loc2_.§2#1§(Context3DProgramType.VERTEX,_loc3_),_loc2_.§2#1§(Context3DProgramType.FRAGMENT,_loc4_.replace("???",_loc12_.join())));
                     }
                  }
               }
            }
         }
      }
      
      private static function §<!§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bgra", param5:int = 1) : String
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
         if(param5 == §^"9§)
         {
            _loc6_ |= 1 << 3;
         }
         else if(param5 == §%!%§)
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
         if((_loc7_ = §%"O§[_loc6_]) == null)
         {
            _loc7_ = "QB_i." + _loc6_.toString(16);
            §%"O§[_loc6_] = _loc7_;
         }
         return _loc7_;
      }
      
      override public function dispose() : void
      {
         Starling.§@#K§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§!G§);
         if(this.§ #4§)
         {
            this.§ #4§.dispose();
         }
         if(this.§?!2§)
         {
            this.§?!2§.dispose();
         }
         if(this.§[b§)
         {
            this.§[b§.dispose();
         }
         if(this.§#"?§)
         {
            this.§#"?§.dispose();
         }
         super.dispose();
      }
      
      private function §!G§(param1:Object) : void
      {
         this.§'#T§();
         §+#D§();
      }
      
      public function clone() : §9$=§
      {
         var _loc1_:§9$=§ = new §9$=§();
         _loc1_.§3!n§ = this.§3!n§.clone(0,this.§&;§ * 4);
         _loc1_.§[!`§ = this.§[!`§.slice(0,this.§&;§ * 6);
         _loc1_.§&;§ = this.§&;§;
         _loc1_.§[#v§ = this.§[#v§;
         _loc1_.§6!4§ = this.§6!4§;
         _loc1_.§7V§ = this.§7V§;
         _loc1_.§[!x§ = true;
         _loc1_.blendMode = blendMode;
         _loc1_.alpha = alpha;
         return _loc1_;
      }
      
      private function §&"u§(param1:int = -1) : void
      {
         var _loc2_:int = this.§,'§;
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
         this.§3!n§.numVertices = param1 * 4;
         var _loc3_:int = _loc2_;
         while(_loc3_ < param1)
         {
            this.§[!`§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§[!`§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§[!`§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§[!`§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§[!`§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§[!`§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§'#T§();
         §+#D§();
      }
      
      private function §'#T§() : void
      {
         var _loc1_:int = this.§3!n§.numVertices;
         var _loc2_:int = this.§[!`§.length;
         var _loc3_:Context3D = Starling.context;
         if(this.§ #4§)
         {
            this.§ #4§.dispose();
         }
         if(this.§?!2§)
         {
            this.§?!2§.dispose();
         }
         if(this.§[b§)
         {
            this.§[b§.dispose();
         }
         if(this.§#"?§)
         {
            this.§#"?§.dispose();
         }
         if(_loc1_ == 0)
         {
            return;
         }
         if(_loc3_ == null)
         {
            throw new §;$%§();
         }
         this.§ #4§ = _loc3_.createVertexBuffer(_loc1_,§`e§.§9$3§);
         this.§ #4§.uploadFromVector(this.§3!n§.§;!M§,0,_loc1_);
         this.§?!2§ = _loc3_.createVertexBuffer(_loc1_,§`e§.§#'§);
         this.§?!2§.uploadFromVector(this.§3!n§.§3"`§,0,_loc1_);
         this.§[b§ = _loc3_.createVertexBuffer(_loc1_,§`e§.§,$9§);
         this.§[b§.uploadFromVector(this.§3!n§.§7""§,0,_loc1_);
         this.§#"?§ = _loc3_.createIndexBuffer(_loc2_);
         this.§#"?§.uploadFromVector(this.§[!`§,0,_loc2_);
         this.§[!x§ = false;
      }
      
      private function §&!z§() : void
      {
         if(this.§ #4§ == null)
         {
            this.§'#T§();
         }
         else
         {
            this.§ #4§.uploadFromVector(this.§3!n§.§;!M§,0,this.§3!n§.numVertices);
            if(this.§6!4§ == null || this.tinted)
            {
               this.§?!2§.uploadFromVector(this.§3!n§.§3"`§,0,this.§3!n§.numVertices);
            }
            if(this.§6!4§)
            {
               this.§[b§.uploadFromVector(this.§3!n§.§7""§,0,this.§3!n§.numVertices);
            }
            this.§[!x§ = false;
         }
      }
      
      public function §[!h§(param1:§[!Z§, param2:Matrix, param3:Number = 1.0, param4:int = -1) : void
      {
         if(this.§&;§ == 0)
         {
            return;
         }
         if(this.§[!x§)
         {
            this.§&!z§();
         }
         var _loc5_:Context3D = param1.context;
         var _loc6_:Boolean = this.§3!n§.premultipliedAlpha;
         var _loc7_:Boolean = this.§[#v§ || param3 != 1;
         var _loc8_:String = !!this.§6!4§ ? §<!§(_loc7_,this.§6!4§.mipMapping,this.§6!4§.repeat,this.§6!4§.format,this.§7V§) : §7W§;
         §7"S§[0] = §7"S§[1] = §7"S§[2] = !!_loc6_ ? Number(param3) : Number(1);
         §7"S§[3] = param3;
         §[!b§.§do§(param2,§4"5§);
         §[!Z§.setBlendFactors(_loc6_,param4 != §>$7§.AUTO ? int(param4) : int(this.blendMode));
         param1.§5U§(Starling.§@#K§.§"#F§(_loc8_));
         _loc5_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,0,§7"S§,1);
         _loc5_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,1,§4"5§,true);
         _loc5_.setVertexBufferAt(0,this.§ #4§,0,Context3DVertexBufferFormat.FLOAT_2);
         if(this.§6!4§ == null || _loc7_)
         {
            _loc5_.setVertexBufferAt(1,this.§?!2§,0,Context3DVertexBufferFormat.FLOAT_4);
         }
         if(this.§6!4§)
         {
            _loc5_.setTextureAt(0,this.§6!4§.getBase(_loc5_));
            _loc5_.setVertexBufferAt(2,this.§[b§,0,Context3DVertexBufferFormat.FLOAT_2);
         }
         _loc5_.drawTriangles(this.§#"?§,0,this.§&;§ * 2);
         if(this.§6!4§)
         {
            _loc5_.setTextureAt(0,null);
            _loc5_.setVertexBufferAt(2,null);
         }
         if(this.§6!4§ == null || _loc7_)
         {
            _loc5_.setVertexBufferAt(1,null);
         }
         _loc5_.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§&;§ = 0;
         this.§6!4§ = null;
         this.§7V§ = §'#y§;
         this.§[!x§ = true;
      }
      
      public function §2#4§(param1:Image, param2:Number = 1.0, param3:Matrix = null, param4:int = -1) : void
      {
         this.addQuad(param1,param2,param1.texture,param1.smoothing,param3,param4);
      }
      
      public function addQuad(param1:§'#E§, param2:Number = 1.0, param3:Texture = null, param4:int = 1, param5:Matrix = null, param6:int = -1) : void
      {
         if(param5 == null)
         {
            param5 = param1.§!C§;
         }
         var _loc7_:Boolean = !!param3 ? param1.tinted || param2 != 1 : false;
         var _loc8_:Number = param2 * param1.alpha;
         var _loc9_:int = this.§&;§ * 4;
         if(this.§&;§ + param1.§,!Y§ > this.§3!n§.numVertices / 4)
         {
            this.§&"u§();
         }
         if(this.§&;§ == 0)
         {
            this.blendMode = param6 >= §>$7§.NONE ? int(param6) : int(param1.blendMode);
            this.§6!4§ = param3;
            this.§[#v§ = _loc7_;
            this.§7V§ = param4;
            this.§3!n§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         param1.copyVertexDataTo(this.§3!n§,_loc9_,_loc7_,param5);
         if(_loc8_ != 1)
         {
            this.§3!n§.§ &§(_loc9_,_loc8_,4);
         }
         this.§[!x§ = true;
         this.§&;§ += param1.§,!Y§;
      }
      
      public function § 3§(param1:§9$=§, param2:Number = 1.0, param3:Matrix = null, param4:int = -1) : void
      {
         if(param3 == null)
         {
            param3 = param1.§!C§;
         }
         var _loc5_:Boolean = param1.§[#v§ || param2 != 1;
         var _loc6_:Number = param2 * param1.alpha;
         var _loc7_:int = this.§&;§ * 4;
         var _loc8_:int = param1.§"L§;
         if(this.§&;§ + _loc8_ > this.§,'§)
         {
            this.§&"u§(this.§&;§ + _loc8_);
         }
         if(this.§&;§ == 0)
         {
            this.blendMode = param4 >= §>$7§.NONE ? int(param4) : int(param1.blendMode);
            this.§6!4§ = param1.§6!4§;
            this.§[#v§ = _loc5_;
            this.§7V§ = param1.§7V§;
            this.§3!n§.setPremultipliedAlpha(param1.§3!n§.premultipliedAlpha,false);
         }
         param1.§3!n§.copyTo(this.§3!n§,_loc7_,0,_loc8_ * 4,true,_loc5_ || _loc6_,this.§6!4§ != null,param3);
         if(_loc6_ != 1)
         {
            this.§3!n§.§ &§(_loc7_,_loc6_,_loc8_ * 4);
         }
         this.§[!x§ = true;
         this.§&;§ += _loc8_;
      }
      
      public function isStateChange(param1:Boolean, param2:Number, param3:Texture, param4:int, param5:int, param6:int) : Boolean
      {
         if(this.§6!4§ != null)
         {
            if(param3 != null)
            {
               return this.§6!4§.root != param3.root || this.§7V§ != param4 || this.§[#v§ != (param1 || param2 != 1) || this.§&;§ + param6 > 8192 || this.§6!4§.repeat != param3.repeat || this.blendMode != param5;
            }
            return true;
         }
         if(param3 != null)
         {
            return this.§&;§ > 0;
         }
         return this.§&;§ + param6 > 8192;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         if(param2 == null)
         {
            param2 = new Rectangle();
         }
         var _loc3_:Matrix = param1 == this ? null : §3[§(param1,§5#^§);
         return this.§3!n§.getBounds(_loc3_,0,this.§&;§ * 4,param2);
      }
      
      override public function render(param1:§[!Z§, param2:Number) : void
      {
         if(this.§&;§)
         {
            param1.§>#s§();
            param1.§>"b§();
            this.§[!h§(param1,param1.§4$,§,alpha * param2,param1.blendMode);
         }
      }
      
      public function get §"L§() : int
      {
         return this.§&;§;
      }
      
      public function get tinted() : Boolean
      {
         return this.§[#v§;
      }
      
      public function get texture() : Texture
      {
         return this.§6!4§;
      }
      
      public function get smoothing() : int
      {
         return this.§7V§;
      }
      
      private function get §,'§() : int
      {
         return this.§3!n§.numVertices / 4;
      }
   }
}
