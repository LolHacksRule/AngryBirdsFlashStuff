package §%Q§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §`j§
   {
      
      public static const §@!b§:int = 4;
      
      public static const §%!T§:int = 2;
      
      public static const §0f§:int = 3;
      
      public static const §=!=§:int = 4;
      
      public static const §^!2§:int = 0;
      
      public static const §8`§:int = 0;
      
      public static const §+_§:int = 0;
       
      
      private var §66§:ByteArray;
      
      private var §0!P§:Vector.<Number>;
      
      private var §9w§:Vector.<Number>;
      
      private var §2"§:Boolean;
      
      private var §2!E§:int;
      
      private var §"#§:Vector.<Number>;
      
      public function §`j§(param1:int, param2:Boolean = false)
      {
         this.§"#§ = new Vector.<Number>(12,true);
         super();
         this.§66§ = new ByteArray();
         this.§66§.endian = Endian.LITTLE_ENDIAN;
         this.§66§.length = param1 * §%!T§ * §=!=§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §%!T§)
         {
            this.§66§.writeFloat(0);
            _loc3_++;
         }
         this.§0!P§ = new Vector.<Number>(param1 * §@!b§,true);
         this.§9w§ = new Vector.<Number>(param1 * §0f§,true);
         this.§2"§ = param2;
         this.§2!E§ = param1;
      }
      
      public function clone() : §`j§
      {
         var _loc1_:§`j§ = new §`j§(0,this.§2"§);
         _loc1_.§66§.length = this.§66§.length;
         _loc1_.§66§.writeBytes(this.§66§);
         _loc1_.§0!P§ = this.§0!P§.concat();
         _loc1_.§0!P§.fixed = true;
         _loc1_.§9w§ = this.§9w§.concat();
         _loc1_.§9w§.fixed = true;
         _loc1_.§2!E§ = this.§2!E§;
         return _loc1_;
      }
      
      public function copyTo(param1:§`j§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§9w§;
         _loc6_ = this.§2!E§ * §0f§;
         _loc7_ = param2 * §0f§;
         if(param5)
         {
            param5.transformVectors(this.§9w§,this.§"#§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§"#§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§9w§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§66§;
         _loc6_ = this.§2!E§ * §%!T§ * §=!=§;
         _loc7_ = param2 * §%!T§ * §=!=§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§66§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§0!P§;
            _loc6_ = this.§2!E§ * §@!b§;
            _loc7_ = param2 * §@!b§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§0!P§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§2!E§)
               {
                  if(this.§2"§)
                  {
                     _loc13_ = this.§0!P§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§0!P§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§0!P§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§0!P§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§0!P§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§0!P§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§0!P§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§`j§) : void
      {
         var _loc2_:int = this.§66§.length;
         this.§66§.length += param1.§66§.length;
         this.§66§.position = _loc2_;
         this.§66§.writeBytes(param1.§66§);
         this.§0!P§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§0!P§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§0!P§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§0!P§.fixed = true;
         this.§9w§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§9w§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§9w§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§9w§.fixed = true;
         this.§2!E§ += param1.§8R§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §0f§;
         var _loc6_:*;
         this.§9w§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§9w§[_loc7_ = _loc5_++] = param3;
         this.§9w§[_loc5_] = param4;
      }
      
      public function §@&§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §0f§;
         var _loc5_:*;
         this.§9w§[_loc5_ = _loc4_++] = param2;
         this.§9w§[_loc4_] = param3;
      }
      
      public function §2a§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §0f§;
         param2.x = this.§9w§[_loc3_++];
         param2.y = this.§9w§[_loc3_++];
         param2.z = this.§9w§[_loc3_];
      }
      
      public function §"7§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§2"§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §`!C§.§,!"§(param2) * _loc4_;
         var _loc6_:Number = §`!C§.§1f§(param2) * _loc4_;
         var _loc7_:Number = §`!C§.§]!Y§(param2) * _loc4_;
         this.§2-§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §2-§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §@!b§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§0!P§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§0!P§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§0!P§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§0!P§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §1P§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §@!b§;
         var _loc4_:*;
         this.§0!P§[_loc4_ = _loc3_++] = this.§0!P§[_loc4_] * param2;
         var _loc5_:*;
         this.§0!P§[_loc5_ = _loc3_++] = this.§0!P§[_loc5_] * param2;
         var _loc6_:*;
         this.§0!P§[_loc6_ = _loc3_++] = this.§0!P§[_loc6_] * param2;
         this.§0!P§[_loc3_] *= param2;
      }
      
      public function §?]§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §@!b§;
         var _loc3_:Number = !!this.§2"§ ? Number(this.§0!P§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§0!P§[_loc2_] * _loc3_;
         _loc5_ = this.§0!P§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§0!P§[_loc2_ + 2] * _loc3_;
         return §`!C§.§>u§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §9v§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§2"§)
         {
            this.§"7§(param1,this.§?]§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §@!b§ + 3;
            this.§0!P§[_loc3_] = param2;
         }
      }
      
      public function §8a§(param1:int) : Number
      {
         var _loc2_:int = param1 * §@!b§ + 3;
         return this.§0!P§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §%!T§;
         this.§66§.position = _loc4_ * §=!=§;
         this.§66§.writeFloat(param2);
         this.§66§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §%!T§;
         this.§66§.position = _loc3_ * §=!=§;
         param2.x = this.§66§.readFloat();
         param2.y = this.§66§.readFloat();
      }
      
      public function §?!]§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §0f§;
         var _loc6_:*;
         this.§9w§[_loc6_ = _loc5_++] = this.§9w§[_loc6_] + param2;
         var _loc7_:*;
         this.§9w§[_loc7_ = _loc5_++] = this.§9w§[_loc7_] + param3;
         this.§9w§[_loc5_] += param4;
      }
      
      public function §`#§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §0f§;
         this.§"#§[0] = this.§9w§[_loc3_];
         this.§"#§[1] = this.§9w§[_loc3_ + 1];
         this.§"#§[2] = this.§9w§[_loc3_ + 2];
         param2.transformVectors(this.§"#§,this.§"#§);
         this.§9w§[_loc3_] = this.§"#§[0];
         this.§9w§[_loc3_ + 1] = this.§"#§[1];
         this.§9w§[_loc3_ + 2] = this.§"#§[2];
      }
      
      public function §]$§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§2"§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §`!C§.§,!"§(param1) * _loc3_;
         var _loc5_:Number = §`!C§.§1f§(param1) * _loc3_;
         var _loc6_:Number = §`!C§.§]!Y§(param1) * _loc3_;
         this.§2-§(0,this.§2!E§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §,8§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §@!b§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§0!P§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§0!P§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§0!P§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§0!P§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §'!H§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §@!b§;
         if(this.§2"§)
         {
            _loc4_ = this.§0!P§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§0!P§[_loc3_] *= _loc4_;
            this.§0!P§[_loc3_ + 1] *= _loc4_;
            this.§0!P§[_loc3_ + 2] *= _loc4_;
            this.§0!P§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§0!P§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§2"§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§2!E§ * §@!b§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§8a§(0);
               _loc6_ = !!this.§2"§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§1P§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§2"§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§2"§;
      }
      
      public function get §8R§() : int
      {
         return this.§2!E§;
      }
      
      public function set §8R§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §%!T§ * §=!=§ - this.§66§.length;
         _loc4_ = this.§66§.length;
         this.§66§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§66§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §=!=§)
            {
               this.§66§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§0!P§.fixed = false;
         _loc2_ = param1 * §@!b§ - this.§0!P§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§0!P§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§0!P§.pop();
            _loc3_++;
         }
         this.§0!P§.fixed = true;
         this.§9w§.fixed = false;
         _loc2_ = param1 * §0f§ - this.§9w§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§9w§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§9w§.pop();
            _loc3_++;
         }
         this.§9w§.fixed = true;
         this.§2!E§ = param1;
      }
      
      public function get §;!K§() : ByteArray
      {
         this.§66§.position = 0;
         return this.§66§;
      }
      
      public function get §"H§() : Vector.<Number>
      {
         return this.§0!P§;
      }
      
      public function get §6e§() : Vector.<Number>
      {
         return this.§9w§;
      }
   }
}
