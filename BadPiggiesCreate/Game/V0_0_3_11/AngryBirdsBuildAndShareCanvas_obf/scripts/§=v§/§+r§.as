package §=v§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §+r§
   {
      
      public static const §6!Q§:int = 4;
      
      public static const §;!H§:int = 2;
      
      public static const §7!X§:int = 3;
      
      public static const §;!0§:int = 4;
      
      public static const §%"!§:int = 0;
      
      public static const §"!H§:int = 0;
      
      public static const §@#§:int = 0;
       
      
      private var §^!^§:ByteArray;
      
      private var §5"!§:Vector.<Number>;
      
      private var §,S§:Vector.<Number>;
      
      private var §>h§:Boolean;
      
      private var §[`§:int;
      
      private var §"%§:Vector.<Number>;
      
      public function §+r§(param1:int, param2:Boolean = false)
      {
         this.§"%§ = new Vector.<Number>(12,true);
         super();
         this.§^!^§ = new ByteArray();
         this.§^!^§.endian = Endian.LITTLE_ENDIAN;
         this.§^!^§.length = param1 * §;!H§ * §;!0§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §;!H§)
         {
            this.§^!^§.writeFloat(0);
            _loc3_++;
         }
         this.§5"!§ = new Vector.<Number>(param1 * §6!Q§,true);
         this.§,S§ = new Vector.<Number>(param1 * §7!X§,true);
         this.§>h§ = param2;
         this.§[`§ = param1;
      }
      
      public function clone() : §+r§
      {
         var _loc1_:§+r§ = new §+r§(0,this.§>h§);
         _loc1_.§^!^§.length = this.§^!^§.length;
         _loc1_.§^!^§.writeBytes(this.§^!^§);
         _loc1_.§5"!§ = this.§5"!§.concat();
         _loc1_.§5"!§.fixed = true;
         _loc1_.§,S§ = this.§,S§.concat();
         _loc1_.§,S§.fixed = true;
         _loc1_.§[`§ = this.§[`§;
         return _loc1_;
      }
      
      public function copyTo(param1:§+r§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§,S§;
         _loc6_ = this.§[`§ * §7!X§;
         _loc7_ = param2 * §7!X§;
         if(param5)
         {
            param5.transformVectors(this.§,S§,this.§"%§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§"%§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§,S§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§^!^§;
         _loc6_ = this.§[`§ * §;!H§ * §;!0§;
         _loc7_ = param2 * §;!H§ * §;!0§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§^!^§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§5"!§;
            _loc6_ = this.§[`§ * §6!Q§;
            _loc7_ = param2 * §6!Q§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§5"!§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§[`§)
               {
                  if(this.§>h§)
                  {
                     _loc13_ = this.§5"!§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§5"!§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§5"!§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§5"!§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§5"!§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§5"!§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§5"!§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§+r§) : void
      {
         var _loc2_:int = this.§^!^§.length;
         this.§^!^§.length += param1.§^!^§.length;
         this.§^!^§.position = _loc2_;
         this.§^!^§.writeBytes(param1.§^!^§);
         this.§5"!§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§5"!§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§5"!§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§5"!§.fixed = true;
         this.§,S§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§,S§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§,S§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§,S§.fixed = true;
         this.§[`§ += param1.§34§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §7!X§;
         var _loc6_:*;
         this.§,S§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§,S§[_loc7_ = _loc5_++] = param3;
         this.§,S§[_loc5_] = param4;
      }
      
      public function §]"$§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §7!X§;
         var _loc5_:*;
         this.§,S§[_loc5_ = _loc4_++] = param2;
         this.§,S§[_loc4_] = param3;
      }
      
      public function §]>§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §7!X§;
         param2.x = this.§,S§[_loc3_++];
         param2.y = this.§,S§[_loc3_++];
         param2.z = this.§,S§[_loc3_];
      }
      
      public function §#J§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§>h§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §?X§.§3P§(param2) * _loc4_;
         var _loc6_:Number = §?X§.§2z§(param2) * _loc4_;
         var _loc7_:Number = §?X§.§`!f§(param2) * _loc4_;
         this.§?o§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §?o§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §6!Q§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§5"!§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§5"!§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§5"!§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§5"!§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §0f§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §6!Q§;
         var _loc4_:*;
         this.§5"!§[_loc4_ = _loc3_++] = this.§5"!§[_loc4_] * param2;
         var _loc5_:*;
         this.§5"!§[_loc5_ = _loc3_++] = this.§5"!§[_loc5_] * param2;
         var _loc6_:*;
         this.§5"!§[_loc6_ = _loc3_++] = this.§5"!§[_loc6_] * param2;
         this.§5"!§[_loc3_] *= param2;
      }
      
      public function §[!K§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §6!Q§;
         var _loc3_:Number = !!this.§>h§ ? Number(this.§5"!§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§5"!§[_loc2_] * _loc3_;
         _loc5_ = this.§5"!§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§5"!§[_loc2_ + 2] * _loc3_;
         return §?X§.§<%§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §;8§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§>h§)
         {
            this.§#J§(param1,this.§[!K§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §6!Q§ + 3;
            this.§5"!§[_loc3_] = param2;
         }
      }
      
      public function §;!s§(param1:int) : Number
      {
         var _loc2_:int = param1 * §6!Q§ + 3;
         return this.§5"!§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §;!H§;
         this.§^!^§.position = _loc4_ * §;!0§;
         this.§^!^§.writeFloat(param2);
         this.§^!^§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §;!H§;
         this.§^!^§.position = _loc3_ * §;!0§;
         param2.x = this.§^!^§.readFloat();
         param2.y = this.§^!^§.readFloat();
      }
      
      public function §]^§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §7!X§;
         var _loc6_:*;
         this.§,S§[_loc6_ = _loc5_++] = this.§,S§[_loc6_] + param2;
         var _loc7_:*;
         this.§,S§[_loc7_ = _loc5_++] = this.§,S§[_loc7_] + param3;
         this.§,S§[_loc5_] += param4;
      }
      
      public function §7"2§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §7!X§;
         this.§"%§[0] = this.§,S§[_loc3_];
         this.§"%§[1] = this.§,S§[_loc3_ + 1];
         this.§"%§[2] = this.§,S§[_loc3_ + 2];
         param2.transformVectors(this.§"%§,this.§"%§);
         this.§,S§[_loc3_] = this.§"%§[0];
         this.§,S§[_loc3_ + 1] = this.§"%§[1];
         this.§,S§[_loc3_ + 2] = this.§"%§[2];
      }
      
      public function §'!a§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§>h§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §?X§.§3P§(param1) * _loc3_;
         var _loc5_:Number = §?X§.§2z§(param1) * _loc3_;
         var _loc6_:Number = §?X§.§`!f§(param1) * _loc3_;
         this.§?o§(0,this.§[`§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function § !1§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §6!Q§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§5"!§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§5"!§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§5"!§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§5"!§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §4""§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §6!Q§;
         if(this.§>h§)
         {
            _loc4_ = this.§5"!§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§5"!§[_loc3_] *= _loc4_;
            this.§5"!§[_loc3_ + 1] *= _loc4_;
            this.§5"!§[_loc3_ + 2] *= _loc4_;
            this.§5"!§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§5"!§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§>h§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§[`§ * §6!Q§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§;!s§(0);
               _loc6_ = !!this.§>h§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§0f§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§>h§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§>h§;
      }
      
      public function get §34§() : int
      {
         return this.§[`§;
      }
      
      public function set §34§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §;!H§ * §;!0§ - this.§^!^§.length;
         _loc4_ = this.§^!^§.length;
         this.§^!^§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§^!^§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §;!0§)
            {
               this.§^!^§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§5"!§.fixed = false;
         _loc2_ = param1 * §6!Q§ - this.§5"!§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§5"!§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§5"!§.pop();
            _loc3_++;
         }
         this.§5"!§.fixed = true;
         this.§,S§.fixed = false;
         _loc2_ = param1 * §7!X§ - this.§,S§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§,S§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§,S§.pop();
            _loc3_++;
         }
         this.§,S§.fixed = true;
         this.§[`§ = param1;
      }
      
      public function get §9!i§() : ByteArray
      {
         this.§^!^§.position = 0;
         return this.§^!^§;
      }
      
      public function get §2!'§() : Vector.<Number>
      {
         return this.§5"!§;
      }
      
      public function get §1!"§() : Vector.<Number>
      {
         return this.§,S§;
      }
   }
}
