package §=D§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §3a§
   {
      
      public static const §3!T§:int = 4;
      
      public static const §7K§:int = 2;
      
      public static const §8K§:int = 3;
      
      public static const §1!N§:int = 4;
      
      public static const §4!e§:int = 0;
      
      public static const §7!D§:int = 0;
      
      public static const §5!-§:int = 0;
       
      
      private var §@7§:ByteArray;
      
      private var § ! §:Vector.<Number>;
      
      private var §9p§:Vector.<Number>;
      
      private var §if §:Boolean;
      
      private var §<z§:int;
      
      private var §,!H§:Vector.<Number>;
      
      public function §3a§(param1:int, param2:Boolean = false)
      {
         this.§,!H§ = new Vector.<Number>(12,true);
         super();
         this.§@7§ = new ByteArray();
         this.§@7§.endian = Endian.LITTLE_ENDIAN;
         this.§@7§.length = param1 * §7K§ * §1!N§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §7K§)
         {
            this.§@7§.writeFloat(0);
            _loc3_++;
         }
         this.§ ! § = new Vector.<Number>(param1 * §3!T§,true);
         this.§9p§ = new Vector.<Number>(param1 * §8K§,true);
         this.§if § = param2;
         this.§<z§ = param1;
      }
      
      public function clone() : §3a§
      {
         var _loc1_:§3a§ = new §3a§(0,this.§if §);
         _loc1_.§@7§.length = this.§@7§.length;
         _loc1_.§@7§.writeBytes(this.§@7§);
         _loc1_.§ ! § = this.§ ! §.concat();
         _loc1_.§ ! §.fixed = true;
         _loc1_.§9p§ = this.§9p§.concat();
         _loc1_.§9p§.fixed = true;
         _loc1_.§<z§ = this.§<z§;
         return _loc1_;
      }
      
      public function copyTo(param1:§3a§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§9p§;
         _loc6_ = this.§<z§ * §8K§;
         _loc7_ = param2 * §8K§;
         if(param5)
         {
            param5.transformVectors(this.§9p§,this.§,!H§);
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
               _loc9_[_loc14_ = _loc7_++] = this.§9p§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§@7§;
         _loc6_ = this.§<z§ * §7K§ * §1!N§;
         _loc7_ = param2 * §7K§ * §1!N§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§@7§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§ ! §;
            _loc6_ = this.§<z§ * §3!T§;
            _loc7_ = param2 * §3!T§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§ ! §[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§<z§)
               {
                  if(this.§if §)
                  {
                     _loc13_ = this.§ ! §[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§ ! §[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§ ! §[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§ ! §[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§ ! §[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§ ! §[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§ ! §[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§3a§) : void
      {
         var _loc2_:int = this.§@7§.length;
         this.§@7§.length += param1.§@7§.length;
         this.§@7§.position = _loc2_;
         this.§@7§.writeBytes(param1.§@7§);
         this.§ ! §.fixed = false;
         var _loc3_:Vector.<Number> = param1.§ ! §;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§ ! §.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§ ! §.fixed = true;
         this.§9p§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§9p§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§9p§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§9p§.fixed = true;
         this.§<z§ += param1.§ !#§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §8K§;
         var _loc6_:*;
         this.§9p§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§9p§[_loc7_ = _loc5_++] = param3;
         this.§9p§[_loc5_] = param4;
      }
      
      public function § `§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §8K§;
         var _loc5_:*;
         this.§9p§[_loc5_ = _loc4_++] = param2;
         this.§9p§[_loc4_] = param3;
      }
      
      public function §+!r§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §8K§;
         param2.x = this.§9p§[_loc3_++];
         param2.y = this.§9p§[_loc3_++];
         param2.z = this.§9p§[_loc3_];
      }
      
      public function §2%§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§if § ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §@!j§.§>!4§(param2) * _loc4_;
         var _loc6_:Number = §@!j§.§7N§(param2) * _loc4_;
         var _loc7_:Number = §@!j§.§7!T§(param2) * _loc4_;
         this.§?C§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §?C§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §3!T§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§ ! §[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§ ! §[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§ ! §[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§ ! §[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §[!x§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §3!T§;
         var _loc4_:*;
         this.§ ! §[_loc4_ = _loc3_++] = this.§ ! §[_loc4_] * param2;
         var _loc5_:*;
         this.§ ! §[_loc5_ = _loc3_++] = this.§ ! §[_loc5_] * param2;
         var _loc6_:*;
         this.§ ! §[_loc6_ = _loc3_++] = this.§ ! §[_loc6_] * param2;
         this.§ ! §[_loc3_] *= param2;
      }
      
      public function §9b§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §3!T§;
         var _loc3_:Number = !!this.§if § ? Number(this.§ ! §[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§ ! §[_loc2_] * _loc3_;
         _loc5_ = this.§ ! §[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§ ! §[_loc2_ + 2] * _loc3_;
         return §@!j§.§3!`§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §0a§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§if §)
         {
            this.§2%§(param1,this.§9b§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §3!T§ + 3;
            this.§ ! §[_loc3_] = param2;
         }
      }
      
      public function §0!8§(param1:int) : Number
      {
         var _loc2_:int = param1 * §3!T§ + 3;
         return this.§ ! §[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §7K§;
         this.§@7§.position = _loc4_ * §1!N§;
         this.§@7§.writeFloat(param2);
         this.§@7§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §7K§;
         this.§@7§.position = _loc3_ * §1!N§;
         param2.x = this.§@7§.readFloat();
         param2.y = this.§@7§.readFloat();
      }
      
      public function §'J§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §8K§;
         var _loc6_:*;
         this.§9p§[_loc6_ = _loc5_++] = this.§9p§[_loc6_] + param2;
         var _loc7_:*;
         this.§9p§[_loc7_ = _loc5_++] = this.§9p§[_loc7_] + param3;
         this.§9p§[_loc5_] += param4;
      }
      
      public function §!h§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §8K§;
         this.§,!H§[0] = this.§9p§[_loc3_];
         this.§,!H§[1] = this.§9p§[_loc3_ + 1];
         this.§,!H§[2] = this.§9p§[_loc3_ + 2];
         param2.transformVectors(this.§,!H§,this.§,!H§);
         this.§9p§[_loc3_] = this.§,!H§[0];
         this.§9p§[_loc3_ + 1] = this.§,!H§[1];
         this.§9p§[_loc3_ + 2] = this.§,!H§[2];
      }
      
      public function §%Y§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§if § ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §@!j§.§>!4§(param1) * _loc3_;
         var _loc5_:Number = §@!j§.§7N§(param1) * _loc3_;
         var _loc6_:Number = §@!j§.§7!T§(param1) * _loc3_;
         this.§?C§(0,this.§<z§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §9s§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §3!T§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§ ! §[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§ ! §[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§ ! §[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§ ! §[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §[!'§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §3!T§;
         if(this.§if §)
         {
            _loc4_ = this.§ ! §[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§ ! §[_loc3_] *= _loc4_;
            this.§ ! §[_loc3_ + 1] *= _loc4_;
            this.§ ! §[_loc3_ + 2] *= _loc4_;
            this.§ ! §[_loc3_ + 3] = param2;
         }
         else
         {
            this.§ ! §[_loc3_ + 3] *= param2;
         }
      }
      
      public function §1I§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§if §)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§<z§ * §3!T§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§0!8§(0);
               _loc6_ = !!this.§if § ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§[!x§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§if § = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§if §;
      }
      
      public function get § !#§() : int
      {
         return this.§<z§;
      }
      
      public function set § !#§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §7K§ * §1!N§ - this.§@7§.length;
         _loc4_ = this.§@7§.length;
         this.§@7§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§@7§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §1!N§)
            {
               this.§@7§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§ ! §.fixed = false;
         _loc2_ = param1 * §3!T§ - this.§ ! §.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§ ! §.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§ ! §.pop();
            _loc3_++;
         }
         this.§ ! §.fixed = true;
         this.§9p§.fixed = false;
         _loc2_ = param1 * §8K§ - this.§9p§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§9p§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§9p§.pop();
            _loc3_++;
         }
         this.§9p§.fixed = true;
         this.§<z§ = param1;
      }
      
      public function get §4!9§() : ByteArray
      {
         this.§@7§.position = 0;
         return this.§@7§;
      }
      
      public function get §%!@§() : Vector.<Number>
      {
         return this.§ ! §;
      }
      
      public function get §#u§() : Vector.<Number>
      {
         return this.§9p§;
      }
   }
}
