package §+!F§
{
   import §1";§.AGALMiniAssembler;
   import §8!8§.§`g§;
   import §;5§.§?@§;
   import §?7§.§'!6§;
   import §?7§.Texture;
   import §]!v§.§'!=§;
   import §]!v§.§+!`§;
   import §]!v§.DisplayObject;
   import §]!v§.DisplayObjectContainer;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §7U§
   {
      
      private static var §6!o§:Vector.<Number> = new <Number>[1,1,1,1];
       
      
      private var §7Y§:int;
      
      private var §;"=§:Texture;
      
      private var §6-§:String;
      
      private var §`!a§:§`g§;
      
      private var §0!F§:VertexBuffer3D;
      
      private var §`C§:VertexBuffer3D;
      
      private var §6H§:VertexBuffer3D;
      
      private var §7""§:Vector.<uint>;
      
      private var §!s§:IndexBuffer3D;
      
      private var § "?§:Boolean = false;
      
      private var §`U§:Boolean = false;
      
      public function §7U§()
      {
         super();
         §'!3§();
         this.§`!a§ = new §`g§(0,true);
         this.§7""§ = new Vector.<uint>(0);
         this.§7Y§ = 0;
         this.§ !b§();
      }
      
      public static function §,!Z§(param1:DisplayObjectContainer, param2:Vector.<§7U§>) : void
      {
         §5"'§(param1,param2,-1,new Matrix3D());
      }
      
      private static function §5"'§(param1:DisplayObject, param2:Vector.<§7U§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc6_:int = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§+!`§ = null;
         var _loc13_:§'!=§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§7U§ = null;
         var _loc7_:Boolean = false;
         if(param3 == -1)
         {
            _loc7_ = true;
            param3 = 0;
            if(param2.length == 0)
            {
               param2.push(new §7U§());
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
                  _loc11_.§;"0§(_loc10_);
                  param3 = §5"'§(_loc11_,param2,param3,_loc10_,param5);
                  _loc6_++;
               }
            }
         }
         else
         {
            if(!(param1 is §+!`§))
            {
               throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
            }
            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §+!`§) as §'!=§) ? _loc13_.texture : null;
            _loc15_ = !!_loc13_ ? _loc13_.smoothing : null;
            if((_loc16_ = param2[param3]).§="J§(_loc12_,_loc14_,_loc15_,param5))
            {
               param3++;
               if(param2.length <= param3)
               {
                  param2.push(new §7U§());
               }
               (_loc16_ = param2[param3]).reset();
            }
            _loc16_.§7"5§(_loc12_,param5,_loc14_,_loc15_,param4);
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
      
      private static function §'!3§() : void
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
         var _loc1_:§1!D§ = §1!D§.§7!T§;
         if(_loc1_.dynamic(§ V§(true)))
         {
            return;
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
         for each(_loc6_ in [true,false])
         {
            _loc4_ = "m44 op, va0, vc0  \n" + "mov v0, va2       \n";
            _loc5_ = !!_loc6_ ? "mul ft0, v0, fc0  \n" + "mov oc, ft0       \n" : "mov oc, v0        \n";
            _loc2_.§?!9§(Context3DProgramType.VERTEX,_loc4_);
            _loc3_.§?!9§(Context3DProgramType.FRAGMENT,_loc5_);
            _loc1_.§,!v§(§ V§(_loc6_),_loc2_.§7`§,_loc3_.§7`§);
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
               _loc2_.§?!9§(Context3DProgramType.VERTEX,_loc4_);
               _loc8_ = [§'!6§.NONE,§'!6§.§!!6§,§'!6§.§,j§];
               for each(_loc9_ in [true,false])
               {
                  for each(_loc10_ in [true,false])
                  {
                     for each(_loc11_ in _loc8_)
                     {
                        _loc12_ = ["2d",!!_loc9_ ? "repeat" : "clamp"];
                        if(_loc11_ == §'!6§.NONE)
                        {
                           _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else if(_loc11_ == §'!6§.§!!6§)
                        {
                           _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                        }
                        else
                        {
                           _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                        }
                        _loc3_.§?!9§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                        _loc1_.§,!v§(§`!B§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§7`§,_loc3_.§7`§);
                     }
                  }
               }
            }
         }
      }
      
      public static function § V§(param1:Boolean) : String
      {
         return !!param1 ? "QB_q*" : "QB_q\'";
      }
      
      public static function §`!B§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
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
         if(param4 != §'!6§.§!!6§)
         {
            _loc6_ += param4.charAt(0);
         }
         return _loc6_;
      }
      
      public function get §^[§() : int
      {
         return this.§7Y§;
      }
      
      public function dispose() : void
      {
         if(this.§0!F§)
         {
            this.§0!F§.dispose();
         }
         if(this.§`C§)
         {
            this.§`C§.dispose();
         }
         if(this.§6H§)
         {
            this.§6H§.dispose();
         }
         if(this.§!s§)
         {
            this.§!s§.dispose();
         }
      }
      
      private function § !b§() : void
      {
         var _loc1_:int = this.§`!a§.§"!U§ / 4;
         var _loc2_:int = _loc1_ == 0 ? 16 : int(_loc1_ * 2);
         this.§`!a§.§"!U§ = _loc2_ * 4;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            this.§7""§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§7""§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§7""§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§7""§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§7""§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            this.§7""§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
            _loc3_++;
         }
         this.§`U§ = true;
      }
      
      private function §;V§(param1:Context3D) : Boolean
      {
         if(!this.§`U§)
         {
            return false;
         }
         if(param1 == null)
         {
            throw new §?@§();
         }
         if(this.§0!F§)
         {
            this.§0!F§.dispose();
         }
         if(this.§`C§)
         {
            this.§`C§.dispose();
         }
         if(this.§6H§)
         {
            this.§6H§.dispose();
         }
         if(this.§!s§)
         {
            this.§!s§.dispose();
         }
         var _loc2_:int = this.§`!a§.§"!U§ / 4;
         this.§0!F§ = param1.createVertexBuffer(_loc2_ * 4,§`g§.§"!4§);
         this.§0!F§.uploadFromByteArray(this.§`!a§.§,!4§,0,0,_loc2_ * 4);
         this.§`C§ = param1.createVertexBuffer(_loc2_ * 4,§`g§.§-=§);
         this.§`C§.uploadFromVector(this.§`!a§.§0!!§,0,_loc2_ * 4);
         this.§6H§ = param1.createVertexBuffer(_loc2_ * 4,§`g§.§0f§);
         this.§6H§.uploadFromVector(this.§`!a§.§4"7§,0,_loc2_ * 4);
         this.§!s§ = param1.createIndexBuffer(_loc2_ * 6);
         this.§!s§.uploadFromVector(this.§7""§,0,_loc2_ * 6);
         this.§`U§ = false;
         return true;
      }
      
      private function §;_§(param1:Context3D) : void
      {
         if(!this.§;V§(param1))
         {
            this.§0!F§.uploadFromByteArray(this.§`!a§.§,!4§,0,0,this.§7Y§ * 4);
            if(this.§ "?§)
            {
               this.§`C§.uploadFromVector(this.§`!a§.§0!!§,0,this.§7Y§ * 4);
            }
            this.§6H§.uploadFromVector(this.§`!a§.§4"7§,0,this.§7Y§ * 4);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         if(this.§7Y§ == 0)
         {
            return;
         }
         var _loc4_:Boolean = this.§`!a§.premultipliedAlpha;
         var _loc5_:* = param3 != 1;
         var _loc6_:String = !!this.§;"=§ ? §`!B§(_loc5_,this.§;"=§.mipMapping,this.§;"=§.repeat,this.§6-§,this.§ "?§) : § V§(_loc5_);
         §<!l§.§+"A§(param1,_loc4_);
         this.§;_§(param1);
         param1.setProgram(§1!D§.§7!T§.§^!Y§(_loc6_));
         param1.setVertexBufferAt(0,this.§6H§,§`g§.§6C§,Context3DVertexBufferFormat.FLOAT_3);
         if(this.§;"=§ == null || this.§ "?§)
         {
            param1.setVertexBufferAt(2,this.§`C§,§`g§.§`<§,Context3DVertexBufferFormat.FLOAT_4);
         }
         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
         if(_loc5_)
         {
            §6!o§[0] = §6!o§[1] = §6!o§[2] = !!_loc4_ ? Number(param3) : Number(1);
            §6!o§[3] = param3;
            param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§6!o§,1);
         }
         if(this.§;"=§)
         {
            param1.setTextureAt(0,this.§;"=§.getBase(param1));
            param1.setVertexBufferAt(1,this.§0!F§,§`g§.§"!h§,Context3DVertexBufferFormat.FLOAT_2);
         }
         else
         {
            param1.setTextureAt(0,null);
         }
         param1.drawTriangles(this.§!s§,0,this.§7Y§ * 2);
         if(this.§;"=§)
         {
            param1.setTextureAt(0,null);
            param1.setVertexBufferAt(1,null);
         }
         if(this.§;"=§ == null || this.§ "?§)
         {
            param1.setVertexBufferAt(2,null);
         }
         param1.setVertexBufferAt(0,null);
      }
      
      public function reset() : void
      {
         this.§7Y§ = 0;
         this.§ "?§ = false;
         this.§;"=§ = null;
         this.§6-§ = null;
      }
      
      public function §7"5§(param1:§+!`§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         param2 *= param1.alpha;
         if(param2 == 0)
         {
            return;
         }
         if(this.§7Y§ + 1 > this.§`!a§.§"!U§ / 4)
         {
            this.§ !b§();
         }
         if(this.§7Y§ == 0)
         {
            this.§;"=§ = param3;
            this.§6-§ = param4;
            this.§`!a§.§6!!§(!!param3 ? Boolean(param3.premultipliedAlpha) : true,false);
            if(param2 != 1 || param1.useColor)
            {
               this.§ "?§ = true;
            }
         }
         var _loc6_:int = this.§7Y§ * 4;
         param1.copyVertexDataTo(this.§`!a§,_loc6_,param2,param5);
         ++this.§7Y§;
      }
      
      public function §="J§(param1:§+!`§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         if(this.§;"=§ != null && param2 != null)
         {
            return this.§;"=§.root != param2.root || this.§;"=§.repeat != param2.repeat || this.§6-§ != param3 || this.§ "?§ != param1.useColor || this.§7Y§ == 8192;
         }
         if(this.§;"=§ == null && param2 == null)
         {
            return false;
         }
         return this.§7Y§ != 0 || this.§ "?§ != (param1.useColor || param4 != 1);
      }
   }
}
