package §9!!§
{
   import §!"u§.§@p§;
   import §1"s§.§#"b§;
   import §1"s§.§-i§;
   import §1"s§.DisplayObject;
   import §1"s§.DisplayObjectContainer;
   import §1D§.§0G§;
   import §3"e§.§;P§;
   import §<"L§.Texture;
   import §<"L§.§]!7§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §@!§
   {
      
      private static var §["D§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §?g§:int;
      
      private var §5!g§:Texture;
      
      private var §^"q§:String;
      
      private var §0#4§:§;P§;
      
      private var §8#0§:VertexBuffer3D;
      
      private var §>q§:VertexBuffer3D;
      
      private var §["w§:VertexBuffer3D;
      
      private var §8""§:Vector.<uint>;
      
      private var §;!5§:IndexBuffer3D;
      
      private var §"L§:Boolean = false;
      
      private var §0"?§:Boolean = false;
      
      public function §@!§()
      {
         super();
         §,"r§();
         this.§0#4§ = new §;P§(0,true);
         this.§8""§ = new Vector.<uint>(0);
         this.§?g§ = 0;
         this.§&"V§();
      }
      
      public static function §1"U§(param1:DisplayObjectContainer, param2:Vector.<§@!§>) : void
      {
         §@"9§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §@"9§(param1:DisplayObject, param2:Vector.<§@!§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§#"b§ = null;
         var _loc13_:§-i§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§@!§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §@!§());
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
                  _loc11_.§]"W§(_loc10_);
                  param3 = §@"9§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is §#"b§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §#"b§) as §-i§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§1m§(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §@!§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§7§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §,"r§() : void
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
         var _loc1_:§=!S§ = §=!S§.§8y§;
         if(_loc1_.§+f§(§>h§(true)))
         {
            return;
         }
         var _loc2_:§0G§ = new §0G§();
         var _loc3_:§0G§ = new §0G§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§0!Z§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§0!Z§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§&"6§(§>h§(_loc6_),_loc2_.§&u§,_loc3_.§&u§);
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
               _loc2_.§0!Z§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§]!7§.NONE,§]!7§.§#!5§,§]!7§.§""`§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §]!7§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §]!7§.§#!5§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§0!Z§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§&"6§(§7"q§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§&u§,_loc3_.§&u§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §>h§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §7"q§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §]!7§.§#!5§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §case§() : int
      {
         return this.§?g§;
      }
      
      public function dispose() : void
      {
         if(this.§8#0§)
         {
            this.§8#0§.dispose();
         }
         if(this.§>q§)
         {
            this.§>q§.dispose();
         }
         if(this.§["w§)
         {
            this.§["w§.dispose();
         }
         if(this.§;!5§)
         {
            this.§;!5§.dispose();
         }
      }
      
      private function §&"V§() : void
      {
         var _loc1_:int = this.§0#4§.§8!u§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§0#4§.§8!u§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§8""§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§8""§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§8""§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§8""§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§8""§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§8""§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§0"?§ = true;
      }
      
      private function §9+§(param1:Context3D) : Boolean
      {
         if(!this.§0"?§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §@p§();
         }
         if(this.§8#0§)
         {
            this.§8#0§.dispose();
         }
         if(this.§>q§)
         {
            this.§>q§.dispose();
         }
         if(this.§["w§)
         {
            this.§["w§.dispose();
         }
         if(this.§;!5§)
         {
            this.§;!5§.dispose();
         }
         var _loc2_:int = this.§0#4§.§8!u§ / 4;
         this.§8#0§ = param1.createVertexBuffer(_loc2_ * 4,§;P§.§^b§);
         this.§8#0§.uploadFromByteArray(this.§0#4§.§3s§,0,0,_loc2_ * 4);
         this.§>q§ = param1.createVertexBuffer(_loc2_ * 4,§;P§.§1# §);
         this.§>q§.uploadFromVector(this.§0#4§.§&"3§,0,_loc2_ * 4);
         this.§["w§ = param1.createVertexBuffer(_loc2_ * 4,§;P§.§'""§);
         this.§["w§.uploadFromVector(this.§0#4§.§1!A§,0,_loc2_ * 4);
         this.§;!5§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§;!5§.uploadFromVector(this.§8""§,0,_loc2_ * 6);
         this.§0"?§ = false;
         return true;
      }
      
      private function §'"R§(param1:Context3D) : void
      {
         if(!this.§9+§(param1))
         {
            this.§8#0§.uploadFromByteArray(this.§0#4§.§3s§,0,0,this.§?g§ * 4);
            if(this.§"L§)
            {
               this.§>q§.uploadFromVector(this.§0#4§.§&"3§,0,this.§?g§ * 4);
            }
            this.§["w§.uploadFromVector(this.§0#4§.§1!A§,0,this.§?g§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§?g§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§0#4§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§5!g§ ? §7"q§(_loc5_,this.§5!g§.mipMapping,this.§5!g§.repeat,this.§^"q§,this.§"L§) : §>h§(_loc5_);
         § _§.§ 5§(param1,_loc4_);
         this.§'"R§(param1);
         param1.setProgram(§=!S§.§8y§.§@"J§(_loc6_));
         param1.setVertexBufferAt(0,this.§["w§,§;P§.§,#5§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§5!g§ == null || this.§"L§)
         {
            param1.setVertexBufferAt(2,this.§>q§,§;P§.§4%§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §["D§[0] = §["D§[1] = §["D§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §["D§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§["D§,1);
         }
         if(this.§5!g§)
         {
            param1.setTextureAt(0,this.§5!g§.getBase(param1));
            param1.setVertexBufferAt(1,this.§8#0§,§;P§.§^<§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§;!5§,0,this.§?g§ * 2);
         if(this.§5!g§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§5!g§ == null || this.§"L§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§?g§ = 0;
         this.§"L§ = false;
         this.§5!g§ = null;
         this.§^"q§ = null;
      }
      
      public function §7§(param1:§#"b§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§?g§ + 1 > this.§0#4§.§8!u§ / 4)
         {
            this.§&"V§();
         }
         if(this.§?g§ == 0)
         {
            this.§5!g§ = param3;
            this.§^"q§ = param4;
            this.§0#4§.§ #6§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§"L§ = true;
            }
         }
         var _loc6_:int = this.§?g§ * 4;
         param1.copyVertexDataTo(this.§0#4§,_loc6_,param2,param5);
         ++this.§?g§;
      }
      
      public function §1m§(param1:§#"b§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§5!g§ != null && param2 != null)
         {
            return this.§5!g§.root != param2.root || this.§5!g§.repeat != param2.repeat || this.§^"q§ != param3 || this.§"L§ != param1.useColor || this.§?g§ == 8192;
         }
         if(this.§5!g§ == null && param2 == null)
         {
            return false;
         }
         return this.§?g§ != 0 || this.§"L§ != (param1.useColor || param4 != 1);
      }
   }
}
