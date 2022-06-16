package §5^§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §6B§
   {
      
      public static const §0H§:int = 4;
      
      public static const §"%§:int = 2;
      
      public static const §'!§:int = 3;
      
      public static const §'1§:int = 4;
      
      public static const §!!G§:int = 0;
      
      public static const §2&§:int = 0;
      
      public static const §!u§:int = 0;
       
      
      private var §2G§:ByteArray;
      
      private var § !K§:Vector.<Number>;
      
      private var §"u§:Vector.<Number>;
      
      private var §'!C§:Boolean;
      
      private var §!Z§:int;
      
      private var §=!O§:Vector.<Number>;
      
      public function §6B§(param1:int, param2:Boolean = false)
      {
         this.§=!O§ = new Vector.<Number>(12,true);
         super();
         this.§2G§ = new ByteArray();
         this.§2G§.endian = Endian.LITTLE_ENDIAN;
         this.§2G§.length = param1 * §"%§ * §'1§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §"%§)
         {
            this.§2G§.writeFloat(0);
            _loc3_++;
         }
         this.§ !K§ = new Vector.<Number>(param1 * §0H§,true);
         this.§"u§ = new Vector.<Number>(param1 * §'!§,true);
         this.§'!C§ = param2;
         this.§!Z§ = param1;
      }
      
      public function clone() : §6B§
      {
         var _loc1_:§6B§ = new §6B§(0,this.§'!C§);
         _loc1_.§2G§.length = this.§2G§.length;
         _loc1_.§2G§.writeBytes(this.§2G§);
         _loc1_.§ !K§ = this.§ !K§.concat();
         _loc1_.§ !K§.fixed = true;
         _loc1_.§"u§ = this.§"u§.concat();
         _loc1_.§"u§.fixed = true;
         _loc1_.§!Z§ = this.§!Z§;
         return _loc1_;
      }
      
      public function copyTo(param1:§6B§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§"u§;
         _loc6_ = this.§!Z§ * §'!§;
         _loc7_ = param2 * §'!§;
         if(param5)
         {
            param5.transformVectors(this.§"u§,this.§=!O§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§=!O§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§"u§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§2G§;
         _loc6_ = this.§!Z§ * §"%§ * §'1§;
         _loc7_ = param2 * §"%§ * §'1§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§2G§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§ !K§;
            _loc6_ = this.§!Z§ * §0H§;
            _loc7_ = param2 * §0H§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§ !K§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§!Z§)
               {
                  if(this.§'!C§)
                  {
                     _loc13_ = this.§ !K§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§ !K§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§ !K§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§ !K§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§ !K§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§ !K§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§ !K§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§6B§) : void
      {
         var _loc2_:int = this.§2G§.length;
         this.§2G§.length += param1.§2G§.length;
         this.§2G§.position = _loc2_;
         this.§2G§.writeBytes(param1.§2G§);
         this.§ !K§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§ !K§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§ !K§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§ !K§.fixed = true;
         this.§"u§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§"u§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§"u§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§"u§.fixed = true;
         this.§!Z§ += param1.§!k§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §'!§;
         var _loc6_:*;
         this.§"u§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§"u§[_loc7_ = _loc5_++] = param3;
         this.§"u§[_loc5_] = param4;
      }
      
      public function §3M§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §'!§;
         var _loc5_:*;
         this.§"u§[_loc5_ = _loc4_++] = param2;
         this.§"u§[_loc4_] = param3;
      }
      
      public function §+A§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §'!§;
         param2.x = this.§"u§[_loc3_++];
         param2.y = this.§"u§[_loc3_++];
         param2.z = this.§"u§[_loc3_];
      }
      
      public function §0s§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§'!C§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §;c§.§>!E§(param2) * _loc4_;
         var _loc6_:Number = §;c§.§7F§(param2) * _loc4_;
         var _loc7_:Number = §;c§.§0;§(param2) * _loc4_;
         this.§%!D§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §%!D§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §0H§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§ !K§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§ !K§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§ !K§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§ !K§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §;!F§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §0H§;
         var _loc4_:*;
         this.§ !K§[_loc4_ = _loc3_++] = this.§ !K§[_loc4_] * param2;
         var _loc5_:*;
         this.§ !K§[_loc5_ = _loc3_++] = this.§ !K§[_loc5_] * param2;
         var _loc6_:*;
         this.§ !K§[_loc6_ = _loc3_++] = this.§ !K§[_loc6_] * param2;
         this.§ !K§[_loc3_] *= param2;
      }
      
      public function §7;§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §0H§;
         var _loc3_:Number = !!this.§'!C§ ? Number(this.§ !K§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§ !K§[_loc2_] * _loc3_;
         _loc5_ = this.§ !K§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§ !K§[_loc2_ + 2] * _loc3_;
         return §;c§.§",§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §0!O§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§'!C§)
         {
            this.§0s§(param1,this.§7;§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §0H§ + 3;
            this.§ !K§[_loc3_] = param2;
         }
      }
      
      public function §9i§(param1:int) : Number
      {
         var _loc2_:int = param1 * §0H§ + 3;
         return this.§ !K§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §"%§;
         this.§2G§.position = _loc4_ * §'1§;
         this.§2G§.writeFloat(param2);
         this.§2G§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §"%§;
         this.§2G§.position = _loc3_ * §'1§;
         param2.x = this.§2G§.readFloat();
         param2.y = this.§2G§.readFloat();
      }
      
      public function §6E§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §'!§;
         var _loc6_:*;
         this.§"u§[_loc6_ = _loc5_++] = this.§"u§[_loc6_] + param2;
         var _loc7_:*;
         this.§"u§[_loc7_ = _loc5_++] = this.§"u§[_loc7_] + param3;
         this.§"u§[_loc5_] += param4;
      }
      
      public function §>!@§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §'!§;
         this.§=!O§[0] = this.§"u§[_loc3_];
         this.§=!O§[1] = this.§"u§[_loc3_ + 1];
         this.§=!O§[2] = this.§"u§[_loc3_ + 2];
         param2.transformVectors(this.§=!O§,this.§=!O§);
         this.§"u§[_loc3_] = this.§=!O§[0];
         this.§"u§[_loc3_ + 1] = this.§=!O§[1];
         this.§"u§[_loc3_ + 2] = this.§=!O§[2];
      }
      
      public function §[F§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§'!C§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §;c§.§>!E§(param1) * _loc3_;
         var _loc5_:Number = §;c§.§7F§(param1) * _loc3_;
         var _loc6_:Number = §;c§.§0;§(param1) * _loc3_;
         this.§%!D§(0,this.§!Z§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §8a§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §0H§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§ !K§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§ !K§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§ !K§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§ !K§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §73§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §0H§;
         if(this.§'!C§)
         {
            _loc4_ = this.§ !K§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§ !K§[_loc3_] *= _loc4_;
            this.§ !K§[_loc3_ + 1] *= _loc4_;
            this.§ !K§[_loc3_ + 2] *= _loc4_;
            this.§ !K§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§ !K§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §%_§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§'!C§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§!Z§ * §0H§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§9i§(0);
               _loc6_ = !!this.§'!C§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§;!F§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§'!C§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§'!C§;
      }
      
      public function get §!k§() : int
      {
         return this.§!Z§;
      }
      
      public function set §!k§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §"%§ * §'1§ - this.§2G§.length;
         _loc4_ = this.§2G§.length;
         this.§2G§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§2G§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §'1§)
            {
               this.§2G§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§ !K§.fixed = false;
         _loc2_ = param1 * §0H§ - this.§ !K§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§ !K§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§ !K§.pop();
            _loc3_++;
         }
         this.§ !K§.fixed = true;
         this.§"u§.fixed = false;
         _loc2_ = param1 * §'!§ - this.§"u§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§"u§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§"u§.pop();
            _loc3_++;
         }
         this.§"u§.fixed = true;
         this.§!Z§ = param1;
      }
      
      public function get §%c§() : ByteArray
      {
         this.§2G§.position = 0;
         return this.§2G§;
      }
      
      public function get §6!§() : Vector.<Number>
      {
         return this.§ !K§;
      }
      
      public function get §0a§() : Vector.<Number>
      {
         return this.§"u§;
      }
   }
}
