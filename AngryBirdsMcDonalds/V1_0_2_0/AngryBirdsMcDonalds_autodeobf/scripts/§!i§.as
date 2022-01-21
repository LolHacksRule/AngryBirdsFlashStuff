package
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §!i§
   {
      
      public static const §0D§:int = 4;
      
      public static const §8!`§:int = 2;
      
      public static const §+s§:int = 3;
      
      public static const §2X§:int = 4;
      
      public static const §8U§:int = 0;
      
      public static const §3>§:int = 0;
      
      public static const §^=§:int = 0;
       
      
      private var § ;§:ByteArray;
      
      private var §%!6§:Vector.<Number>;
      
      private var §=l§:Vector.<Number>;
      
      private var §2!R§:Boolean;
      
      private var §#!A§:int;
      
      private var §"!p§:Vector.<Number>;
      
      public function §!i§(param1:int, param2:Boolean = false)
      {
         this.§"!p§ = new Vector.<Number>(12,true);
         super();
         this.§ ;§ = new ByteArray();
         this.§ ;§.endian = Endian.LITTLE_ENDIAN;
         this.§ ;§.length = param1 * §8!`§ * §2X§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §8!`§)
         {
            this.§ ;§.writeFloat(0);
            _loc3_++;
         }
         this.§%!6§ = new Vector.<Number>(param1 * §0D§,true);
         this.§=l§ = new Vector.<Number>(param1 * §+s§,true);
         this.§2!R§ = param2;
         this.§#!A§ = param1;
      }
      
      public function clone() : §!i§
      {
         var _loc1_:§!i§ = new §!i§(0,this.§2!R§);
         _loc1_.§ ;§.length = this.§ ;§.length;
         _loc1_.§ ;§.writeBytes(this.§ ;§);
         _loc1_.§%!6§ = this.§%!6§.concat();
         _loc1_.§%!6§.fixed = true;
         _loc1_.§=l§ = this.§=l§.concat();
         _loc1_.§=l§.fixed = true;
         _loc1_.§#!A§ = this.§#!A§;
         return _loc1_;
      }
      
      public function copyTo(param1:§!i§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§=l§;
         _loc6_ = this.§#!A§ * §+s§;
         _loc7_ = param2 * §+s§;
         if(param5)
         {
            param5.transformVectors(this.§=l§,this.§"!p§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§"!p§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§=l§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§ ;§;
         _loc6_ = this.§#!A§ * §8!`§ * §2X§;
         _loc7_ = param2 * §8!`§ * §2X§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§ ;§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§%!6§;
            _loc6_ = this.§#!A§ * §0D§;
            _loc7_ = param2 * §0D§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§%!6§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§#!A§)
               {
                  if(this.§2!R§)
                  {
                     _loc13_ = this.§%!6§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§%!6§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§%!6§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§%!6§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§%!6§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§%!6§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§%!6§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§!i§) : void
      {
         var _loc2_:int = this.§ ;§.length;
         this.§ ;§.length += param1.§ ;§.length;
         this.§ ;§.position = _loc2_;
         this.§ ;§.writeBytes(param1.§ ;§);
         this.§%!6§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§%!6§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§%!6§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§%!6§.fixed = true;
         this.§=l§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§=l§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§=l§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§=l§.fixed = true;
         this.§#!A§ += param1.§`h§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §+s§;
         var _loc6_:*;
         this.§=l§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§=l§[_loc7_ = _loc5_++] = param3;
         this.§=l§[_loc5_] = param4;
      }
      
      public function §]'§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §+s§;
         var _loc5_:*;
         this.§=l§[_loc5_ = _loc4_++] = param2;
         this.§=l§[_loc4_] = param3;
      }
      
      public function §5L§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §+s§;
         param2.x = this.§=l§[_loc3_++];
         param2.y = this.§=l§[_loc3_++];
         param2.z = this.§=l§[_loc3_];
      }
      
      public function §`!6§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§2!R§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §'N§.§!!U§(param2) * _loc4_;
         var _loc6_:Number = §'N§.§8!?§(param2) * _loc4_;
         var _loc7_:Number = §'N§.§1d§(param2) * _loc4_;
         this.§ null§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function § null§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §0D§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§%!6§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§%!6§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§%!6§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§%!6§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §3'§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §0D§;
         var _loc4_:*;
         this.§%!6§[_loc4_ = _loc3_++] = this.§%!6§[_loc4_] * param2;
         var _loc5_:*;
         this.§%!6§[_loc5_ = _loc3_++] = this.§%!6§[_loc5_] * param2;
         var _loc6_:*;
         this.§%!6§[_loc6_ = _loc3_++] = this.§%!6§[_loc6_] * param2;
         this.§%!6§[_loc3_] *= param2;
      }
      
      public function §2!V§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §0D§;
         var _loc3_:Number = !!this.§2!R§ ? Number(this.§%!6§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§%!6§[_loc2_] * _loc3_;
         _loc5_ = this.§%!6§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§%!6§[_loc2_ + 2] * _loc3_;
         return §'N§.§4!Z§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §&S§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§2!R§)
         {
            this.§`!6§(param1,this.§2!V§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §0D§ + 3;
            this.§%!6§[_loc3_] = param2;
         }
      }
      
      public function §99§(param1:int) : Number
      {
         var _loc2_:int = param1 * §0D§ + 3;
         return this.§%!6§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §8!`§;
         this.§ ;§.position = _loc4_ * §2X§;
         this.§ ;§.writeFloat(param2);
         this.§ ;§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §8!`§;
         this.§ ;§.position = _loc3_ * §2X§;
         param2.x = this.§ ;§.readFloat();
         param2.y = this.§ ;§.readFloat();
      }
      
      public function §[<§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §+s§;
         var _loc6_:*;
         this.§=l§[_loc6_ = _loc5_++] = this.§=l§[_loc6_] + param2;
         var _loc7_:*;
         this.§=l§[_loc7_ = _loc5_++] = this.§=l§[_loc7_] + param3;
         this.§=l§[_loc5_] += param4;
      }
      
      public function §`!J§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §+s§;
         this.§"!p§[0] = this.§=l§[_loc3_];
         this.§"!p§[1] = this.§=l§[_loc3_ + 1];
         this.§"!p§[2] = this.§=l§[_loc3_ + 2];
         param2.transformVectors(this.§"!p§,this.§"!p§);
         this.§=l§[_loc3_] = this.§"!p§[0];
         this.§=l§[_loc3_ + 1] = this.§"!p§[1];
         this.§=l§[_loc3_ + 2] = this.§"!p§[2];
      }
      
      public function §>u§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§2!R§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §'N§.§!!U§(param1) * _loc3_;
         var _loc5_:Number = §'N§.§8!?§(param1) * _loc3_;
         var _loc6_:Number = §'N§.§1d§(param1) * _loc3_;
         this.§ null§(0,this.§#!A§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §+<§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §0D§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§%!6§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§%!6§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§%!6§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§%!6§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §9!A§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §0D§;
         if(this.§2!R§)
         {
            _loc4_ = this.§%!6§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§%!6§[_loc3_] *= _loc4_;
            this.§%!6§[_loc3_ + 1] *= _loc4_;
            this.§%!6§[_loc3_ + 2] *= _loc4_;
            this.§%!6§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§%!6§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§2!R§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§#!A§ * §0D§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§99§(0);
               _loc6_ = !!this.§2!R§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§3'§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§2!R§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§2!R§;
      }
      
      public function get §`h§() : int
      {
         return this.§#!A§;
      }
      
      public function set §`h§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §8!`§ * §2X§ - this.§ ;§.length;
         _loc4_ = this.§ ;§.length;
         this.§ ;§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§ ;§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §2X§)
            {
               this.§ ;§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§%!6§.fixed = false;
         _loc2_ = param1 * §0D§ - this.§%!6§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§%!6§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§%!6§.pop();
            _loc3_++;
         }
         this.§%!6§.fixed = true;
         this.§=l§.fixed = false;
         _loc2_ = param1 * §+s§ - this.§=l§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§=l§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§=l§.pop();
            _loc3_++;
         }
         this.§=l§.fixed = true;
         this.§#!A§ = param1;
      }
      
      public function get §[!n§() : ByteArray
      {
         this.§ ;§.position = 0;
         return this.§ ;§;
      }
      
      public function get §4![§() : Vector.<Number>
      {
         return this.§%!6§;
      }
      
      public function get §^!_§() : Vector.<Number>
      {
         return this.§=l§;
      }
   }
}
