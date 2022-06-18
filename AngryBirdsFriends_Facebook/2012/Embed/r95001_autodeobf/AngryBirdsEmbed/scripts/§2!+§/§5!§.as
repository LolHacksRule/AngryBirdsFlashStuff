package §2!+§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §5!§
   {
      
      public static const §]!7§:int = 4;
      
      public static const §,w§:int = 2;
      
      public static const §5!>§:int = 3;
      
      public static const §;5§:int = 4;
      
      public static const §0I§:int = 0;
      
      public static const §#o§:int = 0;
      
      public static const §?p§:int = 0;
       
      
      private var §<L§:ByteArray;
      
      private var §6!'§:Vector.<Number>;
      
      private var §'o§:Vector.<Number>;
      
      private var §4E§:Boolean;
      
      private var §^!B§:int;
      
      private var §5Q§:Vector.<Number>;
      
      public function §5!§(param1:int, param2:Boolean = false)
      {
         this.§5Q§ = new Vector.<Number>(12,true);
         super();
         this.§<L§ = new ByteArray();
         this.§<L§.endian = Endian.LITTLE_ENDIAN;
         this.§<L§.length = param1 * §,w§ * §;5§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §,w§)
         {
            this.§<L§.writeFloat(0);
            _loc3_++;
         }
         this.§6!'§ = new Vector.<Number>(param1 * §]!7§,true);
         this.§'o§ = new Vector.<Number>(param1 * §5!>§,true);
         this.§4E§ = param2;
         this.§^!B§ = param1;
      }
      
      public function clone() : §5!§
      {
         var _loc1_:§5!§ = new §5!§(0,this.§4E§);
         _loc1_.§<L§.length = this.§<L§.length;
         _loc1_.§<L§.writeBytes(this.§<L§);
         _loc1_.§6!'§ = this.§6!'§.concat();
         _loc1_.§6!'§.fixed = true;
         _loc1_.§'o§ = this.§'o§.concat();
         _loc1_.§'o§.fixed = true;
         _loc1_.§^!B§ = this.§^!B§;
         return _loc1_;
      }
      
      public function copyTo(param1:§5!§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§'o§;
         _loc6_ = this.§^!B§ * §5!>§;
         _loc7_ = param2 * §5!>§;
         if(param5)
         {
            param5.transformVectors(this.§'o§,this.§5Q§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§5Q§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§'o§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§<L§;
         _loc6_ = this.§^!B§ * §,w§ * §;5§;
         _loc7_ = param2 * §,w§ * §;5§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§<L§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§6!'§;
            _loc6_ = this.§^!B§ * §]!7§;
            _loc7_ = param2 * §]!7§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§6!'§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§^!B§)
               {
                  if(this.§4E§)
                  {
                     _loc13_ = this.§6!'§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§6!'§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§6!'§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§6!'§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§6!'§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§6!'§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§6!'§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§5!§) : void
      {
         var _loc2_:int = this.§<L§.length;
         this.§<L§.length += param1.§<L§.length;
         this.§<L§.position = _loc2_;
         this.§<L§.writeBytes(param1.§<L§);
         this.§6!'§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§6!'§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§6!'§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§6!'§.fixed = true;
         this.§'o§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§'o§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§'o§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§'o§.fixed = true;
         this.§^!B§ += param1.§;"§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §5!>§;
         var _loc6_:*;
         this.§'o§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§'o§[_loc7_ = _loc5_++] = param3;
         this.§'o§[_loc5_] = param4;
      }
      
      public function §3s§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §5!>§;
         var _loc5_:*;
         this.§'o§[_loc5_ = _loc4_++] = param2;
         this.§'o§[_loc4_] = param3;
      }
      
      public function §"!?§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §5!>§;
         param2.x = this.§'o§[_loc3_++];
         param2.y = this.§'o§[_loc3_++];
         param2.z = this.§'o§[_loc3_];
      }
      
      public function §,1§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§4E§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §[t§.§4!<§(param2) * _loc4_;
         var _loc6_:Number = §[t§.§=!>§(param2) * _loc4_;
         var _loc7_:Number = §[t§.§-g§(param2) * _loc4_;
         this.§ L§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function § L§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §]!7§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§6!'§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§6!'§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§6!'§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§6!'§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §`w§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §]!7§;
         var _loc4_:*;
         this.§6!'§[_loc4_ = _loc3_++] = this.§6!'§[_loc4_] * param2;
         var _loc5_:*;
         this.§6!'§[_loc5_ = _loc3_++] = this.§6!'§[_loc5_] * param2;
         var _loc6_:*;
         this.§6!'§[_loc6_ = _loc3_++] = this.§6!'§[_loc6_] * param2;
         this.§6!'§[_loc3_] *= param2;
      }
      
      public function §-!'§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §]!7§;
         var _loc3_:Number = !!this.§4E§ ? Number(this.§6!'§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§6!'§[_loc2_] * _loc3_;
         _loc5_ = this.§6!'§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§6!'§[_loc2_ + 2] * _loc3_;
         return §[t§.§@,§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §`>§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§4E§)
         {
            this.§,1§(param1,this.§-!'§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §]!7§ + 3;
            this.§6!'§[_loc3_] = param2;
         }
      }
      
      public function §?n§(param1:int) : Number
      {
         var _loc2_:int = param1 * §]!7§ + 3;
         return this.§6!'§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §,w§;
         this.§<L§.position = _loc4_ * §;5§;
         this.§<L§.writeFloat(param2);
         this.§<L§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §,w§;
         this.§<L§.position = _loc3_ * §;5§;
         param2.x = this.§<L§.readFloat();
         param2.y = this.§<L§.readFloat();
      }
      
      public function §>!4§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §5!>§;
         var _loc6_:*;
         this.§'o§[_loc6_ = _loc5_++] = this.§'o§[_loc6_] + param2;
         var _loc7_:*;
         this.§'o§[_loc7_ = _loc5_++] = this.§'o§[_loc7_] + param3;
         this.§'o§[_loc5_] += param4;
      }
      
      public function §9e§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §5!>§;
         this.§5Q§[0] = this.§'o§[_loc3_];
         this.§5Q§[1] = this.§'o§[_loc3_ + 1];
         this.§5Q§[2] = this.§'o§[_loc3_ + 2];
         param2.transformVectors(this.§5Q§,this.§5Q§);
         this.§'o§[_loc3_] = this.§5Q§[0];
         this.§'o§[_loc3_ + 1] = this.§5Q§[1];
         this.§'o§[_loc3_ + 2] = this.§5Q§[2];
      }
      
      public function §9Z§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§4E§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §[t§.§4!<§(param1) * _loc3_;
         var _loc5_:Number = §[t§.§=!>§(param1) * _loc3_;
         var _loc6_:Number = §[t§.§-g§(param1) * _loc3_;
         this.§ L§(0,this.§^!B§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §5g§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §]!7§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§6!'§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§6!'§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§6!'§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§6!'§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §-!D§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §]!7§;
         if(this.§4E§)
         {
            _loc4_ = this.§6!'§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§6!'§[_loc3_] *= _loc4_;
            this.§6!'§[_loc3_ + 1] *= _loc4_;
            this.§6!'§[_loc3_ + 2] *= _loc4_;
            this.§6!'§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§6!'§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§4E§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§^!B§ * §]!7§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§?n§(0);
               _loc6_ = !!this.§4E§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§`w§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§4E§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§4E§;
      }
      
      public function get §;"§() : int
      {
         return this.§^!B§;
      }
      
      public function set §;"§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §,w§ * §;5§ - this.§<L§.length;
         _loc4_ = this.§<L§.length;
         this.§<L§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§<L§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §;5§)
            {
               this.§<L§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§6!'§.fixed = false;
         _loc2_ = param1 * §]!7§ - this.§6!'§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§6!'§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§6!'§.pop();
            _loc3_++;
         }
         this.§6!'§.fixed = true;
         this.§'o§.fixed = false;
         _loc2_ = param1 * §5!>§ - this.§'o§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§'o§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§'o§.pop();
            _loc3_++;
         }
         this.§'o§.fixed = true;
         this.§^!B§ = param1;
      }
      
      public function get §8Q§() : ByteArray
      {
         this.§<L§.position = 0;
         return this.§<L§;
      }
      
      public function get §0_§() : Vector.<Number>
      {
         return this.§6!'§;
      }
      
      public function get §-W§() : Vector.<Number>
      {
         return this.§'o§;
      }
   }
}
