package §<!M§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §;Z§
   {
      
      public static const §[3§:int = 4;
      
      public static const §=!1§:int = 2;
      
      public static const §"1§:int = 3;
      
      public static const §!m§:int = 4;
      
      public static const §%E§:int = 0;
      
      public static const §>`§:int = 0;
      
      public static const §`!5§:int = 0;
       
      
      private var §`f§:ByteArray;
      
      private var §"!>§:Vector.<Number>;
      
      private var §7!C§:Vector.<Number>;
      
      private var §<!8§:Boolean;
      
      private var §;k§:int;
      
      private var § J§:Vector.<Number>;
      
      public function §;Z§(param1:int, param2:Boolean = false)
      {
         this.§ J§ = new Vector.<Number>(12,true);
         super();
         this.§`f§ = new ByteArray();
         this.§`f§.endian = Endian.LITTLE_ENDIAN;
         this.§`f§.length = param1 * §=!1§ * §!m§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §=!1§)
         {
            this.§`f§.writeFloat(0);
            _loc3_++;
         }
         this.§"!>§ = new Vector.<Number>(param1 * §[3§,true);
         this.§7!C§ = new Vector.<Number>(param1 * §"1§,true);
         this.§<!8§ = param2;
         this.§;k§ = param1;
      }
      
      public function clone() : §;Z§
      {
         var _loc1_:§;Z§ = new §;Z§(0,this.§<!8§);
         _loc1_.§`f§.length = this.§`f§.length;
         _loc1_.§`f§.writeBytes(this.§`f§);
         _loc1_.§"!>§ = this.§"!>§.concat();
         _loc1_.§"!>§.fixed = true;
         _loc1_.§7!C§ = this.§7!C§.concat();
         _loc1_.§7!C§.fixed = true;
         _loc1_.§;k§ = this.§;k§;
         return _loc1_;
      }
      
      public function copyTo(param1:§;Z§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§7!C§;
         _loc6_ = this.§;k§ * §"1§;
         _loc7_ = param2 * §"1§;
         if(param5)
         {
            param5.transformVectors(this.§7!C§,this.§ J§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§ J§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§7!C§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§`f§;
         _loc6_ = this.§;k§ * §=!1§ * §!m§;
         _loc7_ = param2 * §=!1§ * §!m§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§`f§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§"!>§;
            _loc6_ = this.§;k§ * §[3§;
            _loc7_ = param2 * §[3§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§"!>§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§;k§)
               {
                  if(this.§<!8§)
                  {
                     _loc13_ = this.§"!>§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§"!>§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§"!>§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§"!>§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§"!>§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§"!>§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§"!>§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§;Z§) : void
      {
         var _loc2_:int = this.§`f§.length;
         this.§`f§.length += param1.§`f§.length;
         this.§`f§.position = _loc2_;
         this.§`f§.writeBytes(param1.§`f§);
         this.§"!>§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§"!>§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§"!>§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§"!>§.fixed = true;
         this.§7!C§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§7!C§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§7!C§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§7!C§.fixed = true;
         this.§;k§ += param1.§[O§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §"1§;
         var _loc6_:*;
         this.§7!C§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§7!C§[_loc7_ = _loc5_++] = param3;
         this.§7!C§[_loc5_] = param4;
      }
      
      public function §0!A§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §"1§;
         var _loc5_:*;
         this.§7!C§[_loc5_ = _loc4_++] = param2;
         this.§7!C§[_loc4_] = param3;
      }
      
      public function §+0§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §"1§;
         param2.x = this.§7!C§[_loc3_++];
         param2.y = this.§7!C§[_loc3_++];
         param2.z = this.§7!C§[_loc3_];
      }
      
      public function §^W§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§<!8§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §3!Z§.§0#§(param2) * _loc4_;
         var _loc6_:Number = §3!Z§.§!!P§(param2) * _loc4_;
         var _loc7_:Number = §3!Z§.§"!@§(param2) * _loc4_;
         this.§7S§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §7S§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §[3§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§"!>§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§"!>§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§"!>§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§"!>§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §@U§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §[3§;
         var _loc4_:*;
         this.§"!>§[_loc4_ = _loc3_++] = this.§"!>§[_loc4_] * param2;
         var _loc5_:*;
         this.§"!>§[_loc5_ = _loc3_++] = this.§"!>§[_loc5_] * param2;
         var _loc6_:*;
         this.§"!>§[_loc6_ = _loc3_++] = this.§"!>§[_loc6_] * param2;
         this.§"!>§[_loc3_] *= param2;
      }
      
      public function §3!R§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §[3§;
         var _loc3_:Number = !!this.§<!8§ ? Number(this.§"!>§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§"!>§[_loc2_] * _loc3_;
         _loc5_ = this.§"!>§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§"!>§[_loc2_ + 2] * _loc3_;
         return §3!Z§.§6s§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §5!<§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§<!8§)
         {
            this.§^W§(param1,this.§3!R§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §[3§ + 3;
            this.§"!>§[_loc3_] = param2;
         }
      }
      
      public function §,!B§(param1:int) : Number
      {
         var _loc2_:int = param1 * §[3§ + 3;
         return this.§"!>§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §=!1§;
         this.§`f§.position = _loc4_ * §!m§;
         this.§`f§.writeFloat(param2);
         this.§`f§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §=!1§;
         this.§`f§.position = _loc3_ * §!m§;
         param2.x = this.§`f§.readFloat();
         param2.y = this.§`f§.readFloat();
      }
      
      public function §6I§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §"1§;
         var _loc6_:*;
         this.§7!C§[_loc6_ = _loc5_++] = this.§7!C§[_loc6_] + param2;
         var _loc7_:*;
         this.§7!C§[_loc7_ = _loc5_++] = this.§7!C§[_loc7_] + param3;
         this.§7!C§[_loc5_] += param4;
      }
      
      public function §3!4§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §"1§;
         this.§ J§[0] = this.§7!C§[_loc3_];
         this.§ J§[1] = this.§7!C§[_loc3_ + 1];
         this.§ J§[2] = this.§7!C§[_loc3_ + 2];
         param2.transformVectors(this.§ J§,this.§ J§);
         this.§7!C§[_loc3_] = this.§ J§[0];
         this.§7!C§[_loc3_ + 1] = this.§ J§[1];
         this.§7!C§[_loc3_ + 2] = this.§ J§[2];
      }
      
      public function §-o§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§<!8§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §3!Z§.§0#§(param1) * _loc3_;
         var _loc5_:Number = §3!Z§.§!!P§(param1) * _loc3_;
         var _loc6_:Number = §3!Z§.§"!@§(param1) * _loc3_;
         this.§7S§(0,this.§;k§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §7w§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §[3§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§"!>§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§"!>§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§"!>§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§"!>§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §5N§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §[3§;
         if(this.§<!8§)
         {
            _loc4_ = this.§"!>§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§"!>§[_loc3_] *= _loc4_;
            this.§"!>§[_loc3_ + 1] *= _loc4_;
            this.§"!>§[_loc3_ + 2] *= _loc4_;
            this.§"!>§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§"!>§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§<!8§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§;k§ * §[3§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§,!B§(0);
               _loc6_ = !!this.§<!8§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§@U§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§<!8§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§<!8§;
      }
      
      public function get §[O§() : int
      {
         return this.§;k§;
      }
      
      public function set §[O§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §=!1§ * §!m§ - this.§`f§.length;
         _loc4_ = this.§`f§.length;
         this.§`f§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§`f§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §!m§)
            {
               this.§`f§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§"!>§.fixed = false;
         _loc2_ = param1 * §[3§ - this.§"!>§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§"!>§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§"!>§.pop();
            _loc3_++;
         }
         this.§"!>§.fixed = true;
         this.§7!C§.fixed = false;
         _loc2_ = param1 * §"1§ - this.§7!C§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§7!C§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§7!C§.pop();
            _loc3_++;
         }
         this.§7!C§.fixed = true;
         this.§;k§ = param1;
      }
      
      public function get §3v§() : ByteArray
      {
         this.§`f§.position = 0;
         return this.§`f§;
      }
      
      public function get §@'§() : Vector.<Number>
      {
         return this.§"!>§;
      }
      
      public function get §;!2§() : Vector.<Number>
      {
         return this.§7!C§;
      }
   }
}
