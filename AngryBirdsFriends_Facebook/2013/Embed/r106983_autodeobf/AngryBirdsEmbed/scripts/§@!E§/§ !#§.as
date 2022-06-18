package §@!E§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class § !#§
   {
      
      public static const § ^§:int = 4;
      
      public static const § !D§:int = 2;
      
      public static const §;'§:int = 3;
      
      public static const §>A§:int = 4;
      
      public static const §92§:int = 0;
      
      public static const §3!M§:int = 0;
      
      public static const §?P§:int = 0;
       
      
      private var §&^§:ByteArray;
      
      private var §2+§:Vector.<Number>;
      
      private var §0w§:Vector.<Number>;
      
      private var §%!2§:Boolean;
      
      private var § !H§:int;
      
      private var §%"§:Vector.<Number>;
      
      public function § !#§(param1:int, param2:Boolean = false)
      {
         this.§%"§ = new Vector.<Number>(12,true);
         super();
         this.§&^§ = new ByteArray();
         this.§&^§.endian = Endian.LITTLE_ENDIAN;
         this.§&^§.length = param1 * § !D§ * §>A§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * § !D§)
         {
            this.§&^§.writeFloat(0);
            _loc3_++;
         }
         this.§2+§ = new Vector.<Number>(param1 * § ^§,true);
         this.§0w§ = new Vector.<Number>(param1 * §;'§,true);
         this.§%!2§ = param2;
         this.§ !H§ = param1;
      }
      
      public function clone() : § !#§
      {
         var _loc1_:§ !#§ = new § !#§(0,this.§%!2§);
         _loc1_.§&^§.length = this.§&^§.length;
         _loc1_.§&^§.writeBytes(this.§&^§);
         _loc1_.§2+§ = this.§2+§.concat();
         _loc1_.§2+§.fixed = true;
         _loc1_.§0w§ = this.§0w§.concat();
         _loc1_.§0w§.fixed = true;
         _loc1_.§ !H§ = this.§ !H§;
         return _loc1_;
      }
      
      public function copyTo(param1:§ !#§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§0w§;
         _loc6_ = this.§ !H§ * §;'§;
         _loc7_ = param2 * §;'§;
         if(param5)
         {
            param5.transformVectors(this.§0w§,this.§%"§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§%"§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§0w§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§&^§;
         _loc6_ = this.§ !H§ * § !D§ * §>A§;
         _loc7_ = param2 * § !D§ * §>A§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§&^§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§2+§;
            _loc6_ = this.§ !H§ * § ^§;
            _loc7_ = param2 * § ^§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§2+§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§ !H§)
               {
                  if(this.§%!2§)
                  {
                     _loc13_ = this.§2+§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§2+§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§2+§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§2+§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§2+§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§2+§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§2+§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§ !#§) : void
      {
         var _loc2_:int = this.§&^§.length;
         this.§&^§.length += param1.§&^§.length;
         this.§&^§.position = _loc2_;
         this.§&^§.writeBytes(param1.§&^§);
         this.§2+§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§2+§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§2+§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§2+§.fixed = true;
         this.§0w§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§0w§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§0w§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§0w§.fixed = true;
         this.§ !H§ += param1.§1r§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §;'§;
         var _loc6_:*;
         this.§0w§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§0w§[_loc7_ = _loc5_++] = param3;
         this.§0w§[_loc5_] = param4;
      }
      
      public function §2!1§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §;'§;
         var _loc5_:*;
         this.§0w§[_loc5_ = _loc4_++] = param2;
         this.§0w§[_loc4_] = param3;
      }
      
      public function §-z§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §;'§;
         param2.x = this.§0w§[_loc3_++];
         param2.y = this.§0w§[_loc3_++];
         param2.z = this.§0w§[_loc3_];
      }
      
      public function §>!4§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§%!2§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §?!8§.§^$§(param2) * _loc4_;
         var _loc6_:Number = §?!8§.§,9§(param2) * _loc4_;
         var _loc7_:Number = §?!8§.§"!"§(param2) * _loc4_;
         this.§'!E§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §'!E§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * § ^§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§2+§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§2+§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§2+§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§2+§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §1§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * § ^§;
         var _loc4_:*;
         this.§2+§[_loc4_ = _loc3_++] = this.§2+§[_loc4_] * param2;
         var _loc5_:*;
         this.§2+§[_loc5_ = _loc3_++] = this.§2+§[_loc5_] * param2;
         var _loc6_:*;
         this.§2+§[_loc6_ = _loc3_++] = this.§2+§[_loc6_] * param2;
         this.§2+§[_loc3_] *= param2;
      }
      
      public function §]i§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * § ^§;
         var _loc3_:Number = !!this.§%!2§ ? Number(this.§2+§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§2+§[_loc2_] * _loc3_;
         _loc5_ = this.§2+§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§2+§[_loc2_ + 2] * _loc3_;
         return §?!8§.§ !M§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §'`§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§%!2§)
         {
            this.§>!4§(param1,this.§]i§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * § ^§ + 3;
            this.§2+§[_loc3_] = param2;
         }
      }
      
      public function §<!H§(param1:int) : Number
      {
         var _loc2_:int = param1 * § ^§ + 3;
         return this.§2+§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * § !D§;
         this.§&^§.position = _loc4_ * §>A§;
         this.§&^§.writeFloat(param2);
         this.§&^§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * § !D§;
         this.§&^§.position = _loc3_ * §>A§;
         param2.x = this.§&^§.readFloat();
         param2.y = this.§&^§.readFloat();
      }
      
      public function §2O§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §;'§;
         var _loc6_:*;
         this.§0w§[_loc6_ = _loc5_++] = this.§0w§[_loc6_] + param2;
         var _loc7_:*;
         this.§0w§[_loc7_ = _loc5_++] = this.§0w§[_loc7_] + param3;
         this.§0w§[_loc5_] += param4;
      }
      
      public function §6$§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §;'§;
         this.§%"§[0] = this.§0w§[_loc3_];
         this.§%"§[1] = this.§0w§[_loc3_ + 1];
         this.§%"§[2] = this.§0w§[_loc3_ + 2];
         param2.transformVectors(this.§%"§,this.§%"§);
         this.§0w§[_loc3_] = this.§%"§[0];
         this.§0w§[_loc3_ + 1] = this.§%"§[1];
         this.§0w§[_loc3_ + 2] = this.§%"§[2];
      }
      
      public function §?E§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§%!2§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §?!8§.§^$§(param1) * _loc3_;
         var _loc5_:Number = §?!8§.§,9§(param1) * _loc3_;
         var _loc6_:Number = §?!8§.§"!"§(param1) * _loc3_;
         this.§'!E§(0,this.§ !H§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §4!H§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * § ^§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§2+§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§2+§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§2+§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§2+§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §7§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * § ^§;
         if(this.§%!2§)
         {
            _loc4_ = this.§2+§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§2+§[_loc3_] *= _loc4_;
            this.§2+§[_loc3_ + 1] *= _loc4_;
            this.§2+§[_loc3_ + 2] *= _loc4_;
            this.§2+§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§2+§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §[-§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§%!2§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§ !H§ * § ^§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§<!H§(0);
               _loc6_ = !!this.§%!2§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§1§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§%!2§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§%!2§;
      }
      
      public function get §1r§() : int
      {
         return this.§ !H§;
      }
      
      public function set §1r§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * § !D§ * §>A§ - this.§&^§.length;
         _loc4_ = this.§&^§.length;
         this.§&^§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§&^§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §>A§)
            {
               this.§&^§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§2+§.fixed = false;
         _loc2_ = param1 * § ^§ - this.§2+§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§2+§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§2+§.pop();
            _loc3_++;
         }
         this.§2+§.fixed = true;
         this.§0w§.fixed = false;
         _loc2_ = param1 * §;'§ - this.§0w§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§0w§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§0w§.pop();
            _loc3_++;
         }
         this.§0w§.fixed = true;
         this.§ !H§ = param1;
      }
      
      public function get §;1§() : ByteArray
      {
         this.§&^§.position = 0;
         return this.§&^§;
      }
      
      public function get §@g§() : Vector.<Number>
      {
         return this.§2+§;
      }
      
      public function get §6!M§() : Vector.<Number>
      {
         return this.§0w§;
      }
   }
}
