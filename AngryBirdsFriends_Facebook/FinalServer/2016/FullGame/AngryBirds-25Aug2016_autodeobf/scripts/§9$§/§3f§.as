package §9$§
{
   import §'#Z§.§1#w§;
   import §1&§.Texture;
   import §4"D§.§,#@§;
   import §4"D§.§^!]§;
   import §9#U§.AGALMiniAssembler;
   import §<#l§.§ !`§;
   import §<#l§.§+"i§;
   import §?a§.Event;
   import §^a§.§'"1§;
   import §^a§.Starling;
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
   
   public class §3f§ extends DisplayObject
   {
      
      private static const §>!3§:String = "QB_q";
      
      public static const §="8§:int = 0;
      
      public static const §>!U§:int = 1;
      
      public static const §-#`§:int = 2;
      
      private static var §5#e§:Matrix = new Matrix();
      
      private static var §7#k§:Vector.<Number> = new <Number>[1,1,1,1];
      
      private static var §,!M§:Matrix3D = new Matrix3D();
      
      private static var §6#S§:Dictionary = new Dictionary();
       
      
      private var §-A§:int;
      
      private var §7$%§:Boolean;
      
      private var §&#<§:Boolean;
      
      private var §3!L§:Texture;
      
      private var §4$8§:int;
      
      private var §'#B§:§,#@§;
      
      private var §3!$§:VertexBuffer3D;
      
      private var §"$-§:VertexBuffer3D;
      
      private var §1$-§:VertexBuffer3D;
      
      private var § !w§:Vector.<uint>;
      
      private var §=t§:IndexBuffer3D;
      
      public function §3f§()
      {
         super();
         this.§'#B§ = new §,#@§(0,true);
         this.§ !w§ = new Vector.<uint>(0);
         this.§-A§ = 0;
         this.§&#<§ = false;
         this.§7$%§ = false;
         Starling.§<#`§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§^"W§,false,0,true);
      }
      
      public static function §]!w§(param1:DisplayObject, param2:Vector.<§3f§>) : void
      {
         §8""§(param1,param2,-1,new Matrix());
      }
      
      private static function §8""§(param1:DisplayObject, param2:Vector.<§3f§>, param3:int, param4:Matrix, param5:Number = 1.0, param6:int = -1, param7:Boolean = false) : int
      {
         var _loc8_:int = 0;
         var _loc9_:§3f§ = null;
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
         var _loc13_:§],§ = param1 as §],§;
         var _loc14_:§3f§ = param1 as §3f§;
         var _loc15_:§+"i§ = param1.filter;
         if(param3 == -1)
         {
            _loc10_ = true;
            param3 = 0;
            _loc11_ = 1;
            param6 = param1.blendMode;
            if(param2.length == 0)
            {
               param2.push(new §3f§());
            }
            else
            {
               param2[0].reset();
            }
         }
         if(_loc15_ && !param7)
         {
            if(_loc15_.§!#M§ == § !`§.§47§)
            {
               param3 = §8""§(param1,param2,param3,param4,param5,param6,true);
            }
            param3 = §8""§(_loc15_.§]!w§(param1),param2,param3,param4,param5,param6);
            if(_loc15_.§!#M§ == § !`§.§@#p§)
            {
               param3 = §8""§(param1,param2,param3,param4,param5,param6,true);
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
                  _loc20_ = _loc18_.blendMode == §["T§.AUTO ? int(param6) : int(_loc18_.blendMode);
                  _loc17_.copyFrom(param4);
                  §'"1§.§>0§(_loc17_,_loc18_);
                  param3 = §8""§(_loc18_,param2,param3,_loc17_,param5 * _loc11_,_loc20_);
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
               _loc22_ = !!_loc25_ ? int(_loc25_.smoothing) : int(Image.§>!U§);
               _loc23_ = _loc13_.tinted;
               _loc24_ = _loc13_.§=v§;
            }
            else
            {
               _loc21_ = _loc14_.§3!L§;
               _loc22_ = _loc14_.§4$8§;
               _loc23_ = _loc14_.§&#<§;
               _loc24_ = _loc14_.§-A§;
            }
            if((_loc9_ = param2[param3]).isStateChange(_loc23_,param5 * _loc11_,_loc21_,_loc22_,param6,_loc24_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §3f§());
               }
               (_loc9_ = param2[param3]).reset();
            }
            if(_loc13_)
            {
               _loc9_.addQuad(_loc13_,param5,_loc21_,_loc22_,param4,param6);
            }
            else
            {
               _loc9_.§^#P§(_loc14_,param5,param4,param6);
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
      
      private static function §#!8§() : void
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
         var _loc1_:Starling = Starling.§<#`§;
         if(_loc1_.§+$§(§>!3§))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         _loc3_ = "m44 op, va0, vc1 \n" + "mul v0, va1, vc0 \n";
         _loc4_ = "mov oc, v0       \n";
         _loc1_.§5#c§(§>!3§,_loc2_.§@_§(Context3DProgramType.VERTEX,_loc3_),_loc2_.§@_§(Context3DProgramType.FRAGMENT,_loc4_));
         for each(_loc5_ in [true,false])
         {
            _loc3_ = !!_loc5_ ? "m44 op, va0, vc1 \n" + "mul v0, va1, vc0 \n" + "mov v1, va2      \n" : "m44 op, va0, vc1 \n" + "mov v1, va2      \n";
            _loc4_ = !!_loc5_ ? "tex ft1,  v1, fs0 <???> \n" + "mul  oc, ft1,  v0       \n" : "tex  oc,  v1, fs0 <???> \n";
            _loc6_ = [Image.§="8§,Image.§>!U§,Image.§-#`§];
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
                        if(_loc10_ == Image.§="8§)
                        {
                           _loc12_.push("nearest",!!_loc9_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc10_ == Image.§>!U§)
                        {
                           _loc12_.push("linear",!!_loc9_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc9_ ? "miplinear" : "mipnone");
                        }
                        _loc1_.§5#c§(§=$5§(_loc5_,_loc9_,_loc8_,_loc11_,_loc10_),_loc2_.§@_§(Context3DProgramType.VERTEX,_loc3_),_loc2_.§@_§(Context3DProgramType.FRAGMENT,_loc4_.replace("???",_loc12_.join())));
                     }
                  }
               }
            }
         }
      }
      
      private static function §=$5§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bgra", param5:int = 1) : String
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
         if(param5 == §="8§)
         {
            _loc6_ |= 1 << 3;
         }
         else if(param5 == §-#`§)
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
         if((_loc7_ = §6#S§[_loc6_]) == null)
         {
            _loc7_ = "QB_i." + _loc6_.toString(16);
            §6#S§[_loc6_] = _loc7_;
         }
         return _loc7_;
      }
      
      override public function dispose() : void
      {
         Starling.§<#`§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§^"W§);
         if(this.§3!$§)
         {
            this.§3!$§.dispose();
         }
         if(this.§"$-§)
         {
            this.§"$-§.dispose();
         }
         if(this.§1$-§)
         {
            this.§1$-§.dispose();
         }
         if(this.§=t§)
         {
            this.§=t§.dispose();
         }
         super.dispose();
      }
      
      private function §^"W§(param1:Object) : void
      {
         this.§;?§();
         §#!8§();
      }
      
      public function clone() : §3f§
      {
         var _loc1_:§3f§ = new §3f§();
         _loc1_.§'#B§ = this.§'#B§.clone(0,this.§-A§ * 4);
         _loc1_.§ !w§ = this.§ !w§.slice(0,this.§-A§ * 6);
         _loc1_.§-A§ = this.§-A§;
         _loc1_.§&#<§ = this.§&#<§;
         _loc1_.§3!L§ = this.§3!L§;
         _loc1_.§4$8§ = this.§4$8§;
         _loc1_.§7$%§ = true;
         _loc1_.blendMode = blendMode;
         _loc1_.alpha = alpha;
         return _loc1_;
      }
      
      private function §#"?§(param1:int = -1) : void
      {
         var _loc2_:int = this.§]#_§;
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
         this.§'#B§.numVertices = param1 * 4;
         var _loc3_:int = _loc2_;
         while(_loc3_ < param1)
         {
            this.§ !w§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§ !w§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§ !w§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§ !w§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§ !w§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§ !w§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§;?§();
         §#!8§();
      }
      
      private function §;?§() : void
      {
         var _loc1_:int = this.§'#B§.numVertices;
         var _loc2_:int = this.§ !w§.length;
         var _loc3_:Context3D = Starling.context;
         if(this.§3!$§)
         {
            this.§3!$§.dispose();
         }
         if(this.§"$-§)
         {
            this.§"$-§.dispose();
         }
         if(this.§1$-§)
         {
            this.§1$-§.dispose();
         }
         if(this.§=t§)
         {
            this.§=t§.dispose();
         }
         if(_loc1_ == 0)
         {
            return;
         }
         if(_loc3_ == null)
         {
            throw new §1#w§();
         }
         this.§3!$§ = _loc3_.createVertexBuffer(_loc1_,§,#@§.§74§);
         this.§3!$§.uploadFromVector(this.§'#B§.§!3§,0,_loc1_);
         this.§"$-§ = _loc3_.createVertexBuffer(_loc1_,§,#@§.§"[§);
         this.§"$-§.uploadFromVector(this.§'#B§.§3#7§,0,_loc1_);
         this.§1$-§ = _loc3_.createVertexBuffer(_loc1_,§,#@§.§&$-§);
         this.§1$-§.uploadFromVector(this.§'#B§.§4!&§,0,_loc1_);
         this.§=t§ = _loc3_.createIndexBuffer(_loc2_);
         this.§=t§.uploadFromVector(this.§ !w§,0,_loc2_);
         this.§7$%§ = false;
      }
      
      private function §<!j§() : void
      {
         if(this.§3!$§ == null)
         {
            this.§;?§();
         }
         else
         {
            this.§3!$§.uploadFromVector(this.§'#B§.§!3§,0,this.§'#B§.numVertices);
            if(this.§3!L§ == null || this.tinted)
            {
               this.§"$-§.uploadFromVector(this.§'#B§.§3#7§,0,this.§'#B§.numVertices);
            }
            if(this.§3!L§)
            {
               this.§1$-§.uploadFromVector(this.§'#B§.§4!&§,0,this.§'#B§.numVertices);
            }
            this.§7$%§ = false;
         }
      }
      
      public function §function§(param1:§'"1§, param2:Matrix, param3:Number = 1.0, param4:int = -1) : void
      {
         if(this.§-A§ == 0)
         {
            return;
         }
         if(this.§7$%§)
         {
            this.§<!j§();
         }
         var _loc5_:Context3D = param1.context;
         var _loc6_:Boolean = this.§'#B§.premultipliedAlpha;
         var _loc7_:Boolean = this.§&#<§ || param3 != 1;
         var _loc8_:String = !!this.§3!L§ ? §=$5§(_loc7_,this.§3!L§.mipMapping,this.§3!L§.repeat,this.§3!L§.format,this.§4$8§) : §>!3§;
         §7#k§[0] = §7#k§[1] = §7#k§[2] = !!_loc6_ ? Number(param3) : Number(1);
         §7#k§[3] = param3;
         §^!]§.§6! §(param2,§,!M§);
         §'"1§.setBlendFactors(_loc6_,param4 != §["T§.AUTO ? int(param4) : int(this.blendMode));
         param1.§0#0§(Starling.§<#`§.§7$,§(_loc8_));
         _loc5_.setProgramConstantsFromVector(Context3DProgramType.VERTEX,0,§7#k§,1);
         _loc5_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,1,§,!M§,true);
         _loc5_.setVertexBufferAt(0,this.§3!$§,0,Context3DVertexBufferFormat.FLOAT_2);
         if(this.§3!L§ == null || _loc7_)
         {
            _loc5_.setVertexBufferAt(1,this.§"$-§,0,Context3DVertexBufferFormat.FLOAT_4);
         }
         if(this.§3!L§)
         {
            _loc5_.setTextureAt(0,this.§3!L§.getBase(_loc5_));
            _loc5_.setVertexBufferAt(2,this.§1$-§,0,Context3DVertexBufferFormat.FLOAT_2);
         }
         _loc5_.drawTriangles(this.§=t§,0,this.§-A§ * 2);
         if(this.§3!L§)
         {
            _loc5_.setTextureAt(0,null);
            _loc5_.setVertexBufferAt(2,null);
         }
         if(this.§3!L§ == null || _loc7_)
         {
            _loc5_.setVertexBufferAt(1,null);
         }
         _loc5_.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§-A§ = 0;
         this.§3!L§ = null;
         this.§4$8§ = §>!U§;
         this.§7$%§ = true;
      }
      
      public function §6#w§(param1:Image, param2:Number = 1.0, param3:Matrix = null, param4:int = -1) : void
      {
         this.addQuad(param1,param2,param1.texture,param1.smoothing,param3,param4);
      }
      
      public function addQuad(param1:§],§, param2:Number = 1.0, param3:Texture = null, param4:int = 1, param5:Matrix = null, param6:int = -1) : void
      {
         if(param5 == null)
         {
            param5 = param1.§[#q§;
         }
         var _loc7_:Boolean = !!param3 ? param1.tinted || param2 != 1 : false;
         var _loc8_:Number = param2 * param1.alpha;
         var _loc9_:int = this.§-A§ * 4;
         if(this.§-A§ + param1.§=v§ > this.§'#B§.numVertices / 4)
         {
            this.§#"?§();
         }
         if(this.§-A§ == 0)
         {
            this.blendMode = param6 >= §["T§.NONE ? int(param6) : int(param1.blendMode);
            this.§3!L§ = param3;
            this.§&#<§ = _loc7_;
            this.§4$8§ = param4;
            this.§'#B§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         param1.copyVertexDataTo(this.§'#B§,_loc9_,_loc7_,param5);
         if(_loc8_ != 1)
         {
            this.§'#B§.§^#9§(_loc9_,_loc8_,4);
         }
         this.§7$%§ = true;
         this.§-A§ += param1.§=v§;
      }
      
      public function §^#P§(param1:§3f§, param2:Number = 1.0, param3:Matrix = null, param4:int = -1) : void
      {
         if(param3 == null)
         {
            param3 = param1.§[#q§;
         }
         var _loc5_:Boolean = param1.§&#<§ || param2 != 1;
         var _loc6_:Number = param2 * param1.alpha;
         var _loc7_:int = this.§-A§ * 4;
         var _loc8_:int = param1.§,!O§;
         if(this.§-A§ + _loc8_ > this.§]#_§)
         {
            this.§#"?§(this.§-A§ + _loc8_);
         }
         if(this.§-A§ == 0)
         {
            this.blendMode = param4 >= §["T§.NONE ? int(param4) : int(param1.blendMode);
            this.§3!L§ = param1.§3!L§;
            this.§&#<§ = _loc5_;
            this.§4$8§ = param1.§4$8§;
            this.§'#B§.setPremultipliedAlpha(param1.§'#B§.premultipliedAlpha,false);
         }
         param1.§'#B§.copyTo(this.§'#B§,_loc7_,0,_loc8_ * 4,true,_loc5_ || _loc6_,this.§3!L§ != null,param3);
         if(_loc6_ != 1)
         {
            this.§'#B§.§^#9§(_loc7_,_loc6_,_loc8_ * 4);
         }
         this.§7$%§ = true;
         this.§-A§ += _loc8_;
      }
      
      public function isStateChange(param1:Boolean, param2:Number, param3:Texture, param4:int, param5:int, param6:int) : Boolean
      {
         if(this.§3!L§ != null)
         {
            if(param3 != null)
            {
               return this.§3!L§.root != param3.root || this.§4$8§ != param4 || this.§&#<§ != (param1 || param2 != 1) || this.§-A§ + param6 > 8192 || this.§3!L§.repeat != param3.repeat || this.blendMode != param5;
            }
            return true;
         }
         if(param3 != null)
         {
            return this.§-A§ > 0;
         }
         return this.§-A§ + param6 > 8192;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         if(param2 == null)
         {
            param2 = new Rectangle();
         }
         var _loc3_:Matrix = param1 == this ? null : §"i§(param1,§5#e§);
         return this.§'#B§.getBounds(_loc3_,0,this.§-A§ * 4,param2);
      }
      
      override public function render(param1:§'"1§, param2:Number) : void
      {
         if(this.§-A§)
         {
            param1.§^!u§();
            param1.§"#R§();
            this.§function§(param1,param1.§?9§,alpha * param2,param1.blendMode);
         }
      }
      
      public function get §,!O§() : int
      {
         return this.§-A§;
      }
      
      public function get tinted() : Boolean
      {
         return this.§&#<§;
      }
      
      public function get texture() : Texture
      {
         return this.§3!L§;
      }
      
      public function get smoothing() : int
      {
         return this.§4$8§;
      }
      
      private function get §]#_§() : int
      {
         return this.§'#B§.numVertices / 4;
      }
   }
}
