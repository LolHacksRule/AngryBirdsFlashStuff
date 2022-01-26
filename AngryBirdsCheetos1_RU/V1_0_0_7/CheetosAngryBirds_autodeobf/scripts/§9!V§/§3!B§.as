package §9!V§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §3!B§
   {
      
      public static const §%!C§:int = 4;
      
      public static const §!o§:int = 2;
      
      public static const §`!A§:int = 3;
      
      public static const §?!L§:int = 4;
      
      public static const §`e§:int = 0;
      
      public static const §9!^§:int = 0;
      
      public static const §4T§:int = 0;
       
      
      private var §#d§:ByteArray;
      
      private var § i§:Vector.<Number>;
      
      private var §!!Q§:Vector.<Number>;
      
      private var §&K§:Boolean;
      
      private var §1J§:int;
      
      private var § c§:Vector.<Number>;
      
      public function §3!B§(param1:int, param2:Boolean = false)
      {
         this.§ c§ = new Vector.<Number>(12,true);
         super();
         this.§#d§ = new ByteArray();
         this.§#d§.endian = Endian.LITTLE_ENDIAN;
         this.§#d§.length = param1 * §!o§ * §?!L§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §!o§)
         {
            this.§#d§.writeFloat(0);
            _loc3_++;
         }
         this.§ i§ = new Vector.<Number>(param1 * §%!C§,true);
         this.§!!Q§ = new Vector.<Number>(param1 * §`!A§,true);
         this.§&K§ = param2;
         this.§1J§ = param1;
      }
      
      public function clone() : §3!B§
      {
         var _loc1_:§3!B§ = new §3!B§(0,this.§&K§);
         _loc1_.§#d§.length = this.§#d§.length;
         _loc1_.§#d§.writeBytes(this.§#d§);
         _loc1_.§ i§ = this.§ i§.concat();
         _loc1_.§ i§.fixed = true;
         _loc1_.§!!Q§ = this.§!!Q§.concat();
         _loc1_.§!!Q§.fixed = true;
         _loc1_.§1J§ = this.§1J§;
         return _loc1_;
      }
      
      public function copyTo(param1:§3!B§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§!!Q§;
         _loc6_ = this.§1J§ * §`!A§;
         _loc7_ = param2 * §`!A§;
         if(param5)
         {
            param5.transformVectors(this.§!!Q§,this.§ c§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§ c§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§!!Q§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§#d§;
         _loc6_ = this.§1J§ * §!o§ * §?!L§;
         _loc7_ = param2 * §!o§ * §?!L§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§#d§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§ i§;
            _loc6_ = this.§1J§ * §%!C§;
            _loc7_ = param2 * §%!C§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§ i§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§1J§)
               {
                  if(this.§&K§)
                  {
                     _loc13_ = this.§ i§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§ i§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§ i§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§ i§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§ i§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§ i§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§ i§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§3!B§) : void
      {
         var _loc2_:int = this.§#d§.length;
         this.§#d§.length += param1.§#d§.length;
         this.§#d§.position = _loc2_;
         this.§#d§.writeBytes(param1.§#d§);
         this.§ i§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§ i§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§ i§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§ i§.fixed = true;
         this.§!!Q§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§!!Q§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§!!Q§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§!!Q§.fixed = true;
         this.§1J§ += param1.§<§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §`!A§;
         var _loc6_:*;
         this.§!!Q§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§!!Q§[_loc7_ = _loc5_++] = param3;
         this.§!!Q§[_loc5_] = param4;
      }
      
      public function § P§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §`!A§;
         var _loc5_:*;
         this.§!!Q§[_loc5_ = _loc4_++] = param2;
         this.§!!Q§[_loc4_] = param3;
      }
      
      public function §&X§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §`!A§;
         param2.x = this.§!!Q§[_loc3_++];
         param2.y = this.§!!Q§[_loc3_++];
         param2.z = this.§!!Q§[_loc3_];
      }
      
      public function §5z§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§&K§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §%!&§.§'j§(param2) * _loc4_;
         var _loc6_:Number = §%!&§.§;!J§(param2) * _loc4_;
         var _loc7_:Number = §%!&§.§<!L§(param2) * _loc4_;
         this.§=!0§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §=!0§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §%!C§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§ i§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§ i§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§ i§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§ i§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §;K§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §%!C§;
         var _loc4_:*;
         this.§ i§[_loc4_ = _loc3_++] = this.§ i§[_loc4_] * param2;
         var _loc5_:*;
         this.§ i§[_loc5_ = _loc3_++] = this.§ i§[_loc5_] * param2;
         var _loc6_:*;
         this.§ i§[_loc6_ = _loc3_++] = this.§ i§[_loc6_] * param2;
         this.§ i§[_loc3_] *= param2;
      }
      
      public function §,!5§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §%!C§;
         var _loc3_:Number = !!this.§&K§ ? Number(this.§ i§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§ i§[_loc2_] * _loc3_;
         _loc5_ = this.§ i§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§ i§[_loc2_ + 2] * _loc3_;
         return §%!&§.§1§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §6!B§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§&K§)
         {
            this.§5z§(param1,this.§,!5§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §%!C§ + 3;
            this.§ i§[_loc3_] = param2;
         }
      }
      
      public function §^>§(param1:int) : Number
      {
         var _loc2_:int = param1 * §%!C§ + 3;
         return this.§ i§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §!o§;
         this.§#d§.position = _loc4_ * §?!L§;
         this.§#d§.writeFloat(param2);
         this.§#d§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §!o§;
         this.§#d§.position = _loc3_ * §?!L§;
         param2.x = this.§#d§.readFloat();
         param2.y = this.§#d§.readFloat();
      }
      
      public function §^p§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §`!A§;
         var _loc6_:*;
         this.§!!Q§[_loc6_ = _loc5_++] = this.§!!Q§[_loc6_] + param2;
         var _loc7_:*;
         this.§!!Q§[_loc7_ = _loc5_++] = this.§!!Q§[_loc7_] + param3;
         this.§!!Q§[_loc5_] += param4;
      }
      
      public function §4L§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §`!A§;
         this.§ c§[0] = this.§!!Q§[_loc3_];
         this.§ c§[1] = this.§!!Q§[_loc3_ + 1];
         this.§ c§[2] = this.§!!Q§[_loc3_ + 2];
         param2.transformVectors(this.§ c§,this.§ c§);
         this.§!!Q§[_loc3_] = this.§ c§[0];
         this.§!!Q§[_loc3_ + 1] = this.§ c§[1];
         this.§!!Q§[_loc3_ + 2] = this.§ c§[2];
      }
      
      public function §]e§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§&K§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §%!&§.§'j§(param1) * _loc3_;
         var _loc5_:Number = §%!&§.§;!J§(param1) * _loc3_;
         var _loc6_:Number = §%!&§.§<!L§(param1) * _loc3_;
         this.§=!0§(0,this.§1J§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §=W§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §%!C§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§ i§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§ i§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§ i§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§ i§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §55§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §%!C§;
         if(this.§&K§)
         {
            _loc4_ = this.§ i§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§ i§[_loc3_] *= _loc4_;
            this.§ i§[_loc3_ + 1] *= _loc4_;
            this.§ i§[_loc3_ + 2] *= _loc4_;
            this.§ i§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§ i§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§&K§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§1J§ * §%!C§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§^>§(0);
               _loc6_ = !!this.§&K§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§;K§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§&K§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§&K§;
      }
      
      public function get §<§() : int
      {
         return this.§1J§;
      }
      
      public function set §<§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §!o§ * §?!L§ - this.§#d§.length;
         _loc4_ = this.§#d§.length;
         this.§#d§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§#d§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §?!L§)
            {
               this.§#d§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§ i§.fixed = false;
         _loc2_ = param1 * §%!C§ - this.§ i§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§ i§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§ i§.pop();
            _loc3_++;
         }
         this.§ i§.fixed = true;
         this.§!!Q§.fixed = false;
         _loc2_ = param1 * §`!A§ - this.§!!Q§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§!!Q§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§!!Q§.pop();
            _loc3_++;
         }
         this.§!!Q§.fixed = true;
         this.§1J§ = param1;
      }
      
      public function get §9M§() : ByteArray
      {
         this.§#d§.position = 0;
         return this.§#d§;
      }
      
      public function get §'!U§() : Vector.<Number>
      {
         return this.§ i§;
      }
      
      public function get §-Q§() : Vector.<Number>
      {
         return this.§!!Q§;
      }
   }
}
