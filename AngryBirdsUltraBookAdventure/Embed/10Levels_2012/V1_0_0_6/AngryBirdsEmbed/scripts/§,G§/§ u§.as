package §,G§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class § u§
   {
      
      public static const §-q§:int = 4;
      
      public static const §=#§:int = 2;
      
      public static const §18§:int = 3;
      
      public static const §7!7§:int = 4;
      
      public static const §`&§:int = 0;
      
      public static const §<4§:int = 0;
      
      public static const §]!$§:int = 0;
       
      
      private var §<%§:ByteArray;
      
      private var §'!#§:Vector.<Number>;
      
      private var §+4§:Vector.<Number>;
      
      private var §7M§:Boolean;
      
      private var §-! §:int;
      
      private var §9!A§:Vector.<Number>;
      
      public function § u§(param1:int, param2:Boolean = false)
      {
         this.§9!A§ = new Vector.<Number>(12,true);
         super();
         this.§<%§ = new ByteArray();
         this.§<%§.endian = Endian.LITTLE_ENDIAN;
         this.§<%§.length = param1 * §=#§ * §7!7§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §=#§)
         {
            this.§<%§.writeFloat(0);
            _loc3_++;
         }
         this.§'!#§ = new Vector.<Number>(param1 * §-q§,true);
         this.§+4§ = new Vector.<Number>(param1 * §18§,true);
         this.§7M§ = param2;
         this.§-! § = param1;
      }
      
      public function clone() : § u§
      {
         var _loc1_:§ u§ = new § u§(0,this.§7M§);
         _loc1_.§<%§.length = this.§<%§.length;
         _loc1_.§<%§.writeBytes(this.§<%§);
         _loc1_.§'!#§ = this.§'!#§.concat();
         _loc1_.§'!#§.fixed = true;
         _loc1_.§+4§ = this.§+4§.concat();
         _loc1_.§+4§.fixed = true;
         _loc1_.§-! § = this.§-! §;
         return _loc1_;
      }
      
      public function copyTo(param1:§ u§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§+4§;
         _loc6_ = this.§-! § * §18§;
         _loc7_ = param2 * §18§;
         if(param5)
         {
            param5.transformVectors(this.§+4§,this.§9!A§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§9!A§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§+4§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§<%§;
         _loc6_ = this.§-! § * §=#§ * §7!7§;
         _loc7_ = param2 * §=#§ * §7!7§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§<%§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§'!#§;
            _loc6_ = this.§-! § * §-q§;
            _loc7_ = param2 * §-q§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§'!#§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§-! §)
               {
                  if(this.§7M§)
                  {
                     _loc13_ = this.§'!#§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§'!#§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§'!#§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§'!#§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§'!#§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§'!#§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§'!#§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§ u§) : void
      {
         var _loc2_:int = this.§<%§.length;
         this.§<%§.length += param1.§<%§.length;
         this.§<%§.position = _loc2_;
         this.§<%§.writeBytes(param1.§<%§);
         this.§'!#§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§'!#§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§'!#§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§'!#§.fixed = true;
         this.§+4§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§+4§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§+4§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§+4§.fixed = true;
         this.§-! § += param1.§3K§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §18§;
         var _loc6_:*;
         this.§+4§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§+4§[_loc7_ = _loc5_++] = param3;
         this.§+4§[_loc5_] = param4;
      }
      
      public function §8!4§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §18§;
         var _loc5_:*;
         this.§+4§[_loc5_ = _loc4_++] = param2;
         this.§+4§[_loc4_] = param3;
      }
      
      public function §4G§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §18§;
         param2.x = this.§+4§[_loc3_++];
         param2.y = this.§+4§[_loc3_++];
         param2.z = this.§+4§[_loc3_];
      }
      
      public function §[@§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§7M§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §"p§.§9V§(param2) * _loc4_;
         var _loc6_:Number = §"p§.§5J§(param2) * _loc4_;
         var _loc7_:Number = §"p§.§@R§(param2) * _loc4_;
         this.§@!2§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §@!2§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §-q§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§'!#§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§'!#§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§'!#§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§'!#§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §^!!§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §-q§;
         var _loc4_:*;
         this.§'!#§[_loc4_ = _loc3_++] = this.§'!#§[_loc4_] * param2;
         var _loc5_:*;
         this.§'!#§[_loc5_ = _loc3_++] = this.§'!#§[_loc5_] * param2;
         var _loc6_:*;
         this.§'!#§[_loc6_ = _loc3_++] = this.§'!#§[_loc6_] * param2;
         this.§'!#§[_loc3_] *= param2;
      }
      
      public function §?6§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §-q§;
         var _loc3_:Number = !!this.§7M§ ? Number(this.§'!#§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§'!#§[_loc2_] * _loc3_;
         _loc5_ = this.§'!#§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§'!#§[_loc2_ + 2] * _loc3_;
         return §"p§.§0!J§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §!!6§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§7M§)
         {
            this.§[@§(param1,this.§?6§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §-q§ + 3;
            this.§'!#§[_loc3_] = param2;
         }
      }
      
      public function §for §(param1:int) : Number
      {
         var _loc2_:int = param1 * §-q§ + 3;
         return this.§'!#§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §=#§;
         this.§<%§.position = _loc4_ * §7!7§;
         this.§<%§.writeFloat(param2);
         this.§<%§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §=#§;
         this.§<%§.position = _loc3_ * §7!7§;
         param2.x = this.§<%§.readFloat();
         param2.y = this.§<%§.readFloat();
      }
      
      public function §2!D§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §18§;
         var _loc6_:*;
         this.§+4§[_loc6_ = _loc5_++] = this.§+4§[_loc6_] + param2;
         var _loc7_:*;
         this.§+4§[_loc7_ = _loc5_++] = this.§+4§[_loc7_] + param3;
         this.§+4§[_loc5_] += param4;
      }
      
      public function §84§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §18§;
         this.§9!A§[0] = this.§+4§[_loc3_];
         this.§9!A§[1] = this.§+4§[_loc3_ + 1];
         this.§9!A§[2] = this.§+4§[_loc3_ + 2];
         param2.transformVectors(this.§9!A§,this.§9!A§);
         this.§+4§[_loc3_] = this.§9!A§[0];
         this.§+4§[_loc3_ + 1] = this.§9!A§[1];
         this.§+4§[_loc3_ + 2] = this.§9!A§[2];
      }
      
      public function §'!1§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§7M§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §"p§.§9V§(param1) * _loc3_;
         var _loc5_:Number = §"p§.§5J§(param1) * _loc3_;
         var _loc6_:Number = §"p§.§@R§(param1) * _loc3_;
         this.§@!2§(0,this.§-! §,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §0g§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §-q§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§'!#§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§'!#§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§'!#§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§'!#§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §var§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §-q§;
         if(this.§7M§)
         {
            _loc4_ = this.§'!#§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§'!#§[_loc3_] *= _loc4_;
            this.§'!#§[_loc3_ + 1] *= _loc4_;
            this.§'!#§[_loc3_ + 2] *= _loc4_;
            this.§'!#§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§'!#§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§7M§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§-! § * §-q§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§for §(0);
               _loc6_ = !!this.§7M§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§^!!§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§7M§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§7M§;
      }
      
      public function get §3K§() : int
      {
         return this.§-! §;
      }
      
      public function set §3K§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §=#§ * §7!7§ - this.§<%§.length;
         _loc4_ = this.§<%§.length;
         this.§<%§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§<%§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §7!7§)
            {
               this.§<%§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§'!#§.fixed = false;
         _loc2_ = param1 * §-q§ - this.§'!#§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§'!#§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§'!#§.pop();
            _loc3_++;
         }
         this.§'!#§.fixed = true;
         this.§+4§.fixed = false;
         _loc2_ = param1 * §18§ - this.§+4§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§+4§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§+4§.pop();
            _loc3_++;
         }
         this.§+4§.fixed = true;
         this.§-! § = param1;
      }
      
      public function get §;@§() : ByteArray
      {
         this.§<%§.position = 0;
         return this.§<%§;
      }
      
      public function get §2,§() : Vector.<Number>
      {
         return this.§'!#§;
      }
      
      public function get §-h§() : Vector.<Number>
      {
         return this.§+4§;
      }
   }
}
