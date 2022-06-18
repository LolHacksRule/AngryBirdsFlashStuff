package §9![§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §%!L§
   {
      
      public static const §[o§:int = 4;
      
      public static const §<'§:int = 2;
      
      public static const §1E§:int = 3;
      
      public static const §6!0§:int = 4;
      
      public static const §58§:int = 0;
      
      public static const §`!U§:int = 0;
      
      public static const §]<§:int = 0;
       
      
      private var §#f§:ByteArray;
      
      private var §,!2§:Vector.<Number>;
      
      private var set:Vector.<Number>;
      
      private var §4&§:Boolean;
      
      private var §5!G§:int;
      
      private var §7!^§:Vector.<Number>;
      
      public function §%!L§(param1:int, param2:Boolean = false)
      {
         this.§7!^§ = new Vector.<Number>(12,true);
         super();
         this.§#f§ = new ByteArray();
         this.§#f§.endian = Endian.LITTLE_ENDIAN;
         this.§#f§.length = param1 * §<'§ * §6!0§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §<'§)
         {
            this.§#f§.writeFloat(0);
            _loc3_++;
         }
         this.§,!2§ = new Vector.<Number>(param1 * §[o§,true);
         this.set = new Vector.<Number>(param1 * §1E§,true);
         this.§4&§ = param2;
         this.§5!G§ = param1;
      }
      
      public function clone() : §%!L§
      {
         var _loc1_:§%!L§ = new §%!L§(0,this.§4&§);
         _loc1_.§#f§.length = this.§#f§.length;
         _loc1_.§#f§.writeBytes(this.§#f§);
         _loc1_.§,!2§ = this.§,!2§.concat();
         _loc1_.§,!2§.fixed = true;
         _loc1_.set = this.set.concat();
         _loc1_.set.fixed = true;
         _loc1_.§5!G§ = this.§5!G§;
         return _loc1_;
      }
      
      public function copyTo(param1:§%!L§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.set;
         _loc6_ = this.§5!G§ * §1E§;
         _loc7_ = param2 * §1E§;
         if(param5)
         {
            param5.transformVectors(this.set,this.§7!^§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§7!^§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.set[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§#f§;
         _loc6_ = this.§5!G§ * §<'§ * §6!0§;
         _loc7_ = param2 * §<'§ * §6!0§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§#f§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§,!2§;
            _loc6_ = this.§5!G§ * §[o§;
            _loc7_ = param2 * §[o§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§,!2§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§5!G§)
               {
                  if(this.§4&§)
                  {
                     _loc13_ = this.§,!2§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§,!2§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§,!2§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§,!2§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§,!2§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§,!2§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§,!2§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§%!L§) : void
      {
         var _loc2_:int = this.§#f§.length;
         this.§#f§.length += param1.§#f§.length;
         this.§#f§.position = _loc2_;
         this.§#f§.writeBytes(param1.§#f§);
         this.§,!2§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§,!2§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§,!2§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§,!2§.fixed = true;
         this.set.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.set).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.set.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.set.fixed = true;
         this.§5!G§ += param1.§'!-§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §1E§;
         var _loc6_:*;
         this.set[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.set[_loc7_ = _loc5_++] = param3;
         this.set[_loc5_] = param4;
      }
      
      public function §@N§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §1E§;
         var _loc5_:*;
         this.set[_loc5_ = _loc4_++] = param2;
         this.set[_loc4_] = param3;
      }
      
      public function §;+§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §1E§;
         param2.x = this.set[_loc3_++];
         param2.y = this.set[_loc3_++];
         param2.z = this.set[_loc3_];
      }
      
      public function §<!K§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§4&§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §8i§.§]!]§(param2) * _loc4_;
         var _loc6_:Number = §8i§.§6,§(param2) * _loc4_;
         var _loc7_:Number = §8i§.§"!8§(param2) * _loc4_;
         this.§ !O§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function § !O§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §[o§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§,!2§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§,!2§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§,!2§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§,!2§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §'Y§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §[o§;
         var _loc4_:*;
         this.§,!2§[_loc4_ = _loc3_++] = this.§,!2§[_loc4_] * param2;
         var _loc5_:*;
         this.§,!2§[_loc5_ = _loc3_++] = this.§,!2§[_loc5_] * param2;
         var _loc6_:*;
         this.§,!2§[_loc6_ = _loc3_++] = this.§,!2§[_loc6_] * param2;
         this.§,!2§[_loc3_] *= param2;
      }
      
      public function §@§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §[o§;
         var _loc3_:Number = !!this.§4&§ ? Number(this.§,!2§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§,!2§[_loc2_] * _loc3_;
         _loc5_ = this.§,!2§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§,!2§[_loc2_ + 2] * _loc3_;
         return §8i§.§'9§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §&!J§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§4&§)
         {
            this.§<!K§(param1,this.§@§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §[o§ + 3;
            this.§,!2§[_loc3_] = param2;
         }
      }
      
      public function §4!5§(param1:int) : Number
      {
         var _loc2_:int = param1 * §[o§ + 3;
         return this.§,!2§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §<'§;
         this.§#f§.position = _loc4_ * §6!0§;
         this.§#f§.writeFloat(param2);
         this.§#f§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §<'§;
         this.§#f§.position = _loc3_ * §6!0§;
         param2.x = this.§#f§.readFloat();
         param2.y = this.§#f§.readFloat();
      }
      
      public function §]X§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §1E§;
         var _loc6_:*;
         this.set[_loc6_ = _loc5_++] = this.set[_loc6_] + param2;
         var _loc7_:*;
         this.set[_loc7_ = _loc5_++] = this.set[_loc7_] + param3;
         this.set[_loc5_] += param4;
      }
      
      public function §<!7§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §1E§;
         this.§7!^§[0] = this.set[_loc3_];
         this.§7!^§[1] = this.set[_loc3_ + 1];
         this.§7!^§[2] = this.set[_loc3_ + 2];
         param2.transformVectors(this.§7!^§,this.§7!^§);
         this.set[_loc3_] = this.§7!^§[0];
         this.set[_loc3_ + 1] = this.§7!^§[1];
         this.set[_loc3_ + 2] = this.§7!^§[2];
      }
      
      public function §%!8§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§4&§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §8i§.§]!]§(param1) * _loc3_;
         var _loc5_:Number = §8i§.§6,§(param1) * _loc3_;
         var _loc6_:Number = §8i§.§"!8§(param1) * _loc3_;
         this.§ !O§(0,this.§5!G§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §<%§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §[o§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§,!2§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§,!2§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§,!2§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§,!2§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §3!a§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §[o§;
         if(this.§4&§)
         {
            _loc4_ = this.§,!2§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§,!2§[_loc3_] *= _loc4_;
            this.§,!2§[_loc3_ + 1] *= _loc4_;
            this.§,!2§[_loc3_ + 2] *= _loc4_;
            this.§,!2§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§,!2§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §7T§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§4&§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§5!G§ * §[o§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§4!5§(0);
               _loc6_ = !!this.§4&§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§'Y§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§4&§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§4&§;
      }
      
      public function get §'!-§() : int
      {
         return this.§5!G§;
      }
      
      public function set §'!-§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §<'§ * §6!0§ - this.§#f§.length;
         _loc4_ = this.§#f§.length;
         this.§#f§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§#f§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §6!0§)
            {
               this.§#f§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§,!2§.fixed = false;
         _loc2_ = param1 * §[o§ - this.§,!2§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§,!2§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§,!2§.pop();
            _loc3_++;
         }
         this.§,!2§.fixed = true;
         this.set.fixed = false;
         _loc2_ = param1 * §1E§ - this.set.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.set.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.set.pop();
            _loc3_++;
         }
         this.set.fixed = true;
         this.§5!G§ = param1;
      }
      
      public function get §4a§() : ByteArray
      {
         this.§#f§.position = 0;
         return this.§#f§;
      }
      
      public function get §^!?§() : Vector.<Number>
      {
         return this.§,!2§;
      }
      
      public function get §<h§() : Vector.<Number>
      {
         return this.set;
      }
   }
}
