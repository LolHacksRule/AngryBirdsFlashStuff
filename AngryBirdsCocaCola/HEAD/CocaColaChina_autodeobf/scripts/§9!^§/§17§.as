package §9!^§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §17§
   {
      
      public static const §+!"§:int = 4;
      
      public static const §!!+§:int = 2;
      
      public static const §>!_§:int = 3;
      
      public static const §2$§:int = 4;
      
      public static const §#i§:int = 0;
      
      public static const §3!L§:int = 0;
      
      public static const §+!@§:int = 0;
       
      
      private var §`n§:ByteArray;
      
      private var dynamic:Vector.<Number>;
      
      private var §?s§:Vector.<Number>;
      
      private var §[=§:Boolean;
      
      private var §%,§:int;
      
      private var §8!c§:Vector.<Number>;
      
      public function §17§(param1:int, param2:Boolean = false)
      {
         this.§8!c§ = new Vector.<Number>(12,true);
         super();
         this.§`n§ = new ByteArray();
         this.§`n§.endian = Endian.LITTLE_ENDIAN;
         this.§`n§.length = param1 * §!!+§ * §2$§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §!!+§)
         {
            this.§`n§.writeFloat(0);
            _loc3_++;
         }
         this.dynamic = new Vector.<Number>(param1 * §+!"§,true);
         this.§?s§ = new Vector.<Number>(param1 * §>!_§,true);
         this.§[=§ = param2;
         this.§%,§ = param1;
      }
      
      public function clone() : §17§
      {
         var _loc1_:§17§ = new §17§(0,this.§[=§);
         _loc1_.§`n§.length = this.§`n§.length;
         _loc1_.§`n§.writeBytes(this.§`n§);
         _loc1_.dynamic = this.dynamic.concat();
         _loc1_.dynamic.fixed = true;
         _loc1_.§?s§ = this.§?s§.concat();
         _loc1_.§?s§.fixed = true;
         _loc1_.§%,§ = this.§%,§;
         return _loc1_;
      }
      
      public function copyTo(param1:§17§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§?s§;
         _loc6_ = this.§%,§ * §>!_§;
         _loc7_ = param2 * §>!_§;
         if(param5)
         {
            param5.transformVectors(this.§?s§,this.§8!c§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§8!c§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§?s§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§`n§;
         _loc6_ = this.§%,§ * §!!+§ * §2$§;
         _loc7_ = param2 * §!!+§ * §2$§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§`n§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.dynamic;
            _loc6_ = this.§%,§ * §+!"§;
            _loc7_ = param2 * §+!"§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.dynamic[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§%,§)
               {
                  if(this.§[=§)
                  {
                     _loc13_ = this.dynamic[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.dynamic[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.dynamic[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.dynamic[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.dynamic[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.dynamic[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.dynamic[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§17§) : void
      {
         var _loc2_:int = this.§`n§.length;
         this.§`n§.length += param1.§`n§.length;
         this.§`n§.position = _loc2_;
         this.§`n§.writeBytes(param1.§`n§);
         this.dynamic.fixed = false;
         var _loc3_:Vector.<Number> = param1.dynamic;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.dynamic.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.dynamic.fixed = true;
         this.§?s§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§?s§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§?s§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§?s§.fixed = true;
         this.§%,§ += param1.§ x§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §>!_§;
         var _loc6_:*;
         this.§?s§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§?s§[_loc7_ = _loc5_++] = param3;
         this.§?s§[_loc5_] = param4;
      }
      
      public function §<S§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §>!_§;
         var _loc5_:*;
         this.§?s§[_loc5_ = _loc4_++] = param2;
         this.§?s§[_loc4_] = param3;
      }
      
      public function §^!Q§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §>!_§;
         param2.x = this.§?s§[_loc3_++];
         param2.y = this.§?s§[_loc3_++];
         param2.z = this.§?s§[_loc3_];
      }
      
      public function §-+§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§[=§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §83§.§4i§(param2) * _loc4_;
         var _loc6_:Number = §83§.§use§(param2) * _loc4_;
         var _loc7_:Number = §83§.§3Q§(param2) * _loc4_;
         this.§,!O§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §,!O§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §+!"§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.dynamic[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.dynamic[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.dynamic[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.dynamic[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §66§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §+!"§;
         var _loc4_:*;
         this.dynamic[_loc4_ = _loc3_++] = this.dynamic[_loc4_] * param2;
         var _loc5_:*;
         this.dynamic[_loc5_ = _loc3_++] = this.dynamic[_loc5_] * param2;
         var _loc6_:*;
         this.dynamic[_loc6_ = _loc3_++] = this.dynamic[_loc6_] * param2;
         this.dynamic[_loc3_] *= param2;
      }
      
      public function §5S§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §+!"§;
         var _loc3_:Number = !!this.§[=§ ? Number(this.dynamic[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.dynamic[_loc2_] * _loc3_;
         _loc5_ = this.dynamic[_loc2_ + 1] * _loc3_;
         _loc6_ = this.dynamic[_loc2_ + 2] * _loc3_;
         return §83§.§9I§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §1K§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§[=§)
         {
            this.§-+§(param1,this.§5S§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §+!"§ + 3;
            this.dynamic[_loc3_] = param2;
         }
      }
      
      public function §-6§(param1:int) : Number
      {
         var _loc2_:int = param1 * §+!"§ + 3;
         return this.dynamic[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §!!+§;
         this.§`n§.position = _loc4_ * §2$§;
         this.§`n§.writeFloat(param2);
         this.§`n§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §!!+§;
         this.§`n§.position = _loc3_ * §2$§;
         param2.x = this.§`n§.readFloat();
         param2.y = this.§`n§.readFloat();
      }
      
      public function §5!Q§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §>!_§;
         var _loc6_:*;
         this.§?s§[_loc6_ = _loc5_++] = this.§?s§[_loc6_] + param2;
         var _loc7_:*;
         this.§?s§[_loc7_ = _loc5_++] = this.§?s§[_loc7_] + param3;
         this.§?s§[_loc5_] += param4;
      }
      
      public function §for §(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §>!_§;
         this.§8!c§[0] = this.§?s§[_loc3_];
         this.§8!c§[1] = this.§?s§[_loc3_ + 1];
         this.§8!c§[2] = this.§?s§[_loc3_ + 2];
         param2.transformVectors(this.§8!c§,this.§8!c§);
         this.§?s§[_loc3_] = this.§8!c§[0];
         this.§?s§[_loc3_ + 1] = this.§8!c§[1];
         this.§?s§[_loc3_ + 2] = this.§8!c§[2];
      }
      
      public function §>!^§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§[=§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §83§.§4i§(param1) * _loc3_;
         var _loc5_:Number = §83§.§use§(param1) * _loc3_;
         var _loc6_:Number = §83§.§3Q§(param1) * _loc3_;
         this.§,!O§(0,this.§%,§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §'3§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §+!"§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.dynamic[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.dynamic[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.dynamic[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.dynamic[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §+!F§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §+!"§;
         if(this.§[=§)
         {
            _loc4_ = this.dynamic[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.dynamic[_loc3_] *= _loc4_;
            this.dynamic[_loc3_ + 1] *= _loc4_;
            this.dynamic[_loc3_ + 2] *= _loc4_;
            this.dynamic[_loc3_ + 3] = param2;
         }
         else
         {
            this.dynamic[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§[=§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§%,§ * §+!"§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§-6§(0);
               _loc6_ = !!this.§[=§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§66§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§[=§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§[=§;
      }
      
      public function get § x§() : int
      {
         return this.§%,§;
      }
      
      public function set § x§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §!!+§ * §2$§ - this.§`n§.length;
         _loc4_ = this.§`n§.length;
         this.§`n§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§`n§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §2$§)
            {
               this.§`n§.writeFloat(0);
               _loc3_++;
            }
         }
         this.dynamic.fixed = false;
         _loc2_ = param1 * §+!"§ - this.dynamic.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.dynamic.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.dynamic.pop();
            _loc3_++;
         }
         this.dynamic.fixed = true;
         this.§?s§.fixed = false;
         _loc2_ = param1 * §>!_§ - this.§?s§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§?s§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§?s§.pop();
            _loc3_++;
         }
         this.§?s§.fixed = true;
         this.§%,§ = param1;
      }
      
      public function get §%<§() : ByteArray
      {
         this.§`n§.position = 0;
         return this.§`n§;
      }
      
      public function get §4!'§() : Vector.<Number>
      {
         return this.dynamic;
      }
      
      public function get §0!;§() : Vector.<Number>
      {
         return this.§?s§;
      }
   }
}
