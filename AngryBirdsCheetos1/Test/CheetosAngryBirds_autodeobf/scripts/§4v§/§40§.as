package §4v§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §40§
   {
      
      public static const §;!^§:int = 4;
      
      public static const §9!+§:int = 2;
      
      public static const §%!;§:int = 3;
      
      public static const §<!e§:int = 4;
      
      public static const §]a§:int = 0;
      
      public static const §[W§:int = 0;
      
      public static const §9!i§:int = 0;
       
      
      private var §"!Y§:ByteArray;
      
      private var §'!O§:Vector.<Number>;
      
      private var §^c§:Vector.<Number>;
      
      private var §@!,§:Boolean;
      
      private var §1!M§:int;
      
      private var §9A§:Vector.<Number>;
      
      public function §40§(param1:int, param2:Boolean = false)
      {
         this.§9A§ = new Vector.<Number>(12,true);
         super();
         this.§"!Y§ = new ByteArray();
         this.§"!Y§.endian = Endian.LITTLE_ENDIAN;
         this.§"!Y§.length = param1 * §9!+§ * §<!e§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §9!+§)
         {
            this.§"!Y§.writeFloat(0);
            _loc3_++;
         }
         this.§'!O§ = new Vector.<Number>(param1 * §;!^§,true);
         this.§^c§ = new Vector.<Number>(param1 * §%!;§,true);
         this.§@!,§ = param2;
         this.§1!M§ = param1;
      }
      
      public function clone() : §40§
      {
         var _loc1_:§40§ = new §40§(0,this.§@!,§);
         _loc1_.§"!Y§.length = this.§"!Y§.length;
         _loc1_.§"!Y§.writeBytes(this.§"!Y§);
         _loc1_.§'!O§ = this.§'!O§.concat();
         _loc1_.§'!O§.fixed = true;
         _loc1_.§^c§ = this.§^c§.concat();
         _loc1_.§^c§.fixed = true;
         _loc1_.§1!M§ = this.§1!M§;
         return _loc1_;
      }
      
      public function copyTo(param1:§40§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§^c§;
         _loc6_ = this.§1!M§ * §%!;§;
         _loc7_ = param2 * §%!;§;
         if(param5)
         {
            param5.transformVectors(this.§^c§,this.§9A§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§9A§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§^c§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§"!Y§;
         _loc6_ = this.§1!M§ * §9!+§ * §<!e§;
         _loc7_ = param2 * §9!+§ * §<!e§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§"!Y§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§'!O§;
            _loc6_ = this.§1!M§ * §;!^§;
            _loc7_ = param2 * §;!^§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§'!O§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§1!M§)
               {
                  if(this.§@!,§)
                  {
                     _loc13_ = this.§'!O§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§'!O§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§'!O§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§'!O§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§'!O§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§'!O§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§'!O§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§40§) : void
      {
         var _loc2_:int = this.§"!Y§.length;
         this.§"!Y§.length += param1.§"!Y§.length;
         this.§"!Y§.position = _loc2_;
         this.§"!Y§.writeBytes(param1.§"!Y§);
         this.§'!O§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§'!O§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§'!O§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§'!O§.fixed = true;
         this.§^c§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§^c§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§^c§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§^c§.fixed = true;
         this.§1!M§ += param1.§-Z§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §%!;§;
         var _loc6_:*;
         this.§^c§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§^c§[_loc7_ = _loc5_++] = param3;
         this.§^c§[_loc5_] = param4;
      }
      
      public function §5!E§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §%!;§;
         var _loc5_:*;
         this.§^c§[_loc5_ = _loc4_++] = param2;
         this.§^c§[_loc4_] = param3;
      }
      
      public function §2q§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §%!;§;
         param2.x = this.§^c§[_loc3_++];
         param2.y = this.§^c§[_loc3_++];
         param2.z = this.§^c§[_loc3_];
      }
      
      public function § !d§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§@!,§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §@A§.§2!O§(param2) * _loc4_;
         var _loc6_:Number = §@A§.§>!Q§(param2) * _loc4_;
         var _loc7_:Number = §@A§.§9Z§(param2) * _loc4_;
         this.§^!L§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §^!L§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §;!^§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§'!O§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§'!O§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§'!O§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§'!O§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §]O§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §;!^§;
         var _loc4_:*;
         this.§'!O§[_loc4_ = _loc3_++] = this.§'!O§[_loc4_] * param2;
         var _loc5_:*;
         this.§'!O§[_loc5_ = _loc3_++] = this.§'!O§[_loc5_] * param2;
         var _loc6_:*;
         this.§'!O§[_loc6_ = _loc3_++] = this.§'!O§[_loc6_] * param2;
         this.§'!O§[_loc3_] *= param2;
      }
      
      public function §'x§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §;!^§;
         var _loc3_:Number = !!this.§@!,§ ? Number(this.§'!O§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§'!O§[_loc2_] * _loc3_;
         _loc5_ = this.§'!O§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§'!O§[_loc2_ + 2] * _loc3_;
         return §@A§.§"x§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §"!c§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§@!,§)
         {
            this.§ !d§(param1,this.§'x§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §;!^§ + 3;
            this.§'!O§[_loc3_] = param2;
         }
      }
      
      public function §@%§(param1:int) : Number
      {
         var _loc2_:int = param1 * §;!^§ + 3;
         return this.§'!O§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §9!+§;
         this.§"!Y§.position = _loc4_ * §<!e§;
         this.§"!Y§.writeFloat(param2);
         this.§"!Y§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §9!+§;
         this.§"!Y§.position = _loc3_ * §<!e§;
         param2.x = this.§"!Y§.readFloat();
         param2.y = this.§"!Y§.readFloat();
      }
      
      public function §4!T§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §%!;§;
         var _loc6_:*;
         this.§^c§[_loc6_ = _loc5_++] = this.§^c§[_loc6_] + param2;
         var _loc7_:*;
         this.§^c§[_loc7_ = _loc5_++] = this.§^c§[_loc7_] + param3;
         this.§^c§[_loc5_] += param4;
      }
      
      public function §4q§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §%!;§;
         this.§9A§[0] = this.§^c§[_loc3_];
         this.§9A§[1] = this.§^c§[_loc3_ + 1];
         this.§9A§[2] = this.§^c§[_loc3_ + 2];
         param2.transformVectors(this.§9A§,this.§9A§);
         this.§^c§[_loc3_] = this.§9A§[0];
         this.§^c§[_loc3_ + 1] = this.§9A§[1];
         this.§^c§[_loc3_ + 2] = this.§9A§[2];
      }
      
      public function §9i§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§@!,§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §@A§.§2!O§(param1) * _loc3_;
         var _loc5_:Number = §@A§.§>!Q§(param1) * _loc3_;
         var _loc6_:Number = §@A§.§9Z§(param1) * _loc3_;
         this.§^!L§(0,this.§1!M§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §!X§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §;!^§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§'!O§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§'!O§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§'!O§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§'!O§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §=$§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §;!^§;
         if(this.§@!,§)
         {
            _loc4_ = this.§'!O§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§'!O§[_loc3_] *= _loc4_;
            this.§'!O§[_loc3_ + 1] *= _loc4_;
            this.§'!O§[_loc3_ + 2] *= _loc4_;
            this.§'!O§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§'!O§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §@!g§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§@!,§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§1!M§ * §;!^§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§@%§(0);
               _loc6_ = !!this.§@!,§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§]O§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§@!,§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§@!,§;
      }
      
      public function get §-Z§() : int
      {
         return this.§1!M§;
      }
      
      public function set §-Z§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §9!+§ * §<!e§ - this.§"!Y§.length;
         _loc4_ = this.§"!Y§.length;
         this.§"!Y§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§"!Y§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §<!e§)
            {
               this.§"!Y§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§'!O§.fixed = false;
         _loc2_ = param1 * §;!^§ - this.§'!O§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§'!O§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§'!O§.pop();
            _loc3_++;
         }
         this.§'!O§.fixed = true;
         this.§^c§.fixed = false;
         _loc2_ = param1 * §%!;§ - this.§^c§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§^c§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§^c§.pop();
            _loc3_++;
         }
         this.§^c§.fixed = true;
         this.§1!M§ = param1;
      }
      
      public function get §!2§() : ByteArray
      {
         this.§"!Y§.position = 0;
         return this.§"!Y§;
      }
      
      public function get §[K§() : Vector.<Number>
      {
         return this.§'!O§;
      }
      
      public function get §]!"§() : Vector.<Number>
      {
         return this.§^c§;
      }
   }
}
