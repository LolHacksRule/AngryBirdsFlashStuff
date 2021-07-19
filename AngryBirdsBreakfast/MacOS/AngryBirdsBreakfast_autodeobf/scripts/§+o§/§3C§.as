package §+o§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §3C§
   {
      
      public static const §!"&§:int = 4;
      
      public static const §^!§:int = 2;
      
      public static const §'!F§:int = 3;
      
      public static const §7!z§:int = 4;
      
      public static const §2!F§:int = 0;
      
      public static const §0!g§:int = 0;
      
      public static const §null §:int = 0;
       
      
      private var §1!r§:ByteArray;
      
      private var §2!0§:Vector.<Number>;
      
      private var §4v§:Vector.<Number>;
      
      private var §>#§:Boolean;
      
      private var §=&§:int;
      
      private var §'!!§:Vector.<Number>;
      
      public function §3C§(param1:int, param2:Boolean = false)
      {
         this.§'!!§ = new Vector.<Number>(12,true);
         super();
         this.§1!r§ = new ByteArray();
         this.§1!r§.endian = Endian.LITTLE_ENDIAN;
         this.§1!r§.length = param1 * §^!§ * §7!z§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §^!§)
         {
            this.§1!r§.writeFloat(0);
            _loc3_++;
         }
         this.§2!0§ = new Vector.<Number>(param1 * §!"&§,true);
         this.§4v§ = new Vector.<Number>(param1 * §'!F§,true);
         this.§>#§ = param2;
         this.§=&§ = param1;
      }
      
      public function clone() : §3C§
      {
         var _loc1_:§3C§ = new §3C§(0,this.§>#§);
         _loc1_.§1!r§.length = this.§1!r§.length;
         _loc1_.§1!r§.writeBytes(this.§1!r§);
         _loc1_.§2!0§ = this.§2!0§.concat();
         _loc1_.§2!0§.fixed = true;
         _loc1_.§4v§ = this.§4v§.concat();
         _loc1_.§4v§.fixed = true;
         _loc1_.§=&§ = this.§=&§;
         return _loc1_;
      }
      
      public function copyTo(param1:§3C§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§4v§;
         _loc6_ = this.§=&§ * §'!F§;
         _loc7_ = param2 * §'!F§;
         if(param5)
         {
            param5.transformVectors(this.§4v§,this.§'!!§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§'!!§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§4v§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§1!r§;
         _loc6_ = this.§=&§ * §^!§ * §7!z§;
         _loc7_ = param2 * §^!§ * §7!z§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§1!r§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§2!0§;
            _loc6_ = this.§=&§ * §!"&§;
            _loc7_ = param2 * §!"&§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§2!0§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§=&§)
               {
                  if(this.§>#§)
                  {
                     _loc13_ = this.§2!0§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§2!0§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§2!0§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§2!0§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§2!0§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§2!0§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§2!0§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§3C§) : void
      {
         var _loc2_:int = this.§1!r§.length;
         this.§1!r§.length += param1.§1!r§.length;
         this.§1!r§.position = _loc2_;
         this.§1!r§.writeBytes(param1.§1!r§);
         this.§2!0§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§2!0§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§2!0§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§2!0§.fixed = true;
         this.§4v§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§4v§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§4v§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§4v§.fixed = true;
         this.§=&§ += param1.§6<§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §'!F§;
         var _loc6_:*;
         this.§4v§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§4v§[_loc7_ = _loc5_++] = param3;
         this.§4v§[_loc5_] = param4;
      }
      
      public function §null§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §'!F§;
         var _loc5_:*;
         this.§4v§[_loc5_ = _loc4_++] = param2;
         this.§4v§[_loc4_] = param3;
      }
      
      public function §?!P§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §'!F§;
         param2.x = this.§4v§[_loc3_++];
         param2.y = this.§4v§[_loc3_++];
         param2.z = this.§4v§[_loc3_];
      }
      
      public function §<!=§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§>#§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §,!L§.§3!2§(param2) * _loc4_;
         var _loc6_:Number = §,!L§.§3!B§(param2) * _loc4_;
         var _loc7_:Number = §,!L§.§>]§(param2) * _loc4_;
         this.§'!y§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §'!y§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §!"&§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§2!0§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§2!0§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§2!0§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§2!0§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §6?§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §!"&§;
         var _loc4_:*;
         this.§2!0§[_loc4_ = _loc3_++] = this.§2!0§[_loc4_] * param2;
         var _loc5_:*;
         this.§2!0§[_loc5_ = _loc3_++] = this.§2!0§[_loc5_] * param2;
         var _loc6_:*;
         this.§2!0§[_loc6_ = _loc3_++] = this.§2!0§[_loc6_] * param2;
         this.§2!0§[_loc3_] *= param2;
      }
      
      public function §>!k§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §!"&§;
         var _loc3_:Number = !!this.§>#§ ? Number(this.§2!0§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§2!0§[_loc2_] * _loc3_;
         _loc5_ = this.§2!0§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§2!0§[_loc2_ + 2] * _loc3_;
         return §,!L§.§9"%§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §7z§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§>#§)
         {
            this.§<!=§(param1,this.§>!k§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §!"&§ + 3;
            this.§2!0§[_loc3_] = param2;
         }
      }
      
      public function §7"-§(param1:int) : Number
      {
         var _loc2_:int = param1 * §!"&§ + 3;
         return this.§2!0§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §^!§;
         this.§1!r§.position = _loc4_ * §7!z§;
         this.§1!r§.writeFloat(param2);
         this.§1!r§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §^!§;
         this.§1!r§.position = _loc3_ * §7!z§;
         param2.x = this.§1!r§.readFloat();
         param2.y = this.§1!r§.readFloat();
      }
      
      public function include(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §'!F§;
         var _loc6_:*;
         this.§4v§[_loc6_ = _loc5_++] = this.§4v§[_loc6_] + param2;
         var _loc7_:*;
         this.§4v§[_loc7_ = _loc5_++] = this.§4v§[_loc7_] + param3;
         this.§4v§[_loc5_] += param4;
      }
      
      public function §#!d§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §'!F§;
         this.§'!!§[0] = this.§4v§[_loc3_];
         this.§'!!§[1] = this.§4v§[_loc3_ + 1];
         this.§'!!§[2] = this.§4v§[_loc3_ + 2];
         param2.transformVectors(this.§'!!§,this.§'!!§);
         this.§4v§[_loc3_] = this.§'!!§[0];
         this.§4v§[_loc3_ + 1] = this.§'!!§[1];
         this.§4v§[_loc3_ + 2] = this.§'!!§[2];
      }
      
      public function §#!^§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§>#§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §,!L§.§3!2§(param1) * _loc3_;
         var _loc5_:Number = §,!L§.§3!B§(param1) * _loc3_;
         var _loc6_:Number = §,!L§.§>]§(param1) * _loc3_;
         this.§'!y§(0,this.§=&§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §#!g§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §!"&§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§2!0§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§2!0§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§2!0§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§2!0§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §1#§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §!"&§;
         if(this.§>#§)
         {
            _loc4_ = this.§2!0§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§2!0§[_loc3_] *= _loc4_;
            this.§2!0§[_loc3_ + 1] *= _loc4_;
            this.§2!0§[_loc3_ + 2] *= _loc4_;
            this.§2!0§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§2!0§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §!'§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§>#§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§=&§ * §!"&§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§7"-§(0);
               _loc6_ = !!this.§>#§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§6?§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§>#§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§>#§;
      }
      
      public function get §6<§() : int
      {
         return this.§=&§;
      }
      
      public function set §6<§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §^!§ * §7!z§ - this.§1!r§.length;
         _loc4_ = this.§1!r§.length;
         this.§1!r§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§1!r§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §7!z§)
            {
               this.§1!r§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§2!0§.fixed = false;
         _loc2_ = param1 * §!"&§ - this.§2!0§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§2!0§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§2!0§.pop();
            _loc3_++;
         }
         this.§2!0§.fixed = true;
         this.§4v§.fixed = false;
         _loc2_ = param1 * §'!F§ - this.§4v§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§4v§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§4v§.pop();
            _loc3_++;
         }
         this.§4v§.fixed = true;
         this.§=&§ = param1;
      }
      
      public function get §8!b§() : ByteArray
      {
         this.§1!r§.position = 0;
         return this.§1!r§;
      }
      
      public function get §<!G§() : Vector.<Number>
      {
         return this.§2!0§;
      }
      
      public function get §''§() : Vector.<Number>
      {
         return this.§4v§;
      }
   }
}
