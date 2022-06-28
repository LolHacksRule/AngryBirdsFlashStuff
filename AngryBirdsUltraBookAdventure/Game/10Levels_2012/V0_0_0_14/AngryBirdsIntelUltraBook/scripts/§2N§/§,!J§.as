package §2N§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §,!J§
   {
      
      public static const §&g§:int = 4;
      
      public static const §#8§:int = 2;
      
      public static const §<!a§:int = 3;
      
      public static const §8$§:int = 4;
      
      public static const §'x§:int = 0;
      
      public static const §`C§:int = 0;
      
      public static const §,q§:int = 0;
       
      
      private var §4$§:ByteArray;
      
      private var §!H§:Vector.<Number>;
      
      private var §1!7§:Vector.<Number>;
      
      private var §5N§:Boolean;
      
      private var §7-§:int;
      
      private var §+!8§:Vector.<Number>;
      
      public function §,!J§(param1:int, param2:Boolean = false)
      {
         this.§+!8§ = new Vector.<Number>(12,true);
         super();
         this.§4$§ = new ByteArray();
         this.§4$§.endian = Endian.LITTLE_ENDIAN;
         this.§4$§.length = param1 * §#8§ * §8$§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §#8§)
         {
            this.§4$§.writeFloat(0);
            _loc3_++;
         }
         this.§!H§ = new Vector.<Number>(param1 * §&g§,true);
         this.§1!7§ = new Vector.<Number>(param1 * §<!a§,true);
         this.§5N§ = param2;
         this.§7-§ = param1;
      }
      
      public function clone() : §,!J§
      {
         var _loc1_:§,!J§ = new §,!J§(0,this.§5N§);
         _loc1_.§4$§.length = this.§4$§.length;
         _loc1_.§4$§.writeBytes(this.§4$§);
         _loc1_.§!H§ = this.§!H§.concat();
         _loc1_.§!H§.fixed = true;
         _loc1_.§1!7§ = this.§1!7§.concat();
         _loc1_.§1!7§.fixed = true;
         _loc1_.§7-§ = this.§7-§;
         return _loc1_;
      }
      
      public function copyTo(param1:§,!J§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§1!7§;
         _loc6_ = this.§7-§ * §<!a§;
         _loc7_ = param2 * §<!a§;
         if(param5)
         {
            param5.transformVectors(this.§1!7§,this.§+!8§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§+!8§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§1!7§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§4$§;
         _loc6_ = this.§7-§ * §#8§ * §8$§;
         _loc7_ = param2 * §#8§ * §8$§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§4$§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§!H§;
            _loc6_ = this.§7-§ * §&g§;
            _loc7_ = param2 * §&g§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§!H§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§7-§)
               {
                  if(this.§5N§)
                  {
                     _loc13_ = this.§!H§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§!H§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§!H§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§!H§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§!H§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§!H§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§!H§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§,!J§) : void
      {
         var _loc2_:int = this.§4$§.length;
         this.§4$§.length += param1.§4$§.length;
         this.§4$§.position = _loc2_;
         this.§4$§.writeBytes(param1.§4$§);
         this.§!H§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§!H§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§!H§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§!H§.fixed = true;
         this.§1!7§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§1!7§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§1!7§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§1!7§.fixed = true;
         this.§7-§ += param1.§8!w§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §<!a§;
         var _loc6_:*;
         this.§1!7§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§1!7§[_loc7_ = _loc5_++] = param3;
         this.§1!7§[_loc5_] = param4;
      }
      
      public function §;#§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §<!a§;
         var _loc5_:*;
         this.§1!7§[_loc5_ = _loc4_++] = param2;
         this.§1!7§[_loc4_] = param3;
      }
      
      public function §%!a§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §<!a§;
         param2.x = this.§1!7§[_loc3_++];
         param2.y = this.§1!7§[_loc3_++];
         param2.z = this.§1!7§[_loc3_];
      }
      
      public function §1!+§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§5N§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §;!u§.§>W§(param2) * _loc4_;
         var _loc6_:Number = §;!u§.§^!Q§(param2) * _loc4_;
         var _loc7_:Number = §;!u§.§+!1§(param2) * _loc4_;
         this.§0H§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §0H§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §&g§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§!H§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§!H§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§!H§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§!H§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function § !l§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §&g§;
         var _loc4_:*;
         this.§!H§[_loc4_ = _loc3_++] = this.§!H§[_loc4_] * param2;
         var _loc5_:*;
         this.§!H§[_loc5_ = _loc3_++] = this.§!H§[_loc5_] * param2;
         var _loc6_:*;
         this.§!H§[_loc6_ = _loc3_++] = this.§!H§[_loc6_] * param2;
         this.§!H§[_loc3_] *= param2;
      }
      
      public function §<u§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §&g§;
         var _loc3_:Number = !!this.§5N§ ? Number(this.§!H§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§!H§[_loc2_] * _loc3_;
         _loc5_ = this.§!H§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§!H§[_loc2_ + 2] * _loc3_;
         return §;!u§.§%!#§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §]q§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§5N§)
         {
            this.§1!+§(param1,this.§<u§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §&g§ + 3;
            this.§!H§[_loc3_] = param2;
         }
      }
      
      public function §0j§(param1:int) : Number
      {
         var _loc2_:int = param1 * §&g§ + 3;
         return this.§!H§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §#8§;
         this.§4$§.position = _loc4_ * §8$§;
         this.§4$§.writeFloat(param2);
         this.§4$§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §#8§;
         this.§4$§.position = _loc3_ * §8$§;
         param2.x = this.§4$§.readFloat();
         param2.y = this.§4$§.readFloat();
      }
      
      public function §6J§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §<!a§;
         var _loc6_:*;
         this.§1!7§[_loc6_ = _loc5_++] = this.§1!7§[_loc6_] + param2;
         var _loc7_:*;
         this.§1!7§[_loc7_ = _loc5_++] = this.§1!7§[_loc7_] + param3;
         this.§1!7§[_loc5_] += param4;
      }
      
      public function §[z§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §<!a§;
         this.§+!8§[0] = this.§1!7§[_loc3_];
         this.§+!8§[1] = this.§1!7§[_loc3_ + 1];
         this.§+!8§[2] = this.§1!7§[_loc3_ + 2];
         param2.transformVectors(this.§+!8§,this.§+!8§);
         this.§1!7§[_loc3_] = this.§+!8§[0];
         this.§1!7§[_loc3_ + 1] = this.§+!8§[1];
         this.§1!7§[_loc3_ + 2] = this.§+!8§[2];
      }
      
      public function §%-§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§5N§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §;!u§.§>W§(param1) * _loc3_;
         var _loc5_:Number = §;!u§.§^!Q§(param1) * _loc3_;
         var _loc6_:Number = §;!u§.§+!1§(param1) * _loc3_;
         this.§0H§(0,this.§7-§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §&>§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §&g§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§!H§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§!H§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§!H§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§!H§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §<!v§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §&g§;
         if(this.§5N§)
         {
            _loc4_ = this.§!H§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§!H§[_loc3_] *= _loc4_;
            this.§!H§[_loc3_ + 1] *= _loc4_;
            this.§!H§[_loc3_ + 2] *= _loc4_;
            this.§!H§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§!H§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§5N§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§7-§ * §&g§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§0j§(0);
               _loc6_ = !!this.§5N§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§ !l§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§5N§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§5N§;
      }
      
      public function get §8!w§() : int
      {
         return this.§7-§;
      }
      
      public function set §8!w§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §#8§ * §8$§ - this.§4$§.length;
         _loc4_ = this.§4$§.length;
         this.§4$§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§4$§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §8$§)
            {
               this.§4$§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§!H§.fixed = false;
         _loc2_ = param1 * §&g§ - this.§!H§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§!H§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§!H§.pop();
            _loc3_++;
         }
         this.§!H§.fixed = true;
         this.§1!7§.fixed = false;
         _loc2_ = param1 * §<!a§ - this.§1!7§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§1!7§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§1!7§.pop();
            _loc3_++;
         }
         this.§1!7§.fixed = true;
         this.§7-§ = param1;
      }
      
      public function get §!]§() : ByteArray
      {
         this.§4$§.position = 0;
         return this.§4$§;
      }
      
      public function get §0<§() : Vector.<Number>
      {
         return this.§!H§;
      }
      
      public function get §94§() : Vector.<Number>
      {
         return this.§1!7§;
      }
   }
}
