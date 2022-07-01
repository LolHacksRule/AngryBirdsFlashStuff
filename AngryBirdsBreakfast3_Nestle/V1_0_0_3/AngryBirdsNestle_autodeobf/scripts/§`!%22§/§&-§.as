package §`!"§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §&-§
   {
      
      public static const §[f§:int = 4;
      
      public static const §7I§:int = 2;
      
      public static const §9!W§:int = 3;
      
      public static const §^!e§:int = 4;
      
      public static const §6!q§:int = 0;
      
      public static const §>!"§:int = 0;
      
      public static const §7!%§:int = 0;
       
      
      private var §1!X§:ByteArray;
      
      private var §2Q§:Vector.<Number>;
      
      private var §2§:Vector.<Number>;
      
      private var §;!d§:Boolean;
      
      private var §=!!§:int;
      
      private var § 3§:Vector.<Number>;
      
      public function §&-§(param1:int, param2:Boolean = false)
      {
         this.§ 3§ = new Vector.<Number>(12,true);
         super();
         this.§1!X§ = new ByteArray();
         this.§1!X§.endian = Endian.LITTLE_ENDIAN;
         this.§1!X§.length = param1 * §7I§ * §^!e§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §7I§)
         {
            this.§1!X§.writeFloat(0);
            _loc3_++;
         }
         this.§2Q§ = new Vector.<Number>(param1 * §[f§,true);
         this.§2§ = new Vector.<Number>(param1 * §9!W§,true);
         this.§;!d§ = param2;
         this.§=!!§ = param1;
      }
      
      public function clone() : §&-§
      {
         var _loc1_:§&-§ = new §&-§(0,this.§;!d§);
         _loc1_.§1!X§.length = this.§1!X§.length;
         _loc1_.§1!X§.writeBytes(this.§1!X§);
         _loc1_.§2Q§ = this.§2Q§.concat();
         _loc1_.§2Q§.fixed = true;
         _loc1_.§2§ = this.§2§.concat();
         _loc1_.§2§.fixed = true;
         _loc1_.§=!!§ = this.§=!!§;
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
         var _loc9_:Vector.<Number> = param1.§2§;
         _loc6_ = this.§=!!§ * §9!W§;
         _loc7_ = param2 * §9!W§;
         if(param5)
         {
            param5.transformVectors(this.§2§,this.§ 3§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§ 3§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§2§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§1!X§;
         _loc6_ = this.§=!!§ * §7I§ * §^!e§;
         _loc7_ = param2 * §7I§ * §^!e§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§1!X§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§2Q§;
            _loc6_ = this.§=!!§ * §[f§;
            _loc7_ = param2 * §[f§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§2Q§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§=!!§)
               {
                  if(this.§;!d§)
                  {
                     _loc13_ = this.§2Q§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§2Q§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§2Q§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§2Q§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§2Q§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§2Q§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§2Q§[_loc12_++];
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
         var _loc2_:int = this.§1!X§.length;
         this.§1!X§.length += param1.§1!X§.length;
         this.§1!X§.position = _loc2_;
         this.§1!X§.writeBytes(param1.§1!X§);
         this.§2Q§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§2Q§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§2Q§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§2Q§.fixed = true;
         this.§2§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§2§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§2§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§2§.fixed = true;
         this.§=!!§ += param1.§@!^§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §9!W§;
         var _loc6_:*;
         this.§2§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§2§[_loc7_ = _loc5_++] = param3;
         this.§2§[_loc5_] = param4;
      }
      
      public function §+@§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §9!W§;
         var _loc5_:*;
         this.§2§[_loc5_ = _loc4_++] = param2;
         this.§2§[_loc4_] = param3;
      }
      
      public function §3! §(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §9!W§;
         param2.x = this.§2§[_loc3_++];
         param2.y = this.§2§[_loc3_++];
         param2.z = this.§2§[_loc3_];
      }
      
      public function §,P§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§;!d§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §;!j§.§'!_§(param2) * _loc4_;
         var _loc6_:Number = §;!j§.final(param2) * _loc4_;
         var _loc7_:Number = §;!j§.§^!g§(param2) * _loc4_;
         this.§>"+§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §>"+§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §[f§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§2Q§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§2Q§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§2Q§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§2Q§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §1!>§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §[f§;
         var _loc4_:*;
         this.§2Q§[_loc4_ = _loc3_++] = this.§2Q§[_loc4_] * param2;
         var _loc5_:*;
         this.§2Q§[_loc5_ = _loc3_++] = this.§2Q§[_loc5_] * param2;
         var _loc6_:*;
         this.§2Q§[_loc6_ = _loc3_++] = this.§2Q§[_loc6_] * param2;
         this.§2Q§[_loc3_] *= param2;
      }
      
      public function §=#§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §[f§;
         var _loc3_:Number = !!this.§;!d§ ? Number(this.§2Q§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§2Q§[_loc2_] * _loc3_;
         _loc5_ = this.§2Q§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§2Q§[_loc2_ + 2] * _loc3_;
         return §;!j§.§3!j§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §["+§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§;!d§)
         {
            this.§,P§(param1,this.§=#§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §[f§ + 3;
            this.§2Q§[_loc3_] = param2;
         }
      }
      
      public function §!U§(param1:int) : Number
      {
         var _loc2_:int = param1 * §[f§ + 3;
         return this.§2Q§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §7I§;
         this.§1!X§.position = _loc4_ * §^!e§;
         this.§1!X§.writeFloat(param2);
         this.§1!X§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §7I§;
         this.§1!X§.position = _loc3_ * §^!e§;
         param2.x = this.§1!X§.readFloat();
         param2.y = this.§1!X§.readFloat();
      }
      
      public function §3]§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §9!W§;
         var _loc6_:*;
         this.§2§[_loc6_ = _loc5_++] = this.§2§[_loc6_] + param2;
         var _loc7_:*;
         this.§2§[_loc7_ = _loc5_++] = this.§2§[_loc7_] + param3;
         this.§2§[_loc5_] += param4;
      }
      
      public function §@K§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §9!W§;
         this.§ 3§[0] = this.§2§[_loc3_];
         this.§ 3§[1] = this.§2§[_loc3_ + 1];
         this.§ 3§[2] = this.§2§[_loc3_ + 2];
         param2.transformVectors(this.§ 3§,this.§ 3§);
         this.§2§[_loc3_] = this.§ 3§[0];
         this.§2§[_loc3_ + 1] = this.§ 3§[1];
         this.§2§[_loc3_ + 2] = this.§ 3§[2];
      }
      
      public function § !0§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§;!d§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §;!j§.§'!_§(param1) * _loc3_;
         var _loc5_:Number = §;!j§.final(param1) * _loc3_;
         var _loc6_:Number = §;!j§.§^!g§(param1) * _loc3_;
         this.§>"+§(0,this.§=!!§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §9""§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §[f§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§2Q§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§2Q§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§2Q§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§2Q§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §2K§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §[f§;
         if(this.§;!d§)
         {
            _loc4_ = this.§2Q§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§2Q§[_loc3_] *= _loc4_;
            this.§2Q§[_loc3_ + 1] *= _loc4_;
            this.§2Q§[_loc3_ + 2] *= _loc4_;
            this.§2Q§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§2Q§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §=O§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§;!d§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§=!!§ * §[f§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§!U§(0);
               _loc6_ = !!this.§;!d§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§1!>§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§;!d§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§;!d§;
      }
      
      public function get §@!^§() : int
      {
         return this.§=!!§;
      }
      
      public function set §@!^§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §7I§ * §^!e§ - this.§1!X§.length;
         _loc4_ = this.§1!X§.length;
         this.§1!X§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§1!X§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §^!e§)
            {
               this.§1!X§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§2Q§.fixed = false;
         _loc2_ = param1 * §[f§ - this.§2Q§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§2Q§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§2Q§.pop();
            _loc3_++;
         }
         this.§2Q§.fixed = true;
         this.§2§.fixed = false;
         _loc2_ = param1 * §9!W§ - this.§2§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§2§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§2§.pop();
            _loc3_++;
         }
         this.§2§.fixed = true;
         this.§=!!§ = param1;
      }
      
      public function get §^"0§() : ByteArray
      {
         this.§1!X§.position = 0;
         return this.§1!X§;
      }
      
      public function get §>!$§() : Vector.<Number>
      {
         return this.§2Q§;
      }
      
      public function get §="%§() : Vector.<Number>
      {
         return this.§2§;
      }
   }
}
