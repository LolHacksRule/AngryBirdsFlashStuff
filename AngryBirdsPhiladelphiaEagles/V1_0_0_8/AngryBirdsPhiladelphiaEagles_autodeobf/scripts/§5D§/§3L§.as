package §5D§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §3L§
   {
      
      public static const §=4§:int = 4;
      
      public static const §;!-§:int = 2;
      
      public static const §=Y§:int = 3;
      
      public static const §?3§:int = 4;
      
      public static const §6#§:int = 0;
      
      public static const §8!&§:int = 0;
      
      public static const §2!0§:int = 0;
       
      
      private var §;K§:ByteArray;
      
      private var §0!#§:Vector.<Number>;
      
      private var §7]§:Vector.<Number>;
      
      private var §^8§:Boolean;
      
      private var §8!<§:int;
      
      private var § "§:Vector.<Number>;
      
      public function §3L§(param1:int, param2:Boolean = false)
      {
         this.§ "§ = new Vector.<Number>(12,true);
         super();
         this.§;K§ = new ByteArray();
         this.§;K§.endian = Endian.LITTLE_ENDIAN;
         this.§;K§.length = param1 * §;!-§ * §?3§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §;!-§)
         {
            this.§;K§.writeFloat(0);
            _loc3_++;
         }
         this.§0!#§ = new Vector.<Number>(param1 * §=4§,true);
         this.§7]§ = new Vector.<Number>(param1 * §=Y§,true);
         this.§^8§ = param2;
         this.§8!<§ = param1;
      }
      
      public function clone() : §3L§
      {
         var _loc1_:§3L§ = new §3L§(0,this.§^8§);
         _loc1_.§;K§.length = this.§;K§.length;
         _loc1_.§;K§.writeBytes(this.§;K§);
         _loc1_.§0!#§ = this.§0!#§.concat();
         _loc1_.§0!#§.fixed = true;
         _loc1_.§7]§ = this.§7]§.concat();
         _loc1_.§7]§.fixed = true;
         _loc1_.§8!<§ = this.§8!<§;
         return _loc1_;
      }
      
      public function copyTo(param1:§3L§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§7]§;
         _loc6_ = this.§8!<§ * §=Y§;
         _loc7_ = param2 * §=Y§;
         if(param5)
         {
            param5.transformVectors(this.§7]§,this.§ "§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§ "§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§7]§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§;K§;
         _loc6_ = this.§8!<§ * §;!-§ * §?3§;
         _loc7_ = param2 * §;!-§ * §?3§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§;K§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§0!#§;
            _loc6_ = this.§8!<§ * §=4§;
            _loc7_ = param2 * §=4§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§0!#§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§8!<§)
               {
                  if(this.§^8§)
                  {
                     _loc13_ = this.§0!#§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§0!#§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§0!#§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§0!#§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§0!#§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§0!#§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§0!#§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§3L§) : void
      {
         var _loc2_:int = this.§;K§.length;
         this.§;K§.length += param1.§;K§.length;
         this.§;K§.position = _loc2_;
         this.§;K§.writeBytes(param1.§;K§);
         this.§0!#§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§0!#§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§0!#§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§0!#§.fixed = true;
         this.§7]§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§7]§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§7]§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§7]§.fixed = true;
         this.§8!<§ += param1.§1J§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §=Y§;
         var _loc6_:*;
         this.§7]§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§7]§[_loc7_ = _loc5_++] = param3;
         this.§7]§[_loc5_] = param4;
      }
      
      public function §+K§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §=Y§;
         var _loc5_:*;
         this.§7]§[_loc5_ = _loc4_++] = param2;
         this.§7]§[_loc4_] = param3;
      }
      
      public function §1K§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §=Y§;
         param2.x = this.§7]§[_loc3_++];
         param2.y = this.§7]§[_loc3_++];
         param2.z = this.§7]§[_loc3_];
      }
      
      public function §`!-§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§^8§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §%z§.§"!J§(param2) * _loc4_;
         var _loc6_:Number = §%z§.§4w§(param2) * _loc4_;
         var _loc7_:Number = §%z§.§ get§(param2) * _loc4_;
         this.§3!2§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §3!2§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §=4§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§0!#§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§0!#§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§0!#§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§0!#§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §5y§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §=4§;
         var _loc4_:*;
         this.§0!#§[_loc4_ = _loc3_++] = this.§0!#§[_loc4_] * param2;
         var _loc5_:*;
         this.§0!#§[_loc5_ = _loc3_++] = this.§0!#§[_loc5_] * param2;
         var _loc6_:*;
         this.§0!#§[_loc6_ = _loc3_++] = this.§0!#§[_loc6_] * param2;
         this.§0!#§[_loc3_] *= param2;
      }
      
      public function §null§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §=4§;
         var _loc3_:Number = !!this.§^8§ ? Number(this.§0!#§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§0!#§[_loc2_] * _loc3_;
         _loc5_ = this.§0!#§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§0!#§[_loc2_ + 2] * _loc3_;
         return §%z§.§`1§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §@k§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§^8§)
         {
            this.§`!-§(param1,this.§null§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §=4§ + 3;
            this.§0!#§[_loc3_] = param2;
         }
      }
      
      public function §=_§(param1:int) : Number
      {
         var _loc2_:int = param1 * §=4§ + 3;
         return this.§0!#§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §;!-§;
         this.§;K§.position = _loc4_ * §?3§;
         this.§;K§.writeFloat(param2);
         this.§;K§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §;!-§;
         this.§;K§.position = _loc3_ * §?3§;
         param2.x = this.§;K§.readFloat();
         param2.y = this.§;K§.readFloat();
      }
      
      public function §0!N§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §=Y§;
         var _loc6_:*;
         this.§7]§[_loc6_ = _loc5_++] = this.§7]§[_loc6_] + param2;
         var _loc7_:*;
         this.§7]§[_loc7_ = _loc5_++] = this.§7]§[_loc7_] + param3;
         this.§7]§[_loc5_] += param4;
      }
      
      public function §<c§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §=Y§;
         this.§ "§[0] = this.§7]§[_loc3_];
         this.§ "§[1] = this.§7]§[_loc3_ + 1];
         this.§ "§[2] = this.§7]§[_loc3_ + 2];
         param2.transformVectors(this.§ "§,this.§ "§);
         this.§7]§[_loc3_] = this.§ "§[0];
         this.§7]§[_loc3_ + 1] = this.§ "§[1];
         this.§7]§[_loc3_ + 2] = this.§ "§[2];
      }
      
      public function §%?§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§^8§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §%z§.§"!J§(param1) * _loc3_;
         var _loc5_:Number = §%z§.§4w§(param1) * _loc3_;
         var _loc6_:Number = §%z§.§ get§(param1) * _loc3_;
         this.§3!2§(0,this.§8!<§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §`!;§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §=4§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§0!#§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§0!#§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§0!#§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§0!#§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §7'§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §=4§;
         if(this.§^8§)
         {
            _loc4_ = this.§0!#§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§0!#§[_loc3_] *= _loc4_;
            this.§0!#§[_loc3_ + 1] *= _loc4_;
            this.§0!#§[_loc3_ + 2] *= _loc4_;
            this.§0!#§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§0!#§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§^8§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§8!<§ * §=4§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§=_§(0);
               _loc6_ = !!this.§^8§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§5y§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§^8§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§^8§;
      }
      
      public function get §1J§() : int
      {
         return this.§8!<§;
      }
      
      public function set §1J§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §;!-§ * §?3§ - this.§;K§.length;
         _loc4_ = this.§;K§.length;
         this.§;K§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§;K§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §?3§)
            {
               this.§;K§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§0!#§.fixed = false;
         _loc2_ = param1 * §=4§ - this.§0!#§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§0!#§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§0!#§.pop();
            _loc3_++;
         }
         this.§0!#§.fixed = true;
         this.§7]§.fixed = false;
         _loc2_ = param1 * §=Y§ - this.§7]§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§7]§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§7]§.pop();
            _loc3_++;
         }
         this.§7]§.fixed = true;
         this.§8!<§ = param1;
      }
      
      public function get §-Y§() : ByteArray
      {
         this.§;K§.position = 0;
         return this.§;K§;
      }
      
      public function get §]8§() : Vector.<Number>
      {
         return this.§0!#§;
      }
      
      public function get § g§() : Vector.<Number>
      {
         return this.§7]§;
      }
   }
}
