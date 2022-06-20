package §>!+§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §2!%§
   {
      
      public static const §^!j§:int = 4;
      
      public static const §!!%§:int = 2;
      
      public static const §;o§:int = 3;
      
      public static const §[v§:int = 4;
      
      public static const §?8§:int = 0;
      
      public static const §@!0§:int = 0;
      
      public static const §"_§:int = 0;
       
      
      private var §3!J§:ByteArray;
      
      private var §%!s§:Vector.<Number>;
      
      private var §%K§:Vector.<Number>;
      
      private var §-!8§:Boolean;
      
      private var §`!'§:int;
      
      private var §#!H§:Vector.<Number>;
      
      public function §2!%§(param1:int, param2:Boolean = false)
      {
         this.§#!H§ = new Vector.<Number>(12,true);
         super();
         this.§3!J§ = new ByteArray();
         this.§3!J§.endian = Endian.LITTLE_ENDIAN;
         this.§3!J§.length = param1 * §!!%§ * §[v§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §!!%§)
         {
            this.§3!J§.writeFloat(0);
            _loc3_++;
         }
         this.§%!s§ = new Vector.<Number>(param1 * §^!j§,true);
         this.§%K§ = new Vector.<Number>(param1 * §;o§,true);
         this.§-!8§ = param2;
         this.§`!'§ = param1;
      }
      
      public function clone() : §2!%§
      {
         var _loc1_:§2!%§ = new §2!%§(0,this.§-!8§);
         _loc1_.§3!J§.length = this.§3!J§.length;
         _loc1_.§3!J§.writeBytes(this.§3!J§);
         _loc1_.§%!s§ = this.§%!s§.concat();
         _loc1_.§%!s§.fixed = true;
         _loc1_.§%K§ = this.§%K§.concat();
         _loc1_.§%K§.fixed = true;
         _loc1_.§`!'§ = this.§`!'§;
         return _loc1_;
      }
      
      public function copyTo(param1:§2!%§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§%K§;
         _loc6_ = this.§`!'§ * §;o§;
         _loc7_ = param2 * §;o§;
         if(param5)
         {
            param5.transformVectors(this.§%K§,this.§#!H§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§#!H§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§%K§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§3!J§;
         _loc6_ = this.§`!'§ * §!!%§ * §[v§;
         _loc7_ = param2 * §!!%§ * §[v§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§3!J§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§%!s§;
            _loc6_ = this.§`!'§ * §^!j§;
            _loc7_ = param2 * §^!j§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§%!s§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§`!'§)
               {
                  if(this.§-!8§)
                  {
                     _loc13_ = this.§%!s§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§%!s§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§%!s§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§%!s§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§%!s§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§%!s§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§%!s§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§2!%§) : void
      {
         var _loc2_:int = this.§3!J§.length;
         this.§3!J§.length += param1.§3!J§.length;
         this.§3!J§.position = _loc2_;
         this.§3!J§.writeBytes(param1.§3!J§);
         this.§%!s§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§%!s§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§%!s§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§%!s§.fixed = true;
         this.§%K§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§%K§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§%K§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§%K§.fixed = true;
         this.§`!'§ += param1.§<"8§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §;o§;
         var _loc6_:*;
         this.§%K§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§%K§[_loc7_ = _loc5_++] = param3;
         this.§%K§[_loc5_] = param4;
      }
      
      public function §#!%§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §;o§;
         var _loc5_:*;
         this.§%K§[_loc5_ = _loc4_++] = param2;
         this.§%K§[_loc4_] = param3;
      }
      
      public function §5!X§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §;o§;
         param2.x = this.§%K§[_loc3_++];
         param2.y = this.§%K§[_loc3_++];
         param2.z = this.§%K§[_loc3_];
      }
      
      public function §2"&§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§-!8§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §73§.§>l§(param2) * _loc4_;
         var _loc6_:Number = §73§.§]Q§(param2) * _loc4_;
         var _loc7_:Number = §73§.§[D§(param2) * _loc4_;
         this.§in §(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §in §(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §^!j§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§%!s§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§%!s§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§%!s§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§%!s§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §;d§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §^!j§;
         var _loc4_:*;
         this.§%!s§[_loc4_ = _loc3_++] = this.§%!s§[_loc4_] * param2;
         var _loc5_:*;
         this.§%!s§[_loc5_ = _loc3_++] = this.§%!s§[_loc5_] * param2;
         var _loc6_:*;
         this.§%!s§[_loc6_ = _loc3_++] = this.§%!s§[_loc6_] * param2;
         this.§%!s§[_loc3_] *= param2;
      }
      
      public function §9! §(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §^!j§;
         var _loc3_:Number = !!this.§-!8§ ? Number(this.§%!s§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§%!s§[_loc2_] * _loc3_;
         _loc5_ = this.§%!s§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§%!s§[_loc2_ + 2] * _loc3_;
         return §73§.§7"&§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §>!!§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§-!8§)
         {
            this.§2"&§(param1,this.§9! §(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §^!j§ + 3;
            this.§%!s§[_loc3_] = param2;
         }
      }
      
      public function §-"4§(param1:int) : Number
      {
         var _loc2_:int = param1 * §^!j§ + 3;
         return this.§%!s§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §!!%§;
         this.§3!J§.position = _loc4_ * §[v§;
         this.§3!J§.writeFloat(param2);
         this.§3!J§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §!!%§;
         this.§3!J§.position = _loc3_ * §[v§;
         param2.x = this.§3!J§.readFloat();
         param2.y = this.§3!J§.readFloat();
      }
      
      public function §-!g§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §;o§;
         var _loc6_:*;
         this.§%K§[_loc6_ = _loc5_++] = this.§%K§[_loc6_] + param2;
         var _loc7_:*;
         this.§%K§[_loc7_ = _loc5_++] = this.§%K§[_loc7_] + param3;
         this.§%K§[_loc5_] += param4;
      }
      
      public function §<!C§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §;o§;
         this.§#!H§[0] = this.§%K§[_loc3_];
         this.§#!H§[1] = this.§%K§[_loc3_ + 1];
         this.§#!H§[2] = this.§%K§[_loc3_ + 2];
         param2.transformVectors(this.§#!H§,this.§#!H§);
         this.§%K§[_loc3_] = this.§#!H§[0];
         this.§%K§[_loc3_ + 1] = this.§#!H§[1];
         this.§%K§[_loc3_ + 2] = this.§#!H§[2];
      }
      
      public function §#I§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§-!8§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §73§.§>l§(param1) * _loc3_;
         var _loc5_:Number = §73§.§]Q§(param1) * _loc3_;
         var _loc6_:Number = §73§.§[D§(param1) * _loc3_;
         this.§in §(0,this.§`!'§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §7"2§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §^!j§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§%!s§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§%!s§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§%!s§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§%!s§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §5!e§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §^!j§;
         if(this.§-!8§)
         {
            _loc4_ = this.§%!s§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§%!s§[_loc3_] *= _loc4_;
            this.§%!s§[_loc3_ + 1] *= _loc4_;
            this.§%!s§[_loc3_ + 2] *= _loc4_;
            this.§%!s§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§%!s§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §]!v§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§-!8§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§`!'§ * §^!j§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§-"4§(0);
               _loc6_ = !!this.§-!8§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§;d§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§-!8§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§-!8§;
      }
      
      public function get §<"8§() : int
      {
         return this.§`!'§;
      }
      
      public function set §<"8§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §!!%§ * §[v§ - this.§3!J§.length;
         _loc4_ = this.§3!J§.length;
         this.§3!J§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§3!J§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §[v§)
            {
               this.§3!J§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§%!s§.fixed = false;
         _loc2_ = param1 * §^!j§ - this.§%!s§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§%!s§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§%!s§.pop();
            _loc3_++;
         }
         this.§%!s§.fixed = true;
         this.§%K§.fixed = false;
         _loc2_ = param1 * §;o§ - this.§%K§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§%K§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§%K§.pop();
            _loc3_++;
         }
         this.§%K§.fixed = true;
         this.§`!'§ = param1;
      }
      
      public function get §@"@§() : ByteArray
      {
         this.§3!J§.position = 0;
         return this.§3!J§;
      }
      
      public function get §=!W§() : Vector.<Number>
      {
         return this.§%!s§;
      }
      
      public function get §]! §() : Vector.<Number>
      {
         return this.§%K§;
      }
   }
}
