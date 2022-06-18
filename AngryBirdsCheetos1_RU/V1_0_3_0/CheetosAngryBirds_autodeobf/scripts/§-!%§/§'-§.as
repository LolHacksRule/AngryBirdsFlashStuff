package §-!%§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §'-§
   {
      
      public static const §1[§:int = 4;
      
      public static const §@-§:int = 2;
      
      public static const §5!0§:int = 3;
      
      public static const §9U§:int = 4;
      
      public static const §9!&§:int = 0;
      
      public static const §>6§:int = 0;
      
      public static const §>&§:int = 0;
       
      
      private var §4<§:ByteArray;
      
      private var §7!,§:Vector.<Number>;
      
      private var §;!G§:Vector.<Number>;
      
      private var §>!T§:Boolean;
      
      private var §3c§:int;
      
      private var §-v§:Vector.<Number>;
      
      public function §'-§(param1:int, param2:Boolean = false)
      {
         this.§-v§ = new Vector.<Number>(12,true);
         super();
         this.§4<§ = new ByteArray();
         this.§4<§.endian = Endian.LITTLE_ENDIAN;
         this.§4<§.length = param1 * §@-§ * §9U§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §@-§)
         {
            this.§4<§.writeFloat(0);
            _loc3_++;
         }
         this.§7!,§ = new Vector.<Number>(param1 * §1[§,true);
         this.§;!G§ = new Vector.<Number>(param1 * §5!0§,true);
         this.§>!T§ = param2;
         this.§3c§ = param1;
      }
      
      public function clone() : §'-§
      {
         var _loc1_:§'-§ = new §'-§(0,this.§>!T§);
         _loc1_.§4<§.length = this.§4<§.length;
         _loc1_.§4<§.writeBytes(this.§4<§);
         _loc1_.§7!,§ = this.§7!,§.concat();
         _loc1_.§7!,§.fixed = true;
         _loc1_.§;!G§ = this.§;!G§.concat();
         _loc1_.§;!G§.fixed = true;
         _loc1_.§3c§ = this.§3c§;
         return _loc1_;
      }
      
      public function copyTo(param1:§'-§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§;!G§;
         _loc6_ = this.§3c§ * §5!0§;
         _loc7_ = param2 * §5!0§;
         if(param5)
         {
            param5.transformVectors(this.§;!G§,this.§-v§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§-v§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§;!G§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§4<§;
         _loc6_ = this.§3c§ * §@-§ * §9U§;
         _loc7_ = param2 * §@-§ * §9U§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§4<§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§7!,§;
            _loc6_ = this.§3c§ * §1[§;
            _loc7_ = param2 * §1[§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§7!,§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§3c§)
               {
                  if(this.§>!T§)
                  {
                     _loc13_ = this.§7!,§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§7!,§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§7!,§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§7!,§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§7!,§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§7!,§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§7!,§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§'-§) : void
      {
         var _loc2_:int = this.§4<§.length;
         this.§4<§.length += param1.§4<§.length;
         this.§4<§.position = _loc2_;
         this.§4<§.writeBytes(param1.§4<§);
         this.§7!,§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§7!,§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§7!,§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§7!,§.fixed = true;
         this.§;!G§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§;!G§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§;!G§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§;!G§.fixed = true;
         this.§3c§ += param1.§"!G§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §5!0§;
         var _loc6_:*;
         this.§;!G§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§;!G§[_loc7_ = _loc5_++] = param3;
         this.§;!G§[_loc5_] = param4;
      }
      
      public function §>a§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §5!0§;
         var _loc5_:*;
         this.§;!G§[_loc5_ = _loc4_++] = param2;
         this.§;!G§[_loc4_] = param3;
      }
      
      public function §^p§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §5!0§;
         param2.x = this.§;!G§[_loc3_++];
         param2.y = this.§;!G§[_loc3_++];
         param2.z = this.§;!G§[_loc3_];
      }
      
      public function §3F§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§>!T§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §8!'§.§83§(param2) * _loc4_;
         var _loc6_:Number = §8!'§.§,B§(param2) * _loc4_;
         var _loc7_:Number = §8!'§.§&z§(param2) * _loc4_;
         this.§6n§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §6n§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §1[§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§7!,§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§7!,§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§7!,§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§7!,§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §-s§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §1[§;
         var _loc4_:*;
         this.§7!,§[_loc4_ = _loc3_++] = this.§7!,§[_loc4_] * param2;
         var _loc5_:*;
         this.§7!,§[_loc5_ = _loc3_++] = this.§7!,§[_loc5_] * param2;
         var _loc6_:*;
         this.§7!,§[_loc6_ = _loc3_++] = this.§7!,§[_loc6_] * param2;
         this.§7!,§[_loc3_] *= param2;
      }
      
      public function §9!O§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §1[§;
         var _loc3_:Number = !!this.§>!T§ ? Number(this.§7!,§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§7!,§[_loc2_] * _loc3_;
         _loc5_ = this.§7!,§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§7!,§[_loc2_ + 2] * _loc3_;
         return §8!'§.§#!T§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §@A§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§>!T§)
         {
            this.§3F§(param1,this.§9!O§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §1[§ + 3;
            this.§7!,§[_loc3_] = param2;
         }
      }
      
      public function § !8§(param1:int) : Number
      {
         var _loc2_:int = param1 * §1[§ + 3;
         return this.§7!,§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §@-§;
         this.§4<§.position = _loc4_ * §9U§;
         this.§4<§.writeFloat(param2);
         this.§4<§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §@-§;
         this.§4<§.position = _loc3_ * §9U§;
         param2.x = this.§4<§.readFloat();
         param2.y = this.§4<§.readFloat();
      }
      
      public function §%!$§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §5!0§;
         var _loc6_:*;
         this.§;!G§[_loc6_ = _loc5_++] = this.§;!G§[_loc6_] + param2;
         var _loc7_:*;
         this.§;!G§[_loc7_ = _loc5_++] = this.§;!G§[_loc7_] + param3;
         this.§;!G§[_loc5_] += param4;
      }
      
      public function §6!Z§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §5!0§;
         this.§-v§[0] = this.§;!G§[_loc3_];
         this.§-v§[1] = this.§;!G§[_loc3_ + 1];
         this.§-v§[2] = this.§;!G§[_loc3_ + 2];
         param2.transformVectors(this.§-v§,this.§-v§);
         this.§;!G§[_loc3_] = this.§-v§[0];
         this.§;!G§[_loc3_ + 1] = this.§-v§[1];
         this.§;!G§[_loc3_ + 2] = this.§-v§[2];
      }
      
      public function §"_§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§>!T§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §8!'§.§83§(param1) * _loc3_;
         var _loc5_:Number = §8!'§.§,B§(param1) * _loc3_;
         var _loc6_:Number = §8!'§.§&z§(param1) * _loc3_;
         this.§6n§(0,this.§3c§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §+!Y§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §1[§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§7!,§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§7!,§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§7!,§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§7!,§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §]l§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §1[§;
         if(this.§>!T§)
         {
            _loc4_ = this.§7!,§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§7!,§[_loc3_] *= _loc4_;
            this.§7!,§[_loc3_ + 1] *= _loc4_;
            this.§7!,§[_loc3_ + 2] *= _loc4_;
            this.§7!,§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§7!,§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§>!T§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§3c§ * §1[§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§ !8§(0);
               _loc6_ = !!this.§>!T§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§-s§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§>!T§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§>!T§;
      }
      
      public function get §"!G§() : int
      {
         return this.§3c§;
      }
      
      public function set §"!G§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §@-§ * §9U§ - this.§4<§.length;
         _loc4_ = this.§4<§.length;
         this.§4<§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§4<§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §9U§)
            {
               this.§4<§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§7!,§.fixed = false;
         _loc2_ = param1 * §1[§ - this.§7!,§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§7!,§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§7!,§.pop();
            _loc3_++;
         }
         this.§7!,§.fixed = true;
         this.§;!G§.fixed = false;
         _loc2_ = param1 * §5!0§ - this.§;!G§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§;!G§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§;!G§.pop();
            _loc3_++;
         }
         this.§;!G§.fixed = true;
         this.§3c§ = param1;
      }
      
      public function get §1!M§() : ByteArray
      {
         this.§4<§.position = 0;
         return this.§4<§;
      }
      
      public function get §6!<§() : Vector.<Number>
      {
         return this.§7!,§;
      }
      
      public function get § W§() : Vector.<Number>
      {
         return this.§;!G§;
      }
   }
}
