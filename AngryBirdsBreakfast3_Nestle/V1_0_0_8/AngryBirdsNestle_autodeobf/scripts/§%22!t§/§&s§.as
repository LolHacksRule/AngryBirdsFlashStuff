package §"!t§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §&s§
   {
      
      public static const §"!?§:int = 4;
      
      public static const §-!o§:int = 2;
      
      public static const §false§:int = 3;
      
      public static const §9j§:int = 4;
      
      public static const §"^§:int = 0;
      
      public static const §0"§:int = 0;
      
      public static const §7R§:int = 0;
       
      
      private var §!"0§:ByteArray;
      
      private var §;!#§:Vector.<Number>;
      
      private var §[w§:Vector.<Number>;
      
      private var § !8§:Boolean;
      
      private var §5l§:int;
      
      private var §1j§:Vector.<Number>;
      
      public function §&s§(param1:int, param2:Boolean = false)
      {
         this.§1j§ = new Vector.<Number>(12,true);
         super();
         this.§!"0§ = new ByteArray();
         this.§!"0§.endian = Endian.LITTLE_ENDIAN;
         this.§!"0§.length = param1 * §-!o§ * §9j§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §-!o§)
         {
            this.§!"0§.writeFloat(0);
            _loc3_++;
         }
         this.§;!#§ = new Vector.<Number>(param1 * §"!?§,true);
         this.§[w§ = new Vector.<Number>(param1 * §false§,true);
         this.§ !8§ = param2;
         this.§5l§ = param1;
      }
      
      public function clone() : §&s§
      {
         var _loc1_:§&s§ = new §&s§(0,this.§ !8§);
         _loc1_.§!"0§.length = this.§!"0§.length;
         _loc1_.§!"0§.writeBytes(this.§!"0§);
         _loc1_.§;!#§ = this.§;!#§.concat();
         _loc1_.§;!#§.fixed = true;
         _loc1_.§[w§ = this.§[w§.concat();
         _loc1_.§[w§.fixed = true;
         _loc1_.§5l§ = this.§5l§;
         return _loc1_;
      }
      
      public function copyTo(param1:§&s§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§[w§;
         _loc6_ = this.§5l§ * §false§;
         _loc7_ = param2 * §false§;
         if(param5)
         {
            param5.transformVectors(this.§[w§,this.§1j§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§1j§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§[w§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§!"0§;
         _loc6_ = this.§5l§ * §-!o§ * §9j§;
         _loc7_ = param2 * §-!o§ * §9j§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§!"0§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§;!#§;
            _loc6_ = this.§5l§ * §"!?§;
            _loc7_ = param2 * §"!?§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§;!#§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§5l§)
               {
                  if(this.§ !8§)
                  {
                     _loc13_ = this.§;!#§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§;!#§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§;!#§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§;!#§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§;!#§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§;!#§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§;!#§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§&s§) : void
      {
         var _loc2_:int = this.§!"0§.length;
         this.§!"0§.length += param1.§!"0§.length;
         this.§!"0§.position = _loc2_;
         this.§!"0§.writeBytes(param1.§!"0§);
         this.§;!#§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§;!#§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§;!#§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§;!#§.fixed = true;
         this.§[w§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§[w§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§[w§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§[w§.fixed = true;
         this.§5l§ += param1.§-!l§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §false§;
         var _loc6_:*;
         this.§[w§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§[w§[_loc7_ = _loc5_++] = param3;
         this.§[w§[_loc5_] = param4;
      }
      
      public function §&w§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §false§;
         var _loc5_:*;
         this.§[w§[_loc5_ = _loc4_++] = param2;
         this.§[w§[_loc4_] = param3;
      }
      
      public function §-W§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §false§;
         param2.x = this.§[w§[_loc3_++];
         param2.y = this.§[w§[_loc3_++];
         param2.z = this.§[w§[_loc3_];
      }
      
      public function §3!K§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§ !8§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §,!r§.§ !0§(param2) * _loc4_;
         var _loc6_:Number = §,!r§.§2!O§(param2) * _loc4_;
         var _loc7_:Number = §,!r§.§0"'§(param2) * _loc4_;
         this.§%j§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §%j§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §"!?§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§;!#§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§;!#§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§;!#§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§;!#§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §=!9§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §"!?§;
         var _loc4_:*;
         this.§;!#§[_loc4_ = _loc3_++] = this.§;!#§[_loc4_] * param2;
         var _loc5_:*;
         this.§;!#§[_loc5_ = _loc3_++] = this.§;!#§[_loc5_] * param2;
         var _loc6_:*;
         this.§;!#§[_loc6_ = _loc3_++] = this.§;!#§[_loc6_] * param2;
         this.§;!#§[_loc3_] *= param2;
      }
      
      public function §<l§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §"!?§;
         var _loc3_:Number = !!this.§ !8§ ? Number(this.§;!#§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§;!#§[_loc2_] * _loc3_;
         _loc5_ = this.§;!#§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§;!#§[_loc2_ + 2] * _loc3_;
         return §,!r§.§else §(_loc4_,_loc5_,_loc6_);
      }
      
      public function §+b§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§ !8§)
         {
            this.§3!K§(param1,this.§<l§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §"!?§ + 3;
            this.§;!#§[_loc3_] = param2;
         }
      }
      
      public function §+"'§(param1:int) : Number
      {
         var _loc2_:int = param1 * §"!?§ + 3;
         return this.§;!#§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §-!o§;
         this.§!"0§.position = _loc4_ * §9j§;
         this.§!"0§.writeFloat(param2);
         this.§!"0§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §-!o§;
         this.§!"0§.position = _loc3_ * §9j§;
         param2.x = this.§!"0§.readFloat();
         param2.y = this.§!"0§.readFloat();
      }
      
      public function §>y§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §false§;
         var _loc6_:*;
         this.§[w§[_loc6_ = _loc5_++] = this.§[w§[_loc6_] + param2;
         var _loc7_:*;
         this.§[w§[_loc7_ = _loc5_++] = this.§[w§[_loc7_] + param3;
         this.§[w§[_loc5_] += param4;
      }
      
      public function §"!E§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §false§;
         this.§1j§[0] = this.§[w§[_loc3_];
         this.§1j§[1] = this.§[w§[_loc3_ + 1];
         this.§1j§[2] = this.§[w§[_loc3_ + 2];
         param2.transformVectors(this.§1j§,this.§1j§);
         this.§[w§[_loc3_] = this.§1j§[0];
         this.§[w§[_loc3_ + 1] = this.§1j§[1];
         this.§[w§[_loc3_ + 2] = this.§1j§[2];
      }
      
      public function §&j§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§ !8§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §,!r§.§ !0§(param1) * _loc3_;
         var _loc5_:Number = §,!r§.§2!O§(param1) * _loc3_;
         var _loc6_:Number = §,!r§.§0"'§(param1) * _loc3_;
         this.§%j§(0,this.§5l§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §7!5§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §"!?§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§;!#§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§;!#§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§;!#§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§;!#§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §2!K§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §"!?§;
         if(this.§ !8§)
         {
            _loc4_ = this.§;!#§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§;!#§[_loc3_] *= _loc4_;
            this.§;!#§[_loc3_ + 1] *= _loc4_;
            this.§;!#§[_loc3_ + 2] *= _loc4_;
            this.§;!#§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§;!#§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §#!s§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§ !8§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§5l§ * §"!?§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§+"'§(0);
               _loc6_ = !!this.§ !8§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§=!9§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§ !8§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§ !8§;
      }
      
      public function get §-!l§() : int
      {
         return this.§5l§;
      }
      
      public function set §-!l§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §-!o§ * §9j§ - this.§!"0§.length;
         _loc4_ = this.§!"0§.length;
         this.§!"0§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§!"0§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §9j§)
            {
               this.§!"0§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§;!#§.fixed = false;
         _loc2_ = param1 * §"!?§ - this.§;!#§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§;!#§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§;!#§.pop();
            _loc3_++;
         }
         this.§;!#§.fixed = true;
         this.§[w§.fixed = false;
         _loc2_ = param1 * §false§ - this.§[w§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§[w§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§[w§.pop();
            _loc3_++;
         }
         this.§[w§.fixed = true;
         this.§5l§ = param1;
      }
      
      public function get §=!X§() : ByteArray
      {
         this.§!"0§.position = 0;
         return this.§!"0§;
      }
      
      public function get §9@§() : Vector.<Number>
      {
         return this.§;!#§;
      }
      
      public function get §&6§() : Vector.<Number>
      {
         return this.§[w§;
      }
   }
}
