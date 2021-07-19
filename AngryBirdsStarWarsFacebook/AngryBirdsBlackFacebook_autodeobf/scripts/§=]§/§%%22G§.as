package §=]§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §%"G§
   {
      
      public static const §4v§:int = 4;
      
      public static const §<"<§:int = 2;
      
      public static const §'!Q§:int = 3;
      
      public static const §`!2§:int = 4;
      
      public static const §42§:int = 0;
      
      public static const §`"§:int = 0;
      
      public static const §&"o§:int = 0;
       
      
      private var §2#P§:ByteArray;
      
      private var §>"9§:Vector.<Number>;
      
      private var §%#X§:Vector.<Number>;
      
      private var §3"$§:Boolean;
      
      private var §["6§:int;
      
      private var §?#$§:Vector.<Number>;
      
      public function §%"G§(param1:int, param2:Boolean = false)
      {
         this.§?#$§ = new Vector.<Number>(12,true);
         super();
         this.§2#P§ = new ByteArray();
         this.§2#P§.endian = Endian.LITTLE_ENDIAN;
         this.§2#P§.length = param1 * §<"<§ * §`!2§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §<"<§)
         {
            this.§2#P§.writeFloat(0);
            _loc3_++;
         }
         this.§>"9§ = new Vector.<Number>(param1 * §4v§,true);
         this.§%#X§ = new Vector.<Number>(param1 * §'!Q§,true);
         this.§3"$§ = param2;
         this.§["6§ = param1;
      }
      
      public function clone() : §%"G§
      {
         var _loc1_:§%"G§ = new §%"G§(0,this.§3"$§);
         _loc1_.§2#P§.length = this.§2#P§.length;
         _loc1_.§2#P§.writeBytes(this.§2#P§);
         _loc1_.§>"9§ = this.§>"9§.concat();
         _loc1_.§>"9§.fixed = true;
         _loc1_.§%#X§ = this.§%#X§.concat();
         _loc1_.§%#X§.fixed = true;
         _loc1_.§["6§ = this.§["6§;
         return _loc1_;
      }
      
      public function copyTo(param1:§%"G§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§%#X§;
         _loc6_ = this.§["6§ * §'!Q§;
         _loc7_ = param2 * §'!Q§;
         if(param5)
         {
            param5.transformVectors(this.§%#X§,this.§?#$§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§?#$§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§%#X§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§2#P§;
         _loc6_ = this.§["6§ * §<"<§ * §`!2§;
         _loc7_ = param2 * §<"<§ * §`!2§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§2#P§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§>"9§;
            _loc6_ = this.§["6§ * §4v§;
            _loc7_ = param2 * §4v§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§>"9§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§["6§)
               {
                  if(this.§3"$§)
                  {
                     _loc13_ = this.§>"9§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§>"9§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§>"9§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§>"9§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§>"9§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§>"9§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§>"9§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§%"G§) : void
      {
         var _loc2_:int = this.§2#P§.length;
         this.§2#P§.length += param1.§2#P§.length;
         this.§2#P§.position = _loc2_;
         this.§2#P§.writeBytes(param1.§2#P§);
         this.§>"9§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§>"9§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§>"9§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§>"9§.fixed = true;
         this.§%#X§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§%#X§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§%#X§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§%#X§.fixed = true;
         this.§["6§ += param1.§5#%§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §'!Q§;
         var _loc6_:*;
         this.§%#X§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§%#X§[_loc7_ = _loc5_++] = param3;
         this.§%#X§[_loc5_] = param4;
      }
      
      public function override(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §'!Q§;
         var _loc5_:*;
         this.§%#X§[_loc5_ = _loc4_++] = param2;
         this.§%#X§[_loc4_] = param3;
      }
      
      public function getPosition(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §'!Q§;
         param2.x = this.§%#X§[_loc3_++];
         param2.y = this.§%#X§[_loc3_++];
         param2.z = this.§%#X§[_loc3_];
      }
      
      public function §""S§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§3"$§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §4"I§.§7!0§(param2) * _loc4_;
         var _loc6_:Number = §4"I§.§=#Z§(param2) * _loc4_;
         var _loc7_:Number = §4"I§.§@H§(param2) * _loc4_;
         this.§4!>§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §4!>§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §4v§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§>"9§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§>"9§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§>"9§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§>"9§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §!!w§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §4v§;
         var _loc4_:*;
         this.§>"9§[_loc4_ = _loc3_++] = this.§>"9§[_loc4_] * param2;
         var _loc5_:*;
         this.§>"9§[_loc5_ = _loc3_++] = this.§>"9§[_loc5_] * param2;
         var _loc6_:*;
         this.§>"9§[_loc6_ = _loc3_++] = this.§>"9§[_loc6_] * param2;
         this.§>"9§[_loc3_] *= param2;
      }
      
      public function §&!H§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §4v§;
         var _loc3_:Number = !!this.§3"$§ ? Number(this.§>"9§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§>"9§[_loc2_] * _loc3_;
         _loc5_ = this.§>"9§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§>"9§[_loc2_ + 2] * _loc3_;
         return §4"I§.§8#"§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §+h§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§3"$§)
         {
            this.§""S§(param1,this.§&!H§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §4v§ + 3;
            this.§>"9§[_loc3_] = param2;
         }
      }
      
      public function §="-§(param1:int) : Number
      {
         var _loc2_:int = param1 * §4v§ + 3;
         return this.§>"9§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §<"<§;
         this.§2#P§.position = _loc4_ * §`!2§;
         this.§2#P§.writeFloat(param2);
         this.§2#P§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §<"<§;
         this.§2#P§.position = _loc3_ * §`!2§;
         param2.x = this.§2#P§.readFloat();
         param2.y = this.§2#P§.readFloat();
      }
      
      public function §^!c§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §'!Q§;
         var _loc6_:*;
         this.§%#X§[_loc6_ = _loc5_++] = this.§%#X§[_loc6_] + param2;
         var _loc7_:*;
         this.§%#X§[_loc7_ = _loc5_++] = this.§%#X§[_loc7_] + param3;
         this.§%#X§[_loc5_] += param4;
      }
      
      public function §=#A§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §'!Q§;
         this.§?#$§[0] = this.§%#X§[_loc3_];
         this.§?#$§[1] = this.§%#X§[_loc3_ + 1];
         this.§?#$§[2] = this.§%#X§[_loc3_ + 2];
         param2.transformVectors(this.§?#$§,this.§?#$§);
         this.§%#X§[_loc3_] = this.§?#$§[0];
         this.§%#X§[_loc3_ + 1] = this.§?#$§[1];
         this.§%#X§[_loc3_ + 2] = this.§?#$§[2];
      }
      
      public function §7E§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§3"$§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §4"I§.§7!0§(param1) * _loc3_;
         var _loc5_:Number = §4"I§.§=#Z§(param1) * _loc3_;
         var _loc6_:Number = §4"I§.§@H§(param1) * _loc3_;
         this.§4!>§(0,this.§["6§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §%S§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §4v§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§>"9§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§>"9§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§>"9§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§>"9§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §!"V§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §4v§;
         if(this.§3"$§)
         {
            _loc4_ = this.§>"9§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§>"9§[_loc3_] *= _loc4_;
            this.§>"9§[_loc3_ + 1] *= _loc4_;
            this.§>"9§[_loc3_ + 2] *= _loc4_;
            this.§>"9§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§>"9§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §[!p§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§3"$§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§["6§ * §4v§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§="-§(0);
               _loc6_ = !!this.§3"$§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§!!w§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§3"$§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§3"$§;
      }
      
      public function get §5#%§() : int
      {
         return this.§["6§;
      }
      
      public function set §5#%§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §<"<§ * §`!2§ - this.§2#P§.length;
         _loc4_ = this.§2#P§.length;
         this.§2#P§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§2#P§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §`!2§)
            {
               this.§2#P§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§>"9§.fixed = false;
         _loc2_ = param1 * §4v§ - this.§>"9§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§>"9§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§>"9§.pop();
            _loc3_++;
         }
         this.§>"9§.fixed = true;
         this.§%#X§.fixed = false;
         _loc2_ = param1 * §'!Q§ - this.§%#X§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§%#X§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§%#X§.pop();
            _loc3_++;
         }
         this.§%#X§.fixed = true;
         this.§["6§ = param1;
      }
      
      public function get § ";§() : ByteArray
      {
         this.§2#P§.position = 0;
         return this.§2#P§;
      }
      
      public function get §>"+§() : Vector.<Number>
      {
         return this.§>"9§;
      }
      
      public function get §%"!§() : Vector.<Number>
      {
         return this.§%#X§;
      }
   }
}
