package §[4§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §0!r§
   {
      
      public static const §%!>§:int = 4;
      
      public static const § !j§:int = 2;
      
      public static const §3K§:int = 3;
      
      public static const §5<§:int = 4;
      
      public static const §%!<§:int = 0;
      
      public static const §"q§:int = 0;
      
      public static const § ]§:int = 0;
       
      
      private var §!9§:ByteArray;
      
      private var §>"?§:Vector.<Number>;
      
      private var §+""§:Vector.<Number>;
      
      private var §%"3§:Boolean;
      
      private var §,T§:int;
      
      private var §7!d§:Vector.<Number>;
      
      public function §0!r§(param1:int, param2:Boolean = false)
      {
         this.§7!d§ = new Vector.<Number>(12,true);
         super();
         this.§!9§ = new ByteArray();
         this.§!9§.endian = Endian.LITTLE_ENDIAN;
         this.§!9§.length = param1 * § !j§ * §5<§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * § !j§)
         {
            this.§!9§.writeFloat(0);
            _loc3_++;
         }
         this.§>"?§ = new Vector.<Number>(param1 * §%!>§,true);
         this.§+""§ = new Vector.<Number>(param1 * §3K§,true);
         this.§%"3§ = param2;
         this.§,T§ = param1;
      }
      
      public function clone() : §0!r§
      {
         var _loc1_:§0!r§ = new §0!r§(0,this.§%"3§);
         _loc1_.§!9§.length = this.§!9§.length;
         _loc1_.§!9§.writeBytes(this.§!9§);
         _loc1_.§>"?§ = this.§>"?§.concat();
         _loc1_.§>"?§.fixed = true;
         _loc1_.§+""§ = this.§+""§.concat();
         _loc1_.§+""§.fixed = true;
         _loc1_.§,T§ = this.§,T§;
         return _loc1_;
      }
      
      public function copyTo(param1:§0!r§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§+""§;
         _loc6_ = this.§,T§ * §3K§;
         _loc7_ = param2 * §3K§;
         if(param5)
         {
            param5.transformVectors(this.§+""§,this.§7!d§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§7!d§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§+""§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§!9§;
         _loc6_ = this.§,T§ * § !j§ * §5<§;
         _loc7_ = param2 * § !j§ * §5<§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§!9§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§>"?§;
            _loc6_ = this.§,T§ * §%!>§;
            _loc7_ = param2 * §%!>§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§>"?§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§,T§)
               {
                  if(this.§%"3§)
                  {
                     _loc13_ = this.§>"?§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§>"?§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§>"?§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§>"?§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§>"?§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§>"?§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§>"?§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§0!r§) : void
      {
         var _loc2_:int = this.§!9§.length;
         this.§!9§.length += param1.§!9§.length;
         this.§!9§.position = _loc2_;
         this.§!9§.writeBytes(param1.§!9§);
         this.§>"?§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§>"?§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§>"?§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§>"?§.fixed = true;
         this.§+""§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§+""§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§+""§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§+""§.fixed = true;
         this.§,T§ += param1.§^-§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §3K§;
         var _loc6_:*;
         this.§+""§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§+""§[_loc7_ = _loc5_++] = param3;
         this.§+""§[_loc5_] = param4;
      }
      
      public function §'!@§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §3K§;
         var _loc5_:*;
         this.§+""§[_loc5_ = _loc4_++] = param2;
         this.§+""§[_loc4_] = param3;
      }
      
      public function getPosition(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §3K§;
         param2.x = this.§+""§[_loc3_++];
         param2.y = this.§+""§[_loc3_++];
         param2.z = this.§+""§[_loc3_];
      }
      
      public function §>K§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§%"3§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §1R§.§7!§(param2) * _loc4_;
         var _loc6_:Number = §1R§.§&_§(param2) * _loc4_;
         var _loc7_:Number = §1R§.§&^§(param2) * _loc4_;
         this.§4i§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §4i§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §%!>§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§>"?§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§>"?§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§>"?§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§>"?§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §^3§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §%!>§;
         var _loc4_:*;
         this.§>"?§[_loc4_ = _loc3_++] = this.§>"?§[_loc4_] * param2;
         var _loc5_:*;
         this.§>"?§[_loc5_ = _loc3_++] = this.§>"?§[_loc5_] * param2;
         var _loc6_:*;
         this.§>"?§[_loc6_ = _loc3_++] = this.§>"?§[_loc6_] * param2;
         this.§>"?§[_loc3_] *= param2;
      }
      
      public function §1G§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §%!>§;
         var _loc3_:Number = !!this.§%"3§ ? Number(this.§>"?§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§>"?§[_loc2_] * _loc3_;
         _loc5_ = this.§>"?§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§>"?§[_loc2_ + 2] * _loc3_;
         return §1R§.§8!Q§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §"!i§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§%"3§)
         {
            this.§>K§(param1,this.§1G§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §%!>§ + 3;
            this.§>"?§[_loc3_] = param2;
         }
      }
      
      public function §;"1§(param1:int) : Number
      {
         var _loc2_:int = param1 * §%!>§ + 3;
         return this.§>"?§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * § !j§;
         this.§!9§.position = _loc4_ * §5<§;
         this.§!9§.writeFloat(param2);
         this.§!9§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * § !j§;
         this.§!9§.position = _loc3_ * §5<§;
         param2.x = this.§!9§.readFloat();
         param2.y = this.§!9§.readFloat();
      }
      
      public function §'!H§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §3K§;
         var _loc6_:*;
         this.§+""§[_loc6_ = _loc5_++] = this.§+""§[_loc6_] + param2;
         var _loc7_:*;
         this.§+""§[_loc7_ = _loc5_++] = this.§+""§[_loc7_] + param3;
         this.§+""§[_loc5_] += param4;
      }
      
      public function §>Y§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §3K§;
         this.§7!d§[0] = this.§+""§[_loc3_];
         this.§7!d§[1] = this.§+""§[_loc3_ + 1];
         this.§7!d§[2] = this.§+""§[_loc3_ + 2];
         param2.transformVectors(this.§7!d§,this.§7!d§);
         this.§+""§[_loc3_] = this.§7!d§[0];
         this.§+""§[_loc3_ + 1] = this.§7!d§[1];
         this.§+""§[_loc3_ + 2] = this.§7!d§[2];
      }
      
      public function §@n§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§%"3§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §1R§.§7!§(param1) * _loc3_;
         var _loc5_:Number = §1R§.§&_§(param1) * _loc3_;
         var _loc6_:Number = §1R§.§&^§(param1) * _loc3_;
         this.§4i§(0,this.§,T§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §6s§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §%!>§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§>"?§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§>"?§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§>"?§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§>"?§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §`!d§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §%!>§;
         if(this.§%"3§)
         {
            _loc4_ = this.§>"?§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§>"?§[_loc3_] *= _loc4_;
            this.§>"?§[_loc3_ + 1] *= _loc4_;
            this.§>"?§[_loc3_ + 2] *= _loc4_;
            this.§>"?§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§>"?§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §4![§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§%"3§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§,T§ * §%!>§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§;"1§(0);
               _loc6_ = !!this.§%"3§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§^3§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§%"3§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§%"3§;
      }
      
      public function get §^-§() : int
      {
         return this.§,T§;
      }
      
      public function set §^-§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * § !j§ * §5<§ - this.§!9§.length;
         _loc4_ = this.§!9§.length;
         this.§!9§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§!9§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §5<§)
            {
               this.§!9§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§>"?§.fixed = false;
         _loc2_ = param1 * §%!>§ - this.§>"?§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§>"?§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§>"?§.pop();
            _loc3_++;
         }
         this.§>"?§.fixed = true;
         this.§+""§.fixed = false;
         _loc2_ = param1 * §3K§ - this.§+""§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§+""§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§+""§.pop();
            _loc3_++;
         }
         this.§+""§.fixed = true;
         this.§,T§ = param1;
      }
      
      public function get §%!C§() : ByteArray
      {
         this.§!9§.position = 0;
         return this.§!9§;
      }
      
      public function get §4!]§() : Vector.<Number>
      {
         return this.§>"?§;
      }
      
      public function get §@V§() : Vector.<Number>
      {
         return this.§+""§;
      }
   }
}
