package §?!Z§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §4k§
   {
      
      public static const §4!'§:int = 4;
      
      public static const §0!;§:int = 2;
      
      public static const §+!"§:int = 3;
      
      public static const §!!+§:int = 4;
      
      public static const §>!_§:int = 0;
      
      public static const §2$§:int = 0;
      
      public static const §#i§:int = 0;
       
      
      private var §9!^§:ByteArray;
      
      private var §17§:Vector.<Number>;
      
      private var §`n§:Vector.<Number>;
      
      private var dynamic:Boolean;
      
      private var §?s§:int;
      
      private var §[=§:Vector.<Number>;
      
      public function §4k§(param1:int, param2:Boolean = false)
      {
         this.§[=§ = new Vector.<Number>(12,true);
         super();
         this.§9!^§ = new ByteArray();
         this.§9!^§.endian = Endian.LITTLE_ENDIAN;
         this.§9!^§.length = param1 * §0!;§ * §!!+§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §0!;§)
         {
            this.§9!^§.writeFloat(0);
            _loc3_++;
         }
         this.§17§ = new Vector.<Number>(param1 * §4!'§,true);
         this.§`n§ = new Vector.<Number>(param1 * §+!"§,true);
         this.dynamic = param2;
         this.§?s§ = param1;
      }
      
      public function clone() : §4k§
      {
         var _loc1_:§4k§ = new §4k§(0,this.dynamic);
         _loc1_.§9!^§.length = this.§9!^§.length;
         _loc1_.§9!^§.writeBytes(this.§9!^§);
         _loc1_.§17§ = this.§17§.concat();
         _loc1_.§17§.fixed = true;
         _loc1_.§`n§ = this.§`n§.concat();
         _loc1_.§`n§.fixed = true;
         _loc1_.§?s§ = this.§?s§;
         return _loc1_;
      }
      
      public function copyTo(param1:§4k§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§`n§;
         _loc6_ = this.§?s§ * §+!"§;
         _loc7_ = param2 * §+!"§;
         if(param5)
         {
            param5.transformVectors(this.§`n§,this.§[=§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§[=§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§`n§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§9!^§;
         _loc6_ = this.§?s§ * §0!;§ * §!!+§;
         _loc7_ = param2 * §0!;§ * §!!+§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§9!^§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§17§;
            _loc6_ = this.§?s§ * §4!'§;
            _loc7_ = param2 * §4!'§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§17§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§?s§)
               {
                  if(this.dynamic)
                  {
                     _loc13_ = this.§17§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§17§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§17§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§17§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§17§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§17§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§17§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§4k§) : void
      {
         var _loc2_:int = this.§9!^§.length;
         this.§9!^§.length += param1.§9!^§.length;
         this.§9!^§.position = _loc2_;
         this.§9!^§.writeBytes(param1.§9!^§);
         this.§17§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§17§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§17§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§17§.fixed = true;
         this.§`n§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§`n§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§`n§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§`n§.fixed = true;
         this.§?s§ += param1.§'3§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §+!"§;
         var _loc6_:*;
         this.§`n§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§`n§[_loc7_ = _loc5_++] = param3;
         this.§`n§[_loc5_] = param4;
      }
      
      public function §%,§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §+!"§;
         var _loc5_:*;
         this.§`n§[_loc5_ = _loc4_++] = param2;
         this.§`n§[_loc4_] = param3;
      }
      
      public function §8!c§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §+!"§;
         param2.x = this.§`n§[_loc3_++];
         param2.y = this.§`n§[_loc3_++];
         param2.z = this.§`n§[_loc3_];
      }
      
      public function §<S§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.dynamic ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §3!L§.§`K§(param2) * _loc4_;
         var _loc6_:Number = §3!L§.§#!O§(param2) * _loc4_;
         var _loc7_:Number = §3!L§.§4i§(param2) * _loc4_;
         this.§^!Q§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §^!Q§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §4!'§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§17§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§17§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§17§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§17§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §-+§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §4!'§;
         var _loc4_:*;
         this.§17§[_loc4_ = _loc3_++] = this.§17§[_loc4_] * param2;
         var _loc5_:*;
         this.§17§[_loc5_ = _loc3_++] = this.§17§[_loc5_] * param2;
         var _loc6_:*;
         this.§17§[_loc6_ = _loc3_++] = this.§17§[_loc6_] * param2;
         this.§17§[_loc3_] *= param2;
      }
      
      public function §,!O§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §4!'§;
         var _loc3_:Number = !!this.dynamic ? Number(this.§17§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§17§[_loc2_] * _loc3_;
         _loc5_ = this.§17§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§17§[_loc2_ + 2] * _loc3_;
         return §3!L§.§use§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §66§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.dynamic)
         {
            this.§<S§(param1,this.§,!O§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §4!'§ + 3;
            this.§17§[_loc3_] = param2;
         }
      }
      
      public function §5S§(param1:int) : Number
      {
         var _loc2_:int = param1 * §4!'§ + 3;
         return this.§17§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §0!;§;
         this.§9!^§.position = _loc4_ * §!!+§;
         this.§9!^§.writeFloat(param2);
         this.§9!^§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §0!;§;
         this.§9!^§.position = _loc3_ * §!!+§;
         param2.x = this.§9!^§.readFloat();
         param2.y = this.§9!^§.readFloat();
      }
      
      public function §1K§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §+!"§;
         var _loc6_:*;
         this.§`n§[_loc6_ = _loc5_++] = this.§`n§[_loc6_] + param2;
         var _loc7_:*;
         this.§`n§[_loc7_ = _loc5_++] = this.§`n§[_loc7_] + param3;
         this.§`n§[_loc5_] += param4;
      }
      
      public function §-6§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §+!"§;
         this.§[=§[0] = this.§`n§[_loc3_];
         this.§[=§[1] = this.§`n§[_loc3_ + 1];
         this.§[=§[2] = this.§`n§[_loc3_ + 2];
         param2.transformVectors(this.§[=§,this.§[=§);
         this.§`n§[_loc3_] = this.§[=§[0];
         this.§`n§[_loc3_ + 1] = this.§[=§[1];
         this.§`n§[_loc3_ + 2] = this.§[=§[2];
      }
      
      public function §5!Q§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.dynamic ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §3!L§.§`K§(param1) * _loc3_;
         var _loc5_:Number = §3!L§.§#!O§(param1) * _loc3_;
         var _loc6_:Number = §3!L§.§4i§(param1) * _loc3_;
         this.§^!Q§(0,this.§?s§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §for §(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §4!'§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§17§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§17§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§17§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§17§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §>!^§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §4!'§;
         if(this.dynamic)
         {
            _loc4_ = this.§17§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§17§[_loc3_] *= _loc4_;
            this.§17§[_loc3_ + 1] *= _loc4_;
            this.§17§[_loc3_ + 2] *= _loc4_;
            this.§17§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§17§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.dynamic)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§?s§ * §4!'§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§5S§(0);
               _loc6_ = !!this.dynamic ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§-+§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.dynamic = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.dynamic;
      }
      
      public function get §'3§() : int
      {
         return this.§?s§;
      }
      
      public function set §'3§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §0!;§ * §!!+§ - this.§9!^§.length;
         _loc4_ = this.§9!^§.length;
         this.§9!^§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§9!^§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §!!+§)
            {
               this.§9!^§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§17§.fixed = false;
         _loc2_ = param1 * §4!'§ - this.§17§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§17§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§17§.pop();
            _loc3_++;
         }
         this.§17§.fixed = true;
         this.§`n§.fixed = false;
         _loc2_ = param1 * §+!"§ - this.§`n§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§`n§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§`n§.pop();
            _loc3_++;
         }
         this.§`n§.fixed = true;
         this.§?s§ = param1;
      }
      
      public function get §+!F§() : ByteArray
      {
         this.§9!^§.position = 0;
         return this.§9!^§;
      }
      
      public function get § x§() : Vector.<Number>
      {
         return this.§17§;
      }
      
      public function get §%<§() : Vector.<Number>
      {
         return this.§`n§;
      }
   }
}
