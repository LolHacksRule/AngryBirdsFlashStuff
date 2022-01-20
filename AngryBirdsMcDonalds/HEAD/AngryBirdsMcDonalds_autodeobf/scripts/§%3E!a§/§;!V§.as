package §>!a§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §;!V§
   {
      
      public static const §&L§:int = 4;
      
      public static const §1!6§:int = 2;
      
      public static const §4l§:int = 3;
      
      public static const §,!!§:int = 4;
      
      public static const §+r§:int = 0;
      
      public static const §"!0§:int = 0;
      
      public static const §,5§:int = 0;
       
      
      private var §64§:ByteArray;
      
      private var §!!S§:Vector.<Number>;
      
      private var §"!Z§:Vector.<Number>;
      
      private var §4!U§:Boolean;
      
      private var §;&§:int;
      
      private var §7u§:Vector.<Number>;
      
      public function §;!V§(param1:int, param2:Boolean = false)
      {
         this.§7u§ = new Vector.<Number>(12,true);
         super();
         this.§64§ = new ByteArray();
         this.§64§.endian = Endian.LITTLE_ENDIAN;
         this.§64§.length = param1 * §1!6§ * §,!!§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §1!6§)
         {
            this.§64§.writeFloat(0);
            _loc3_++;
         }
         this.§!!S§ = new Vector.<Number>(param1 * §&L§,true);
         this.§"!Z§ = new Vector.<Number>(param1 * §4l§,true);
         this.§4!U§ = param2;
         this.§;&§ = param1;
      }
      
      public function clone() : §;!V§
      {
         var _loc1_:§;!V§ = new §;!V§(0,this.§4!U§);
         _loc1_.§64§.length = this.§64§.length;
         _loc1_.§64§.writeBytes(this.§64§);
         _loc1_.§!!S§ = this.§!!S§.concat();
         _loc1_.§!!S§.fixed = true;
         _loc1_.§"!Z§ = this.§"!Z§.concat();
         _loc1_.§"!Z§.fixed = true;
         _loc1_.§;&§ = this.§;&§;
         return _loc1_;
      }
      
      public function copyTo(param1:§;!V§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§"!Z§;
         _loc6_ = this.§;&§ * §4l§;
         _loc7_ = param2 * §4l§;
         if(param5)
         {
            param5.transformVectors(this.§"!Z§,this.§7u§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§7u§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§"!Z§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§64§;
         _loc6_ = this.§;&§ * §1!6§ * §,!!§;
         _loc7_ = param2 * §1!6§ * §,!!§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§64§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§!!S§;
            _loc6_ = this.§;&§ * §&L§;
            _loc7_ = param2 * §&L§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§!!S§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§;&§)
               {
                  if(this.§4!U§)
                  {
                     _loc13_ = this.§!!S§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§!!S§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§!!S§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§!!S§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§!!S§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§!!S§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§!!S§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§;!V§) : void
      {
         var _loc2_:int = this.§64§.length;
         this.§64§.length += param1.§64§.length;
         this.§64§.position = _loc2_;
         this.§64§.writeBytes(param1.§64§);
         this.§!!S§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§!!S§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§!!S§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§!!S§.fixed = true;
         this.§"!Z§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§"!Z§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§"!Z§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§"!Z§.fixed = true;
         this.§;&§ += param1.§#[§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §4l§;
         var _loc6_:*;
         this.§"!Z§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§"!Z§[_loc7_ = _loc5_++] = param3;
         this.§"!Z§[_loc5_] = param4;
      }
      
      public function §+!c§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §4l§;
         var _loc5_:*;
         this.§"!Z§[_loc5_ = _loc4_++] = param2;
         this.§"!Z§[_loc4_] = param3;
      }
      
      public function § g§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §4l§;
         param2.x = this.§"!Z§[_loc3_++];
         param2.y = this.§"!Z§[_loc3_++];
         param2.z = this.§"!Z§[_loc3_];
      }
      
      public function §3!c§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§4!U§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §%!c§.§1r§(param2) * _loc4_;
         var _loc6_:Number = §%!c§.§^y§(param2) * _loc4_;
         var _loc7_:Number = §%!c§.§?M§(param2) * _loc4_;
         this.§&!V§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §&!V§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §&L§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§!!S§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§!!S§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§!!S§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§!!S§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §+<§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §&L§;
         var _loc4_:*;
         this.§!!S§[_loc4_ = _loc3_++] = this.§!!S§[_loc4_] * param2;
         var _loc5_:*;
         this.§!!S§[_loc5_ = _loc3_++] = this.§!!S§[_loc5_] * param2;
         var _loc6_:*;
         this.§!!S§[_loc6_ = _loc3_++] = this.§!!S§[_loc6_] * param2;
         this.§!!S§[_loc3_] *= param2;
      }
      
      public function §"!+§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §&L§;
         var _loc3_:Number = !!this.§4!U§ ? Number(this.§!!S§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§!!S§[_loc2_] * _loc3_;
         _loc5_ = this.§!!S§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§!!S§[_loc2_ + 2] * _loc3_;
         return §%!c§.§4I§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §7!,§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§4!U§)
         {
            this.§3!c§(param1,this.§"!+§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §&L§ + 3;
            this.§!!S§[_loc3_] = param2;
         }
      }
      
      public function §[!L§(param1:int) : Number
      {
         var _loc2_:int = param1 * §&L§ + 3;
         return this.§!!S§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §1!6§;
         this.§64§.position = _loc4_ * §,!!§;
         this.§64§.writeFloat(param2);
         this.§64§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §1!6§;
         this.§64§.position = _loc3_ * §,!!§;
         param2.x = this.§64§.readFloat();
         param2.y = this.§64§.readFloat();
      }
      
      public function §6!e§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §4l§;
         var _loc6_:*;
         this.§"!Z§[_loc6_ = _loc5_++] = this.§"!Z§[_loc6_] + param2;
         var _loc7_:*;
         this.§"!Z§[_loc7_ = _loc5_++] = this.§"!Z§[_loc7_] + param3;
         this.§"!Z§[_loc5_] += param4;
      }
      
      public function §=!;§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §4l§;
         this.§7u§[0] = this.§"!Z§[_loc3_];
         this.§7u§[1] = this.§"!Z§[_loc3_ + 1];
         this.§7u§[2] = this.§"!Z§[_loc3_ + 2];
         param2.transformVectors(this.§7u§,this.§7u§);
         this.§"!Z§[_loc3_] = this.§7u§[0];
         this.§"!Z§[_loc3_ + 1] = this.§7u§[1];
         this.§"!Z§[_loc3_ + 2] = this.§7u§[2];
      }
      
      public function §4S§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§4!U§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §%!c§.§1r§(param1) * _loc3_;
         var _loc5_:Number = §%!c§.§^y§(param1) * _loc3_;
         var _loc6_:Number = §%!c§.§?M§(param1) * _loc3_;
         this.§&!V§(0,this.§;&§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §;D§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §&L§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§!!S§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§!!S§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§!!S§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§!!S§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §[!;§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §&L§;
         if(this.§4!U§)
         {
            _loc4_ = this.§!!S§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§!!S§[_loc3_] *= _loc4_;
            this.§!!S§[_loc3_ + 1] *= _loc4_;
            this.§!!S§[_loc3_ + 2] *= _loc4_;
            this.§!!S§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§!!S§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §'g§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§4!U§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§;&§ * §&L§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§[!L§(0);
               _loc6_ = !!this.§4!U§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§+<§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§4!U§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§4!U§;
      }
      
      public function get §#[§() : int
      {
         return this.§;&§;
      }
      
      public function set §#[§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §1!6§ * §,!!§ - this.§64§.length;
         _loc4_ = this.§64§.length;
         this.§64§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§64§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §,!!§)
            {
               this.§64§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§!!S§.fixed = false;
         _loc2_ = param1 * §&L§ - this.§!!S§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§!!S§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§!!S§.pop();
            _loc3_++;
         }
         this.§!!S§.fixed = true;
         this.§"!Z§.fixed = false;
         _loc2_ = param1 * §4l§ - this.§"!Z§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§"!Z§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§"!Z§.pop();
            _loc3_++;
         }
         this.§"!Z§.fixed = true;
         this.§;&§ = param1;
      }
      
      public function get §1!@§() : ByteArray
      {
         this.§64§.position = 0;
         return this.§64§;
      }
      
      public function get §?!9§() : Vector.<Number>
      {
         return this.§!!S§;
      }
      
      public function get §=!5§() : Vector.<Number>
      {
         return this.§"!Z§;
      }
   }
}
