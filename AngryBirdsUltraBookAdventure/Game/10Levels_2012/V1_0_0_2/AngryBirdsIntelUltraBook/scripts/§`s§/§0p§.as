package §`s§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §0p§
   {
      
      public static const §0!Q§:int = 4;
      
      public static const §1!0§:int = 2;
      
      public static const §<h§:int = 3;
      
      public static const §?c§:int = 4;
      
      public static const §[!w§:int = 0;
      
      public static const §"!<§:int = 0;
      
      public static const §;Z§:int = 0;
       
      
      private var §+!F§:ByteArray;
      
      private var §=!2§:Vector.<Number>;
      
      private var § !U§:Vector.<Number>;
      
      private var §<!h§:Boolean;
      
      private var § !l§:int;
      
      private var §"!y§:Vector.<Number>;
      
      public function §0p§(param1:int, param2:Boolean = false)
      {
         this.§"!y§ = new Vector.<Number>(12,true);
         super();
         this.§+!F§ = new ByteArray();
         this.§+!F§.endian = Endian.LITTLE_ENDIAN;
         this.§+!F§.length = param1 * §1!0§ * §?c§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §1!0§)
         {
            this.§+!F§.writeFloat(0);
            _loc3_++;
         }
         this.§=!2§ = new Vector.<Number>(param1 * §0!Q§,true);
         this.§ !U§ = new Vector.<Number>(param1 * §<h§,true);
         this.§<!h§ = param2;
         this.§ !l§ = param1;
      }
      
      public function clone() : §0p§
      {
         var _loc1_:§0p§ = new §0p§(0,this.§<!h§);
         _loc1_.§+!F§.length = this.§+!F§.length;
         _loc1_.§+!F§.writeBytes(this.§+!F§);
         _loc1_.§=!2§ = this.§=!2§.concat();
         _loc1_.§=!2§.fixed = true;
         _loc1_.§ !U§ = this.§ !U§.concat();
         _loc1_.§ !U§.fixed = true;
         _loc1_.§ !l§ = this.§ !l§;
         return _loc1_;
      }
      
      public function copyTo(param1:§0p§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§ !U§;
         _loc6_ = this.§ !l§ * §<h§;
         _loc7_ = param2 * §<h§;
         if(param5)
         {
            param5.transformVectors(this.§ !U§,this.§"!y§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§"!y§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§ !U§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§+!F§;
         _loc6_ = this.§ !l§ * §1!0§ * §?c§;
         _loc7_ = param2 * §1!0§ * §?c§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§+!F§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§=!2§;
            _loc6_ = this.§ !l§ * §0!Q§;
            _loc7_ = param2 * §0!Q§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§=!2§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§ !l§)
               {
                  if(this.§<!h§)
                  {
                     _loc13_ = this.§=!2§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§=!2§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§=!2§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§=!2§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§=!2§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§=!2§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§=!2§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§0p§) : void
      {
         var _loc2_:int = this.§+!F§.length;
         this.§+!F§.length += param1.§+!F§.length;
         this.§+!F§.position = _loc2_;
         this.§+!F§.writeBytes(param1.§+!F§);
         this.§=!2§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§=!2§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§=!2§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§=!2§.fixed = true;
         this.§ !U§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§ !U§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§ !U§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§ !U§.fixed = true;
         this.§ !l§ += param1.§<`§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §<h§;
         var _loc6_:*;
         this.§ !U§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§ !U§[_loc7_ = _loc5_++] = param3;
         this.§ !U§[_loc5_] = param4;
      }
      
      public function §^L§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §<h§;
         var _loc5_:*;
         this.§ !U§[_loc5_ = _loc4_++] = param2;
         this.§ !U§[_loc4_] = param3;
      }
      
      public function §"!S§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §<h§;
         param2.x = this.§ !U§[_loc3_++];
         param2.y = this.§ !U§[_loc3_++];
         param2.z = this.§ !U§[_loc3_];
      }
      
      public function §1f§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§<!h§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = § z§.§6!q§(param2) * _loc4_;
         var _loc6_:Number = § z§.§"5§(param2) * _loc4_;
         var _loc7_:Number = § z§.§9!,§(param2) * _loc4_;
         this.§<!$§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §<!$§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §0!Q§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§=!2§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§=!2§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§=!2§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§=!2§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §+<§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §0!Q§;
         var _loc4_:*;
         this.§=!2§[_loc4_ = _loc3_++] = this.§=!2§[_loc4_] * param2;
         var _loc5_:*;
         this.§=!2§[_loc5_ = _loc3_++] = this.§=!2§[_loc5_] * param2;
         var _loc6_:*;
         this.§=!2§[_loc6_ = _loc3_++] = this.§=!2§[_loc6_] * param2;
         this.§=!2§[_loc3_] *= param2;
      }
      
      public function §6!b§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §0!Q§;
         var _loc3_:Number = !!this.§<!h§ ? Number(this.§=!2§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§=!2§[_loc2_] * _loc3_;
         _loc5_ = this.§=!2§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§=!2§[_loc2_ + 2] * _loc3_;
         return § z§.§0d§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §]f§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§<!h§)
         {
            this.§1f§(param1,this.§6!b§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §0!Q§ + 3;
            this.§=!2§[_loc3_] = param2;
         }
      }
      
      public function §<^§(param1:int) : Number
      {
         var _loc2_:int = param1 * §0!Q§ + 3;
         return this.§=!2§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §1!0§;
         this.§+!F§.position = _loc4_ * §?c§;
         this.§+!F§.writeFloat(param2);
         this.§+!F§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §1!0§;
         this.§+!F§.position = _loc3_ * §?c§;
         param2.x = this.§+!F§.readFloat();
         param2.y = this.§+!F§.readFloat();
      }
      
      public function §=c§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §<h§;
         var _loc6_:*;
         this.§ !U§[_loc6_ = _loc5_++] = this.§ !U§[_loc6_] + param2;
         var _loc7_:*;
         this.§ !U§[_loc7_ = _loc5_++] = this.§ !U§[_loc7_] + param3;
         this.§ !U§[_loc5_] += param4;
      }
      
      public function §-!N§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §<h§;
         this.§"!y§[0] = this.§ !U§[_loc3_];
         this.§"!y§[1] = this.§ !U§[_loc3_ + 1];
         this.§"!y§[2] = this.§ !U§[_loc3_ + 2];
         param2.transformVectors(this.§"!y§,this.§"!y§);
         this.§ !U§[_loc3_] = this.§"!y§[0];
         this.§ !U§[_loc3_ + 1] = this.§"!y§[1];
         this.§ !U§[_loc3_ + 2] = this.§"!y§[2];
      }
      
      public function §4!^§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§<!h§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = § z§.§6!q§(param1) * _loc3_;
         var _loc5_:Number = § z§.§"5§(param1) * _loc3_;
         var _loc6_:Number = § z§.§9!,§(param1) * _loc3_;
         this.§<!$§(0,this.§ !l§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §5c§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §0!Q§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§=!2§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§=!2§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§=!2§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§=!2§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §;Q§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §0!Q§;
         if(this.§<!h§)
         {
            _loc4_ = this.§=!2§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§=!2§[_loc3_] *= _loc4_;
            this.§=!2§[_loc3_ + 1] *= _loc4_;
            this.§=!2§[_loc3_ + 2] *= _loc4_;
            this.§=!2§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§=!2§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§<!h§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§ !l§ * §0!Q§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§<^§(0);
               _loc6_ = !!this.§<!h§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§+<§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§<!h§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§<!h§;
      }
      
      public function get §<`§() : int
      {
         return this.§ !l§;
      }
      
      public function set §<`§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §1!0§ * §?c§ - this.§+!F§.length;
         _loc4_ = this.§+!F§.length;
         this.§+!F§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§+!F§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §?c§)
            {
               this.§+!F§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§=!2§.fixed = false;
         _loc2_ = param1 * §0!Q§ - this.§=!2§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§=!2§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§=!2§.pop();
            _loc3_++;
         }
         this.§=!2§.fixed = true;
         this.§ !U§.fixed = false;
         _loc2_ = param1 * §<h§ - this.§ !U§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§ !U§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§ !U§.pop();
            _loc3_++;
         }
         this.§ !U§.fixed = true;
         this.§ !l§ = param1;
      }
      
      public function get §2!e§() : ByteArray
      {
         this.§+!F§.position = 0;
         return this.§+!F§;
      }
      
      public function get §-=§() : Vector.<Number>
      {
         return this.§=!2§;
      }
      
      public function get §!!=§() : Vector.<Number>
      {
         return this.§ !U§;
      }
   }
}
