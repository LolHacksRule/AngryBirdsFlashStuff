package §5!3§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §^x§
   {
      
      public static const §>r§:int = 4;
      
      public static const §[&§:int = 2;
      
      public static const §4!7§:int = 3;
      
      public static const §8M§:int = 4;
      
      public static const §9q§:int = 0;
      
      public static const §+b§:int = 0;
      
      public static const §@n§:int = 0;
       
      
      private var §1v§:ByteArray;
      
      private var §8?§:Vector.<Number>;
      
      private var §7!%§:Vector.<Number>;
      
      private var §]H§:Boolean;
      
      private var §0[§:int;
      
      private var §0S§:Vector.<Number>;
      
      public function §^x§(param1:int, param2:Boolean = false)
      {
         this.§0S§ = new Vector.<Number>(12,true);
         super();
         this.§1v§ = new ByteArray();
         this.§1v§.endian = Endian.LITTLE_ENDIAN;
         this.§1v§.length = param1 * §[&§ * §8M§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §[&§)
         {
            this.§1v§.writeFloat(0);
            _loc3_++;
         }
         this.§8?§ = new Vector.<Number>(param1 * §>r§,true);
         this.§7!%§ = new Vector.<Number>(param1 * §4!7§,true);
         this.§]H§ = param2;
         this.§0[§ = param1;
      }
      
      public function clone() : §^x§
      {
         var _loc1_:§^x§ = new §^x§(0,this.§]H§);
         _loc1_.§1v§.length = this.§1v§.length;
         _loc1_.§1v§.writeBytes(this.§1v§);
         _loc1_.§8?§ = this.§8?§.concat();
         _loc1_.§8?§.fixed = true;
         _loc1_.§7!%§ = this.§7!%§.concat();
         _loc1_.§7!%§.fixed = true;
         _loc1_.§0[§ = this.§0[§;
         return _loc1_;
      }
      
      public function copyTo(param1:§^x§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§7!%§;
         _loc6_ = this.§0[§ * §4!7§;
         _loc7_ = param2 * §4!7§;
         if(param5)
         {
            param5.transformVectors(this.§7!%§,this.§0S§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§0S§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§7!%§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§1v§;
         _loc6_ = this.§0[§ * §[&§ * §8M§;
         _loc7_ = param2 * §[&§ * §8M§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§1v§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§8?§;
            _loc6_ = this.§0[§ * §>r§;
            _loc7_ = param2 * §>r§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§8?§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§0[§)
               {
                  if(this.§]H§)
                  {
                     _loc13_ = this.§8?§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§8?§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§8?§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§8?§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§8?§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§8?§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§8?§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§^x§) : void
      {
         var _loc2_:int = this.§1v§.length;
         this.§1v§.length += param1.§1v§.length;
         this.§1v§.position = _loc2_;
         this.§1v§.writeBytes(param1.§1v§);
         this.§8?§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§8?§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§8?§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§8?§.fixed = true;
         this.§7!%§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§7!%§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§7!%§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§7!%§.fixed = true;
         this.§0[§ += param1.§"!B§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §4!7§;
         var _loc6_:*;
         this.§7!%§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§7!%§[_loc7_ = _loc5_++] = param3;
         this.§7!%§[_loc5_] = param4;
      }
      
      public function §,i§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §4!7§;
         var _loc5_:*;
         this.§7!%§[_loc5_ = _loc4_++] = param2;
         this.§7!%§[_loc4_] = param3;
      }
      
      public function §!5§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §4!7§;
         param2.x = this.§7!%§[_loc3_++];
         param2.y = this.§7!%§[_loc3_++];
         param2.z = this.§7!%§[_loc3_];
      }
      
      public function §;E§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§]H§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §%F§.§%!8§(param2) * _loc4_;
         var _loc6_:Number = §%F§.§1!;§(param2) * _loc4_;
         var _loc7_:Number = §%F§.§`!6§(param2) * _loc4_;
         this.§[!<§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §[!<§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §>r§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§8?§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§8?§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§8?§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§8?§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §"!H§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §>r§;
         var _loc4_:*;
         this.§8?§[_loc4_ = _loc3_++] = this.§8?§[_loc4_] * param2;
         var _loc5_:*;
         this.§8?§[_loc5_ = _loc3_++] = this.§8?§[_loc5_] * param2;
         var _loc6_:*;
         this.§8?§[_loc6_ = _loc3_++] = this.§8?§[_loc6_] * param2;
         this.§8?§[_loc3_] *= param2;
      }
      
      public function §3!§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §>r§;
         var _loc3_:Number = !!this.§]H§ ? Number(this.§8?§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§8?§[_loc2_] * _loc3_;
         _loc5_ = this.§8?§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§8?§[_loc2_ + 2] * _loc3_;
         return §%F§.§!!§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §3L§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§]H§)
         {
            this.§;E§(param1,this.§3!§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §>r§ + 3;
            this.§8?§[_loc3_] = param2;
         }
      }
      
      public function §%!-§(param1:int) : Number
      {
         var _loc2_:int = param1 * §>r§ + 3;
         return this.§8?§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §[&§;
         this.§1v§.position = _loc4_ * §8M§;
         this.§1v§.writeFloat(param2);
         this.§1v§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §[&§;
         this.§1v§.position = _loc3_ * §8M§;
         param2.x = this.§1v§.readFloat();
         param2.y = this.§1v§.readFloat();
      }
      
      public function §2O§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §4!7§;
         var _loc6_:*;
         this.§7!%§[_loc6_ = _loc5_++] = this.§7!%§[_loc6_] + param2;
         var _loc7_:*;
         this.§7!%§[_loc7_ = _loc5_++] = this.§7!%§[_loc7_] + param3;
         this.§7!%§[_loc5_] += param4;
      }
      
      public function §%o§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §4!7§;
         this.§0S§[0] = this.§7!%§[_loc3_];
         this.§0S§[1] = this.§7!%§[_loc3_ + 1];
         this.§0S§[2] = this.§7!%§[_loc3_ + 2];
         param2.transformVectors(this.§0S§,this.§0S§);
         this.§7!%§[_loc3_] = this.§0S§[0];
         this.§7!%§[_loc3_ + 1] = this.§0S§[1];
         this.§7!%§[_loc3_ + 2] = this.§0S§[2];
      }
      
      public function §4R§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§]H§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §%F§.§%!8§(param1) * _loc3_;
         var _loc5_:Number = §%F§.§1!;§(param1) * _loc3_;
         var _loc6_:Number = §%F§.§`!6§(param1) * _loc3_;
         this.§[!<§(0,this.§0[§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §[^§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §>r§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§8?§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§8?§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§8?§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§8?§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §"%§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §>r§;
         if(this.§]H§)
         {
            _loc4_ = this.§8?§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§8?§[_loc3_] *= _loc4_;
            this.§8?§[_loc3_ + 1] *= _loc4_;
            this.§8?§[_loc3_ + 2] *= _loc4_;
            this.§8?§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§8?§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§]H§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§0[§ * §>r§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§%!-§(0);
               _loc6_ = !!this.§]H§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§"!H§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§]H§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§]H§;
      }
      
      public function get §"!B§() : int
      {
         return this.§0[§;
      }
      
      public function set §"!B§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §[&§ * §8M§ - this.§1v§.length;
         _loc4_ = this.§1v§.length;
         this.§1v§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§1v§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §8M§)
            {
               this.§1v§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§8?§.fixed = false;
         _loc2_ = param1 * §>r§ - this.§8?§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§8?§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§8?§.pop();
            _loc3_++;
         }
         this.§8?§.fixed = true;
         this.§7!%§.fixed = false;
         _loc2_ = param1 * §4!7§ - this.§7!%§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§7!%§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§7!%§.pop();
            _loc3_++;
         }
         this.§7!%§.fixed = true;
         this.§0[§ = param1;
      }
      
      public function get §>A§() : ByteArray
      {
         this.§1v§.position = 0;
         return this.§1v§;
      }
      
      public function get §6<§() : Vector.<Number>
      {
         return this.§8?§;
      }
      
      public function get §3P§() : Vector.<Number>
      {
         return this.§7!%§;
      }
   }
}
