package §="#§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §&-§
   {
      
      public static const §8q§:int = 4;
      
      public static const §,u§:int = 2;
      
      public static const §-"4§:int = 3;
      
      public static const §31§:int = 4;
      
      public static const §3"3§:int = 0;
      
      public static const §>!X§:int = 0;
      
      public static const §[!z§:int = 0;
       
      
      private var §-"8§:ByteArray;
      
      private var §%X§:Vector.<Number>;
      
      private var §'"+§:Vector.<Number>;
      
      private var §@!!§:Boolean;
      
      private var §`x§:int;
      
      private var §9n§:Vector.<Number>;
      
      public function §&-§(param1:int, param2:Boolean = false)
      {
         this.§9n§ = new Vector.<Number>(12,true);
         super();
         this.§-"8§ = new ByteArray();
         this.§-"8§.endian = Endian.LITTLE_ENDIAN;
         this.§-"8§.length = param1 * §,u§ * §31§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §,u§)
         {
            this.§-"8§.writeFloat(0);
            _loc3_++;
         }
         this.§%X§ = new Vector.<Number>(param1 * §8q§,true);
         this.§'"+§ = new Vector.<Number>(param1 * §-"4§,true);
         this.§@!!§ = param2;
         this.§`x§ = param1;
      }
      
      public function clone() : §&-§
      {
         var _loc1_:§&-§ = new §&-§(0,this.§@!!§);
         _loc1_.§-"8§.length = this.§-"8§.length;
         _loc1_.§-"8§.writeBytes(this.§-"8§);
         _loc1_.§%X§ = this.§%X§.concat();
         _loc1_.§%X§.fixed = true;
         _loc1_.§'"+§ = this.§'"+§.concat();
         _loc1_.§'"+§.fixed = true;
         _loc1_.§`x§ = this.§`x§;
         return _loc1_;
      }
      
      public function copyTo(param1:§&-§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§'"+§;
         _loc6_ = this.§`x§ * §-"4§;
         _loc7_ = param2 * §-"4§;
         if(param5)
         {
            param5.transformVectors(this.§'"+§,this.§9n§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§9n§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§'"+§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§-"8§;
         _loc6_ = this.§`x§ * §,u§ * §31§;
         _loc7_ = param2 * §,u§ * §31§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§-"8§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§%X§;
            _loc6_ = this.§`x§ * §8q§;
            _loc7_ = param2 * §8q§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§%X§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§`x§)
               {
                  if(this.§@!!§)
                  {
                     _loc13_ = this.§%X§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§%X§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§%X§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§%X§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§%X§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§%X§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§%X§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§&-§) : void
      {
         var _loc2_:int = this.§-"8§.length;
         this.§-"8§.length += param1.§-"8§.length;
         this.§-"8§.position = _loc2_;
         this.§-"8§.writeBytes(param1.§-"8§);
         this.§%X§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§%X§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§%X§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§%X§.fixed = true;
         this.§'"+§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§'"+§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§'"+§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§'"+§.fixed = true;
         this.§`x§ += param1.§;y§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §-"4§;
         var _loc6_:*;
         this.§'"+§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§'"+§[_loc7_ = _loc5_++] = param3;
         this.§'"+§[_loc5_] = param4;
      }
      
      public function §%3§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §-"4§;
         var _loc5_:*;
         this.§'"+§[_loc5_ = _loc4_++] = param2;
         this.§'"+§[_loc4_] = param3;
      }
      
      public function §9b§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §-"4§;
         param2.x = this.§'"+§[_loc3_++];
         param2.y = this.§'"+§[_loc3_++];
         param2.z = this.§'"+§[_loc3_];
      }
      
      public function §1!,§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§@!!§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §"!E§.§0F§(param2) * _loc4_;
         var _loc6_:Number = §"!E§.§=r§(param2) * _loc4_;
         var _loc7_:Number = §"!E§.§`!d§(param2) * _loc4_;
         this.§1!`§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §1!`§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §8q§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§%X§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§%X§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§%X§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§%X§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §7" §(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §8q§;
         var _loc4_:*;
         this.§%X§[_loc4_ = _loc3_++] = this.§%X§[_loc4_] * param2;
         var _loc5_:*;
         this.§%X§[_loc5_ = _loc3_++] = this.§%X§[_loc5_] * param2;
         var _loc6_:*;
         this.§%X§[_loc6_ = _loc3_++] = this.§%X§[_loc6_] * param2;
         this.§%X§[_loc3_] *= param2;
      }
      
      public function §+!g§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §8q§;
         var _loc3_:Number = !!this.§@!!§ ? Number(this.§%X§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§%X§[_loc2_] * _loc3_;
         _loc5_ = this.§%X§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§%X§[_loc2_ + 2] * _loc3_;
         return §"!E§.§#"-§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §8s§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§@!!§)
         {
            this.§1!,§(param1,this.§+!g§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §8q§ + 3;
            this.§%X§[_loc3_] = param2;
         }
      }
      
      public function §7?§(param1:int) : Number
      {
         var _loc2_:int = param1 * §8q§ + 3;
         return this.§%X§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §,u§;
         this.§-"8§.position = _loc4_ * §31§;
         this.§-"8§.writeFloat(param2);
         this.§-"8§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §,u§;
         this.§-"8§.position = _loc3_ * §31§;
         param2.x = this.§-"8§.readFloat();
         param2.y = this.§-"8§.readFloat();
      }
      
      public function §'!o§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §-"4§;
         var _loc6_:*;
         this.§'"+§[_loc6_ = _loc5_++] = this.§'"+§[_loc6_] + param2;
         var _loc7_:*;
         this.§'"+§[_loc7_ = _loc5_++] = this.§'"+§[_loc7_] + param3;
         this.§'"+§[_loc5_] += param4;
      }
      
      public function §;D§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §-"4§;
         this.§9n§[0] = this.§'"+§[_loc3_];
         this.§9n§[1] = this.§'"+§[_loc3_ + 1];
         this.§9n§[2] = this.§'"+§[_loc3_ + 2];
         param2.transformVectors(this.§9n§,this.§9n§);
         this.§'"+§[_loc3_] = this.§9n§[0];
         this.§'"+§[_loc3_ + 1] = this.§9n§[1];
         this.§'"+§[_loc3_ + 2] = this.§9n§[2];
      }
      
      public function §1!y§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§@!!§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §"!E§.§0F§(param1) * _loc3_;
         var _loc5_:Number = §"!E§.§=r§(param1) * _loc3_;
         var _loc6_:Number = §"!E§.§`!d§(param1) * _loc3_;
         this.§1!`§(0,this.§`x§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §`"7§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §8q§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§%X§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§%X§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§%X§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§%X§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §6!O§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §8q§;
         if(this.§@!!§)
         {
            _loc4_ = this.§%X§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§%X§[_loc3_] *= _loc4_;
            this.§%X§[_loc3_ + 1] *= _loc4_;
            this.§%X§[_loc3_ + 2] *= _loc4_;
            this.§%X§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§%X§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§@!!§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§`x§ * §8q§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§7?§(0);
               _loc6_ = !!this.§@!!§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§7" §(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§@!!§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§@!!§;
      }
      
      public function get §;y§() : int
      {
         return this.§`x§;
      }
      
      public function set §;y§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §,u§ * §31§ - this.§-"8§.length;
         _loc4_ = this.§-"8§.length;
         this.§-"8§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§-"8§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §31§)
            {
               this.§-"8§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§%X§.fixed = false;
         _loc2_ = param1 * §8q§ - this.§%X§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§%X§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§%X§.pop();
            _loc3_++;
         }
         this.§%X§.fixed = true;
         this.§'"+§.fixed = false;
         _loc2_ = param1 * §-"4§ - this.§'"+§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§'"+§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§'"+§.pop();
            _loc3_++;
         }
         this.§'"+§.fixed = true;
         this.§`x§ = param1;
      }
      
      public function get §1"6§() : ByteArray
      {
         this.§-"8§.position = 0;
         return this.§-"8§;
      }
      
      public function get §3G§() : Vector.<Number>
      {
         return this.§%X§;
      }
      
      public function get §&!c§() : Vector.<Number>
      {
         return this.§'"+§;
      }
   }
}
