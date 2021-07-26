package §8!8§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §`g§
   {
      
      public static const §-=§:int = 4;
      
      public static const §"!4§:int = 2;
      
      public static const §0f§:int = 3;
      
      public static const §+"=§:int = 4;
      
      public static const §6C§:int = 0;
      
      public static const §`<§:int = 0;
      
      public static const §"!h§:int = 0;
       
      
      private var §[T§:ByteArray;
      
      private var §<e§:Vector.<Number>;
      
      private var §7!b§:Vector.<Number>;
      
      private var §8-§:Boolean;
      
      private var §]4§:int;
      
      private var §<l§:Vector.<Number>;
      
      public function §`g§(param1:int, param2:Boolean = false)
      {
         this.§<l§ = new Vector.<Number>(12,true);
         super();
         this.§[T§ = new ByteArray();
         this.§[T§.endian = Endian.LITTLE_ENDIAN;
         this.§[T§.length = param1 * §"!4§ * §+"=§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §"!4§)
         {
            this.§[T§.writeFloat(0);
            _loc3_++;
         }
         this.§<e§ = new Vector.<Number>(param1 * §-=§,true);
         this.§7!b§ = new Vector.<Number>(param1 * §0f§,true);
         this.§8-§ = param2;
         this.§]4§ = param1;
      }
      
      public function clone() : §`g§
      {
         var _loc1_:§`g§ = new §`g§(0,this.§8-§);
         _loc1_.§[T§.length = this.§[T§.length;
         _loc1_.§[T§.writeBytes(this.§[T§);
         _loc1_.§<e§ = this.§<e§.concat();
         _loc1_.§<e§.fixed = true;
         _loc1_.§7!b§ = this.§7!b§.concat();
         _loc1_.§7!b§.fixed = true;
         _loc1_.§]4§ = this.§]4§;
         return _loc1_;
      }
      
      public function copyTo(param1:§`g§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§7!b§;
         _loc6_ = this.§]4§ * §0f§;
         _loc7_ = param2 * §0f§;
         if(param5)
         {
            param5.transformVectors(this.§7!b§,this.§<l§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§<l§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§7!b§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§[T§;
         _loc6_ = this.§]4§ * §"!4§ * §+"=§;
         _loc7_ = param2 * §"!4§ * §+"=§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§[T§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§<e§;
            _loc6_ = this.§]4§ * §-=§;
            _loc7_ = param2 * §-=§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§<e§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§]4§)
               {
                  if(this.§8-§)
                  {
                     _loc13_ = this.§<e§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§<e§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§<e§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§<e§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§<e§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§<e§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§<e§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§`g§) : void
      {
         var _loc2_:int = this.§[T§.length;
         this.§[T§.length += param1.§[T§.length;
         this.§[T§.position = _loc2_;
         this.§[T§.writeBytes(param1.§[T§);
         this.§<e§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§<e§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§<e§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§<e§.fixed = true;
         this.§7!b§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§7!b§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§7!b§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§7!b§.fixed = true;
         this.§]4§ += param1.§"!U§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §0f§;
         var _loc6_:*;
         this.§7!b§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§7!b§[_loc7_ = _loc5_++] = param3;
         this.§7!b§[_loc5_] = param4;
      }
      
      public function §"!y§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §0f§;
         var _loc5_:*;
         this.§7!b§[_loc5_ = _loc4_++] = param2;
         this.§7!b§[_loc4_] = param3;
      }
      
      public function §!%§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §0f§;
         param2.x = this.§7!b§[_loc3_++];
         param2.y = this.§7!b§[_loc3_++];
         param2.z = this.§7!b§[_loc3_];
      }
      
      public function §2<§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§8-§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §+!w§.§76§(param2) * _loc4_;
         var _loc6_:Number = §+!w§.§=+§(param2) * _loc4_;
         var _loc7_:Number = §+!w§.§5!K§(param2) * _loc4_;
         this.§;G§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §;G§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §-=§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§<e§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§<e§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§<e§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§<e§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §8r§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §-=§;
         var _loc4_:*;
         this.§<e§[_loc4_ = _loc3_++] = this.§<e§[_loc4_] * param2;
         var _loc5_:*;
         this.§<e§[_loc5_ = _loc3_++] = this.§<e§[_loc5_] * param2;
         var _loc6_:*;
         this.§<e§[_loc6_ = _loc3_++] = this.§<e§[_loc6_] * param2;
         this.§<e§[_loc3_] *= param2;
      }
      
      public function §^Z§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §-=§;
         var _loc3_:Number = !!this.§8-§ ? Number(this.§<e§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§<e§[_loc2_] * _loc3_;
         _loc5_ = this.§<e§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§<e§[_loc2_ + 2] * _loc3_;
         return §+!w§.§9$§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §[_§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§8-§)
         {
            this.§2<§(param1,this.§^Z§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §-=§ + 3;
            this.§<e§[_loc3_] = param2;
         }
      }
      
      public function § "-§(param1:int) : Number
      {
         var _loc2_:int = param1 * §-=§ + 3;
         return this.§<e§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §"!4§;
         this.§[T§.position = _loc4_ * §+"=§;
         this.§[T§.writeFloat(param2);
         this.§[T§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §"!4§;
         this.§[T§.position = _loc3_ * §+"=§;
         param2.x = this.§[T§.readFloat();
         param2.y = this.§[T§.readFloat();
      }
      
      public function §!!'§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §0f§;
         var _loc6_:*;
         this.§7!b§[_loc6_ = _loc5_++] = this.§7!b§[_loc6_] + param2;
         var _loc7_:*;
         this.§7!b§[_loc7_ = _loc5_++] = this.§7!b§[_loc7_] + param3;
         this.§7!b§[_loc5_] += param4;
      }
      
      public function §,"D§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §0f§;
         this.§<l§[0] = this.§7!b§[_loc3_];
         this.§<l§[1] = this.§7!b§[_loc3_ + 1];
         this.§<l§[2] = this.§7!b§[_loc3_ + 2];
         param2.transformVectors(this.§<l§,this.§<l§);
         this.§7!b§[_loc3_] = this.§<l§[0];
         this.§7!b§[_loc3_ + 1] = this.§<l§[1];
         this.§7!b§[_loc3_ + 2] = this.§<l§[2];
      }
      
      public function §]B§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§8-§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §+!w§.§76§(param1) * _loc3_;
         var _loc5_:Number = §+!w§.§=+§(param1) * _loc3_;
         var _loc6_:Number = §+!w§.§5!K§(param1) * _loc3_;
         this.§;G§(0,this.§]4§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §[!d§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §-=§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§<e§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§<e§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§<e§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§<e§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §;!0§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §-=§;
         if(this.§8-§)
         {
            _loc4_ = this.§<e§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§<e§[_loc3_] *= _loc4_;
            this.§<e§[_loc3_ + 1] *= _loc4_;
            this.§<e§[_loc3_ + 2] *= _loc4_;
            this.§<e§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§<e§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §6!!§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§8-§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§]4§ * §-=§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§ "-§(0);
               _loc6_ = !!this.§8-§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§8r§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§8-§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§8-§;
      }
      
      public function get §"!U§() : int
      {
         return this.§]4§;
      }
      
      public function set §"!U§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §"!4§ * §+"=§ - this.§[T§.length;
         _loc4_ = this.§[T§.length;
         this.§[T§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§[T§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §+"=§)
            {
               this.§[T§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§<e§.fixed = false;
         _loc2_ = param1 * §-=§ - this.§<e§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§<e§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§<e§.pop();
            _loc3_++;
         }
         this.§<e§.fixed = true;
         this.§7!b§.fixed = false;
         _loc2_ = param1 * §0f§ - this.§7!b§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§7!b§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§7!b§.pop();
            _loc3_++;
         }
         this.§7!b§.fixed = true;
         this.§]4§ = param1;
      }
      
      public function get §,!4§() : ByteArray
      {
         this.§[T§.position = 0;
         return this.§[T§;
      }
      
      public function get §0!!§() : Vector.<Number>
      {
         return this.§<e§;
      }
      
      public function get §4"7§() : Vector.<Number>
      {
         return this.§7!b§;
      }
   }
}
