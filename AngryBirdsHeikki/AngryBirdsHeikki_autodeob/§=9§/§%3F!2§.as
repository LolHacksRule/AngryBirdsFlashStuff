package §=9§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §?!2§
   {
      
      public static const §1!R§:int = 4;
      
      public static const §6?§:int = 2;
      
      public static const §#!Q§:int = 3;
      
      public static const §-w§:int = 4;
      
      public static const §3A§:int = 0;
      
      public static const §'"§:int = 0;
      
      public static const §1!,§:int = 0;
       
      
      private var §+V§:ByteArray;
      
      private var §3@§:Vector.<Number>;
      
      private var §-!E§:Vector.<Number>;
      
      private var §][§:Boolean;
      
      private var §'!b§:int;
      
      private var §]N§:Vector.<Number>;
      
      public function §?!2§(param1:int, param2:Boolean = false)
      {
         this.§]N§ = new Vector.<Number>(12,true);
         super();
         this.§+V§ = new ByteArray();
         this.§+V§.endian = Endian.LITTLE_ENDIAN;
         this.§+V§.length = param1 * §6?§ * §-w§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §6?§)
         {
            this.§+V§.writeFloat(0);
            _loc3_++;
         }
         this.§3@§ = new Vector.<Number>(param1 * §1!R§,true);
         this.§-!E§ = new Vector.<Number>(param1 * §#!Q§,true);
         this.§][§ = param2;
         this.§'!b§ = param1;
      }
      
      public function clone() : §?!2§
      {
         var _loc1_:§?!2§ = new §?!2§(0,this.§][§);
         _loc1_.§+V§.length = this.§+V§.length;
         _loc1_.§+V§.writeBytes(this.§+V§);
         _loc1_.§3@§ = this.§3@§.concat();
         _loc1_.§3@§.fixed = true;
         _loc1_.§-!E§ = this.§-!E§.concat();
         _loc1_.§-!E§.fixed = true;
         _loc1_.§'!b§ = this.§'!b§;
         return _loc1_;
      }
      
      public function copyTo(param1:§?!2§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§-!E§;
         _loc6_ = this.§'!b§ * §#!Q§;
         _loc7_ = param2 * §#!Q§;
         if(param5)
         {
            param5.transformVectors(this.§-!E§,this.§]N§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§]N§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§-!E§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§+V§;
         _loc6_ = this.§'!b§ * §6?§ * §-w§;
         _loc7_ = param2 * §6?§ * §-w§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§+V§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§3@§;
            _loc6_ = this.§'!b§ * §1!R§;
            _loc7_ = param2 * §1!R§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§3@§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§'!b§)
               {
                  if(this.§][§)
                  {
                     _loc13_ = this.§3@§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§3@§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§3@§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§3@§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§3@§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§3@§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§3@§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§?!2§) : void
      {
         var _loc2_:int = this.§+V§.length;
         this.§+V§.length += param1.§+V§.length;
         this.§+V§.position = _loc2_;
         this.§+V§.writeBytes(param1.§+V§);
         this.§3@§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§3@§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§3@§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§3@§.fixed = true;
         this.§-!E§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§-!E§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§-!E§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§-!E§.fixed = true;
         this.§'!b§ += param1.§<!§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §#!Q§;
         var _loc6_:*;
         this.§-!E§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§-!E§[_loc7_ = _loc5_++] = param3;
         this.§-!E§[_loc5_] = param4;
      }
      
      public function §!Z§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §#!Q§;
         var _loc5_:*;
         this.§-!E§[_loc5_ = _loc4_++] = param2;
         this.§-!E§[_loc4_] = param3;
      }
      
      public function §?!W§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §#!Q§;
         param2.x = this.§-!E§[_loc3_++];
         param2.y = this.§-!E§[_loc3_++];
         param2.z = this.§-!E§[_loc3_];
      }
      
      public function §&5§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§][§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §>!<§.§;!6§(param2) * _loc4_;
         var _loc6_:Number = §>!<§.§4u§(param2) * _loc4_;
         var _loc7_:Number = §>!<§.§`5§(param2) * _loc4_;
         this.§]n§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §]n§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §1!R§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§3@§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§3@§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§3@§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§3@§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §0!U§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §1!R§;
         var _loc4_:*;
         this.§3@§[_loc4_ = _loc3_++] = this.§3@§[_loc4_] * param2;
         var _loc5_:*;
         this.§3@§[_loc5_ = _loc3_++] = this.§3@§[_loc5_] * param2;
         var _loc6_:*;
         this.§3@§[_loc6_ = _loc3_++] = this.§3@§[_loc6_] * param2;
         this.§3@§[_loc3_] *= param2;
      }
      
      public function §!z§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §1!R§;
         var _loc3_:Number = !!this.§][§ ? Number(this.§3@§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§3@§[_loc2_] * _loc3_;
         _loc5_ = this.§3@§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§3@§[_loc2_ + 2] * _loc3_;
         return §>!<§.§'!$§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §import§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§][§)
         {
            this.§&5§(param1,this.§!z§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §1!R§ + 3;
            this.§3@§[_loc3_] = param2;
         }
      }
      
      public function §;L§(param1:int) : Number
      {
         var _loc2_:int = param1 * §1!R§ + 3;
         return this.§3@§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §6?§;
         this.§+V§.position = _loc4_ * §-w§;
         this.§+V§.writeFloat(param2);
         this.§+V§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §6?§;
         this.§+V§.position = _loc3_ * §-w§;
         param2.x = this.§+V§.readFloat();
         param2.y = this.§+V§.readFloat();
      }
      
      public function §%5§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §#!Q§;
         var _loc6_:*;
         this.§-!E§[_loc6_ = _loc5_++] = this.§-!E§[_loc6_] + param2;
         var _loc7_:*;
         this.§-!E§[_loc7_ = _loc5_++] = this.§-!E§[_loc7_] + param3;
         this.§-!E§[_loc5_] += param4;
      }
      
      public function §7!7§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §#!Q§;
         this.§]N§[0] = this.§-!E§[_loc3_];
         this.§]N§[1] = this.§-!E§[_loc3_ + 1];
         this.§]N§[2] = this.§-!E§[_loc3_ + 2];
         param2.transformVectors(this.§]N§,this.§]N§);
         this.§-!E§[_loc3_] = this.§]N§[0];
         this.§-!E§[_loc3_ + 1] = this.§]N§[1];
         this.§-!E§[_loc3_ + 2] = this.§]N§[2];
      }
      
      public function §8! §(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§][§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §>!<§.§;!6§(param1) * _loc3_;
         var _loc5_:Number = §>!<§.§4u§(param1) * _loc3_;
         var _loc6_:Number = §>!<§.§`5§(param1) * _loc3_;
         this.§]n§(0,this.§'!b§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §7!C§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §1!R§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§3@§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§3@§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§3@§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§3@§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §<3§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §1!R§;
         if(this.§][§)
         {
            _loc4_ = this.§3@§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§3@§[_loc3_] *= _loc4_;
            this.§3@§[_loc3_ + 1] *= _loc4_;
            this.§3@§[_loc3_ + 2] *= _loc4_;
            this.§3@§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§3@§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §]v§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§][§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§'!b§ * §1!R§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§;L§(0);
               _loc6_ = !!this.§][§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§0!U§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§][§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§][§;
      }
      
      public function get §<!§() : int
      {
         return this.§'!b§;
      }
      
      public function set §<!§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §6?§ * §-w§ - this.§+V§.length;
         _loc4_ = this.§+V§.length;
         this.§+V§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§+V§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §-w§)
            {
               this.§+V§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§3@§.fixed = false;
         _loc2_ = param1 * §1!R§ - this.§3@§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§3@§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§3@§.pop();
            _loc3_++;
         }
         this.§3@§.fixed = true;
         this.§-!E§.fixed = false;
         _loc2_ = param1 * §#!Q§ - this.§-!E§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§-!E§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§-!E§.pop();
            _loc3_++;
         }
         this.§-!E§.fixed = true;
         this.§'!b§ = param1;
      }
      
      public function get §8Y§() : ByteArray
      {
         this.§+V§.position = 0;
         return this.§+V§;
      }
      
      public function get §!$§() : Vector.<Number>
      {
         return this.§3@§;
      }
      
      public function get §+k§() : Vector.<Number>
      {
         return this.§-!E§;
      }
   }
}
