package §9!k§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §=A§
   {
      
      public static const §1X§:int = 4;
      
      public static const §'%§:int = 2;
      
      public static const §8=§:int = 3;
      
      public static const §2!q§:int = 4;
      
      public static const §%F§:int = 0;
      
      public static const §!"§:int = 0;
      
      public static const §<!?§:int = 0;
       
      
      private var §?!Z§:ByteArray;
      
      private var §6f§:Vector.<Number>;
      
      private var §8!E§:Vector.<Number>;
      
      private var §3!Z§:Boolean;
      
      private var §@I§:int;
      
      private var §&Z§:Vector.<Number>;
      
      public function §=A§(param1:int, param2:Boolean = false)
      {
         this.§&Z§ = new Vector.<Number>(12,true);
         super();
         this.§?!Z§ = new ByteArray();
         this.§?!Z§.endian = Endian.LITTLE_ENDIAN;
         this.§?!Z§.length = param1 * §'%§ * §2!q§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §'%§)
         {
            this.§?!Z§.writeFloat(0);
            _loc3_++;
         }
         this.§6f§ = new Vector.<Number>(param1 * §1X§,true);
         this.§8!E§ = new Vector.<Number>(param1 * §8=§,true);
         this.§3!Z§ = param2;
         this.§@I§ = param1;
      }
      
      public function clone() : §=A§
      {
         var _loc1_:§=A§ = new §=A§(0,this.§3!Z§);
         _loc1_.§?!Z§.length = this.§?!Z§.length;
         _loc1_.§?!Z§.writeBytes(this.§?!Z§);
         _loc1_.§6f§ = this.§6f§.concat();
         _loc1_.§6f§.fixed = true;
         _loc1_.§8!E§ = this.§8!E§.concat();
         _loc1_.§8!E§.fixed = true;
         _loc1_.§@I§ = this.§@I§;
         return _loc1_;
      }
      
      public function copyTo(param1:§=A§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§8!E§;
         _loc6_ = this.§@I§ * §8=§;
         _loc7_ = param2 * §8=§;
         if(param5)
         {
            param5.transformVectors(this.§8!E§,this.§&Z§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§&Z§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§8!E§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§?!Z§;
         _loc6_ = this.§@I§ * §'%§ * §2!q§;
         _loc7_ = param2 * §'%§ * §2!q§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§?!Z§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§6f§;
            _loc6_ = this.§@I§ * §1X§;
            _loc7_ = param2 * §1X§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§6f§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§@I§)
               {
                  if(this.§3!Z§)
                  {
                     _loc13_ = this.§6f§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§6f§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§6f§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§6f§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§6f§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§6f§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§6f§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§=A§) : void
      {
         var _loc2_:int = this.§?!Z§.length;
         this.§?!Z§.length += param1.§?!Z§.length;
         this.§?!Z§.position = _loc2_;
         this.§?!Z§.writeBytes(param1.§?!Z§);
         this.§6f§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§6f§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§6f§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§6f§.fixed = true;
         this.§8!E§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§8!E§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§8!E§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§8!E§.fixed = true;
         this.§@I§ += param1.§7?§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §8=§;
         var _loc6_:*;
         this.§8!E§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§8!E§[_loc7_ = _loc5_++] = param3;
         this.§8!E§[_loc5_] = param4;
      }
      
      public function §[!J§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §8=§;
         var _loc5_:*;
         this.§8!E§[_loc5_ = _loc4_++] = param2;
         this.§8!E§[_loc4_] = param3;
      }
      
      public function §7!b§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §8=§;
         param2.x = this.§8!E§[_loc3_++];
         param2.y = this.§8!E§[_loc3_++];
         param2.z = this.§8!E§[_loc3_];
      }
      
      public function §!A§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§3!Z§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §46§.§'!'§(param2) * _loc4_;
         var _loc6_:Number = §46§.§1!U§(param2) * _loc4_;
         var _loc7_:Number = §46§.§[]§(param2) * _loc4_;
         this.§"8§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §"8§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §1X§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§6f§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§6f§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§6f§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§6f§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §;O§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §1X§;
         var _loc4_:*;
         this.§6f§[_loc4_ = _loc3_++] = this.§6f§[_loc4_] * param2;
         var _loc5_:*;
         this.§6f§[_loc5_ = _loc3_++] = this.§6f§[_loc5_] * param2;
         var _loc6_:*;
         this.§6f§[_loc6_ = _loc3_++] = this.§6f§[_loc6_] * param2;
         this.§6f§[_loc3_] *= param2;
      }
      
      public function §?!c§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §1X§;
         var _loc3_:Number = !!this.§3!Z§ ? Number(this.§6f§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§6f§[_loc2_] * _loc3_;
         _loc5_ = this.§6f§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§6f§[_loc2_ + 2] * _loc3_;
         return §46§.§;!^§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §%$§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§3!Z§)
         {
            this.§!A§(param1,this.§?!c§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §1X§ + 3;
            this.§6f§[_loc3_] = param2;
         }
      }
      
      public function §^D§(param1:int) : Number
      {
         var _loc2_:int = param1 * §1X§ + 3;
         return this.§6f§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §'%§;
         this.§?!Z§.position = _loc4_ * §2!q§;
         this.§?!Z§.writeFloat(param2);
         this.§?!Z§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §'%§;
         this.§?!Z§.position = _loc3_ * §2!q§;
         param2.x = this.§?!Z§.readFloat();
         param2.y = this.§?!Z§.readFloat();
      }
      
      public function §9!a§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §8=§;
         var _loc6_:*;
         this.§8!E§[_loc6_ = _loc5_++] = this.§8!E§[_loc6_] + param2;
         var _loc7_:*;
         this.§8!E§[_loc7_ = _loc5_++] = this.§8!E§[_loc7_] + param3;
         this.§8!E§[_loc5_] += param4;
      }
      
      public function §03§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §8=§;
         this.§&Z§[0] = this.§8!E§[_loc3_];
         this.§&Z§[1] = this.§8!E§[_loc3_ + 1];
         this.§&Z§[2] = this.§8!E§[_loc3_ + 2];
         param2.transformVectors(this.§&Z§,this.§&Z§);
         this.§8!E§[_loc3_] = this.§&Z§[0];
         this.§8!E§[_loc3_ + 1] = this.§&Z§[1];
         this.§8!E§[_loc3_ + 2] = this.§&Z§[2];
      }
      
      public function §'f§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§3!Z§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §46§.§'!'§(param1) * _loc3_;
         var _loc5_:Number = §46§.§1!U§(param1) * _loc3_;
         var _loc6_:Number = §46§.§[]§(param1) * _loc3_;
         this.§"8§(0,this.§@I§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §78§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §1X§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§6f§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§6f§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§6f§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§6f§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §7!F§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §1X§;
         if(this.§3!Z§)
         {
            _loc4_ = this.§6f§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§6f§[_loc3_] *= _loc4_;
            this.§6f§[_loc3_ + 1] *= _loc4_;
            this.§6f§[_loc3_ + 2] *= _loc4_;
            this.§6f§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§6f§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§3!Z§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§@I§ * §1X§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§^D§(0);
               _loc6_ = !!this.§3!Z§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§;O§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§3!Z§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§3!Z§;
      }
      
      public function get §7?§() : int
      {
         return this.§@I§;
      }
      
      public function set §7?§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §'%§ * §2!q§ - this.§?!Z§.length;
         _loc4_ = this.§?!Z§.length;
         this.§?!Z§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§?!Z§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §2!q§)
            {
               this.§?!Z§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§6f§.fixed = false;
         _loc2_ = param1 * §1X§ - this.§6f§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§6f§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§6f§.pop();
            _loc3_++;
         }
         this.§6f§.fixed = true;
         this.§8!E§.fixed = false;
         _loc2_ = param1 * §8=§ - this.§8!E§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§8!E§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§8!E§.pop();
            _loc3_++;
         }
         this.§8!E§.fixed = true;
         this.§@I§ = param1;
      }
      
      public function get §>L§() : ByteArray
      {
         this.§?!Z§.position = 0;
         return this.§?!Z§;
      }
      
      public function get §8q§() : Vector.<Number>
      {
         return this.§6f§;
      }
      
      public function get §3!+§() : Vector.<Number>
      {
         return this.§8!E§;
      }
   }
}
