package §;!,§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §20§
   {
      
      public static const §"#§:int = 4;
      
      public static const §,y§:int = 2;
      
      public static const §[@§:int = 3;
      
      public static const §-!G§:int = 4;
      
      public static const §-2§:int = 0;
      
      public static const §2!8§:int = 0;
      
      public static const §+_§:int = 0;
       
      
      private var §1g§:ByteArray;
      
      private var §>j§:Vector.<Number>;
      
      private var §7!'§:Vector.<Number>;
      
      private var §-N§:Boolean;
      
      private var §5Z§:int;
      
      private var §^6§:Vector.<Number>;
      
      public function §20§(param1:int, param2:Boolean = false)
      {
         this.§^6§ = new Vector.<Number>(12,true);
         super();
         this.§1g§ = new ByteArray();
         this.§1g§.endian = Endian.LITTLE_ENDIAN;
         this.§1g§.length = param1 * §,y§ * §-!G§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §,y§)
         {
            this.§1g§.writeFloat(0);
            _loc3_++;
         }
         this.§>j§ = new Vector.<Number>(param1 * §"#§,true);
         this.§7!'§ = new Vector.<Number>(param1 * §[@§,true);
         this.§-N§ = param2;
         this.§5Z§ = param1;
      }
      
      public function clone() : §20§
      {
         var _loc1_:§20§ = new §20§(0,this.§-N§);
         _loc1_.§1g§.length = this.§1g§.length;
         _loc1_.§1g§.writeBytes(this.§1g§);
         _loc1_.§>j§ = this.§>j§.concat();
         _loc1_.§>j§.fixed = true;
         _loc1_.§7!'§ = this.§7!'§.concat();
         _loc1_.§7!'§.fixed = true;
         _loc1_.§5Z§ = this.§5Z§;
         return _loc1_;
      }
      
      public function copyTo(param1:§20§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§7!'§;
         _loc6_ = this.§5Z§ * §[@§;
         _loc7_ = param2 * §[@§;
         if(param5)
         {
            param5.transformVectors(this.§7!'§,this.§^6§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§^6§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§7!'§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§1g§;
         _loc6_ = this.§5Z§ * §,y§ * §-!G§;
         _loc7_ = param2 * §,y§ * §-!G§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§1g§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§>j§;
            _loc6_ = this.§5Z§ * §"#§;
            _loc7_ = param2 * §"#§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§>j§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§5Z§)
               {
                  if(this.§-N§)
                  {
                     _loc13_ = this.§>j§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§>j§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§>j§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§>j§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§>j§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§>j§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§>j§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§20§) : void
      {
         var _loc2_:int = this.§1g§.length;
         this.§1g§.length += param1.§1g§.length;
         this.§1g§.position = _loc2_;
         this.§1g§.writeBytes(param1.§1g§);
         this.§>j§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§>j§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§>j§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§>j§.fixed = true;
         this.§7!'§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§7!'§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§7!'§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§7!'§.fixed = true;
         this.§5Z§ += param1.§=!^§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §[@§;
         var _loc6_:*;
         this.§7!'§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§7!'§[_loc7_ = _loc5_++] = param3;
         this.§7!'§[_loc5_] = param4;
      }
      
      public function §'2§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §[@§;
         var _loc5_:*;
         this.§7!'§[_loc5_ = _loc4_++] = param2;
         this.§7!'§[_loc4_] = param3;
      }
      
      public function §=0§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §[@§;
         param2.x = this.§7!'§[_loc3_++];
         param2.y = this.§7!'§[_loc3_++];
         param2.z = this.§7!'§[_loc3_];
      }
      
      public function §8!1§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§-N§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §>!R§.§+!_§(param2) * _loc4_;
         var _loc6_:Number = §>!R§.§[q§(param2) * _loc4_;
         var _loc7_:Number = §>!R§.§!<§(param2) * _loc4_;
         this.§0!Q§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §0!Q§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §"#§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§>j§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§>j§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§>j§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§>j§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §2g§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §"#§;
         var _loc4_:*;
         this.§>j§[_loc4_ = _loc3_++] = this.§>j§[_loc4_] * param2;
         var _loc5_:*;
         this.§>j§[_loc5_ = _loc3_++] = this.§>j§[_loc5_] * param2;
         var _loc6_:*;
         this.§>j§[_loc6_ = _loc3_++] = this.§>j§[_loc6_] * param2;
         this.§>j§[_loc3_] *= param2;
      }
      
      public function §"!M§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §"#§;
         var _loc3_:Number = !!this.§-N§ ? Number(this.§>j§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§>j§[_loc2_] * _loc3_;
         _loc5_ = this.§>j§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§>j§[_loc2_ + 2] * _loc3_;
         return §>!R§.§#9§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §@g§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§-N§)
         {
            this.§8!1§(param1,this.§"!M§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §"#§ + 3;
            this.§>j§[_loc3_] = param2;
         }
      }
      
      public function §7L§(param1:int) : Number
      {
         var _loc2_:int = param1 * §"#§ + 3;
         return this.§>j§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §,y§;
         this.§1g§.position = _loc4_ * §-!G§;
         this.§1g§.writeFloat(param2);
         this.§1g§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §,y§;
         this.§1g§.position = _loc3_ * §-!G§;
         param2.x = this.§1g§.readFloat();
         param2.y = this.§1g§.readFloat();
      }
      
      public function §=$§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §[@§;
         var _loc6_:*;
         this.§7!'§[_loc6_ = _loc5_++] = this.§7!'§[_loc6_] + param2;
         var _loc7_:*;
         this.§7!'§[_loc7_ = _loc5_++] = this.§7!'§[_loc7_] + param3;
         this.§7!'§[_loc5_] += param4;
      }
      
      public function §#&§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §[@§;
         this.§^6§[0] = this.§7!'§[_loc3_];
         this.§^6§[1] = this.§7!'§[_loc3_ + 1];
         this.§^6§[2] = this.§7!'§[_loc3_ + 2];
         param2.transformVectors(this.§^6§,this.§^6§);
         this.§7!'§[_loc3_] = this.§^6§[0];
         this.§7!'§[_loc3_ + 1] = this.§^6§[1];
         this.§7!'§[_loc3_ + 2] = this.§^6§[2];
      }
      
      public function §>!Y§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§-N§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §>!R§.§+!_§(param1) * _loc3_;
         var _loc5_:Number = §>!R§.§[q§(param1) * _loc3_;
         var _loc6_:Number = §>!R§.§!<§(param1) * _loc3_;
         this.§0!Q§(0,this.§5Z§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §++§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §"#§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§>j§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§>j§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§>j§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§>j§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §6=§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §"#§;
         if(this.§-N§)
         {
            _loc4_ = this.§>j§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§>j§[_loc3_] *= _loc4_;
            this.§>j§[_loc3_ + 1] *= _loc4_;
            this.§>j§[_loc3_ + 2] *= _loc4_;
            this.§>j§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§>j§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§-N§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§5Z§ * §"#§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§7L§(0);
               _loc6_ = !!this.§-N§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§2g§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§-N§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§-N§;
      }
      
      public function get §=!^§() : int
      {
         return this.§5Z§;
      }
      
      public function set §=!^§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §,y§ * §-!G§ - this.§1g§.length;
         _loc4_ = this.§1g§.length;
         this.§1g§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§1g§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §-!G§)
            {
               this.§1g§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§>j§.fixed = false;
         _loc2_ = param1 * §"#§ - this.§>j§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§>j§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§>j§.pop();
            _loc3_++;
         }
         this.§>j§.fixed = true;
         this.§7!'§.fixed = false;
         _loc2_ = param1 * §[@§ - this.§7!'§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§7!'§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§7!'§.pop();
            _loc3_++;
         }
         this.§7!'§.fixed = true;
         this.§5Z§ = param1;
      }
      
      public function get §0!;§() : ByteArray
      {
         this.§1g§.position = 0;
         return this.§1g§;
      }
      
      public function get § !§() : Vector.<Number>
      {
         return this.§>j§;
      }
      
      public function get §@v§() : Vector.<Number>
      {
         return this.§7!'§;
      }
   }
}
