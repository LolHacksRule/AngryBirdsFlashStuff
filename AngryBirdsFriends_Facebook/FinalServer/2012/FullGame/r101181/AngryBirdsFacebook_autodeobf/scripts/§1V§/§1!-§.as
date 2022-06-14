package §1V§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §1!-§
   {
      
      public static const §!!J§:int = 4;
      
      public static const §%0§:int = 2;
      
      public static const §6V§:int = 3;
      
      public static const §]t§:int = 4;
      
      public static const §9"6§:int = 0;
      
      public static const §#Y§:int = 0;
      
      public static const §,N§:int = 0;
       
      
      private var §29§:ByteArray;
      
      private var §;-§:Vector.<Number>;
      
      private var §=+§:Vector.<Number>;
      
      private var §;!n§:Boolean;
      
      private var §-!3§:int;
      
      private var §6!P§:Vector.<Number>;
      
      public function §1!-§(param1:int, param2:Boolean = false)
      {
         this.§6!P§ = new Vector.<Number>(12,true);
         super();
         this.§29§ = new ByteArray();
         this.§29§.endian = Endian.LITTLE_ENDIAN;
         this.§29§.length = param1 * §%0§ * §]t§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §%0§)
         {
            this.§29§.writeFloat(0);
            _loc3_++;
         }
         this.§;-§ = new Vector.<Number>(param1 * §!!J§,true);
         this.§=+§ = new Vector.<Number>(param1 * §6V§,true);
         this.§;!n§ = param2;
         this.§-!3§ = param1;
      }
      
      public function clone() : §1!-§
      {
         var _loc1_:§1!-§ = new §1!-§(0,this.§;!n§);
         _loc1_.§29§.length = this.§29§.length;
         _loc1_.§29§.writeBytes(this.§29§);
         _loc1_.§;-§ = this.§;-§.concat();
         _loc1_.§;-§.fixed = true;
         _loc1_.§=+§ = this.§=+§.concat();
         _loc1_.§=+§.fixed = true;
         _loc1_.§-!3§ = this.§-!3§;
         return _loc1_;
      }
      
      public function copyTo(param1:§1!-§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§=+§;
         _loc6_ = this.§-!3§ * §6V§;
         _loc7_ = param2 * §6V§;
         if(param5)
         {
            param5.transformVectors(this.§=+§,this.§6!P§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§6!P§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§=+§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§29§;
         _loc6_ = this.§-!3§ * §%0§ * §]t§;
         _loc7_ = param2 * §%0§ * §]t§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§29§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§;-§;
            _loc6_ = this.§-!3§ * §!!J§;
            _loc7_ = param2 * §!!J§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§;-§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§-!3§)
               {
                  if(this.§;!n§)
                  {
                     _loc13_ = this.§;-§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§;-§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§;-§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§;-§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§;-§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§;-§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§;-§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§1!-§) : void
      {
         var _loc2_:int = this.§29§.length;
         this.§29§.length += param1.§29§.length;
         this.§29§.position = _loc2_;
         this.§29§.writeBytes(param1.§29§);
         this.§;-§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§;-§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§;-§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§;-§.fixed = true;
         this.§=+§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§=+§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§=+§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§=+§.fixed = true;
         this.§-!3§ += param1.§8=§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §6V§;
         var _loc6_:*;
         this.§=+§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§=+§[_loc7_ = _loc5_++] = param3;
         this.§=+§[_loc5_] = param4;
      }
      
      public function §?Y§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §6V§;
         var _loc5_:*;
         this.§=+§[_loc5_ = _loc4_++] = param2;
         this.§=+§[_loc4_] = param3;
      }
      
      public function §<!x§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §6V§;
         param2.x = this.§=+§[_loc3_++];
         param2.y = this.§=+§[_loc3_++];
         param2.z = this.§=+§[_loc3_];
      }
      
      public function §3I§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§;!n§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §-G§.§7_§(param2) * _loc4_;
         var _loc6_:Number = §-G§.§9"<§(param2) * _loc4_;
         var _loc7_:Number = §-G§.§8t§(param2) * _loc4_;
         this.§^f§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §^f§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §!!J§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§;-§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§;-§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§;-§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§;-§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §^!o§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §!!J§;
         var _loc4_:*;
         this.§;-§[_loc4_ = _loc3_++] = this.§;-§[_loc4_] * param2;
         var _loc5_:*;
         this.§;-§[_loc5_ = _loc3_++] = this.§;-§[_loc5_] * param2;
         var _loc6_:*;
         this.§;-§[_loc6_ = _loc3_++] = this.§;-§[_loc6_] * param2;
         this.§;-§[_loc3_] *= param2;
      }
      
      public function §5"<§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §!!J§;
         var _loc3_:Number = !!this.§;!n§ ? Number(this.§;-§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§;-§[_loc2_] * _loc3_;
         _loc5_ = this.§;-§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§;-§[_loc2_ + 2] * _loc3_;
         return §-G§.§?!T§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §6!8§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§;!n§)
         {
            this.§3I§(param1,this.§5"<§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §!!J§ + 3;
            this.§;-§[_loc3_] = param2;
         }
      }
      
      public function § !n§(param1:int) : Number
      {
         var _loc2_:int = param1 * §!!J§ + 3;
         return this.§;-§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §%0§;
         this.§29§.position = _loc4_ * §]t§;
         this.§29§.writeFloat(param2);
         this.§29§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §%0§;
         this.§29§.position = _loc3_ * §]t§;
         param2.x = this.§29§.readFloat();
         param2.y = this.§29§.readFloat();
      }
      
      public function §7"%§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §6V§;
         var _loc6_:*;
         this.§=+§[_loc6_ = _loc5_++] = this.§=+§[_loc6_] + param2;
         var _loc7_:*;
         this.§=+§[_loc7_ = _loc5_++] = this.§=+§[_loc7_] + param3;
         this.§=+§[_loc5_] += param4;
      }
      
      public function §-! §(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §6V§;
         this.§6!P§[0] = this.§=+§[_loc3_];
         this.§6!P§[1] = this.§=+§[_loc3_ + 1];
         this.§6!P§[2] = this.§=+§[_loc3_ + 2];
         param2.transformVectors(this.§6!P§,this.§6!P§);
         this.§=+§[_loc3_] = this.§6!P§[0];
         this.§=+§[_loc3_ + 1] = this.§6!P§[1];
         this.§=+§[_loc3_ + 2] = this.§6!P§[2];
      }
      
      public function §+"0§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§;!n§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §-G§.§7_§(param1) * _loc3_;
         var _loc5_:Number = §-G§.§9"<§(param1) * _loc3_;
         var _loc6_:Number = §-G§.§8t§(param1) * _loc3_;
         this.§^f§(0,this.§-!3§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function § "@§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §!!J§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§;-§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§;-§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§;-§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§;-§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §81§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §!!J§;
         if(this.§;!n§)
         {
            _loc4_ = this.§;-§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§;-§[_loc3_] *= _loc4_;
            this.§;-§[_loc3_ + 1] *= _loc4_;
            this.§;-§[_loc3_ + 2] *= _loc4_;
            this.§;-§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§;-§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §"!W§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§;!n§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§-!3§ * §!!J§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§ !n§(0);
               _loc6_ = !!this.§;!n§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§^!o§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§;!n§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§;!n§;
      }
      
      public function get §8=§() : int
      {
         return this.§-!3§;
      }
      
      public function set §8=§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §%0§ * §]t§ - this.§29§.length;
         _loc4_ = this.§29§.length;
         this.§29§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§29§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §]t§)
            {
               this.§29§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§;-§.fixed = false;
         _loc2_ = param1 * §!!J§ - this.§;-§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§;-§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§;-§.pop();
            _loc3_++;
         }
         this.§;-§.fixed = true;
         this.§=+§.fixed = false;
         _loc2_ = param1 * §6V§ - this.§=+§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§=+§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§=+§.pop();
            _loc3_++;
         }
         this.§=+§.fixed = true;
         this.§-!3§ = param1;
      }
      
      public function get §`I§() : ByteArray
      {
         this.§29§.position = 0;
         return this.§29§;
      }
      
      public function get §%3§() : Vector.<Number>
      {
         return this.§;-§;
      }
      
      public function get §%!8§() : Vector.<Number>
      {
         return this.§=+§;
      }
   }
}
