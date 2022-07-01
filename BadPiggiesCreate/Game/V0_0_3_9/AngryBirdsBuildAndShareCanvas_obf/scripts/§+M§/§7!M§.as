package §+M§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §7!M§
   {
      
      public static const §@""§:int = 4;
      
      public static const §];§:int = 2;
      
      public static const §"-§:int = 3;
      
      public static const §3<§:int = 4;
      
      public static const §,!K§:int = 0;
      
      public static const §`![§:int = 0;
      
      public static const §5!P§:int = 0;
       
      
      private var §-5§:ByteArray;
      
      private var §>y§:Vector.<Number>;
      
      private var §6!g§:Vector.<Number>;
      
      private var §&y§:Boolean;
      
      private var § w§:int;
      
      private var §-l§:Vector.<Number>;
      
      public function §7!M§(param1:int, param2:Boolean = false)
      {
         this.§-l§ = new Vector.<Number>(12,true);
         super();
         this.§-5§ = new ByteArray();
         this.§-5§.endian = Endian.LITTLE_ENDIAN;
         this.§-5§.length = param1 * §];§ * §3<§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §];§)
         {
            this.§-5§.writeFloat(0);
            _loc3_++;
         }
         this.§>y§ = new Vector.<Number>(param1 * §@""§,true);
         this.§6!g§ = new Vector.<Number>(param1 * §"-§,true);
         this.§&y§ = param2;
         this.§ w§ = param1;
      }
      
      public function clone() : §7!M§
      {
         var _loc1_:§7!M§ = new §7!M§(0,this.§&y§);
         _loc1_.§-5§.length = this.§-5§.length;
         _loc1_.§-5§.writeBytes(this.§-5§);
         _loc1_.§>y§ = this.§>y§.concat();
         _loc1_.§>y§.fixed = true;
         _loc1_.§6!g§ = this.§6!g§.concat();
         _loc1_.§6!g§.fixed = true;
         _loc1_.§ w§ = this.§ w§;
         return _loc1_;
      }
      
      public function copyTo(param1:§7!M§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§6!g§;
         _loc6_ = this.§ w§ * §"-§;
         _loc7_ = param2 * §"-§;
         if(param5)
         {
            param5.transformVectors(this.§6!g§,this.§-l§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§-l§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§6!g§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§-5§;
         _loc6_ = this.§ w§ * §];§ * §3<§;
         _loc7_ = param2 * §];§ * §3<§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§-5§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§>y§;
            _loc6_ = this.§ w§ * §@""§;
            _loc7_ = param2 * §@""§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§>y§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§ w§)
               {
                  if(this.§&y§)
                  {
                     _loc13_ = this.§>y§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§>y§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§>y§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§>y§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§>y§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§>y§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§>y§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§7!M§) : void
      {
         var _loc2_:int = this.§-5§.length;
         this.§-5§.length += param1.§-5§.length;
         this.§-5§.position = _loc2_;
         this.§-5§.writeBytes(param1.§-5§);
         this.§>y§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§>y§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§>y§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§>y§.fixed = true;
         this.§6!g§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§6!g§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§6!g§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§6!g§.fixed = true;
         this.§ w§ += param1.§9k§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §"-§;
         var _loc6_:*;
         this.§6!g§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§6!g§[_loc7_ = _loc5_++] = param3;
         this.§6!g§[_loc5_] = param4;
      }
      
      public function §2!y§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §"-§;
         var _loc5_:*;
         this.§6!g§[_loc5_ = _loc4_++] = param2;
         this.§6!g§[_loc4_] = param3;
      }
      
      public function §"B§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §"-§;
         param2.x = this.§6!g§[_loc3_++];
         param2.y = this.§6!g§[_loc3_++];
         param2.z = this.§6!g§[_loc3_];
      }
      
      public function §@M§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§&y§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §4H§.§each §(param2) * _loc4_;
         var _loc6_:Number = §4H§.§"!8§(param2) * _loc4_;
         var _loc7_:Number = §4H§.§;!z§(param2) * _loc4_;
         this.§6"0§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §6"0§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §@""§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§>y§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§>y§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§>y§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§>y§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §0!K§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §@""§;
         var _loc4_:*;
         this.§>y§[_loc4_ = _loc3_++] = this.§>y§[_loc4_] * param2;
         var _loc5_:*;
         this.§>y§[_loc5_ = _loc3_++] = this.§>y§[_loc5_] * param2;
         var _loc6_:*;
         this.§>y§[_loc6_ = _loc3_++] = this.§>y§[_loc6_] * param2;
         this.§>y§[_loc3_] *= param2;
      }
      
      public function §7"8§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §@""§;
         var _loc3_:Number = !!this.§&y§ ? Number(this.§>y§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§>y§[_loc2_] * _loc3_;
         _loc5_ = this.§>y§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§>y§[_loc2_ + 2] * _loc3_;
         return §4H§.§#!&§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §3!4§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§&y§)
         {
            this.§@M§(param1,this.§7"8§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §@""§ + 3;
            this.§>y§[_loc3_] = param2;
         }
      }
      
      public function §%!,§(param1:int) : Number
      {
         var _loc2_:int = param1 * §@""§ + 3;
         return this.§>y§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §];§;
         this.§-5§.position = _loc4_ * §3<§;
         this.§-5§.writeFloat(param2);
         this.§-5§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §];§;
         this.§-5§.position = _loc3_ * §3<§;
         param2.x = this.§-5§.readFloat();
         param2.y = this.§-5§.readFloat();
      }
      
      public function §0!T§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §"-§;
         var _loc6_:*;
         this.§6!g§[_loc6_ = _loc5_++] = this.§6!g§[_loc6_] + param2;
         var _loc7_:*;
         this.§6!g§[_loc7_ = _loc5_++] = this.§6!g§[_loc7_] + param3;
         this.§6!g§[_loc5_] += param4;
      }
      
      public function §@l§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §"-§;
         this.§-l§[0] = this.§6!g§[_loc3_];
         this.§-l§[1] = this.§6!g§[_loc3_ + 1];
         this.§-l§[2] = this.§6!g§[_loc3_ + 2];
         param2.transformVectors(this.§-l§,this.§-l§);
         this.§6!g§[_loc3_] = this.§-l§[0];
         this.§6!g§[_loc3_ + 1] = this.§-l§[1];
         this.§6!g§[_loc3_ + 2] = this.§-l§[2];
      }
      
      public function §<0§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§&y§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §4H§.§each §(param1) * _loc3_;
         var _loc5_:Number = §4H§.§"!8§(param1) * _loc3_;
         var _loc6_:Number = §4H§.§;!z§(param1) * _loc3_;
         this.§6"0§(0,this.§ w§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §use§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §@""§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§>y§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§>y§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§>y§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§>y§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §<!o§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §@""§;
         if(this.§&y§)
         {
            _loc4_ = this.§>y§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§>y§[_loc3_] *= _loc4_;
            this.§>y§[_loc3_ + 1] *= _loc4_;
            this.§>y§[_loc3_ + 2] *= _loc4_;
            this.§>y§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§>y§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§&y§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§ w§ * §@""§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§%!,§(0);
               _loc6_ = !!this.§&y§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§0!K§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§&y§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§&y§;
      }
      
      public function get §9k§() : int
      {
         return this.§ w§;
      }
      
      public function set §9k§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §];§ * §3<§ - this.§-5§.length;
         _loc4_ = this.§-5§.length;
         this.§-5§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§-5§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §3<§)
            {
               this.§-5§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§>y§.fixed = false;
         _loc2_ = param1 * §@""§ - this.§>y§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§>y§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§>y§.pop();
            _loc3_++;
         }
         this.§>y§.fixed = true;
         this.§6!g§.fixed = false;
         _loc2_ = param1 * §"-§ - this.§6!g§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§6!g§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§6!g§.pop();
            _loc3_++;
         }
         this.§6!g§.fixed = true;
         this.§ w§ = param1;
      }
      
      public function get §`!t§() : ByteArray
      {
         this.§-5§.position = 0;
         return this.§-5§;
      }
      
      public function get §?!$§() : Vector.<Number>
      {
         return this.§>y§;
      }
      
      public function get §7",§() : Vector.<Number>
      {
         return this.§6!g§;
      }
   }
}
