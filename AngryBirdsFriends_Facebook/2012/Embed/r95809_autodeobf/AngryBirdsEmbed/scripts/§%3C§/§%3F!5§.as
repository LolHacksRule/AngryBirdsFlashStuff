package §<§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §?!5§
   {
      
      public static const §+9§:int = 4;
      
      public static const §'&§:int = 2;
      
      public static const §]4§:int = 3;
      
      public static const §=!C§:int = 4;
      
      public static const §@!;§:int = 0;
      
      public static const §+!C§:int = 0;
      
      public static const §#!%§:int = 0;
       
      
      private var §3Q§:ByteArray;
      
      private var §%U§:Vector.<Number>;
      
      private var §=z§:Vector.<Number>;
      
      private var §'i§:Boolean;
      
      private var §^X§:int;
      
      private var §-1§:Vector.<Number>;
      
      public function §?!5§(param1:int, param2:Boolean = false)
      {
         this.§-1§ = new Vector.<Number>(12,true);
         super();
         this.§3Q§ = new ByteArray();
         this.§3Q§.endian = Endian.LITTLE_ENDIAN;
         this.§3Q§.length = param1 * §'&§ * §=!C§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §'&§)
         {
            this.§3Q§.writeFloat(0);
            _loc3_++;
         }
         this.§%U§ = new Vector.<Number>(param1 * §+9§,true);
         this.§=z§ = new Vector.<Number>(param1 * §]4§,true);
         this.§'i§ = param2;
         this.§^X§ = param1;
      }
      
      public function clone() : §?!5§
      {
         var _loc1_:§?!5§ = new §?!5§(0,this.§'i§);
         _loc1_.§3Q§.length = this.§3Q§.length;
         _loc1_.§3Q§.writeBytes(this.§3Q§);
         _loc1_.§%U§ = this.§%U§.concat();
         _loc1_.§%U§.fixed = true;
         _loc1_.§=z§ = this.§=z§.concat();
         _loc1_.§=z§.fixed = true;
         _loc1_.§^X§ = this.§^X§;
         return _loc1_;
      }
      
      public function copyTo(param1:§?!5§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§=z§;
         _loc6_ = this.§^X§ * §]4§;
         _loc7_ = param2 * §]4§;
         if(param5)
         {
            param5.transformVectors(this.§=z§,this.§-1§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§-1§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§=z§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§3Q§;
         _loc6_ = this.§^X§ * §'&§ * §=!C§;
         _loc7_ = param2 * §'&§ * §=!C§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§3Q§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§%U§;
            _loc6_ = this.§^X§ * §+9§;
            _loc7_ = param2 * §+9§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§%U§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§^X§)
               {
                  if(this.§'i§)
                  {
                     _loc13_ = this.§%U§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§%U§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§%U§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§%U§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§%U§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§%U§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§%U§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§?!5§) : void
      {
         var _loc2_:int = this.§3Q§.length;
         this.§3Q§.length += param1.§3Q§.length;
         this.§3Q§.position = _loc2_;
         this.§3Q§.writeBytes(param1.§3Q§);
         this.§%U§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§%U§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§%U§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§%U§.fixed = true;
         this.§=z§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§=z§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§=z§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§=z§.fixed = true;
         this.§^X§ += param1.§!o§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §]4§;
         var _loc6_:*;
         this.§=z§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§=z§[_loc7_ = _loc5_++] = param3;
         this.§=z§[_loc5_] = param4;
      }
      
      public function §<,§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §]4§;
         var _loc5_:*;
         this.§=z§[_loc5_ = _loc4_++] = param2;
         this.§=z§[_loc4_] = param3;
      }
      
      public function §>9§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §]4§;
         param2.x = this.§=z§[_loc3_++];
         param2.y = this.§=z§[_loc3_++];
         param2.z = this.§=z§[_loc3_];
      }
      
      public function §>`§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§'i§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §46§.§+!A§(param2) * _loc4_;
         var _loc6_:Number = §46§.§8!-§(param2) * _loc4_;
         var _loc7_:Number = §46§.§4-§(param2) * _loc4_;
         this.§+>§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §+>§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §+9§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§%U§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§%U§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§%U§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§%U§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §#9§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §+9§;
         var _loc4_:*;
         this.§%U§[_loc4_ = _loc3_++] = this.§%U§[_loc4_] * param2;
         var _loc5_:*;
         this.§%U§[_loc5_ = _loc3_++] = this.§%U§[_loc5_] * param2;
         var _loc6_:*;
         this.§%U§[_loc6_ = _loc3_++] = this.§%U§[_loc6_] * param2;
         this.§%U§[_loc3_] *= param2;
      }
      
      public function §<`§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §+9§;
         var _loc3_:Number = !!this.§'i§ ? Number(this.§%U§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§%U§[_loc2_] * _loc3_;
         _loc5_ = this.§%U§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§%U§[_loc2_ + 2] * _loc3_;
         return §46§.§'_§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §!]§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§'i§)
         {
            this.§>`§(param1,this.§<`§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §+9§ + 3;
            this.§%U§[_loc3_] = param2;
         }
      }
      
      public function §;!8§(param1:int) : Number
      {
         var _loc2_:int = param1 * §+9§ + 3;
         return this.§%U§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §'&§;
         this.§3Q§.position = _loc4_ * §=!C§;
         this.§3Q§.writeFloat(param2);
         this.§3Q§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §'&§;
         this.§3Q§.position = _loc3_ * §=!C§;
         param2.x = this.§3Q§.readFloat();
         param2.y = this.§3Q§.readFloat();
      }
      
      public function §'c§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §]4§;
         var _loc6_:*;
         this.§=z§[_loc6_ = _loc5_++] = this.§=z§[_loc6_] + param2;
         var _loc7_:*;
         this.§=z§[_loc7_ = _loc5_++] = this.§=z§[_loc7_] + param3;
         this.§=z§[_loc5_] += param4;
      }
      
      public function §default§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §]4§;
         this.§-1§[0] = this.§=z§[_loc3_];
         this.§-1§[1] = this.§=z§[_loc3_ + 1];
         this.§-1§[2] = this.§=z§[_loc3_ + 2];
         param2.transformVectors(this.§-1§,this.§-1§);
         this.§=z§[_loc3_] = this.§-1§[0];
         this.§=z§[_loc3_ + 1] = this.§-1§[1];
         this.§=z§[_loc3_ + 2] = this.§-1§[2];
      }
      
      public function §2K§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§'i§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §46§.§+!A§(param1) * _loc3_;
         var _loc5_:Number = §46§.§8!-§(param1) * _loc3_;
         var _loc6_:Number = §46§.§4-§(param1) * _loc3_;
         this.§+>§(0,this.§^X§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §`W§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §+9§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§%U§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§%U§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§%U§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§%U§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §5[§(param1:int, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(param2 == 1)
         {
            return;
         }
         var _loc3_:int = param1 * §+9§;
         if(this.§'i§)
         {
            _loc4_ = this.§%U§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§%U§[_loc3_] *= _loc4_;
            this.§%U§[_loc3_ + 1] *= _loc4_;
            this.§%U§[_loc3_ + 2] *= _loc4_;
            this.§%U§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§%U§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§'i§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§^X§ * §+9§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§;!8§(0);
               _loc6_ = !!this.§'i§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§#9§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§'i§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§'i§;
      }
      
      public function get §!o§() : int
      {
         return this.§^X§;
      }
      
      public function set §!o§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §'&§ * §=!C§ - this.§3Q§.length;
         _loc4_ = this.§3Q§.length;
         this.§3Q§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§3Q§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §=!C§)
            {
               this.§3Q§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§%U§.fixed = false;
         _loc2_ = param1 * §+9§ - this.§%U§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§%U§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§%U§.pop();
            _loc3_++;
         }
         this.§%U§.fixed = true;
         this.§=z§.fixed = false;
         _loc2_ = param1 * §]4§ - this.§=z§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§=z§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§=z§.pop();
            _loc3_++;
         }
         this.§=z§.fixed = true;
         this.§^X§ = param1;
      }
      
      public function get § G§() : ByteArray
      {
         this.§3Q§.position = 0;
         return this.§3Q§;
      }
      
      public function get §=-§() : Vector.<Number>
      {
         return this.§%U§;
      }
      
      public function get §16§() : Vector.<Number>
      {
         return this.§=z§;
      }
   }
}
