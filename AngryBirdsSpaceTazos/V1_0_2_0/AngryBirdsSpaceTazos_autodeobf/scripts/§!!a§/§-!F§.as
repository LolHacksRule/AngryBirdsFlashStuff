package §!!a§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §-!F§
   {
      
      public static const §"U§:int = 4;
      
      public static const §08§:int = 2;
      
      public static const §[!g§:int = 3;
      
      public static const §?!A§:int = 4;
      
      public static const §-5§:int = 0;
      
      public static const §4"D§:int = 0;
      
      public static const §%!p§:int = 0;
       
      
      private var §?!d§:ByteArray;
      
      private var § !§:Vector.<Number>;
      
      private var §?!p§:Vector.<Number>;
      
      private var §-`§:Boolean;
      
      private var § $§:int;
      
      private var §'f§:Vector.<Number>;
      
      public function §-!F§(param1:int, param2:Boolean = false)
      {
         this.§'f§ = new Vector.<Number>(12,true);
         super();
         this.§?!d§ = new ByteArray();
         this.§?!d§.endian = Endian.LITTLE_ENDIAN;
         this.§?!d§.length = param1 * §08§ * §?!A§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §08§)
         {
            this.§?!d§.writeFloat(0);
            _loc3_++;
         }
         this.§ !§ = new Vector.<Number>(param1 * §"U§,true);
         this.§?!p§ = new Vector.<Number>(param1 * §[!g§,true);
         this.§-`§ = param2;
         this.§ $§ = param1;
      }
      
      public function clone() : §-!F§
      {
         var _loc1_:§-!F§ = new §-!F§(0,this.§-`§);
         _loc1_.§?!d§.length = this.§?!d§.length;
         _loc1_.§?!d§.writeBytes(this.§?!d§);
         _loc1_.§ !§ = this.§ !§.concat();
         _loc1_.§ !§.fixed = true;
         _loc1_.§?!p§ = this.§?!p§.concat();
         _loc1_.§?!p§.fixed = true;
         _loc1_.§ $§ = this.§ $§;
         return _loc1_;
      }
      
      public function copyTo(param1:§-!F§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§?!p§;
         _loc6_ = this.§ $§ * §[!g§;
         _loc7_ = param2 * §[!g§;
         if(param5)
         {
            param5.transformVectors(this.§?!p§,this.§'f§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§'f§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§?!p§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§?!d§;
         _loc6_ = this.§ $§ * §08§ * §?!A§;
         _loc7_ = param2 * §08§ * §?!A§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§?!d§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§ !§;
            _loc6_ = this.§ $§ * §"U§;
            _loc7_ = param2 * §"U§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§ !§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§ $§)
               {
                  if(this.§-`§)
                  {
                     _loc13_ = this.§ !§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§ !§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§ !§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§ !§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§ !§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§ !§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§ !§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§-!F§) : void
      {
         var _loc2_:int = this.§?!d§.length;
         this.§?!d§.length += param1.§?!d§.length;
         this.§?!d§.position = _loc2_;
         this.§?!d§.writeBytes(param1.§?!d§);
         this.§ !§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§ !§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§ !§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§ !§.fixed = true;
         this.§?!p§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§?!p§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§?!p§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§?!p§.fixed = true;
         this.§ $§ += param1.§3@§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §[!g§;
         var _loc6_:*;
         this.§?!p§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§?!p§[_loc7_ = _loc5_++] = param3;
         this.§?!p§[_loc5_] = param4;
      }
      
      public function §;[§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §[!g§;
         var _loc5_:*;
         this.§?!p§[_loc5_ = _loc4_++] = param2;
         this.§?!p§[_loc4_] = param3;
      }
      
      public function getPosition(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §[!g§;
         param2.x = this.§?!p§[_loc3_++];
         param2.y = this.§?!p§[_loc3_++];
         param2.z = this.§?!p§[_loc3_];
      }
      
      public function §&!0§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§-`§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §<"%§.§]%§(param2) * _loc4_;
         var _loc6_:Number = §<"%§.§!!&§(param2) * _loc4_;
         var _loc7_:Number = §<"%§.§>C§(param2) * _loc4_;
         this.§&!r§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §&!r§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §"U§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§ !§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§ !§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§ !§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§ !§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §%!w§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §"U§;
         var _loc4_:*;
         this.§ !§[_loc4_ = _loc3_++] = this.§ !§[_loc4_] * param2;
         var _loc5_:*;
         this.§ !§[_loc5_ = _loc3_++] = this.§ !§[_loc5_] * param2;
         var _loc6_:*;
         this.§ !§[_loc6_ = _loc3_++] = this.§ !§[_loc6_] * param2;
         this.§ !§[_loc3_] *= param2;
      }
      
      public function §#<§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §"U§;
         var _loc3_:Number = !!this.§-`§ ? Number(this.§ !§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§ !§[_loc2_] * _loc3_;
         _loc5_ = this.§ !§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§ !§[_loc2_ + 2] * _loc3_;
         return §<"%§.§&!E§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §8!j§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§-`§)
         {
            this.§&!0§(param1,this.§#<§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §"U§ + 3;
            this.§ !§[_loc3_] = param2;
         }
      }
      
      public function §-"5§(param1:int) : Number
      {
         var _loc2_:int = param1 * §"U§ + 3;
         return this.§ !§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §08§;
         this.§?!d§.position = _loc4_ * §?!A§;
         this.§?!d§.writeFloat(param2);
         this.§?!d§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §08§;
         this.§?!d§.position = _loc3_ * §?!A§;
         param2.x = this.§?!d§.readFloat();
         param2.y = this.§?!d§.readFloat();
      }
      
      public function §5C§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §[!g§;
         var _loc6_:*;
         this.§?!p§[_loc6_ = _loc5_++] = this.§?!p§[_loc6_] + param2;
         var _loc7_:*;
         this.§?!p§[_loc7_ = _loc5_++] = this.§?!p§[_loc7_] + param3;
         this.§?!p§[_loc5_] += param4;
      }
      
      public function §7!7§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §[!g§;
         this.§'f§[0] = this.§?!p§[_loc3_];
         this.§'f§[1] = this.§?!p§[_loc3_ + 1];
         this.§'f§[2] = this.§?!p§[_loc3_ + 2];
         param2.transformVectors(this.§'f§,this.§'f§);
         this.§?!p§[_loc3_] = this.§'f§[0];
         this.§?!p§[_loc3_ + 1] = this.§'f§[1];
         this.§?!p§[_loc3_ + 2] = this.§'f§[2];
      }
      
      public function §[M§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§-`§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §<"%§.§]%§(param1) * _loc3_;
         var _loc5_:Number = §<"%§.§!!&§(param1) * _loc3_;
         var _loc6_:Number = §<"%§.§>C§(param1) * _loc3_;
         this.§&!r§(0,this.§ $§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §3a§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §"U§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§ !§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§ !§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§ !§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§ !§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §+@§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §"U§;
         if(this.§-`§)
         {
            _loc4_ = this.§ !§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§ !§[_loc3_] *= _loc4_;
            this.§ !§[_loc3_ + 1] *= _loc4_;
            this.§ !§[_loc3_ + 2] *= _loc4_;
            this.§ !§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§ !§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §,G§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§-`§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§ $§ * §"U§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§-"5§(0);
               _loc6_ = !!this.§-`§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§%!w§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§-`§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§-`§;
      }
      
      public function get §3@§() : int
      {
         return this.§ $§;
      }
      
      public function set §3@§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §08§ * §?!A§ - this.§?!d§.length;
         _loc4_ = this.§?!d§.length;
         this.§?!d§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§?!d§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §?!A§)
            {
               this.§?!d§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§ !§.fixed = false;
         _loc2_ = param1 * §"U§ - this.§ !§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§ !§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§ !§.pop();
            _loc3_++;
         }
         this.§ !§.fixed = true;
         this.§?!p§.fixed = false;
         _loc2_ = param1 * §[!g§ - this.§?!p§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§?!p§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§?!p§.pop();
            _loc3_++;
         }
         this.§?!p§.fixed = true;
         this.§ $§ = param1;
      }
      
      public function get §68§() : ByteArray
      {
         this.§?!d§.position = 0;
         return this.§?!d§;
      }
      
      public function get §9"7§() : Vector.<Number>
      {
         return this.§ !§;
      }
      
      public function get §=E§() : Vector.<Number>
      {
         return this.§?!p§;
      }
   }
}
