package §`!=§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §?!X§
   {
      
      public static const §-p§:int = 4;
      
      public static const §5;§:int = 2;
      
      public static const §0[§:int = 3;
      
      public static const §"c§:int = 4;
      
      public static const §^!5§:int = 0;
      
      public static const §-!e§:int = 0;
      
      public static const §<[§:int = 0;
       
      
      private var §,]§:ByteArray;
      
      private var §#!7§:Vector.<Number>;
      
      private var §4i§:Vector.<Number>;
      
      private var §[!k§:Boolean;
      
      private var §?!C§:int;
      
      private var §!L§:Vector.<Number>;
      
      public function §?!X§(param1:int, param2:Boolean = false)
      {
         this.§!L§ = new Vector.<Number>(12,true);
         super();
         this.§,]§ = new ByteArray();
         this.§,]§.endian = Endian.LITTLE_ENDIAN;
         this.§,]§.length = param1 * §5;§ * §"c§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §5;§)
         {
            this.§,]§.writeFloat(0);
            _loc3_++;
         }
         this.§#!7§ = new Vector.<Number>(param1 * §-p§,true);
         this.§4i§ = new Vector.<Number>(param1 * §0[§,true);
         this.§[!k§ = param2;
         this.§?!C§ = param1;
      }
      
      public function clone() : §?!X§
      {
         var _loc1_:§?!X§ = new §?!X§(0,this.§[!k§);
         _loc1_.§,]§.length = this.§,]§.length;
         _loc1_.§,]§.writeBytes(this.§,]§);
         _loc1_.§#!7§ = this.§#!7§.concat();
         _loc1_.§#!7§.fixed = true;
         _loc1_.§4i§ = this.§4i§.concat();
         _loc1_.§4i§.fixed = true;
         _loc1_.§?!C§ = this.§?!C§;
         return _loc1_;
      }
      
      public function copyTo(param1:§?!X§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§4i§;
         _loc6_ = this.§?!C§ * §0[§;
         _loc7_ = param2 * §0[§;
         if(param5)
         {
            param5.transformVectors(this.§4i§,this.§!L§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§!L§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§4i§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§,]§;
         _loc6_ = this.§?!C§ * §5;§ * §"c§;
         _loc7_ = param2 * §5;§ * §"c§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§,]§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§#!7§;
            _loc6_ = this.§?!C§ * §-p§;
            _loc7_ = param2 * §-p§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§#!7§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§?!C§)
               {
                  if(this.§[!k§)
                  {
                     _loc13_ = this.§#!7§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§#!7§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§#!7§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§#!7§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§#!7§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§#!7§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§#!7§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§?!X§) : void
      {
         var _loc2_:int = this.§,]§.length;
         this.§,]§.length += param1.§,]§.length;
         this.§,]§.position = _loc2_;
         this.§,]§.writeBytes(param1.§,]§);
         this.§#!7§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§#!7§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§#!7§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§#!7§.fixed = true;
         this.§4i§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§4i§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§4i§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§4i§.fixed = true;
         this.§?!C§ += param1.§8!B§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §0[§;
         var _loc6_:*;
         this.§4i§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§4i§[_loc7_ = _loc5_++] = param3;
         this.§4i§[_loc5_] = param4;
      }
      
      public function §;![§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §0[§;
         var _loc5_:*;
         this.§4i§[_loc5_ = _loc4_++] = param2;
         this.§4i§[_loc4_] = param3;
      }
      
      public function §]5§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §0[§;
         param2.x = this.§4i§[_loc3_++];
         param2.y = this.§4i§[_loc3_++];
         param2.z = this.§4i§[_loc3_];
      }
      
      public function §5!U§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§[!k§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §9q§.§@g§(param2) * _loc4_;
         var _loc6_:Number = §9q§.§!e§(param2) * _loc4_;
         var _loc7_:Number = §9q§.§6!1§(param2) * _loc4_;
         this.§[!S§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §[!S§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §-p§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§#!7§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§#!7§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§#!7§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§#!7§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §^K§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §-p§;
         var _loc4_:*;
         this.§#!7§[_loc4_ = _loc3_++] = this.§#!7§[_loc4_] * param2;
         var _loc5_:*;
         this.§#!7§[_loc5_ = _loc3_++] = this.§#!7§[_loc5_] * param2;
         var _loc6_:*;
         this.§#!7§[_loc6_ = _loc3_++] = this.§#!7§[_loc6_] * param2;
         this.§#!7§[_loc3_] *= param2;
      }
      
      public function §`!+§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §-p§;
         var _loc3_:Number = !!this.§[!k§ ? Number(this.§#!7§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§#!7§[_loc2_] * _loc3_;
         _loc5_ = this.§#!7§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§#!7§[_loc2_ + 2] * _loc3_;
         return §9q§.§]1§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §0"+§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§[!k§)
         {
            this.§5!U§(param1,this.§`!+§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §-p§ + 3;
            this.§#!7§[_loc3_] = param2;
         }
      }
      
      public function §-!n§(param1:int) : Number
      {
         var _loc2_:int = param1 * §-p§ + 3;
         return this.§#!7§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §5;§;
         this.§,]§.position = _loc4_ * §"c§;
         this.§,]§.writeFloat(param2);
         this.§,]§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §5;§;
         this.§,]§.position = _loc3_ * §"c§;
         param2.x = this.§,]§.readFloat();
         param2.y = this.§,]§.readFloat();
      }
      
      public function §^d§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §0[§;
         var _loc6_:*;
         this.§4i§[_loc6_ = _loc5_++] = this.§4i§[_loc6_] + param2;
         var _loc7_:*;
         this.§4i§[_loc7_ = _loc5_++] = this.§4i§[_loc7_] + param3;
         this.§4i§[_loc5_] += param4;
      }
      
      public function §7F§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §0[§;
         this.§!L§[0] = this.§4i§[_loc3_];
         this.§!L§[1] = this.§4i§[_loc3_ + 1];
         this.§!L§[2] = this.§4i§[_loc3_ + 2];
         param2.transformVectors(this.§!L§,this.§!L§);
         this.§4i§[_loc3_] = this.§!L§[0];
         this.§4i§[_loc3_ + 1] = this.§!L§[1];
         this.§4i§[_loc3_ + 2] = this.§!L§[2];
      }
      
      public function §1!X§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§[!k§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §9q§.§@g§(param1) * _loc3_;
         var _loc5_:Number = §9q§.§!e§(param1) * _loc3_;
         var _loc6_:Number = §9q§.§6!1§(param1) * _loc3_;
         this.§[!S§(0,this.§?!C§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §"!<§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §-p§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§#!7§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§#!7§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§#!7§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§#!7§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §1#§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §-p§;
         if(this.§[!k§)
         {
            _loc4_ = this.§#!7§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§#!7§[_loc3_] *= _loc4_;
            this.§#!7§[_loc3_ + 1] *= _loc4_;
            this.§#!7§[_loc3_ + 2] *= _loc4_;
            this.§#!7§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§#!7§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §0!-§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§[!k§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§?!C§ * §-p§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§-!n§(0);
               _loc6_ = !!this.§[!k§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§^K§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§[!k§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§[!k§;
      }
      
      public function get §8!B§() : int
      {
         return this.§?!C§;
      }
      
      public function set §8!B§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §5;§ * §"c§ - this.§,]§.length;
         _loc4_ = this.§,]§.length;
         this.§,]§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§,]§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §"c§)
            {
               this.§,]§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§#!7§.fixed = false;
         _loc2_ = param1 * §-p§ - this.§#!7§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§#!7§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§#!7§.pop();
            _loc3_++;
         }
         this.§#!7§.fixed = true;
         this.§4i§.fixed = false;
         _loc2_ = param1 * §0[§ - this.§4i§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§4i§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§4i§.pop();
            _loc3_++;
         }
         this.§4i§.fixed = true;
         this.§?!C§ = param1;
      }
      
      public function get §3!T§() : ByteArray
      {
         this.§,]§.position = 0;
         return this.§,]§;
      }
      
      public function get §3!e§() : Vector.<Number>
      {
         return this.§#!7§;
      }
      
      public function get §#5§() : Vector.<Number>
      {
         return this.§4i§;
      }
   }
}
