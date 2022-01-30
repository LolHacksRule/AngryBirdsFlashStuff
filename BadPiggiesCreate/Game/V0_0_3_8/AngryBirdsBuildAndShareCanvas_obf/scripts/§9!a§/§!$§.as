package §9!a§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §!$§
   {
      
      public static const §1!^§:int = 4;
      
      public static const §<I§:int = 2;
      
      public static const §"n§:int = 3;
      
      public static const §4!W§:int = 4;
      
      public static const §8!-§:int = 0;
      
      public static const §&C§:int = 0;
      
      public static const §'6§:int = 0;
       
      
      private var §=!?§:ByteArray;
      
      private var § @§:Vector.<Number>;
      
      private var §[!t§:Vector.<Number>;
      
      private var §-!;§:Boolean;
      
      private var §!E§:int;
      
      private var §+"-§:Vector.<Number>;
      
      public function §!$§(param1:int, param2:Boolean = false)
      {
         this.§+"-§ = new Vector.<Number>(12,true);
         super();
         this.§=!?§ = new ByteArray();
         this.§=!?§.endian = Endian.LITTLE_ENDIAN;
         this.§=!?§.length = param1 * §<I§ * §4!W§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §<I§)
         {
            this.§=!?§.writeFloat(0);
            _loc3_++;
         }
         this.§ @§ = new Vector.<Number>(param1 * §1!^§,true);
         this.§[!t§ = new Vector.<Number>(param1 * §"n§,true);
         this.§-!;§ = param2;
         this.§!E§ = param1;
      }
      
      public function clone() : §!$§
      {
         var _loc1_:§!$§ = new §!$§(0,this.§-!;§);
         _loc1_.§=!?§.length = this.§=!?§.length;
         _loc1_.§=!?§.writeBytes(this.§=!?§);
         _loc1_.§ @§ = this.§ @§.concat();
         _loc1_.§ @§.fixed = true;
         _loc1_.§[!t§ = this.§[!t§.concat();
         _loc1_.§[!t§.fixed = true;
         _loc1_.§!E§ = this.§!E§;
         return _loc1_;
      }
      
      public function copyTo(param1:§!$§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§[!t§;
         _loc6_ = this.§!E§ * §"n§;
         _loc7_ = param2 * §"n§;
         if(param5)
         {
            param5.transformVectors(this.§[!t§,this.§+"-§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§+"-§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§[!t§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§=!?§;
         _loc6_ = this.§!E§ * §<I§ * §4!W§;
         _loc7_ = param2 * §<I§ * §4!W§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§=!?§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§ @§;
            _loc6_ = this.§!E§ * §1!^§;
            _loc7_ = param2 * §1!^§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§ @§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§!E§)
               {
                  if(this.§-!;§)
                  {
                     _loc13_ = this.§ @§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§ @§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§ @§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§ @§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§ @§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§ @§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§ @§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§!$§) : void
      {
         var _loc2_:int = this.§=!?§.length;
         this.§=!?§.length += param1.§=!?§.length;
         this.§=!?§.position = _loc2_;
         this.§=!?§.writeBytes(param1.§=!?§);
         this.§ @§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§ @§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§ @§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§ @§.fixed = true;
         this.§[!t§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§[!t§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§[!t§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§[!t§.fixed = true;
         this.§!E§ += param1.§!!d§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §"n§;
         var _loc6_:*;
         this.§[!t§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§[!t§[_loc7_ = _loc5_++] = param3;
         this.§[!t§[_loc5_] = param4;
      }
      
      public function §>u§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §"n§;
         var _loc5_:*;
         this.§[!t§[_loc5_ = _loc4_++] = param2;
         this.§[!t§[_loc4_] = param3;
      }
      
      public function §8K§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §"n§;
         param2.x = this.§[!t§[_loc3_++];
         param2.y = this.§[!t§[_loc3_++];
         param2.z = this.§[!t§[_loc3_];
      }
      
      public function §!!m§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§-!;§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §]!C§.§8"§(param2) * _loc4_;
         var _loc6_:Number = §]!C§.§+$§(param2) * _loc4_;
         var _loc7_:Number = §]!C§.§2!v§(param2) * _loc4_;
         this.§%!O§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §%!O§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §1!^§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§ @§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§ @§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§ @§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§ @§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function § !!§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §1!^§;
         var _loc4_:*;
         this.§ @§[_loc4_ = _loc3_++] = this.§ @§[_loc4_] * param2;
         var _loc5_:*;
         this.§ @§[_loc5_ = _loc3_++] = this.§ @§[_loc5_] * param2;
         var _loc6_:*;
         this.§ @§[_loc6_ = _loc3_++] = this.§ @§[_loc6_] * param2;
         this.§ @§[_loc3_] *= param2;
      }
      
      public function §72§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §1!^§;
         var _loc3_:Number = !!this.§-!;§ ? Number(this.§ @§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§ @§[_loc2_] * _loc3_;
         _loc5_ = this.§ @§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§ @§[_loc2_ + 2] * _loc3_;
         return §]!C§.§+![§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §1$§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§-!;§)
         {
            this.§!!m§(param1,this.§72§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §1!^§ + 3;
            this.§ @§[_loc3_] = param2;
         }
      }
      
      public function §3!p§(param1:int) : Number
      {
         var _loc2_:int = param1 * §1!^§ + 3;
         return this.§ @§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §<I§;
         this.§=!?§.position = _loc4_ * §4!W§;
         this.§=!?§.writeFloat(param2);
         this.§=!?§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §<I§;
         this.§=!?§.position = _loc3_ * §4!W§;
         param2.x = this.§=!?§.readFloat();
         param2.y = this.§=!?§.readFloat();
      }
      
      public function §!u§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §"n§;
         var _loc6_:*;
         this.§[!t§[_loc6_ = _loc5_++] = this.§[!t§[_loc6_] + param2;
         var _loc7_:*;
         this.§[!t§[_loc7_ = _loc5_++] = this.§[!t§[_loc7_] + param3;
         this.§[!t§[_loc5_] += param4;
      }
      
      public function §3!2§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §"n§;
         this.§+"-§[0] = this.§[!t§[_loc3_];
         this.§+"-§[1] = this.§[!t§[_loc3_ + 1];
         this.§+"-§[2] = this.§[!t§[_loc3_ + 2];
         param2.transformVectors(this.§+"-§,this.§+"-§);
         this.§[!t§[_loc3_] = this.§+"-§[0];
         this.§[!t§[_loc3_ + 1] = this.§+"-§[1];
         this.§[!t§[_loc3_ + 2] = this.§+"-§[2];
      }
      
      public function §1!g§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§-!;§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §]!C§.§8"§(param1) * _loc3_;
         var _loc5_:Number = §]!C§.§+$§(param1) * _loc3_;
         var _loc6_:Number = §]!C§.§2!v§(param1) * _loc3_;
         this.§%!O§(0,this.§!E§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function § `§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §1!^§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§ @§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§ @§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§ @§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§ @§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function § !B§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §1!^§;
         if(this.§-!;§)
         {
            _loc4_ = this.§ @§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§ @§[_loc3_] *= _loc4_;
            this.§ @§[_loc3_ + 1] *= _loc4_;
            this.§ @§[_loc3_ + 2] *= _loc4_;
            this.§ @§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§ @§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§-!;§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§!E§ * §1!^§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§3!p§(0);
               _loc6_ = !!this.§-!;§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§ !!§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§-!;§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§-!;§;
      }
      
      public function get §!!d§() : int
      {
         return this.§!E§;
      }
      
      public function set §!!d§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §<I§ * §4!W§ - this.§=!?§.length;
         _loc4_ = this.§=!?§.length;
         this.§=!?§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§=!?§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §4!W§)
            {
               this.§=!?§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§ @§.fixed = false;
         _loc2_ = param1 * §1!^§ - this.§ @§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§ @§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§ @§.pop();
            _loc3_++;
         }
         this.§ @§.fixed = true;
         this.§[!t§.fixed = false;
         _loc2_ = param1 * §"n§ - this.§[!t§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§[!t§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§[!t§.pop();
            _loc3_++;
         }
         this.§[!t§.fixed = true;
         this.§!E§ = param1;
      }
      
      public function get §'!M§() : ByteArray
      {
         this.§=!?§.position = 0;
         return this.§=!?§;
      }
      
      public function get §,&§() : Vector.<Number>
      {
         return this.§ @§;
      }
      
      public function get §2!E§() : Vector.<Number>
      {
         return this.§[!t§;
      }
   }
}
