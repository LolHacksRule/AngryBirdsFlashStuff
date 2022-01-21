package §=G§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §#!N§
   {
      
      public static const §+T§:int = 4;
      
      public static const §'7§:int = 2;
      
      public static const §!c§:int = 3;
      
      public static const §'!9§:int = 4;
      
      public static const §[!X§:int = 0;
      
      public static const §3L§:int = 0;
      
      public static const §9!5§:int = 0;
       
      
      private var §'!4§:ByteArray;
      
      private var §#Z§:Vector.<Number>;
      
      private var §-#§:Vector.<Number>;
      
      private var §6H§:Boolean;
      
      private var § !a§:int;
      
      private var §1$§:Vector.<Number>;
      
      public function §#!N§(param1:int, param2:Boolean = false)
      {
         this.§1$§ = new Vector.<Number>(12,true);
         super();
         this.§'!4§ = new ByteArray();
         this.§'!4§.endian = Endian.LITTLE_ENDIAN;
         this.§'!4§.length = param1 * §'7§ * §'!9§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §'7§)
         {
            this.§'!4§.writeFloat(0);
            _loc3_++;
         }
         this.§#Z§ = new Vector.<Number>(param1 * §+T§,true);
         this.§-#§ = new Vector.<Number>(param1 * §!c§,true);
         this.§6H§ = param2;
         this.§ !a§ = param1;
      }
      
      public function clone() : §#!N§
      {
         var _loc1_:§#!N§ = new §#!N§(0,this.§6H§);
         _loc1_.§'!4§.length = this.§'!4§.length;
         _loc1_.§'!4§.writeBytes(this.§'!4§);
         _loc1_.§#Z§ = this.§#Z§.concat();
         _loc1_.§#Z§.fixed = true;
         _loc1_.§-#§ = this.§-#§.concat();
         _loc1_.§-#§.fixed = true;
         _loc1_.§ !a§ = this.§ !a§;
         return _loc1_;
      }
      
      public function copyTo(param1:§#!N§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§-#§;
         _loc6_ = this.§ !a§ * §!c§;
         _loc7_ = param2 * §!c§;
         if(param5)
         {
            param5.transformVectors(this.§-#§,this.§1$§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§1$§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§-#§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§'!4§;
         _loc6_ = this.§ !a§ * §'7§ * §'!9§;
         _loc7_ = param2 * §'7§ * §'!9§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§'!4§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§#Z§;
            _loc6_ = this.§ !a§ * §+T§;
            _loc7_ = param2 * §+T§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§#Z§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§ !a§)
               {
                  if(this.§6H§)
                  {
                     _loc13_ = this.§#Z§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§#Z§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§#Z§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§#Z§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§#Z§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§#Z§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§#Z§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§#!N§) : void
      {
         var _loc2_:int = this.§'!4§.length;
         this.§'!4§.length += param1.§'!4§.length;
         this.§'!4§.position = _loc2_;
         this.§'!4§.writeBytes(param1.§'!4§);
         this.§#Z§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§#Z§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§#Z§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§#Z§.fixed = true;
         this.§-#§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§-#§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§-#§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§-#§.fixed = true;
         this.§ !a§ += param1.§>Y§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §!c§;
         var _loc6_:*;
         this.§-#§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§-#§[_loc7_ = _loc5_++] = param3;
         this.§-#§[_loc5_] = param4;
      }
      
      public function §9z§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §!c§;
         var _loc5_:*;
         this.§-#§[_loc5_ = _loc4_++] = param2;
         this.§-#§[_loc4_] = param3;
      }
      
      public function §@&§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §!c§;
         param2.x = this.§-#§[_loc3_++];
         param2.y = this.§-#§[_loc3_++];
         param2.z = this.§-#§[_loc3_];
      }
      
      public function §%;§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§6H§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §3!%§.§[s§(param2) * _loc4_;
         var _loc6_:Number = §3!%§.§^!>§(param2) * _loc4_;
         var _loc7_:Number = §3!%§.§=Q§(param2) * _loc4_;
         this.§ each§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function § each§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §+T§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§#Z§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§#Z§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§#Z§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§#Z§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §7>§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §+T§;
         var _loc4_:*;
         this.§#Z§[_loc4_ = _loc3_++] = this.§#Z§[_loc4_] * param2;
         var _loc5_:*;
         this.§#Z§[_loc5_ = _loc3_++] = this.§#Z§[_loc5_] * param2;
         var _loc6_:*;
         this.§#Z§[_loc6_ = _loc3_++] = this.§#Z§[_loc6_] * param2;
         this.§#Z§[_loc3_] *= param2;
      }
      
      public function §-!]§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §+T§;
         var _loc3_:Number = !!this.§6H§ ? Number(this.§#Z§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§#Z§[_loc2_] * _loc3_;
         _loc5_ = this.§#Z§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§#Z§[_loc2_ + 2] * _loc3_;
         return §3!%§.§7R§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §`r§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§6H§)
         {
            this.§%;§(param1,this.§-!]§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §+T§ + 3;
            this.§#Z§[_loc3_] = param2;
         }
      }
      
      public function §@5§(param1:int) : Number
      {
         var _loc2_:int = param1 * §+T§ + 3;
         return this.§#Z§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §'7§;
         this.§'!4§.position = _loc4_ * §'!9§;
         this.§'!4§.writeFloat(param2);
         this.§'!4§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §'7§;
         this.§'!4§.position = _loc3_ * §'!9§;
         param2.x = this.§'!4§.readFloat();
         param2.y = this.§'!4§.readFloat();
      }
      
      public function §8i§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §!c§;
         var _loc6_:*;
         this.§-#§[_loc6_ = _loc5_++] = this.§-#§[_loc6_] + param2;
         var _loc7_:*;
         this.§-#§[_loc7_ = _loc5_++] = this.§-#§[_loc7_] + param3;
         this.§-#§[_loc5_] += param4;
      }
      
      public function §;H§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §!c§;
         this.§1$§[0] = this.§-#§[_loc3_];
         this.§1$§[1] = this.§-#§[_loc3_ + 1];
         this.§1$§[2] = this.§-#§[_loc3_ + 2];
         param2.transformVectors(this.§1$§,this.§1$§);
         this.§-#§[_loc3_] = this.§1$§[0];
         this.§-#§[_loc3_ + 1] = this.§1$§[1];
         this.§-#§[_loc3_ + 2] = this.§1$§[2];
      }
      
      public function §=!]§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§6H§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §3!%§.§[s§(param1) * _loc3_;
         var _loc5_:Number = §3!%§.§^!>§(param1) * _loc3_;
         var _loc6_:Number = §3!%§.§=Q§(param1) * _loc3_;
         this.§ each§(0,this.§ !a§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §9s§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §+T§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§#Z§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§#Z§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§#Z§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§#Z§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §4!e§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §+T§;
         if(this.§6H§)
         {
            _loc4_ = this.§#Z§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§#Z§[_loc3_] *= _loc4_;
            this.§#Z§[_loc3_ + 1] *= _loc4_;
            this.§#Z§[_loc3_ + 2] *= _loc4_;
            this.§#Z§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§#Z§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§6H§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§ !a§ * §+T§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§@5§(0);
               _loc6_ = !!this.§6H§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§7>§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§6H§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§6H§;
      }
      
      public function get §>Y§() : int
      {
         return this.§ !a§;
      }
      
      public function set §>Y§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §'7§ * §'!9§ - this.§'!4§.length;
         _loc4_ = this.§'!4§.length;
         this.§'!4§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§'!4§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §'!9§)
            {
               this.§'!4§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§#Z§.fixed = false;
         _loc2_ = param1 * §+T§ - this.§#Z§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§#Z§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§#Z§.pop();
            _loc3_++;
         }
         this.§#Z§.fixed = true;
         this.§-#§.fixed = false;
         _loc2_ = param1 * §!c§ - this.§-#§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§-#§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§-#§.pop();
            _loc3_++;
         }
         this.§-#§.fixed = true;
         this.§ !a§ = param1;
      }
      
      public function get §5p§() : ByteArray
      {
         this.§'!4§.position = 0;
         return this.§'!4§;
      }
      
      public function get §4t§() : Vector.<Number>
      {
         return this.§#Z§;
      }
      
      public function get §3!I§() : Vector.<Number>
      {
         return this.§-#§;
      }
   }
}
