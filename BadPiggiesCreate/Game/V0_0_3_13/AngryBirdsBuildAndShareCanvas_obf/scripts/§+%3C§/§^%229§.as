package §+<§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §^"9§
   {
      
      public static const §%!^§:int = 4;
      
      public static const §[!O§:int = 2;
      
      public static const §=!e§:int = 3;
      
      public static const §=M§:int = 4;
      
      public static const §]>§:int = 0;
      
      public static const §-I§:int = 0;
      
      public static const §6!j§:int = 0;
       
      
      private var §1!`§:ByteArray;
      
      private var §=]§:Vector.<Number>;
      
      private var §2!I§:Vector.<Number>;
      
      private var § !j§:Boolean;
      
      private var §5!P§:int;
      
      private var §,!H§:Vector.<Number>;
      
      public function §^"9§(param1:int, param2:Boolean = false)
      {
         this.§,!H§ = new Vector.<Number>(12,true);
         super();
         this.§1!`§ = new ByteArray();
         this.§1!`§.endian = Endian.LITTLE_ENDIAN;
         this.§1!`§.length = param1 * §[!O§ * §=M§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §[!O§)
         {
            this.§1!`§.writeFloat(0);
            _loc3_++;
         }
         this.§=]§ = new Vector.<Number>(param1 * §%!^§,true);
         this.§2!I§ = new Vector.<Number>(param1 * §=!e§,true);
         this.§ !j§ = param2;
         this.§5!P§ = param1;
      }
      
      public function clone() : §^"9§
      {
         var _loc1_:§^"9§ = new §^"9§(0,this.§ !j§);
         _loc1_.§1!`§.length = this.§1!`§.length;
         _loc1_.§1!`§.writeBytes(this.§1!`§);
         _loc1_.§=]§ = this.§=]§.concat();
         _loc1_.§=]§.fixed = true;
         _loc1_.§2!I§ = this.§2!I§.concat();
         _loc1_.§2!I§.fixed = true;
         _loc1_.§5!P§ = this.§5!P§;
         return _loc1_;
      }
      
      public function copyTo(param1:§^"9§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§2!I§;
         _loc6_ = this.§5!P§ * §=!e§;
         _loc7_ = param2 * §=!e§;
         if(param5)
         {
            param5.transformVectors(this.§2!I§,this.§,!H§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§,!H§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§2!I§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§1!`§;
         _loc6_ = this.§5!P§ * §[!O§ * §=M§;
         _loc7_ = param2 * §[!O§ * §=M§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§1!`§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§=]§;
            _loc6_ = this.§5!P§ * §%!^§;
            _loc7_ = param2 * §%!^§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§=]§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§5!P§)
               {
                  if(this.§ !j§)
                  {
                     _loc13_ = this.§=]§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§=]§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§=]§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§=]§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§=]§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§=]§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§=]§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§^"9§) : void
      {
         var _loc2_:int = this.§1!`§.length;
         this.§1!`§.length += param1.§1!`§.length;
         this.§1!`§.position = _loc2_;
         this.§1!`§.writeBytes(param1.§1!`§);
         this.§=]§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§=]§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§=]§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§=]§.fixed = true;
         this.§2!I§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§2!I§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§2!I§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§2!I§.fixed = true;
         this.§5!P§ += param1.§<"&§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §=!e§;
         var _loc6_:*;
         this.§2!I§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§2!I§[_loc7_ = _loc5_++] = param3;
         this.§2!I§[_loc5_] = param4;
      }
      
      public function §+V§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §=!e§;
         var _loc5_:*;
         this.§2!I§[_loc5_ = _loc4_++] = param2;
         this.§2!I§[_loc4_] = param3;
      }
      
      public function §@!0§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §=!e§;
         param2.x = this.§2!I§[_loc3_++];
         param2.y = this.§2!I§[_loc3_++];
         param2.z = this.§2!I§[_loc3_];
      }
      
      public function §=;§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§ !j§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §@r§.§?!E§(param2) * _loc4_;
         var _loc6_:Number = §@r§.§]%§(param2) * _loc4_;
         var _loc7_:Number = §@r§.§&n§(param2) * _loc4_;
         this.§<"=§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §<"=§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §%!^§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§=]§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§=]§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§=]§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§=]§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §;!'§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §%!^§;
         var _loc4_:*;
         this.§=]§[_loc4_ = _loc3_++] = this.§=]§[_loc4_] * param2;
         var _loc5_:*;
         this.§=]§[_loc5_ = _loc3_++] = this.§=]§[_loc5_] * param2;
         var _loc6_:*;
         this.§=]§[_loc6_ = _loc3_++] = this.§=]§[_loc6_] * param2;
         this.§=]§[_loc3_] *= param2;
      }
      
      public function §-!C§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §%!^§;
         var _loc3_:Number = !!this.§ !j§ ? Number(this.§=]§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§=]§[_loc2_] * _loc3_;
         _loc5_ = this.§=]§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§=]§[_loc2_ + 2] * _loc3_;
         return §@r§.§7!§(_loc4_,_loc5_,_loc6_);
      }
      
      public function § !`§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§ !j§)
         {
            this.§=;§(param1,this.§-!C§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §%!^§ + 3;
            this.§=]§[_loc3_] = param2;
         }
      }
      
      public function §""$§(param1:int) : Number
      {
         var _loc2_:int = param1 * §%!^§ + 3;
         return this.§=]§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §[!O§;
         this.§1!`§.position = _loc4_ * §=M§;
         this.§1!`§.writeFloat(param2);
         this.§1!`§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §[!O§;
         this.§1!`§.position = _loc3_ * §=M§;
         param2.x = this.§1!`§.readFloat();
         param2.y = this.§1!`§.readFloat();
      }
      
      public function § !L§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §=!e§;
         var _loc6_:*;
         this.§2!I§[_loc6_ = _loc5_++] = this.§2!I§[_loc6_] + param2;
         var _loc7_:*;
         this.§2!I§[_loc7_ = _loc5_++] = this.§2!I§[_loc7_] + param3;
         this.§2!I§[_loc5_] += param4;
      }
      
      public function §-q§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §=!e§;
         this.§,!H§[0] = this.§2!I§[_loc3_];
         this.§,!H§[1] = this.§2!I§[_loc3_ + 1];
         this.§,!H§[2] = this.§2!I§[_loc3_ + 2];
         param2.transformVectors(this.§,!H§,this.§,!H§);
         this.§2!I§[_loc3_] = this.§,!H§[0];
         this.§2!I§[_loc3_ + 1] = this.§,!H§[1];
         this.§2!I§[_loc3_ + 2] = this.§,!H§[2];
      }
      
      public function §4!V§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§ !j§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §@r§.§?!E§(param1) * _loc3_;
         var _loc5_:Number = §@r§.§]%§(param1) * _loc3_;
         var _loc6_:Number = §@r§.§&n§(param1) * _loc3_;
         this.§<"=§(0,this.§5!P§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §;j§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §%!^§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§=]§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§=]§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§=]§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§=]§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §"!6§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §%!^§;
         if(this.§ !j§)
         {
            _loc4_ = this.§=]§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§=]§[_loc3_] *= _loc4_;
            this.§=]§[_loc3_ + 1] *= _loc4_;
            this.§=]§[_loc3_ + 2] *= _loc4_;
            this.§=]§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§=]§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §64§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§ !j§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§5!P§ * §%!^§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§""$§(0);
               _loc6_ = !!this.§ !j§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§;!'§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§ !j§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§ !j§;
      }
      
      public function get §<"&§() : int
      {
         return this.§5!P§;
      }
      
      public function set §<"&§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §[!O§ * §=M§ - this.§1!`§.length;
         _loc4_ = this.§1!`§.length;
         this.§1!`§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§1!`§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §=M§)
            {
               this.§1!`§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§=]§.fixed = false;
         _loc2_ = param1 * §%!^§ - this.§=]§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§=]§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§=]§.pop();
            _loc3_++;
         }
         this.§=]§.fixed = true;
         this.§2!I§.fixed = false;
         _loc2_ = param1 * §=!e§ - this.§2!I§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§2!I§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§2!I§.pop();
            _loc3_++;
         }
         this.§2!I§.fixed = true;
         this.§5!P§ = param1;
      }
      
      public function get §5"7§() : ByteArray
      {
         this.§1!`§.position = 0;
         return this.§1!`§;
      }
      
      public function get §6!v§() : Vector.<Number>
      {
         return this.§=]§;
      }
      
      public function get §7";§() : Vector.<Number>
      {
         return this.§2!I§;
      }
   }
}
