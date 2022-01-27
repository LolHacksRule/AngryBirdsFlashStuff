package §3"e§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §;P§
   {
      
      public static const §1# §:int = 4;
      
      public static const §^b§:int = 2;
      
      public static const §'""§:int = 3;
      
      public static const §`"t§:int = 4;
      
      public static const §,#5§:int = 0;
      
      public static const §4%§:int = 0;
      
      public static const §^<§:int = 0;
       
      
      private var §6"[§:ByteArray;
      
      private var §9"_§:Vector.<Number>;
      
      private var §6&§:Vector.<Number>;
      
      private var §2!N§:Boolean;
      
      private var §#!f§:int;
      
      private var §+"y§:Vector.<Number>;
      
      public function §;P§(param1:int, param2:Boolean = false)
      {
         this.§+"y§ = new Vector.<Number>(12,true);
         super();
         this.§6"[§ = new ByteArray();
         this.§6"[§.endian = Endian.LITTLE_ENDIAN;
         this.§6"[§.length = param1 * §^b§ * §`"t§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §^b§)
         {
            this.§6"[§.writeFloat(0);
            _loc3_++;
         }
         this.§9"_§ = new Vector.<Number>(param1 * §1# §,true);
         this.§6&§ = new Vector.<Number>(param1 * §'""§,true);
         this.§2!N§ = param2;
         this.§#!f§ = param1;
      }
      
      public function clone() : §;P§
      {
         var _loc1_:§;P§ = new §;P§(0,this.§2!N§);
         _loc1_.§6"[§.length = this.§6"[§.length;
         _loc1_.§6"[§.writeBytes(this.§6"[§);
         _loc1_.§9"_§ = this.§9"_§.concat();
         _loc1_.§9"_§.fixed = true;
         _loc1_.§6&§ = this.§6&§.concat();
         _loc1_.§6&§.fixed = true;
         _loc1_.§#!f§ = this.§#!f§;
         return _loc1_;
      }
      
      public function copyTo(param1:§;P§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§6&§;
         _loc6_ = this.§#!f§ * §'""§;
         _loc7_ = param2 * §'""§;
         if(param5)
         {
            param5.transformVectors(this.§6&§,this.§+"y§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§+"y§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§6&§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§6"[§;
         _loc6_ = this.§#!f§ * §^b§ * §`"t§;
         _loc7_ = param2 * §^b§ * §`"t§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§6"[§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§9"_§;
            _loc6_ = this.§#!f§ * §1# §;
            _loc7_ = param2 * §1# §;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§9"_§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§#!f§)
               {
                  if(this.§2!N§)
                  {
                     _loc13_ = this.§9"_§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§9"_§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§9"_§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§9"_§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§9"_§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§9"_§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§9"_§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§;P§) : void
      {
         var _loc2_:int = this.§6"[§.length;
         this.§6"[§.length += param1.§6"[§.length;
         this.§6"[§.position = _loc2_;
         this.§6"[§.writeBytes(param1.§6"[§);
         this.§9"_§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§9"_§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§9"_§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§9"_§.fixed = true;
         this.§6&§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§6&§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§6&§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§6&§.fixed = true;
         this.§#!f§ += param1.§8!u§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §'""§;
         var _loc6_:*;
         this.§6&§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§6&§[_loc7_ = _loc5_++] = param3;
         this.§6&§[_loc5_] = param4;
      }
      
      public function §0<§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §'""§;
         var _loc5_:*;
         this.§6&§[_loc5_ = _loc4_++] = param2;
         this.§6&§[_loc4_] = param3;
      }
      
      public function getPosition(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §'""§;
         param2.x = this.§6&§[_loc3_++];
         param2.y = this.§6&§[_loc3_++];
         param2.z = this.§6&§[_loc3_];
      }
      
      public function §]"%§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§2!N§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §!G§.§ !H§(param2) * _loc4_;
         var _loc6_:Number = §!G§.§+!7§(param2) * _loc4_;
         var _loc7_:Number = §!G§.§?V§(param2) * _loc4_;
         this.§2s§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §2s§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §1# §;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§9"_§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§9"_§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§9"_§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§9"_§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §3"C§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §1# §;
         var _loc4_:*;
         this.§9"_§[_loc4_ = _loc3_++] = this.§9"_§[_loc4_] * param2;
         var _loc5_:*;
         this.§9"_§[_loc5_ = _loc3_++] = this.§9"_§[_loc5_] * param2;
         var _loc6_:*;
         this.§9"_§[_loc6_ = _loc3_++] = this.§9"_§[_loc6_] * param2;
         this.§9"_§[_loc3_] *= param2;
      }
      
      public function §'!r§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §1# §;
         var _loc3_:Number = !!this.§2!N§ ? Number(this.§9"_§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§9"_§[_loc2_] * _loc3_;
         _loc5_ = this.§9"_§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§9"_§[_loc2_ + 2] * _loc3_;
         return §!G§.§&"z§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §#!h§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§2!N§)
         {
            this.§]"%§(param1,this.§'!r§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §1# § + 3;
            this.§9"_§[_loc3_] = param2;
         }
      }
      
      public function §7o§(param1:int) : Number
      {
         var _loc2_:int = param1 * §1# § + 3;
         return this.§9"_§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §^b§;
         this.§6"[§.position = _loc4_ * §`"t§;
         this.§6"[§.writeFloat(param2);
         this.§6"[§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §^b§;
         this.§6"[§.position = _loc3_ * §`"t§;
         param2.x = this.§6"[§.readFloat();
         param2.y = this.§6"[§.readFloat();
      }
      
      public function §[!#§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §'""§;
         var _loc6_:*;
         this.§6&§[_loc6_ = _loc5_++] = this.§6&§[_loc6_] + param2;
         var _loc7_:*;
         this.§6&§[_loc7_ = _loc5_++] = this.§6&§[_loc7_] + param3;
         this.§6&§[_loc5_] += param4;
      }
      
      public function §^i§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §'""§;
         this.§+"y§[0] = this.§6&§[_loc3_];
         this.§+"y§[1] = this.§6&§[_loc3_ + 1];
         this.§+"y§[2] = this.§6&§[_loc3_ + 2];
         param2.transformVectors(this.§+"y§,this.§+"y§);
         this.§6&§[_loc3_] = this.§+"y§[0];
         this.§6&§[_loc3_ + 1] = this.§+"y§[1];
         this.§6&§[_loc3_ + 2] = this.§+"y§[2];
      }
      
      public function §9C§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§2!N§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §!G§.§ !H§(param1) * _loc3_;
         var _loc5_:Number = §!G§.§+!7§(param1) * _loc3_;
         var _loc6_:Number = §!G§.§?V§(param1) * _loc3_;
         this.§2s§(0,this.§#!f§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §?!s§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §1# §;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§9"_§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§9"_§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§9"_§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§9"_§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §?"[§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §1# §;
         if(this.§2!N§)
         {
            _loc4_ = this.§9"_§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§9"_§[_loc3_] *= _loc4_;
            this.§9"_§[_loc3_ + 1] *= _loc4_;
            this.§9"_§[_loc3_ + 2] *= _loc4_;
            this.§9"_§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§9"_§[_loc3_ + 3] *= param2;
         }
      }
      
      public function § #6§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§2!N§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§#!f§ * §1# §;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§7o§(0);
               _loc6_ = !!this.§2!N§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§3"C§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§2!N§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§2!N§;
      }
      
      public function get §8!u§() : int
      {
         return this.§#!f§;
      }
      
      public function set §8!u§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §^b§ * §`"t§ - this.§6"[§.length;
         _loc4_ = this.§6"[§.length;
         this.§6"[§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§6"[§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §`"t§)
            {
               this.§6"[§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§9"_§.fixed = false;
         _loc2_ = param1 * §1# § - this.§9"_§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§9"_§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§9"_§.pop();
            _loc3_++;
         }
         this.§9"_§.fixed = true;
         this.§6&§.fixed = false;
         _loc2_ = param1 * §'""§ - this.§6&§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§6&§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§6&§.pop();
            _loc3_++;
         }
         this.§6&§.fixed = true;
         this.§#!f§ = param1;
      }
      
      public function get §3s§() : ByteArray
      {
         this.§6"[§.position = 0;
         return this.§6"[§;
      }
      
      public function get §&"3§() : Vector.<Number>
      {
         return this.§9"_§;
      }
      
      public function get §1!A§() : Vector.<Number>
      {
         return this.§6&§;
      }
   }
}
