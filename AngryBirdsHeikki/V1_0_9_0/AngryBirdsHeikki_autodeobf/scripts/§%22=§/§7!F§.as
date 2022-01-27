package §"=§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §7!F§
   {
      
      public static const §`G§:int = 4;
      
      public static const §=+§:int = 2;
      
      public static const §catch§:int = 3;
      
      public static const §+!T§:int = 4;
      
      public static const §&7§:int = 0;
      
      public static const §class§:int = 0;
      
      public static const §@f§:int = 0;
       
      
      private var §&N§:ByteArray;
      
      private var §!!9§:Vector.<Number>;
      
      private var §-0§:Vector.<Number>;
      
      private var §;g§:Boolean;
      
      private var §^!"§:int;
      
      private var §^!L§:Vector.<Number>;
      
      public function §7!F§(param1:int, param2:Boolean = false)
      {
         this.§^!L§ = new Vector.<Number>(12,true);
         super();
         this.§&N§ = new ByteArray();
         this.§&N§.endian = Endian.LITTLE_ENDIAN;
         this.§&N§.length = param1 * §=+§ * §+!T§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §=+§)
         {
            this.§&N§.writeFloat(0);
            _loc3_++;
         }
         this.§!!9§ = new Vector.<Number>(param1 * §`G§,true);
         this.§-0§ = new Vector.<Number>(param1 * §catch§,true);
         this.§;g§ = param2;
         this.§^!"§ = param1;
      }
      
      public function clone() : §7!F§
      {
         var _loc1_:§7!F§ = new §7!F§(0,this.§;g§);
         _loc1_.§&N§.length = this.§&N§.length;
         _loc1_.§&N§.writeBytes(this.§&N§);
         _loc1_.§!!9§ = this.§!!9§.concat();
         _loc1_.§!!9§.fixed = true;
         _loc1_.§-0§ = this.§-0§.concat();
         _loc1_.§-0§.fixed = true;
         _loc1_.§^!"§ = this.§^!"§;
         return _loc1_;
      }
      
      public function copyTo(param1:§7!F§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§-0§;
         _loc6_ = this.§^!"§ * §catch§;
         _loc7_ = param2 * §catch§;
         if(param5)
         {
            param5.transformVectors(this.§-0§,this.§^!L§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§^!L§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§-0§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§&N§;
         _loc6_ = this.§^!"§ * §=+§ * §+!T§;
         _loc7_ = param2 * §=+§ * §+!T§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§&N§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§!!9§;
            _loc6_ = this.§^!"§ * §`G§;
            _loc7_ = param2 * §`G§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§!!9§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§^!"§)
               {
                  if(this.§;g§)
                  {
                     _loc13_ = this.§!!9§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§!!9§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§!!9§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§!!9§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§!!9§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§!!9§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§!!9§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§7!F§) : void
      {
         var _loc2_:int = this.§&N§.length;
         this.§&N§.length += param1.§&N§.length;
         this.§&N§.position = _loc2_;
         this.§&N§.writeBytes(param1.§&N§);
         this.§!!9§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§!!9§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§!!9§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§!!9§.fixed = true;
         this.§-0§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§-0§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§-0§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§-0§.fixed = true;
         this.§^!"§ += param1.§4k§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §catch§;
         var _loc6_:*;
         this.§-0§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§-0§[_loc7_ = _loc5_++] = param3;
         this.§-0§[_loc5_] = param4;
      }
      
      public function §4X§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §catch§;
         var _loc5_:*;
         this.§-0§[_loc5_ = _loc4_++] = param2;
         this.§-0§[_loc4_] = param3;
      }
      
      public function §!<§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §catch§;
         param2.x = this.§-0§[_loc3_++];
         param2.y = this.§-0§[_loc3_++];
         param2.z = this.§-0§[_loc3_];
      }
      
      public function §6! §(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§;g§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §;!#§.§5!G§(param2) * _loc4_;
         var _loc6_:Number = §;!#§.§]!f§(param2) * _loc4_;
         var _loc7_:Number = §;!#§.§<!;§(param2) * _loc4_;
         this.§!!X§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §!!X§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §`G§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§!!9§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§!!9§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§!!9§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§!!9§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §!!f§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §`G§;
         var _loc4_:*;
         this.§!!9§[_loc4_ = _loc3_++] = this.§!!9§[_loc4_] * param2;
         var _loc5_:*;
         this.§!!9§[_loc5_ = _loc3_++] = this.§!!9§[_loc5_] * param2;
         var _loc6_:*;
         this.§!!9§[_loc6_ = _loc3_++] = this.§!!9§[_loc6_] * param2;
         this.§!!9§[_loc3_] *= param2;
      }
      
      public function §-9§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §`G§;
         var _loc3_:Number = !!this.§;g§ ? Number(this.§!!9§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§!!9§[_loc2_] * _loc3_;
         _loc5_ = this.§!!9§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§!!9§[_loc2_ + 2] * _loc3_;
         return §;!#§.§ D§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §5=§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§;g§)
         {
            this.§6! §(param1,this.§-9§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §`G§ + 3;
            this.§!!9§[_loc3_] = param2;
         }
      }
      
      public function §'N§(param1:int) : Number
      {
         var _loc2_:int = param1 * §`G§ + 3;
         return this.§!!9§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §=+§;
         this.§&N§.position = _loc4_ * §+!T§;
         this.§&N§.writeFloat(param2);
         this.§&N§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §=+§;
         this.§&N§.position = _loc3_ * §+!T§;
         param2.x = this.§&N§.readFloat();
         param2.y = this.§&N§.readFloat();
      }
      
      public function §5!J§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §catch§;
         var _loc6_:*;
         this.§-0§[_loc6_ = _loc5_++] = this.§-0§[_loc6_] + param2;
         var _loc7_:*;
         this.§-0§[_loc7_ = _loc5_++] = this.§-0§[_loc7_] + param3;
         this.§-0§[_loc5_] += param4;
      }
      
      public function §]U§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §catch§;
         this.§^!L§[0] = this.§-0§[_loc3_];
         this.§^!L§[1] = this.§-0§[_loc3_ + 1];
         this.§^!L§[2] = this.§-0§[_loc3_ + 2];
         param2.transformVectors(this.§^!L§,this.§^!L§);
         this.§-0§[_loc3_] = this.§^!L§[0];
         this.§-0§[_loc3_ + 1] = this.§^!L§[1];
         this.§-0§[_loc3_ + 2] = this.§^!L§[2];
      }
      
      public function §1q§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§;g§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §;!#§.§5!G§(param1) * _loc3_;
         var _loc5_:Number = §;!#§.§]!f§(param1) * _loc3_;
         var _loc6_:Number = §;!#§.§<!;§(param1) * _loc3_;
         this.§!!X§(0,this.§^!"§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §]Q§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §`G§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§!!9§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§!!9§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§!!9§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§!!9§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §#!#§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §`G§;
         if(this.§;g§)
         {
            _loc4_ = this.§!!9§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§!!9§[_loc3_] *= _loc4_;
            this.§!!9§[_loc3_ + 1] *= _loc4_;
            this.§!!9§[_loc3_ + 2] *= _loc4_;
            this.§!!9§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§!!9§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§;g§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§^!"§ * §`G§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§'N§(0);
               _loc6_ = !!this.§;g§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§!!f§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§;g§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§;g§;
      }
      
      public function get §4k§() : int
      {
         return this.§^!"§;
      }
      
      public function set §4k§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §=+§ * §+!T§ - this.§&N§.length;
         _loc4_ = this.§&N§.length;
         this.§&N§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§&N§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §+!T§)
            {
               this.§&N§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§!!9§.fixed = false;
         _loc2_ = param1 * §`G§ - this.§!!9§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§!!9§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§!!9§.pop();
            _loc3_++;
         }
         this.§!!9§.fixed = true;
         this.§-0§.fixed = false;
         _loc2_ = param1 * §catch§ - this.§-0§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§-0§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§-0§.pop();
            _loc3_++;
         }
         this.§-0§.fixed = true;
         this.§^!"§ = param1;
      }
      
      public function get §;!<§() : ByteArray
      {
         this.§&N§.position = 0;
         return this.§&N§;
      }
      
      public function get §59§() : Vector.<Number>
      {
         return this.§!!9§;
      }
      
      public function get §"Y§() : Vector.<Number>
      {
         return this.§-0§;
      }
   }
}
