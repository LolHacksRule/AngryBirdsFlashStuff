package §7"G§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §%!§
   {
      
      public static const §6"4§:int = 4;
      
      public static const §1"D§:int = 2;
      
      public static const §&"j§:int = 3;
      
      public static const §,3§:int = 4;
      
      public static const §<"m§:int = 0;
      
      public static const § Z§:int = 0;
      
      public static const §5!y§:int = 0;
       
      
      private var §4s§:ByteArray;
      
      private var §@l§:Vector.<Number>;
      
      private var §=m§:Vector.<Number>;
      
      private var §8q§:Boolean;
      
      private var §="U§:int;
      
      private var §#!7§:Vector.<Number>;
      
      public function §%!§(param1:int, param2:Boolean = false)
      {
         this.§#!7§ = new Vector.<Number>(12,true);
         super();
         this.§4s§ = new ByteArray();
         this.§4s§.endian = Endian.LITTLE_ENDIAN;
         this.§4s§.length = param1 * §1"D§ * §,3§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §1"D§)
         {
            this.§4s§.writeFloat(0);
            _loc3_++;
         }
         this.§@l§ = new Vector.<Number>(param1 * §6"4§,true);
         this.§=m§ = new Vector.<Number>(param1 * §&"j§,true);
         this.§8q§ = param2;
         this.§="U§ = param1;
      }
      
      public function clone() : §%!§
      {
         var _loc1_:§%!§ = new §%!§(0,this.§8q§);
         _loc1_.§4s§.length = this.§4s§.length;
         _loc1_.§4s§.writeBytes(this.§4s§);
         _loc1_.§@l§ = this.§@l§.concat();
         _loc1_.§@l§.fixed = true;
         _loc1_.§=m§ = this.§=m§.concat();
         _loc1_.§=m§.fixed = true;
         _loc1_.§="U§ = this.§="U§;
         return _loc1_;
      }
      
      public function copyTo(param1:§%!§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§=m§;
         _loc6_ = this.§="U§ * §&"j§;
         _loc7_ = param2 * §&"j§;
         if(param5)
         {
            param5.transformVectors(this.§=m§,this.§#!7§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§#!7§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§=m§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§4s§;
         _loc6_ = this.§="U§ * §1"D§ * §,3§;
         _loc7_ = param2 * §1"D§ * §,3§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§4s§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§@l§;
            _loc6_ = this.§="U§ * §6"4§;
            _loc7_ = param2 * §6"4§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§@l§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§="U§)
               {
                  if(this.§8q§)
                  {
                     _loc13_ = this.§@l§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§@l§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§@l§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§@l§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§@l§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§@l§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§@l§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§%!§) : void
      {
         var _loc2_:int = this.§4s§.length;
         this.§4s§.length += param1.§4s§.length;
         this.§4s§.position = _loc2_;
         this.§4s§.writeBytes(param1.§4s§);
         this.§@l§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§@l§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§@l§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§@l§.fixed = true;
         this.§=m§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§=m§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§=m§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§=m§.fixed = true;
         this.§="U§ += param1.§3"L§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §&"j§;
         var _loc6_:*;
         this.§=m§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§=m§[_loc7_ = _loc5_++] = param3;
         this.§=m§[_loc5_] = param4;
      }
      
      public function §9u§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §&"j§;
         var _loc5_:*;
         this.§=m§[_loc5_ = _loc4_++] = param2;
         this.§=m§[_loc4_] = param3;
      }
      
      public function getPosition(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §&"j§;
         param2.x = this.§=m§[_loc3_++];
         param2.y = this.§=m§[_loc3_++];
         param2.z = this.§=m§[_loc3_];
      }
      
      public function §,q§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§8q§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §5D§.§>!s§(param2) * _loc4_;
         var _loc6_:Number = §5D§.§7r§(param2) * _loc4_;
         var _loc7_:Number = §5D§.§;E§(param2) * _loc4_;
         this.§=K§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §=K§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §6"4§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§@l§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§@l§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§@l§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§@l§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §7&§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §6"4§;
         var _loc4_:*;
         this.§@l§[_loc4_ = _loc3_++] = this.§@l§[_loc4_] * param2;
         var _loc5_:*;
         this.§@l§[_loc5_ = _loc3_++] = this.§@l§[_loc5_] * param2;
         var _loc6_:*;
         this.§@l§[_loc6_ = _loc3_++] = this.§@l§[_loc6_] * param2;
         this.§@l§[_loc3_] *= param2;
      }
      
      public function §`a§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §6"4§;
         var _loc3_:Number = !!this.§8q§ ? Number(this.§@l§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§@l§[_loc2_] * _loc3_;
         _loc5_ = this.§@l§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§@l§[_loc2_ + 2] * _loc3_;
         return §5D§.§!"@§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §#"B§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§8q§)
         {
            this.§,q§(param1,this.§`a§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §6"4§ + 3;
            this.§@l§[_loc3_] = param2;
         }
      }
      
      public function §?"m§(param1:int) : Number
      {
         var _loc2_:int = param1 * §6"4§ + 3;
         return this.§@l§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §1"D§;
         this.§4s§.position = _loc4_ * §,3§;
         this.§4s§.writeFloat(param2);
         this.§4s§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §1"D§;
         this.§4s§.position = _loc3_ * §,3§;
         param2.x = this.§4s§.readFloat();
         param2.y = this.§4s§.readFloat();
      }
      
      public function §5-§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §&"j§;
         var _loc6_:*;
         this.§=m§[_loc6_ = _loc5_++] = this.§=m§[_loc6_] + param2;
         var _loc7_:*;
         this.§=m§[_loc7_ = _loc5_++] = this.§=m§[_loc7_] + param3;
         this.§=m§[_loc5_] += param4;
      }
      
      public function §@"G§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §&"j§;
         this.§#!7§[0] = this.§=m§[_loc3_];
         this.§#!7§[1] = this.§=m§[_loc3_ + 1];
         this.§#!7§[2] = this.§=m§[_loc3_ + 2];
         param2.transformVectors(this.§#!7§,this.§#!7§);
         this.§=m§[_loc3_] = this.§#!7§[0];
         this.§=m§[_loc3_ + 1] = this.§#!7§[1];
         this.§=m§[_loc3_ + 2] = this.§#!7§[2];
      }
      
      public function §8]§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§8q§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §5D§.§>!s§(param1) * _loc3_;
         var _loc5_:Number = §5D§.§7r§(param1) * _loc3_;
         var _loc6_:Number = §5D§.§;E§(param1) * _loc3_;
         this.§=K§(0,this.§="U§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §9"Z§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §6"4§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§@l§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§@l§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§@l§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§@l§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §""T§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §6"4§;
         if(this.§8q§)
         {
            _loc4_ = this.§@l§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§@l§[_loc3_] *= _loc4_;
            this.§@l§[_loc3_ + 1] *= _loc4_;
            this.§@l§[_loc3_ + 2] *= _loc4_;
            this.§@l§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§@l§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §2!&§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§8q§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§="U§ * §6"4§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§?"m§(0);
               _loc6_ = !!this.§8q§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§7&§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§8q§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§8q§;
      }
      
      public function get §3"L§() : int
      {
         return this.§="U§;
      }
      
      public function set §3"L§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §1"D§ * §,3§ - this.§4s§.length;
         _loc4_ = this.§4s§.length;
         this.§4s§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§4s§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §,3§)
            {
               this.§4s§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§@l§.fixed = false;
         _loc2_ = param1 * §6"4§ - this.§@l§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§@l§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§@l§.pop();
            _loc3_++;
         }
         this.§@l§.fixed = true;
         this.§=m§.fixed = false;
         _loc2_ = param1 * §&"j§ - this.§=m§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§=m§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§=m§.pop();
            _loc3_++;
         }
         this.§=m§.fixed = true;
         this.§="U§ = param1;
      }
      
      public function get §9!v§() : ByteArray
      {
         this.§4s§.position = 0;
         return this.§4s§;
      }
      
      public function get §4#!§() : Vector.<Number>
      {
         return this.§@l§;
      }
      
      public function get §1"2§() : Vector.<Number>
      {
         return this.§=m§;
      }
   }
}
