package §4!$§
{
   import §",§.§8d§;
   import §",§.Texture;
   import §5x§.§2!K§;
   import §5x§.§3"§;
   import §5x§.DisplayObject;
   import §5x§.DisplayObjectContainer;
   import §@8§.§'!@§;
   import §^!8§.§1!&§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §"P§
   {
      
      private static var §5`§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §2r§:int;
      
      private var §!!M§:Texture;
      
      private var §%e§:String;
      
      private var §^!L§:§!i§;
      
      private var §>!$§:VertexBuffer3D;
      
      private var §0!c§:VertexBuffer3D;
      
      private var §-§:VertexBuffer3D;
      
      private var §0!b§:Vector.<uint>;
      
      private var §7h§:IndexBuffer3D;
      
      private var §&[§:Boolean = false;
      
      private var § E§:Boolean = false;
      
      public function §"P§()
      {
         super();
         §5! §();
         this.§^!L§ = new §!i§(0,true);
         this.§0!b§ = new Vector.<uint>(0);
         this.§2r§ = 0;
         this.§ e§();
      }
      
      public static function §-!8§(param1:DisplayObjectContainer, param2:Vector.<§"P§>) : void
      {
         §,!,§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §,!,§(param1:DisplayObject, param2:Vector.<§"P§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§3"§ = null;
         var _loc13_:§2!K§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§"P§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §"P§());
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
               _loc11_.§6m§(_loc10_);
               param3 = §,!,§(_loc11_,param2,param3,_loc10_,param5);
               _loc6_++;
            }
         }
         else
         {
            if(!(param1 is §3"§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §3"§) as §2!K§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§[c§(_loc12_,_loc14_,_loc15_))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §"P§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§<!F§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §5! §() : void
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
         var _loc1_:§<!2§ = §<!2§.§[!]§;
         if(_loc1_.§+A§(§"!n§(true)))
         {
            return;
         }
         var _loc2_:§1!&§ = new §1!&§();
         var _loc3_:§1!&§ = new §1!&§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§]o§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§]o§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§4!_§(§"!n§(_loc6_),_loc2_.§3I§,_loc3_.§3I§);
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
               _loc2_.§]o§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§8d§.NONE,§8d§.§9u§,§8d§.§[!1§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §8d§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §8d§.§9u§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§]o§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§4!_§(§#2§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§3I§,_loc3_.§3I§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §"!n§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §#2§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §8d§.§9u§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §!b§() : int
      {
         return this.§2r§;
      }
      
      public function dispose() : void
      {
         if(this.§>!$§)
         {
            this.§>!$§.dispose();
         }
         if(this.§0!c§)
         {
            this.§0!c§.dispose();
         }
         if(this.§-§)
         {
            this.§-§.dispose();
         }
         if(this.§7h§)
         {
            this.§7h§.dispose();
         }
      }
      
      private function § e§() : void
      {
         var _loc1_:int = this.§^!L§.§`h§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§^!L§.§`h§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§0!b§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§0!b§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§0!b§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§0!b§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§0!b§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§0!b§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§ E§ = true;
      }
      
      private function §5X§(param1:Context3D) : Boolean
      {
         if(!this.§ E§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §'!@§();
         }
         if(this.§>!$§)
         {
            this.§>!$§.dispose();
         }
         if(this.§0!c§)
         {
            this.§0!c§.dispose();
         }
         if(this.§-§)
         {
            this.§-§.dispose();
         }
         if(this.§7h§)
         {
            this.§7h§.dispose();
         }
         var _loc2_:int = this.§^!L§.§`h§ / 4;
         this.§>!$§ = param1.createVertexBuffer(_loc2_ * 4,§!i§.§8!`§);
         this.§>!$§.uploadFromByteArray(this.§^!L§.§[!n§,0,0,_loc2_ * 4);
         this.§0!c§ = param1.createVertexBuffer(_loc2_ * 4,§!i§.§0D§);
         this.§0!c§.uploadFromVector(this.§^!L§.§4![§,0,_loc2_ * 4);
         this.§-§ = param1.createVertexBuffer(_loc2_ * 4,§!i§.§+s§);
         this.§-§.uploadFromVector(this.§^!L§.§^!_§,0,_loc2_ * 4);
         this.§7h§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§7h§.uploadFromVector(this.§0!b§,0,_loc2_ * 6);
         this.§ E§ = false;
         return true;
      }
      
      private function §%!k§(param1:Context3D) : void
      {
         if(!this.§5X§(param1))
         {
            this.§>!$§.uploadFromByteArray(this.§^!L§.§[!n§,0,0,this.§2r§ * 4);
            if(this.§&[§)
            {
               this.§0!c§.uploadFromVector(this.§^!L§.§4![§,0,this.§2r§ * 4);
            }
            this.§-§.uploadFromVector(this.§^!L§.§^!_§,0,this.§2r§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§2r§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§^!L§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§!!M§ ? §#2§(_loc5_,this.§!!M§.mipMapping,this.§!!M§.repeat,this.§%e§,this.§&[§) : §"!n§(_loc5_);
         §]!f§.§;9§(param1,_loc4_);
         this.§%!k§(param1);
         param1.setProgram(§<!2§.§[!]§.§#d§(_loc6_));
         param1.setVertexBufferAt(0,this.§-§,§!i§.§8U§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§!!M§ == null || this.§&[§)
         {
            param1.setVertexBufferAt(2,this.§0!c§,§!i§.§3>§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §5`§[0] = §5`§[1] = §5`§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §5`§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§5`§,1);
         }
         if(this.§!!M§)
         {
            param1.setTextureAt(0,this.§!!M§.getBase(param1));
            param1.setVertexBufferAt(1,this.§>!$§,§!i§.§^=§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§7h§,0,this.§2r§ * 2);
         if(this.§!!M§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§!!M§ == null || this.§&[§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§2r§ = 0;
         this.§&[§ = false;
         this.§!!M§ = null;
         this.§%e§ = null;
      }
      
      public function §<!F§(param1:§3"§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         if(this.§2r§ + 1 > this.§^!L§.§`h§ / 4)
         {
            this.§ e§();
         }
         if(this.§2r§ == 0)
         {
            this.§!!M§ = param3;
            this.§%e§ = param4;
            this.§^!L§.setPremultipliedAlpha(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
         }
         var _loc6_:int = this.§2r§ * 4;
         param2 *= param1.alpha;
         param1.copyVertexDataTo(this.§^!L§,_loc6_,param2,param5);
         if(param2 != 1 || param1.useColor)
         {
            this.§&[§ = true;
         }
         ++this.§2r§;
      }
      
      public function §[c§(param1:§3"§, param2:Texture, param3:String) : Boolean
      {
         if(this.§!!M§ != null && param2 != null)
         {
            return this.§!!M§.root != param2.root || this.§!!M§.repeat != param2.repeat || this.§%e§ != param3 || this.§&[§ != param1.useColor || this.§2r§ == 8192;
         }
         if(this.§!!M§ == null && param2 == null)
         {
            return false;
         }
         return this.§2r§ != 0 || this.§&[§ != param1.useColor;
      }
   }
}
