package §6;§
{
   import §#!5§.§ !R§;
   import §4v§.§40§;
   import §]!a§.§ !g§;
   import §]!a§.Texture;
   import §]u§.§6J§;
   import §^a§.§ !'§;
   import §^a§.§6p§;
   import §^a§.DisplayObject;
   import §^a§.DisplayObjectContainer;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §1!B§
   {
      
      private static var §'8§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §#!9§:int;
      
      private var §&!V§:Texture;
      
      private var §9K§:String;
      
      private var §`§:§40§;
      
      private var §@M§:VertexBuffer3D;
      
      private var §2e§:VertexBuffer3D;
      
      private var §&2§:VertexBuffer3D;
      
      private var §#+§:Vector.<uint>;
      
      private var §!h§:IndexBuffer3D;
      
      private var §=!W§:Boolean = false;
      
      private var §?V§:Boolean = false;
      
      public function §1!B§()
      {
         super();
         §3C§();
         this.§`§ = new §40§(0,true);
         this.§#+§ = new Vector.<uint>(0);
         this.§#!9§ = 0;
         this.§4T§();
      }
      
      public static function §<d§(param1:DisplayObjectContainer, param2:Vector.<§1!B§>) : void
      {
         §<!_§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §<!_§(param1:DisplayObject, param2:Vector.<§1!B§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§ !'§ = null;
         var _loc13_:§6p§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§1!B§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §1!B§());
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
                  _loc11_.§`P§(_loc10_);
                  param3 = §<!_§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is § !'§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as § !'§) as §6p§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§=0§(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §1!B§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§16§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §3C§() : void
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
         var _loc1_:§%[§ = §%[§.§`1§;
         if(_loc1_.§@a§(§4!H§(true)))
         {
            return;
         }
         var _loc2_:§ !R§ = new § !R§();
         var _loc3_:§ !R§ = new § !R§();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§>G§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§>G§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§9!E§(§4!H§(_loc6_),_loc2_.§,w§,_loc3_.§,w§);
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
               _loc2_.§>G§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§ !g§.NONE,§ !g§.§5!8§,§ !g§.§62§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == § !g§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == § !g§.§5!8§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§>G§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§9!E§(§ V§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§,w§,_loc3_.§,w§);
                     }
                  }
               }
            }
         }
      }
      
      public static function §4!H§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function § V§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != § !g§.§5!8§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §7!!§() : int
      {
         return this.§#!9§;
      }
      
      public function dispose() : void
      {
         if(this.§@M§)
         {
            this.§@M§.dispose();
         }
         if(this.§2e§)
         {
            this.§2e§.dispose();
         }
         if(this.§&2§)
         {
            this.§&2§.dispose();
         }
         if(this.§!h§)
         {
            this.§!h§.dispose();
         }
      }
      
      private function §4T§() : void
      {
         var _loc1_:int = this.§`§.§-Z§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§`§.§-Z§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§#+§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§#+§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§#+§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§#+§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§#+§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§#+§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§?V§ = true;
      }
      
      private function §>H§(param1:Context3D) : Boolean
      {
         if(!this.§?V§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §6J§();
         }
         if(this.§@M§)
         {
            this.§@M§.dispose();
         }
         if(this.§2e§)
         {
            this.§2e§.dispose();
         }
         if(this.§&2§)
         {
            this.§&2§.dispose();
         }
         if(this.§!h§)
         {
            this.§!h§.dispose();
         }
         var _loc2_:int = this.§`§.§-Z§ / 4;
         this.§@M§ = param1.createVertexBuffer(_loc2_ * 4,§40§.§9!+§);
         this.§@M§.uploadFromByteArray(this.§`§.§!2§,0,0,_loc2_ * 4);
         this.§2e§ = param1.createVertexBuffer(_loc2_ * 4,§40§.§;!^§);
         this.§2e§.uploadFromVector(this.§`§.§[K§,0,_loc2_ * 4);
         this.§&2§ = param1.createVertexBuffer(_loc2_ * 4,§40§.§%!;§);
         this.§&2§.uploadFromVector(this.§`§.§]!"§,0,_loc2_ * 4);
         this.§!h§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§!h§.uploadFromVector(this.§#+§,0,_loc2_ * 6);
         this.§?V§ = false;
         return true;
      }
      
      private function §]!X§(param1:Context3D) : void
      {
         if(!this.§>H§(param1))
         {
            this.§@M§.uploadFromByteArray(this.§`§.§!2§,0,0,this.§#!9§ * 4);
            if(this.§=!W§)
            {
               this.§2e§.uploadFromVector(this.§`§.§[K§,0,this.§#!9§ * 4);
            }
            this.§&2§.uploadFromVector(this.§`§.§]!"§,0,this.§#!9§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§#!9§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§`§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§&!V§ ? § V§(_loc5_,this.§&!V§.mipMapping,this.§&!V§.repeat,this.§9K§,this.§=!W§) : §4!H§(_loc5_);
         §2^§.§6!=§(param1,_loc4_);
         this.§]!X§(param1);
         param1.setProgram(§%[§.§`1§.§-!c§(_loc6_));
         param1.setVertexBufferAt(0,this.§&2§,§40§.§]a§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§&!V§ == null || this.§=!W§)
         {
            param1.setVertexBufferAt(2,this.§2e§,§40§.§[W§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §'8§[0] = §'8§[1] = §'8§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §'8§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§'8§,1);
         }
         if(this.§&!V§)
         {
            param1.setTextureAt(0,this.§&!V§.getBase(param1));
            param1.setVertexBufferAt(1,this.§@M§,§40§.§9!i§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§!h§,0,this.§#!9§ * 2);
         if(this.§&!V§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§&!V§ == null || this.§=!W§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§#!9§ = 0;
         this.§=!W§ = false;
         this.§&!V§ = null;
         this.§9K§ = null;
      }
      
      public function §16§(param1:§ !'§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§#!9§ + 1 > this.§`§.§-Z§ / 4)
         {
            this.§4T§();
         }
         if(this.§#!9§ == 0)
         {
            this.§&!V§ = param3;
            this.§9K§ = param4;
            this.§`§.§@!g§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§=!W§ = true;
            }
         }
         var _loc6_:int = this.§#!9§ * 4;
         param1.copyVertexDataTo(this.§`§,_loc6_,param2,param5);
         ++this.§#!9§;
      }
      
      public function §=0§(param1:§ !'§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§&!V§ != null && param2 != null)
         {
            return this.§&!V§.root != param2.root || this.§&!V§.repeat != param2.repeat || this.§9K§ != param3 || this.§=!W§ != param1.useColor || this.§#!9§ == 8192;
         }
         if(this.§&!V§ == null && param2 == null)
         {
            return false;
         }
         return this.§#!9§ != 0 || this.§=!W§ != (param1.useColor || param4 != 1);
      }
   }
}
