package §&!Z§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §6!r§
   {
      
      public static const §5m§:int = 4;
      
      public static const §""A§:int = 2;
      
      public static const §%d§:int = 3;
      
      public static const § !L§:int = 4;
      
      public static const §^A§:int = 0;
      
      public static const §%§:int = 0;
      
      public static const §8!d§:int = 0;
       
      
      private var §#+§:ByteArray;
      
      private var §[!C§:Vector.<Number>;
      
      private var §!s§:Vector.<Number>;
      
      private var §<!l§:Boolean;
      
      private var §0",§:int;
      
      private var §9!j§:Vector.<Number>;
      
      public function §6!r§(param1:int, param2:Boolean = false)
      {
         this.§9!j§ = new Vector.<Number>(12,true);
         super();
         this.§#+§ = new ByteArray();
         this.§#+§.endian = Endian.LITTLE_ENDIAN;
         this.§#+§.length = param1 * §""A§ * § !L§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §""A§)
         {
            this.§#+§.writeFloat(0);
            _loc3_++;
         }
         this.§[!C§ = new Vector.<Number>(param1 * §5m§,true);
         this.§!s§ = new Vector.<Number>(param1 * §%d§,true);
         this.§<!l§ = param2;
         this.§0",§ = param1;
      }
      
      public function clone() : §6!r§
      {
         var _loc1_:§6!r§ = new §6!r§(0,this.§<!l§);
         _loc1_.§#+§.length = this.§#+§.length;
         _loc1_.§#+§.writeBytes(this.§#+§);
         _loc1_.§[!C§ = this.§[!C§.concat();
         _loc1_.§[!C§.fixed = true;
         _loc1_.§!s§ = this.§!s§.concat();
         _loc1_.§!s§.fixed = true;
         _loc1_.§0",§ = this.§0",§;
         return _loc1_;
      }
      
      public function copyTo(param1:§6!r§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§!s§;
         _loc6_ = this.§0",§ * §%d§;
         _loc7_ = param2 * §%d§;
         if(param5)
         {
            param5.transformVectors(this.§!s§,this.§9!j§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§9!j§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§!s§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§#+§;
         _loc6_ = this.§0",§ * §""A§ * § !L§;
         _loc7_ = param2 * §""A§ * § !L§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§#+§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§[!C§;
            _loc6_ = this.§0",§ * §5m§;
            _loc7_ = param2 * §5m§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§[!C§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§0",§)
               {
                  if(this.§<!l§)
                  {
                     _loc13_ = this.§[!C§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§[!C§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§[!C§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§[!C§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§[!C§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§[!C§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§[!C§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§6!r§) : void
      {
         var _loc2_:int = this.§#+§.length;
         this.§#+§.length += param1.§#+§.length;
         this.§#+§.position = _loc2_;
         this.§#+§.writeBytes(param1.§#+§);
         this.§[!C§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§[!C§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§[!C§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§[!C§.fixed = true;
         this.§!s§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§!s§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§!s§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§!s§.fixed = true;
         this.§0",§ += param1.§[">§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §%d§;
         var _loc6_:*;
         this.§!s§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§!s§[_loc7_ = _loc5_++] = param3;
         this.§!s§[_loc5_] = param4;
      }
      
      public function §'&§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §%d§;
         var _loc5_:*;
         this.§!s§[_loc5_ = _loc4_++] = param2;
         this.§!s§[_loc4_] = param3;
      }
      
      public function getPosition(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §%d§;
         param2.x = this.§!s§[_loc3_++];
         param2.y = this.§!s§[_loc3_++];
         param2.z = this.§!s§[_loc3_];
      }
      
      public function §%k§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§<!l§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §@!a§.§4N§(param2) * _loc4_;
         var _loc6_:Number = §@!a§.§"g§(param2) * _loc4_;
         var _loc7_:Number = §@!a§.§?"7§(param2) * _loc4_;
         this.§;"5§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §;"5§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §5m§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§[!C§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§[!C§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§[!C§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§[!C§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §4"E§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §5m§;
         var _loc4_:*;
         this.§[!C§[_loc4_ = _loc3_++] = this.§[!C§[_loc4_] * param2;
         var _loc5_:*;
         this.§[!C§[_loc5_ = _loc3_++] = this.§[!C§[_loc5_] * param2;
         var _loc6_:*;
         this.§[!C§[_loc6_ = _loc3_++] = this.§[!C§[_loc6_] * param2;
         this.§[!C§[_loc3_] *= param2;
      }
      
      public function §[w§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §5m§;
         var _loc3_:Number = !!this.§<!l§ ? Number(this.§[!C§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§[!C§[_loc2_] * _loc3_;
         _loc5_ = this.§[!C§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§[!C§[_loc2_ + 2] * _loc3_;
         return §@!a§.§,!a§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §24§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§<!l§)
         {
            this.§%k§(param1,this.§[w§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §5m§ + 3;
            this.§[!C§[_loc3_] = param2;
         }
      }
      
      public function §&!5§(param1:int) : Number
      {
         var _loc2_:int = param1 * §5m§ + 3;
         return this.§[!C§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §""A§;
         this.§#+§.position = _loc4_ * § !L§;
         this.§#+§.writeFloat(param2);
         this.§#+§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §""A§;
         this.§#+§.position = _loc3_ * § !L§;
         param2.x = this.§#+§.readFloat();
         param2.y = this.§#+§.readFloat();
      }
      
      public function §<">§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §%d§;
         var _loc6_:*;
         this.§!s§[_loc6_ = _loc5_++] = this.§!s§[_loc6_] + param2;
         var _loc7_:*;
         this.§!s§[_loc7_ = _loc5_++] = this.§!s§[_loc7_] + param3;
         this.§!s§[_loc5_] += param4;
      }
      
      public function §?"%§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §%d§;
         this.§9!j§[0] = this.§!s§[_loc3_];
         this.§9!j§[1] = this.§!s§[_loc3_ + 1];
         this.§9!j§[2] = this.§!s§[_loc3_ + 2];
         param2.transformVectors(this.§9!j§,this.§9!j§);
         this.§!s§[_loc3_] = this.§9!j§[0];
         this.§!s§[_loc3_ + 1] = this.§9!j§[1];
         this.§!s§[_loc3_ + 2] = this.§9!j§[2];
      }
      
      public function §7x§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§<!l§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §@!a§.§4N§(param1) * _loc3_;
         var _loc5_:Number = §@!a§.§"g§(param1) * _loc3_;
         var _loc6_:Number = §@!a§.§?"7§(param1) * _loc3_;
         this.§;"5§(0,this.§0",§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §9!9§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §5m§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§[!C§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§[!C§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§[!C§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§[!C§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §5!w§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §5m§;
         if(this.§<!l§)
         {
            _loc4_ = this.§[!C§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§[!C§[_loc3_] *= _loc4_;
            this.§[!C§[_loc3_ + 1] *= _loc4_;
            this.§[!C§[_loc3_ + 2] *= _loc4_;
            this.§[!C§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§[!C§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §1?§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§<!l§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§0",§ * §5m§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§&!5§(0);
               _loc6_ = !!this.§<!l§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§4"E§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§<!l§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§<!l§;
      }
      
      public function get §[">§() : int
      {
         return this.§0",§;
      }
      
      public function set §[">§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §""A§ * § !L§ - this.§#+§.length;
         _loc4_ = this.§#+§.length;
         this.§#+§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§#+§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / § !L§)
            {
               this.§#+§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§[!C§.fixed = false;
         _loc2_ = param1 * §5m§ - this.§[!C§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§[!C§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§[!C§.pop();
            _loc3_++;
         }
         this.§[!C§.fixed = true;
         this.§!s§.fixed = false;
         _loc2_ = param1 * §%d§ - this.§!s§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§!s§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§!s§.pop();
            _loc3_++;
         }
         this.§!s§.fixed = true;
         this.§0",§ = param1;
      }
      
      public function get §3"8§() : ByteArray
      {
         this.§#+§.position = 0;
         return this.§#+§;
      }
      
      public function get §2!l§() : Vector.<Number>
      {
         return this.§[!C§;
      }
      
      public function get §7'§() : Vector.<Number>
      {
         return this.§!s§;
      }
   }
}
