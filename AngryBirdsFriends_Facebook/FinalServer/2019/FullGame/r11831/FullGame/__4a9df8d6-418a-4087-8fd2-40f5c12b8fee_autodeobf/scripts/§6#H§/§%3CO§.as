package §6#H§
{
   import §!$;§.Event;
   import §"#z§.Texture;
   import §'!j§.Starling;
   import §'!j§.§^$$§;
   import §,#=§.§0C§;
   import §,#=§.§>V§;
   import §?$%§.§&"@§;
   import §?$%§.§-#C§;
   import §]"Q§.AGALMiniAssembler;
   import §]#a§.§;L§;
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
   
   public class §<O§ extends DisplayObject
   {
      
      private static const §7!`§:String = "QB_q";
      
      public static const §]X§:int = 0;
      
      public static const §6!4§:int = 1;
      
      public static const §>#z§:int = 2;
      
      private static var §-#[§:Matrix = new Matrix();
      
      private static var §4!9§:Vector.<Number> = new <Number>[1,1,1,1];
      
      private static var §!V§:Matrix3D = new Matrix3D();
      
      private static var §%"`§:Dictionary = new Dictionary();
       
      
      private var §,!`§:int;
      
      private var §&!h§:Boolean;
      
      private var §9$@§:Boolean;
      
      private var §;!D§:Texture;
      
      private var §`C§:int;
      
      private var §0$9§:§0C§;
      
      private var §"$<§:VertexBuffer3D;
      
      private var §,m§:VertexBuffer3D;
      
      private var §9#r§:VertexBuffer3D;
      
      private var §[V§:Vector.<uint>;
      
      private var § #+§:IndexBuffer3D;
      
      private var §=#C§:Boolean = false;
      
      public function §<O§()
      {
         super();
         this.§0$9§ = new §0C§(0,true);
         this.§[V§ = new Vector.<uint>(0);
         this.§,!`§ = 0;
         this.§9$@§ = false;
         this.§&!h§ = false;
         Starling.§>x§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§%"]§,false,0,true);
      }
      
      public static function §9#K§(param1:DisplayObject, param2:Vector.<§<O§>) : void
      {
         §`$@§(param1,param2,-1,new Matrix());
      }
      
      private static function §`$@§(param1:DisplayObject, param2:Vector.<§<O§>, param3:int, param4:Matrix, param5:Number = 1.0, param6:int = -1, param7:Boolean = false) : int
      {
         var _loc8_:int = 0;
         var _loc9_:§<O§ = null;
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
         var _loc13_:§,"$§ = param1 as §,"$§;
         var _loc14_:§<O§ = param1 as §<O§;
         var _loc15_:§&"@§ = param1.filter;
         if(param3 == -1)
         {
            _loc10_ = true;
            param3 = 0;
            _loc11_ = 1;
            param6 = param1.blendMode;
            if(param2.length == 0)
            {
               param2.push(new §<O§());
            }
            else
            {
               param2[0].reset();
            }
         }
         if(_loc15_ && !param7)
         {
            if(_loc15_.§+1§ == §-#C§.§;!1§)
            {
               param3 = §`$@§(param1,param2,param3,param4,param5,param6,true);
            }
            param3 = §`$@§(_loc15_.§9#K§(param1),param2,param3,param4,param5,param6);
            if(_loc15_.§+1§ == §-#C§.§6!&§)
            {
               param3 = §`$@§(param1,param2,param3,param4,param5,param6,true);
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
                  _loc20_ = _loc18_.blendMode == §+!'§.AUTO ? int(param6) : int(_loc18_.blendMode);
                  _loc17_.copyFrom(param4);
                  §^$$§.§,#e§(_loc17_,_loc18_);
                  param3 = §`$@§(_loc18_,param2,param3,_loc17_,param5 * _loc11_,_loc20_);
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
               _loc22_ = !!_loc25_ ? int(_loc25_.smoothing) : int(Image.§6!4§);
               _loc23_ = _loc13_.tinted;
               _loc24_ = _loc13_.§1U§;
            }
            else
            {
               _loc21_ = _loc14_.§;!D§;
               _loc22_ = _loc14_.§`C§;
               _loc23_ = _loc14_.§9$@§;
               _loc24_ = _loc14_.§,!`§;
            }
            if((_loc9_ = param2[param3]).isStateChange(_loc23_,param5 * _loc11_,_loc21_,_loc22_,param6,_loc24_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §<O§());
               }
               (_loc9_ = param2[param3]).reset();
            }
            if(_loc13_)
            {
               _loc9_.addQuad(_loc13_,param5,_loc21_,_loc22_,param4,param6);
            }
            else
            {
               _loc9_.§"#8§(_loc14_,param5,param4,param6);
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
      
      private static function §-"r§() : void
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
         var _loc1_:Starling = Starling.§>x§;
         if(_loc1_.§5!=§(§7!`§))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         _loc3_ = "m44 op, va0, vc1 \n" + "mul v0, va1, vc0 \n";
         _loc4_ = "mov oc, v0       \n";
         _loc1_.§;$>§(§7!`§,_loc2_.§5#?§(Context3DProgramType.VERTEX,_loc3_),_loc2_.§5#?§(Context3DProgramType.FRAGMENT,_loc4_));
         for each(_loc5_ in [true,false])
         {
            _loc3_ = !!_loc5_ ? "m44 op, va0, vc1 \n" + "mul v0, va1, vc0 \n" + "mov v1, va2      \n" : "m44 op, va0, vc1 \n" + "mov v1, va2      \n";
            _loc4_ = !!_loc5_ ? "tex ft1,  v1, fs0 <???> \n" + "mul  oc, ft1,  v0       \n" : "tex  oc,  v1, fs0 <???> \n";
            _loc6_ = [Image.§]X§,Image.§6!4§,Image.§>#z§];
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
                        if(_loc10_ == Image.§]X§)
                        {
                           _loc12_.push("nearest",!!_loc9_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc10_ == Image.§6!4§)
                        {
                           _loc12_.push("linear",!!_loc9_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc9_ ? "miplinear" : "mipnone");
                        }
                        _loc1_.§;$>§(§8!9§(_loc5_,_loc9_,_loc8_,_loc11_,_loc10_),_loc2_.§5#?§(Context3DProgramType.VERTEX,_loc3_),_loc2_.§5#?§(Context3DProgramType.FRAGMENT,_loc4_.replace("???",_loc12_.join())));
                     }
                  }
               }
            }
         }
      }
      
      private static function §8!9§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bgra", param5:int = 1) : String
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
         if(param5 == §]X§)
         {
            _loc6_ |= 1 << 3;
         }
         else if(param5 == §>#z§)
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
         if((_loc7_ = §%"`§[_loc6_]) == null)
         {
            _loc7_ = "QB_i." + _loc6_.toString(16);
            §%"`§[_loc6_] = _loc7_;
         }
         return _loc7_;
      }
      
      override public function dispose() : void
      {
         this.§=#C§ = true;
         Starling.§>x§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§%"]§);
         if(this.§"$<§)
         {
            this.§"$<§.dispose();
         }
         if(this.§,m§)
         {
            this.§,m§.dispose();
         }
         if(this.§9#r§)
         {
            this.§9#r§.dispose();
         }
         if(this.§ #+§)
         {
            this.§ #+§.dispose();
         }
         super.dispose();
      }
      
      private function §%"]§(param1:Object) : void
      {
         this.§<"G§();
         §-"r§();
      }
      
      public function clone() : §<O§
      {
         var _loc1_:§<O§ = new §<O§();
         _loc1_.§0$9§ = this.§0$9§.clone(0,this.§,!`§ * 4);
         _loc1_.§[V§ = this.§[V§.slice(0,this.§,!`§ * 6);
         _loc1_.§,!`§ = this.§,!`§;
         _loc1_.§9$@§ = this.§9$@§;
         _loc1_.§;!D§ = this.§;!D§;
         _loc1_.§`C§ = this.§`C§;
         _loc1_.§&!h§ = true;
         _loc1_.blendMode = blendMode;
         _loc1_.alpha = alpha;
         return _loc1_;
      }
      
      private function §"" §(param1:int = -1) : void
      {
         var _loc2_:int = this.§6#5§;
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
         this.§0$9§.numVertices = param1 * 4;
         var _loc3_:int = _loc2_;
         while(_loc3_ < param1)
         {
            this.§[V§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§[V§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§[V§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§[V§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§[V§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§[V§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§<"G§();
         §-"r§();
      }
      
      private function §<"G§() : void
      {
         var _loc1_:int = this.§0$9§.numVertices;
         var _loc2_:int = this.§[V§.length;
         var _loc3_:Context3D = Starling.context;
         if(this.§"$<§)
         {
            this.§"$<§.dispose();
         }
         if(this.§,m§)
         {
            this.§,m§.dispose();
         }
         if(this.§9#r§)
         {
            this.§9#r§.dispose();
         }
         if(this.§ #+§)
         {
            this.§ #+§.dispose();
         }
         if(_loc1_ == 0)
         {
            return;
         }
         if(_loc3_ == null)
         {
            throw new §;L§();
         }
         this.§"$<§ = _loc3_.createVertexBuffer(_loc1_,§0C§.§&#Y§);
         this.§"$<§.uploadFromVector(this.§0$9§.§8"B§,0,_loc1_);
         this.§,m§ = _loc3_.createVertexBuffer(_loc1_,§0C§.§1!C§);
         this.§,m§.uploadFromVector(this.§0$9§.§?#e§,0,_loc1_);
         this.§9#r§ = _loc3_.createVertexBuffer(_loc1_,§0C§.§<!2§);
         this.§9#r§.uploadFromVector(this.§0$9§.§3#3§,0,_loc1_);
         this.§ #+§ = _loc3_.createIndexBuffer(_loc2_);
         this.§ #+§.uploadFromVector(this.§[V§,0,_loc2_);
         this.§&!h§ = false;
      }
      
      private function §8#U§() : void
      {
         if(this.§"$<§ == null)
         {
            this.§<"G§();
            this.§&!h§ = false;
         }
         else
         {
            this.§"$<§.uploadFromVector(this.§0$9§.§8"B§,0,this.§,!`§ * 4);
            if(this.§;!D§ == null || this.tinted)
            {
               this.§,m§.uploadFromVector(this.§0$9§.§?#e§,0,this.§,!`§ * 4);
            }
            if(this.§;!D§)
            {
               this.§9#r§.uploadFromVector(this.§0$9§.§3#3§,0,this.§,!`§ * 4);
            }
            this.§&!h§ = false;
         }
      }
      
      public function §?"@§(param1:§^$$§, param2:Matrix, param3:Number = 1.0, param4:int = -1) : void
      {
         if(this.§,!`§ == 0)
         {
            return;
         }
         if(Starling.§>x§.§-!Z§ || this.§=#C§)
         {
            return;
         }
         if(this.§&!h§)
         {
            this.§8#U§();
         }
         var _loc5_:Context3D = param1.context;
         var _loc6_:Boolean = this.§0$9§.premultipliedAlpha;
         var _loc7_:Boolean = this.§9$@§ || param3 != 1;
         var _loc8_:String = !!this.§;!D§ ? §8!9§(_loc7_,this.§;!D§.mipMapping,this.§;!D§.repeat,this.§;!D§.format,this.§`C§) : §7!`§;
         §4!9§[0] = §4!9§[1] = §4!9§[2] = !!_loc6_ ? Number(param3) : Number(1);
         §4!9§[3] = param3;
         §>V§.§!$3§(param2,§!V§);
         §^$$§.setBlendFactors(_loc6_,param4 != §+!'§.AUTO ? int(param4) : int(this.blendMode));
         param1.§8$C§(Starling.§>x§.§!"l§(_loc8_));
         _loc5_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,0,§4!9§,1);
         _loc5_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,1,§!V§,true);
         _loc5_.setVertexBufferAt(0,this.§"$<§,0,Context3DVertexBufferFormat.FLOAT_2);
         if(this.§;!D§ == null || _loc7_)
         {
            _loc5_.setVertexBufferAt(1,this.§,m§,0,Context3DVertexBufferFormat.FLOAT_4);
         }
         if(this.§;!D§)
         {
            _loc5_.setTextureAt(0,this.§;!D§.getBase(_loc5_));
            _loc5_.setVertexBufferAt(2,this.§9#r§,0,Context3DVertexBufferFormat.FLOAT_2);
         }
         _loc5_.drawTriangles(this.§ #+§,0,this.§,!`§ * 2);
         if(this.§;!D§)
         {
            _loc5_.setTextureAt(0,null);
            _loc5_.setVertexBufferAt(2,null);
         }
         if(this.§;!D§ == null || _loc7_)
         {
            _loc5_.setVertexBufferAt(1,null);
         }
         _loc5_.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§,!`§ = 0;
         this.§;!D§ = null;
         this.§`C§ = §6!4§;
         this.§&!h§ = true;
      }
      
      public function §6#o§(param1:Image, param2:Number = 1.0, param3:Matrix = null, param4:int = -1) : void
      {
         this.addQuad(param1,param2,param1.texture,param1.smoothing,param3,param4);
      }
      
      public function addQuad(param1:§,"$§, param2:Number = 1.0, param3:Texture = null, param4:int = 1, param5:Matrix = null, param6:int = -1) : void
      {
         if(param5 == null)
         {
            param5 = param1.§0"R§;
         }
         var _loc7_:Boolean = !!param3 ? param1.tinted || param2 != 1 : false;
         var _loc8_:Number = param2 * param1.alpha;
         var _loc9_:int = this.§,!`§ * 4;
         if(this.§,!`§ + param1.§1U§ > this.§0$9§.numVertices / 4)
         {
            this.§"" §();
         }
         if(this.§,!`§ == 0)
         {
            this.blendMode = param6 >= §+!'§.NONE ? int(param6) : int(param1.blendMode);
            this.§;!D§ = param3;
            this.§9$@§ = _loc7_;
            this.§`C§ = param4;
            this.§0$9§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         param1.copyVertexDataTo(this.§0$9§,_loc9_,_loc7_,param5);
         if(_loc8_ != 1)
         {
            this.§0$9§.§<!B§(_loc9_,_loc8_,4);
         }
         this.§&!h§ = true;
         this.§,!`§ += param1.§1U§;
      }
      
      public function §"#8§(param1:§<O§, param2:Number = 1.0, param3:Matrix = null, param4:int = -1) : void
      {
         if(param3 == null)
         {
            param3 = param1.§0"R§;
         }
         var _loc5_:Boolean = param1.§9$@§ || param2 != 1;
         var _loc6_:Number = param2 * param1.alpha;
         var _loc7_:int = this.§,!`§ * 4;
         var _loc8_:int = param1.§-",§;
         if(this.§,!`§ + _loc8_ > this.§6#5§)
         {
            this.§"" §(this.§,!`§ + _loc8_);
         }
         if(this.§,!`§ == 0)
         {
            this.blendMode = param4 >= §+!'§.NONE ? int(param4) : int(param1.blendMode);
            this.§;!D§ = param1.§;!D§;
            this.§9$@§ = _loc5_;
            this.§`C§ = param1.§`C§;
            this.§0$9§.setPremultipliedAlpha(param1.§0$9§.premultipliedAlpha,false);
         }
         param1.§0$9§.copyTo(this.§0$9§,_loc7_,0,_loc8_ * 4,true,_loc5_ || _loc6_,this.§;!D§ != null,param3);
         if(_loc6_ != 1)
         {
            this.§0$9§.§<!B§(_loc7_,_loc6_,_loc8_ * 4);
         }
         this.§&!h§ = true;
         this.§,!`§ += _loc8_;
      }
      
      public function isStateChange(param1:Boolean, param2:Number, param3:Texture, param4:int, param5:int, param6:int) : Boolean
      {
         if(this.§;!D§ != null)
         {
            if(param3 != null)
            {
               return this.§;!D§.root != param3.root || this.§`C§ != param4 || this.§9$@§ != (param1 || param2 != 1) || this.§,!`§ + param6 > 8192 || this.§;!D§.repeat != param3.repeat || this.blendMode != param5;
            }
            return true;
         }
         if(param3 != null)
         {
            return this.§,!`§ > 0;
         }
         return this.§,!`§ + param6 > 8192;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         if(param2 == null)
         {
            param2 = new Rectangle();
         }
         var _loc3_:Matrix = param1 == this ? null : §+#W§(param1,§-#[§);
         return this.§0$9§.getBounds(_loc3_,0,this.§,!`§ * 4,param2);
      }
      
      override public function render(param1:§^$$§, param2:Number) : void
      {
         if(this.§,!`§)
         {
            param1.§5!#§();
            param1.§0!g§();
            this.§?"@§(param1,param1.§7"g§,alpha * param2,param1.blendMode);
         }
      }
      
      public function get §-",§() : int
      {
         return this.§,!`§;
      }
      
      public function get tinted() : Boolean
      {
         return this.§9$@§;
      }
      
      public function get texture() : Texture
      {
         return this.§;!D§;
      }
      
      public function get smoothing() : int
      {
         return this.§`C§;
      }
      
      private function get §6#5§() : int
      {
         return this.§0$9§.numVertices / 4;
      }
   }
}
