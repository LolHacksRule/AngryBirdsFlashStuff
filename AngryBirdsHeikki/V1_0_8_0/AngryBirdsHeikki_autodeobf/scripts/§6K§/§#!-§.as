package §6K§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §#!-§
   {
      
      public static const §"!Z§:int = 4;
      
      public static const §4!7§:int = 2;
      
      public static const §"!2§:int = 3;
      
      public static const §6X§:int = 4;
      
      public static const §4!]§:int = 0;
      
      public static const §7!$§:int = 0;
      
      public static const §8!O§:int = 0;
       
      
      private var §6l§:ByteArray;
      
      private var §7!I§:Vector.<Number>;
      
      private var §9!-§:Vector.<Number>;
      
      private var §!D§:Boolean;
      
      private var §8!'§:int;
      
      private var §7s§:Vector.<Number>;
      
      public function §#!-§(param1:int, param2:Boolean = false)
      {
         this.§7s§ = new Vector.<Number>(12,true);
         super();
         this.§6l§ = new ByteArray();
         this.§6l§.endian = Endian.LITTLE_ENDIAN;
         this.§6l§.length = param1 * §4!7§ * §6X§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §4!7§)
         {
            this.§6l§.writeFloat(0);
            _loc3_++;
         }
         this.§7!I§ = new Vector.<Number>(param1 * §"!Z§,true);
         this.§9!-§ = new Vector.<Number>(param1 * §"!2§,true);
         this.§!D§ = param2;
         this.§8!'§ = param1;
      }
      
      public function clone() : §#!-§
      {
         var _loc1_:§#!-§ = new §#!-§(0,this.§!D§);
         _loc1_.§6l§.length = this.§6l§.length;
         _loc1_.§6l§.writeBytes(this.§6l§);
         _loc1_.§7!I§ = this.§7!I§.concat();
         _loc1_.§7!I§.fixed = true;
         _loc1_.§9!-§ = this.§9!-§.concat();
         _loc1_.§9!-§.fixed = true;
         _loc1_.§8!'§ = this.§8!'§;
         return _loc1_;
      }
      
      public function copyTo(param1:§#!-§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§9!-§;
         _loc6_ = this.§8!'§ * §"!2§;
         _loc7_ = param2 * §"!2§;
         if(param5)
         {
            param5.transformVectors(this.§9!-§,this.§7s§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§7s§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§9!-§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§6l§;
         _loc6_ = this.§8!'§ * §4!7§ * §6X§;
         _loc7_ = param2 * §4!7§ * §6X§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§6l§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§7!I§;
            _loc6_ = this.§8!'§ * §"!Z§;
            _loc7_ = param2 * §"!Z§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§7!I§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§8!'§)
               {
                  if(this.§!D§)
                  {
                     _loc13_ = this.§7!I§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§7!I§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§7!I§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§7!I§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§7!I§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§7!I§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§7!I§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§#!-§) : void
      {
         var _loc2_:int = this.§6l§.length;
         this.§6l§.length += param1.§6l§.length;
         this.§6l§.position = _loc2_;
         this.§6l§.writeBytes(param1.§6l§);
         this.§7!I§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§7!I§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§7!I§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§7!I§.fixed = true;
         this.§9!-§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§9!-§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§9!-§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§9!-§.fixed = true;
         this.§8!'§ += param1.§]5§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §"!2§;
         var _loc6_:*;
         this.§9!-§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§9!-§[_loc7_ = _loc5_++] = param3;
         this.§9!-§[_loc5_] = param4;
      }
      
      public function §9p§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §"!2§;
         var _loc5_:*;
         this.§9!-§[_loc5_ = _loc4_++] = param2;
         this.§9!-§[_loc4_] = param3;
      }
      
      public function §-z§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §"!2§;
         param2.x = this.§9!-§[_loc3_++];
         param2.y = this.§9!-§[_loc3_++];
         param2.z = this.§9!-§[_loc3_];
      }
      
      public function §%!<§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§!D§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §+!d§.§`K§(param2) * _loc4_;
         var _loc6_:Number = §+!d§.§8!,§(param2) * _loc4_;
         var _loc7_:Number = §+!d§.§;!T§(param2) * _loc4_;
         this.§9&§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §9&§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §"!Z§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§7!I§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§7!I§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§7!I§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§7!I§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §9!9§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §"!Z§;
         var _loc4_:*;
         this.§7!I§[_loc4_ = _loc3_++] = this.§7!I§[_loc4_] * param2;
         var _loc5_:*;
         this.§7!I§[_loc5_ = _loc3_++] = this.§7!I§[_loc5_] * param2;
         var _loc6_:*;
         this.§7!I§[_loc6_ = _loc3_++] = this.§7!I§[_loc6_] * param2;
         this.§7!I§[_loc3_] *= param2;
      }
      
      public function §,O§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §"!Z§;
         var _loc3_:Number = !!this.§!D§ ? Number(this.§7!I§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§7!I§[_loc2_] * _loc3_;
         _loc5_ = this.§7!I§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§7!I§[_loc2_ + 2] * _loc3_;
         return §+!d§.§5!,§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §[m§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§!D§)
         {
            this.§%!<§(param1,this.§,O§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §"!Z§ + 3;
            this.§7!I§[_loc3_] = param2;
         }
      }
      
      public function §1!0§(param1:int) : Number
      {
         var _loc2_:int = param1 * §"!Z§ + 3;
         return this.§7!I§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §4!7§;
         this.§6l§.position = _loc4_ * §6X§;
         this.§6l§.writeFloat(param2);
         this.§6l§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §4!7§;
         this.§6l§.position = _loc3_ * §6X§;
         param2.x = this.§6l§.readFloat();
         param2.y = this.§6l§.readFloat();
      }
      
      public function §-!=§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §"!2§;
         var _loc6_:*;
         this.§9!-§[_loc6_ = _loc5_++] = this.§9!-§[_loc6_] + param2;
         var _loc7_:*;
         this.§9!-§[_loc7_ = _loc5_++] = this.§9!-§[_loc7_] + param3;
         this.§9!-§[_loc5_] += param4;
      }
      
      public function §8!H§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §"!2§;
         this.§7s§[0] = this.§9!-§[_loc3_];
         this.§7s§[1] = this.§9!-§[_loc3_ + 1];
         this.§7s§[2] = this.§9!-§[_loc3_ + 2];
         param2.transformVectors(this.§7s§,this.§7s§);
         this.§9!-§[_loc3_] = this.§7s§[0];
         this.§9!-§[_loc3_ + 1] = this.§7s§[1];
         this.§9!-§[_loc3_ + 2] = this.§7s§[2];
      }
      
      public function §6D§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§!D§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §+!d§.§`K§(param1) * _loc3_;
         var _loc5_:Number = §+!d§.§8!,§(param1) * _loc3_;
         var _loc6_:Number = §+!d§.§;!T§(param1) * _loc3_;
         this.§9&§(0,this.§8!'§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §,!9§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §"!Z§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§7!I§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§7!I§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§7!I§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§7!I§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §>`§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §"!Z§;
         if(this.§!D§)
         {
            _loc4_ = this.§7!I§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§7!I§[_loc3_] *= _loc4_;
            this.§7!I§[_loc3_ + 1] *= _loc4_;
            this.§7!I§[_loc3_ + 2] *= _loc4_;
            this.§7!I§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§7!I§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§!D§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§8!'§ * §"!Z§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§1!0§(0);
               _loc6_ = !!this.§!D§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§9!9§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§!D§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§!D§;
      }
      
      public function get §]5§() : int
      {
         return this.§8!'§;
      }
      
      public function set §]5§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §4!7§ * §6X§ - this.§6l§.length;
         _loc4_ = this.§6l§.length;
         this.§6l§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§6l§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §6X§)
            {
               this.§6l§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§7!I§.fixed = false;
         _loc2_ = param1 * §"!Z§ - this.§7!I§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§7!I§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§7!I§.pop();
            _loc3_++;
         }
         this.§7!I§.fixed = true;
         this.§9!-§.fixed = false;
         _loc2_ = param1 * §"!2§ - this.§9!-§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§9!-§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§9!-§.pop();
            _loc3_++;
         }
         this.§9!-§.fixed = true;
         this.§8!'§ = param1;
      }
      
      public function get §?!7§() : ByteArray
      {
         this.§6l§.position = 0;
         return this.§6l§;
      }
      
      public function get §2?§() : Vector.<Number>
      {
         return this.§7!I§;
      }
      
      public function get §46§() : Vector.<Number>
      {
         return this.§9!-§;
      }
   }
}
