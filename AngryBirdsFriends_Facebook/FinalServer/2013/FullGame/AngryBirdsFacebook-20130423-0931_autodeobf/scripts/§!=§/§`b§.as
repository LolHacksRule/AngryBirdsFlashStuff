package §!=§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §`b§
   {
      
      public static const §""U§:int = 4;
      
      public static const §5!O§:int = 2;
      
      public static const §1!-§:int = 3;
      
      public static const §2$§:int = 4;
      
      public static const §%!V§:int = 0;
      
      public static const §<!W§:int = 0;
      
      public static const §&"I§:int = 0;
       
      
      private var §0Z§:ByteArray;
      
      private var §[`§:Vector.<Number>;
      
      private var §8G§:Vector.<Number>;
      
      private var §8$§:Boolean;
      
      private var §8"9§:int;
      
      private var §4U§:Vector.<Number>;
      
      public function §`b§(param1:int, param2:Boolean = false)
      {
         this.§4U§ = new Vector.<Number>(12,true);
         super();
         this.§0Z§ = new ByteArray();
         this.§0Z§.endian = Endian.LITTLE_ENDIAN;
         this.§0Z§.length = param1 * §5!O§ * §2$§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §5!O§)
         {
            this.§0Z§.writeFloat(0);
            _loc3_++;
         }
         this.§[`§ = new Vector.<Number>(param1 * §""U§,true);
         this.§8G§ = new Vector.<Number>(param1 * §1!-§,true);
         this.§8$§ = param2;
         this.§8"9§ = param1;
      }
      
      public function clone() : §`b§
      {
         var _loc1_:§`b§ = new §`b§(0,this.§8$§);
         _loc1_.§0Z§.length = this.§0Z§.length;
         _loc1_.§0Z§.writeBytes(this.§0Z§);
         _loc1_.§[`§ = this.§[`§.concat();
         _loc1_.§[`§.fixed = true;
         _loc1_.§8G§ = this.§8G§.concat();
         _loc1_.§8G§.fixed = true;
         _loc1_.§8"9§ = this.§8"9§;
         return _loc1_;
      }
      
      public function copyTo(param1:§`b§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§8G§;
         _loc6_ = this.§8"9§ * §1!-§;
         _loc7_ = param2 * §1!-§;
         if(param5)
         {
            param5.transformVectors(this.§8G§,this.§4U§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§4U§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§8G§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§0Z§;
         _loc6_ = this.§8"9§ * §5!O§ * §2$§;
         _loc7_ = param2 * §5!O§ * §2$§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§0Z§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§[`§;
            _loc6_ = this.§8"9§ * §""U§;
            _loc7_ = param2 * §""U§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§[`§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§8"9§)
               {
                  if(this.§8$§)
                  {
                     _loc13_ = this.§[`§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§[`§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§[`§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§[`§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§[`§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§[`§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§[`§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§`b§) : void
      {
         var _loc2_:int = this.§0Z§.length;
         this.§0Z§.length += param1.§0Z§.length;
         this.§0Z§.position = _loc2_;
         this.§0Z§.writeBytes(param1.§0Z§);
         this.§[`§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§[`§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§[`§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§[`§.fixed = true;
         this.§8G§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§8G§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§8G§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§8G§.fixed = true;
         this.§8"9§ += param1.§2"M§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §1!-§;
         var _loc6_:*;
         this.§8G§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§8G§[_loc7_ = _loc5_++] = param3;
         this.§8G§[_loc5_] = param4;
      }
      
      public function §0u§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §1!-§;
         var _loc5_:*;
         this.§8G§[_loc5_ = _loc4_++] = param2;
         this.§8G§[_loc4_] = param3;
      }
      
      public function §@!]§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §1!-§;
         param2.x = this.§8G§[_loc3_++];
         param2.y = this.§8G§[_loc3_++];
         param2.z = this.§8G§[_loc3_];
      }
      
      public function §<!<§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§8$§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §6$§.§3!6§(param2) * _loc4_;
         var _loc6_:Number = §6$§.§5"B§(param2) * _loc4_;
         var _loc7_:Number = §6$§.§="=§(param2) * _loc4_;
         this.§^k§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §^k§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §""U§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§[`§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§[`§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§[`§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§[`§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §"#§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §""U§;
         var _loc4_:*;
         this.§[`§[_loc4_ = _loc3_++] = this.§[`§[_loc4_] * param2;
         var _loc5_:*;
         this.§[`§[_loc5_ = _loc3_++] = this.§[`§[_loc5_] * param2;
         var _loc6_:*;
         this.§[`§[_loc6_ = _loc3_++] = this.§[`§[_loc6_] * param2;
         this.§[`§[_loc3_] *= param2;
      }
      
      public function §9"O§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §""U§;
         var _loc3_:Number = !!this.§8$§ ? Number(this.§[`§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§[`§[_loc2_] * _loc3_;
         _loc5_ = this.§[`§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§[`§[_loc2_ + 2] * _loc3_;
         return §6$§.§=h§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §^!0§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§8$§)
         {
            this.§<!<§(param1,this.§9"O§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §""U§ + 3;
            this.§[`§[_loc3_] = param2;
         }
      }
      
      public function § "N§(param1:int) : Number
      {
         var _loc2_:int = param1 * §""U§ + 3;
         return this.§[`§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §5!O§;
         this.§0Z§.position = _loc4_ * §2$§;
         this.§0Z§.writeFloat(param2);
         this.§0Z§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §5!O§;
         this.§0Z§.position = _loc3_ * §2$§;
         param2.x = this.§0Z§.readFloat();
         param2.y = this.§0Z§.readFloat();
      }
      
      public function §,S§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §1!-§;
         var _loc6_:*;
         this.§8G§[_loc6_ = _loc5_++] = this.§8G§[_loc6_] + param2;
         var _loc7_:*;
         this.§8G§[_loc7_ = _loc5_++] = this.§8G§[_loc7_] + param3;
         this.§8G§[_loc5_] += param4;
      }
      
      public function §#U§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §1!-§;
         this.§4U§[0] = this.§8G§[_loc3_];
         this.§4U§[1] = this.§8G§[_loc3_ + 1];
         this.§4U§[2] = this.§8G§[_loc3_ + 2];
         param2.transformVectors(this.§4U§,this.§4U§);
         this.§8G§[_loc3_] = this.§4U§[0];
         this.§8G§[_loc3_ + 1] = this.§4U§[1];
         this.§8G§[_loc3_ + 2] = this.§4U§[2];
      }
      
      public function §#"3§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§8$§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §6$§.§3!6§(param1) * _loc3_;
         var _loc5_:Number = §6$§.§5"B§(param1) * _loc3_;
         var _loc6_:Number = §6$§.§="=§(param1) * _loc3_;
         this.§^k§(0,this.§8"9§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §`P§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §""U§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§[`§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§[`§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§[`§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§[`§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §9!`§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §""U§;
         if(this.§8$§)
         {
            _loc4_ = this.§[`§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§[`§[_loc3_] *= _loc4_;
            this.§[`§[_loc3_ + 1] *= _loc4_;
            this.§[`§[_loc3_ + 2] *= _loc4_;
            this.§[`§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§[`§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §7!F§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§8$§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§8"9§ * §""U§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§ "N§(0);
               _loc6_ = !!this.§8$§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§"#§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§8$§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§8$§;
      }
      
      public function get §2"M§() : int
      {
         return this.§8"9§;
      }
      
      public function set §2"M§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §5!O§ * §2$§ - this.§0Z§.length;
         _loc4_ = this.§0Z§.length;
         this.§0Z§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§0Z§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §2$§)
            {
               this.§0Z§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§[`§.fixed = false;
         _loc2_ = param1 * §""U§ - this.§[`§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§[`§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§[`§.pop();
            _loc3_++;
         }
         this.§[`§.fixed = true;
         this.§8G§.fixed = false;
         _loc2_ = param1 * §1!-§ - this.§8G§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§8G§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§8G§.pop();
            _loc3_++;
         }
         this.§8G§.fixed = true;
         this.§8"9§ = param1;
      }
      
      public function get §@T§() : ByteArray
      {
         this.§0Z§.position = 0;
         return this.§0Z§;
      }
      
      public function get §,e§() : Vector.<Number>
      {
         return this.§[`§;
      }
      
      public function get §['§() : Vector.<Number>
      {
         return this.§8G§;
      }
   }
}
