package §&b§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §true§
   {
      
      public static const §-C§:int = 4;
      
      public static const §8!$§:int = 2;
      
      public static const §0!N§:int = 3;
      
      public static const § Z§:int = 4;
      
      public static const §+O§:int = 0;
      
      public static const §<'§:int = 0;
      
      public static const §-2§:int = 0;
       
      
      private var §>!T§:ByteArray;
      
      private var §2U§:Vector.<Number>;
      
      private var §4z§:Vector.<Number>;
      
      private var §+M§:Boolean;
      
      private var §^I§:int;
      
      private var §7!2§:Vector.<Number>;
      
      public function §true§(param1:int, param2:Boolean = false)
      {
         this.§7!2§ = new Vector.<Number>(12,true);
         super();
         this.§>!T§ = new ByteArray();
         this.§>!T§.endian = Endian.LITTLE_ENDIAN;
         this.§>!T§.length = param1 * §8!$§ * § Z§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §8!$§)
         {
            this.§>!T§.writeFloat(0);
            _loc3_++;
         }
         this.§2U§ = new Vector.<Number>(param1 * §-C§,true);
         this.§4z§ = new Vector.<Number>(param1 * §0!N§,true);
         this.§+M§ = param2;
         this.§^I§ = param1;
      }
      
      public function clone() : §true§
      {
         var _loc1_:§true§ = new §true§(0,this.§+M§);
         _loc1_.§>!T§.length = this.§>!T§.length;
         _loc1_.§>!T§.writeBytes(this.§>!T§);
         _loc1_.§2U§ = this.§2U§.concat();
         _loc1_.§2U§.fixed = true;
         _loc1_.§4z§ = this.§4z§.concat();
         _loc1_.§4z§.fixed = true;
         _loc1_.§^I§ = this.§^I§;
         return _loc1_;
      }
      
      public function copyTo(param1:§true§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§4z§;
         _loc6_ = this.§^I§ * §0!N§;
         _loc7_ = param2 * §0!N§;
         if(param5)
         {
            param5.transformVectors(this.§4z§,this.§7!2§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§7!2§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§4z§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§>!T§;
         _loc6_ = this.§^I§ * §8!$§ * § Z§;
         _loc7_ = param2 * §8!$§ * § Z§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§>!T§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§2U§;
            _loc6_ = this.§^I§ * §-C§;
            _loc7_ = param2 * §-C§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§2U§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§^I§)
               {
                  if(this.§+M§)
                  {
                     _loc13_ = this.§2U§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§2U§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§2U§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§2U§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§2U§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§2U§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§2U§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§true§) : void
      {
         var _loc2_:int = this.§>!T§.length;
         this.§>!T§.length += param1.§>!T§.length;
         this.§>!T§.position = _loc2_;
         this.§>!T§.writeBytes(param1.§>!T§);
         this.§2U§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§2U§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§2U§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§2U§.fixed = true;
         this.§4z§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§4z§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§4z§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§4z§.fixed = true;
         this.§^I§ += param1.§2b§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §0!N§;
         var _loc6_:*;
         this.§4z§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§4z§[_loc7_ = _loc5_++] = param3;
         this.§4z§[_loc5_] = param4;
      }
      
      public function §52§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §0!N§;
         var _loc5_:*;
         this.§4z§[_loc5_ = _loc4_++] = param2;
         this.§4z§[_loc4_] = param3;
      }
      
      public function §=a§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §0!N§;
         param2.x = this.§4z§[_loc3_++];
         param2.y = this.§4z§[_loc3_++];
         param2.z = this.§4z§[_loc3_];
      }
      
      public function §2!5§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§+M§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §'0§.§-f§(param2) * _loc4_;
         var _loc6_:Number = §'0§.§@&§(param2) * _loc4_;
         var _loc7_:Number = §'0§.§"[§(param2) * _loc4_;
         this.§ in§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function § in§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §-C§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§2U§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§2U§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§2U§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§2U§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §-w§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §-C§;
         var _loc4_:*;
         this.§2U§[_loc4_ = _loc3_++] = this.§2U§[_loc4_] * param2;
         var _loc5_:*;
         this.§2U§[_loc5_ = _loc3_++] = this.§2U§[_loc5_] * param2;
         var _loc6_:*;
         this.§2U§[_loc6_ = _loc3_++] = this.§2U§[_loc6_] * param2;
         this.§2U§[_loc3_] *= param2;
      }
      
      public function §#3§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §-C§;
         var _loc3_:Number = !!this.§+M§ ? Number(this.§2U§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§2U§[_loc2_] * _loc3_;
         _loc5_ = this.§2U§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§2U§[_loc2_ + 2] * _loc3_;
         return §'0§.§&!J§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §4!§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§+M§)
         {
            this.§2!5§(param1,this.§#3§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §-C§ + 3;
            this.§2U§[_loc3_] = param2;
         }
      }
      
      public function §3!V§(param1:int) : Number
      {
         var _loc2_:int = param1 * §-C§ + 3;
         return this.§2U§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §8!$§;
         this.§>!T§.position = _loc4_ * § Z§;
         this.§>!T§.writeFloat(param2);
         this.§>!T§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §8!$§;
         this.§>!T§.position = _loc3_ * § Z§;
         param2.x = this.§>!T§.readFloat();
         param2.y = this.§>!T§.readFloat();
      }
      
      public function §!!,§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §0!N§;
         var _loc6_:*;
         this.§4z§[_loc6_ = _loc5_++] = this.§4z§[_loc6_] + param2;
         var _loc7_:*;
         this.§4z§[_loc7_ = _loc5_++] = this.§4z§[_loc7_] + param3;
         this.§4z§[_loc5_] += param4;
      }
      
      public function §,;§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §0!N§;
         this.§7!2§[0] = this.§4z§[_loc3_];
         this.§7!2§[1] = this.§4z§[_loc3_ + 1];
         this.§7!2§[2] = this.§4z§[_loc3_ + 2];
         param2.transformVectors(this.§7!2§,this.§7!2§);
         this.§4z§[_loc3_] = this.§7!2§[0];
         this.§4z§[_loc3_ + 1] = this.§7!2§[1];
         this.§4z§[_loc3_ + 2] = this.§7!2§[2];
      }
      
      public function §&r§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§+M§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §'0§.§-f§(param1) * _loc3_;
         var _loc5_:Number = §'0§.§@&§(param1) * _loc3_;
         var _loc6_:Number = §'0§.§"[§(param1) * _loc3_;
         this.§ in§(0,this.§^I§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §-[§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §-C§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§2U§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§2U§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§2U§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§2U§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §!L§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §-C§;
         if(this.§+M§)
         {
            _loc4_ = this.§2U§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§2U§[_loc3_] *= _loc4_;
            this.§2U§[_loc3_ + 1] *= _loc4_;
            this.§2U§[_loc3_ + 2] *= _loc4_;
            this.§2U§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§2U§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§+M§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§^I§ * §-C§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§3!V§(0);
               _loc6_ = !!this.§+M§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§-w§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§+M§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§+M§;
      }
      
      public function get §2b§() : int
      {
         return this.§^I§;
      }
      
      public function set §2b§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §8!$§ * § Z§ - this.§>!T§.length;
         _loc4_ = this.§>!T§.length;
         this.§>!T§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§>!T§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / § Z§)
            {
               this.§>!T§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§2U§.fixed = false;
         _loc2_ = param1 * §-C§ - this.§2U§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§2U§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§2U§.pop();
            _loc3_++;
         }
         this.§2U§.fixed = true;
         this.§4z§.fixed = false;
         _loc2_ = param1 * §0!N§ - this.§4z§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§4z§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§4z§.pop();
            _loc3_++;
         }
         this.§4z§.fixed = true;
         this.§^I§ = param1;
      }
      
      public function get §2'§() : ByteArray
      {
         this.§>!T§.position = 0;
         return this.§>!T§;
      }
      
      public function get §',§() : Vector.<Number>
      {
         return this.§2U§;
      }
      
      public function get §8k§() : Vector.<Number>
      {
         return this.§4z§;
      }
   }
}
