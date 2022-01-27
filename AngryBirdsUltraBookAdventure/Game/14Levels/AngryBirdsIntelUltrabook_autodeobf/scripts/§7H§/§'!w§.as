package §7H§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §'!w§
   {
      
      public static const §%I§:int = 4;
      
      public static const §#![§:int = 2;
      
      public static const §9>§:int = 3;
      
      public static const §,!w§:int = 4;
      
      public static const §9!C§:int = 0;
      
      public static const §2Q§:int = 0;
      
      public static const §<h§:int = 0;
       
      
      private var §"!>§:ByteArray;
      
      private var §@+§:Vector.<Number>;
      
      private var §^!8§:Vector.<Number>;
      
      private var §@!P§:Boolean;
      
      private var §3!>§:int;
      
      private var §2!%§:Vector.<Number>;
      
      public function §'!w§(param1:int, param2:Boolean = false)
      {
         this.§2!%§ = new Vector.<Number>(12,true);
         super();
         this.§"!>§ = new ByteArray();
         this.§"!>§.endian = Endian.LITTLE_ENDIAN;
         this.§"!>§.length = param1 * §#![§ * §,!w§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §#![§)
         {
            this.§"!>§.writeFloat(0);
            _loc3_++;
         }
         this.§@+§ = new Vector.<Number>(param1 * §%I§,true);
         this.§^!8§ = new Vector.<Number>(param1 * §9>§,true);
         this.§@!P§ = param2;
         this.§3!>§ = param1;
      }
      
      public function clone() : §'!w§
      {
         var _loc1_:§'!w§ = new §'!w§(0,this.§@!P§);
         _loc1_.§"!>§.length = this.§"!>§.length;
         _loc1_.§"!>§.writeBytes(this.§"!>§);
         _loc1_.§@+§ = this.§@+§.concat();
         _loc1_.§@+§.fixed = true;
         _loc1_.§^!8§ = this.§^!8§.concat();
         _loc1_.§^!8§.fixed = true;
         _loc1_.§3!>§ = this.§3!>§;
         return _loc1_;
      }
      
      public function copyTo(param1:§'!w§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§^!8§;
         _loc6_ = this.§3!>§ * §9>§;
         _loc7_ = param2 * §9>§;
         if(param5)
         {
            param5.transformVectors(this.§^!8§,this.§2!%§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§2!%§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§^!8§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§"!>§;
         _loc6_ = this.§3!>§ * §#![§ * §,!w§;
         _loc7_ = param2 * §#![§ * §,!w§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§"!>§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§@+§;
            _loc6_ = this.§3!>§ * §%I§;
            _loc7_ = param2 * §%I§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§@+§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§3!>§)
               {
                  if(this.§@!P§)
                  {
                     _loc13_ = this.§@+§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§@+§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§@+§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§@+§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§@+§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§@+§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§@+§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§'!w§) : void
      {
         var _loc2_:int = this.§"!>§.length;
         this.§"!>§.length += param1.§"!>§.length;
         this.§"!>§.position = _loc2_;
         this.§"!>§.writeBytes(param1.§"!>§);
         this.§@+§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§@+§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§@+§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§@+§.fixed = true;
         this.§^!8§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§^!8§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§^!8§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§^!8§.fixed = true;
         this.§3!>§ += param1.§52§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §9>§;
         var _loc6_:*;
         this.§^!8§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§^!8§[_loc7_ = _loc5_++] = param3;
         this.§^!8§[_loc5_] = param4;
      }
      
      public function §6!T§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §9>§;
         var _loc5_:*;
         this.§^!8§[_loc5_ = _loc4_++] = param2;
         this.§^!8§[_loc4_] = param3;
      }
      
      public function §+j§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §9>§;
         param2.x = this.§^!8§[_loc3_++];
         param2.y = this.§^!8§[_loc3_++];
         param2.z = this.§^!8§[_loc3_];
      }
      
      public function §,!7§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§@!P§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = include.§`#§(param2) * _loc4_;
         var _loc6_:Number = include.§^9§(param2) * _loc4_;
         var _loc7_:Number = include.§]7§(param2) * _loc4_;
         this.§5! §(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §5! §(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §%I§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§@+§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§@+§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§@+§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§@+§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §"!&§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §%I§;
         var _loc4_:*;
         this.§@+§[_loc4_ = _loc3_++] = this.§@+§[_loc4_] * param2;
         var _loc5_:*;
         this.§@+§[_loc5_ = _loc3_++] = this.§@+§[_loc5_] * param2;
         var _loc6_:*;
         this.§@+§[_loc6_ = _loc3_++] = this.§@+§[_loc6_] * param2;
         this.§@+§[_loc3_] *= param2;
      }
      
      public function §>!9§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §%I§;
         var _loc3_:Number = !!this.§@!P§ ? Number(this.§@+§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§@+§[_loc2_] * _loc3_;
         _loc5_ = this.§@+§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§@+§[_loc2_ + 2] * _loc3_;
         return include.§5i§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §!0§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§@!P§)
         {
            this.§,!7§(param1,this.§>!9§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §%I§ + 3;
            this.§@+§[_loc3_] = param2;
         }
      }
      
      public function §5!&§(param1:int) : Number
      {
         var _loc2_:int = param1 * §%I§ + 3;
         return this.§@+§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §#![§;
         this.§"!>§.position = _loc4_ * §,!w§;
         this.§"!>§.writeFloat(param2);
         this.§"!>§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §#![§;
         this.§"!>§.position = _loc3_ * §,!w§;
         param2.x = this.§"!>§.readFloat();
         param2.y = this.§"!>§.readFloat();
      }
      
      public function §&M§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §9>§;
         var _loc6_:*;
         this.§^!8§[_loc6_ = _loc5_++] = this.§^!8§[_loc6_] + param2;
         var _loc7_:*;
         this.§^!8§[_loc7_ = _loc5_++] = this.§^!8§[_loc7_] + param3;
         this.§^!8§[_loc5_] += param4;
      }
      
      public function §">§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §9>§;
         this.§2!%§[0] = this.§^!8§[_loc3_];
         this.§2!%§[1] = this.§^!8§[_loc3_ + 1];
         this.§2!%§[2] = this.§^!8§[_loc3_ + 2];
         param2.transformVectors(this.§2!%§,this.§2!%§);
         this.§^!8§[_loc3_] = this.§2!%§[0];
         this.§^!8§[_loc3_ + 1] = this.§2!%§[1];
         this.§^!8§[_loc3_ + 2] = this.§2!%§[2];
      }
      
      public function §]!P§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§@!P§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = include.§`#§(param1) * _loc3_;
         var _loc5_:Number = include.§^9§(param1) * _loc3_;
         var _loc6_:Number = include.§]7§(param1) * _loc3_;
         this.§5! §(0,this.§3!>§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §#!s§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §%I§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§@+§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§@+§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§@+§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§@+§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §[!m§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §%I§;
         if(this.§@!P§)
         {
            _loc4_ = this.§@+§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§@+§[_loc3_] *= _loc4_;
            this.§@+§[_loc3_ + 1] *= _loc4_;
            this.§@+§[_loc3_ + 2] *= _loc4_;
            this.§@+§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§@+§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §&!O§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§@!P§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§3!>§ * §%I§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§5!&§(0);
               _loc6_ = !!this.§@!P§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§"!&§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§@!P§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§@!P§;
      }
      
      public function get §52§() : int
      {
         return this.§3!>§;
      }
      
      public function set §52§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §#![§ * §,!w§ - this.§"!>§.length;
         _loc4_ = this.§"!>§.length;
         this.§"!>§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§"!>§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §,!w§)
            {
               this.§"!>§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§@+§.fixed = false;
         _loc2_ = param1 * §%I§ - this.§@+§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§@+§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§@+§.pop();
            _loc3_++;
         }
         this.§@+§.fixed = true;
         this.§^!8§.fixed = false;
         _loc2_ = param1 * §9>§ - this.§^!8§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§^!8§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§^!8§.pop();
            _loc3_++;
         }
         this.§^!8§.fixed = true;
         this.§3!>§ = param1;
      }
      
      public function get §%r§() : ByteArray
      {
         this.§"!>§.position = 0;
         return this.§"!>§;
      }
      
      public function get §<`§() : Vector.<Number>
      {
         return this.§@+§;
      }
      
      public function get §1'§() : Vector.<Number>
      {
         return this.§^!8§;
      }
   }
}
