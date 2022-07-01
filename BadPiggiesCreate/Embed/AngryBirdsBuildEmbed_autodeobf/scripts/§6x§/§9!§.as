package §6x§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §9!§
   {
      
      public static const §#!R§:int = 4;
      
      public static const §4>§:int = 2;
      
      public static const §1W§:int = 3;
      
      public static const §`!E§:int = 4;
      
      public static const §3!V§:int = 0;
      
      public static const §5Q§:int = 0;
      
      public static const §<!l§:int = 0;
       
      
      private var §4<§:ByteArray;
      
      private var §%!<§:Vector.<Number>;
      
      private var §[!J§:Vector.<Number>;
      
      private var §2!'§:Boolean;
      
      private var §+`§:int;
      
      private var §[-§:Vector.<Number>;
      
      public function §9!§(param1:int, param2:Boolean = false)
      {
         this.§[-§ = new Vector.<Number>(12,true);
         super();
         this.§4<§ = new ByteArray();
         this.§4<§.endian = Endian.LITTLE_ENDIAN;
         this.§4<§.length = param1 * §4>§ * §`!E§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §4>§)
         {
            this.§4<§.writeFloat(0);
            _loc3_++;
         }
         this.§%!<§ = new Vector.<Number>(param1 * §#!R§,true);
         this.§[!J§ = new Vector.<Number>(param1 * §1W§,true);
         this.§2!'§ = param2;
         this.§+`§ = param1;
      }
      
      public function clone() : §9!§
      {
         var _loc1_:§9!§ = new §9!§(0,this.§2!'§);
         _loc1_.§4<§.length = this.§4<§.length;
         _loc1_.§4<§.writeBytes(this.§4<§);
         _loc1_.§%!<§ = this.§%!<§.concat();
         _loc1_.§%!<§.fixed = true;
         _loc1_.§[!J§ = this.§[!J§.concat();
         _loc1_.§[!J§.fixed = true;
         _loc1_.§+`§ = this.§+`§;
         return _loc1_;
      }
      
      public function copyTo(param1:§9!§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§[!J§;
         _loc6_ = this.§+`§ * §1W§;
         _loc7_ = param2 * §1W§;
         if(param5)
         {
            param5.transformVectors(this.§[!J§,this.§[-§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§[-§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§[!J§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§4<§;
         _loc6_ = this.§+`§ * §4>§ * §`!E§;
         _loc7_ = param2 * §4>§ * §`!E§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§4<§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§%!<§;
            _loc6_ = this.§+`§ * §#!R§;
            _loc7_ = param2 * §#!R§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§%!<§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§+`§)
               {
                  if(this.§2!'§)
                  {
                     _loc13_ = this.§%!<§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§%!<§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§%!<§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§%!<§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§%!<§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§%!<§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§%!<§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§9!§) : void
      {
         var _loc2_:int = this.§4<§.length;
         this.§4<§.length += param1.§4<§.length;
         this.§4<§.position = _loc2_;
         this.§4<§.writeBytes(param1.§4<§);
         this.§%!<§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§%!<§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§%!<§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§%!<§.fixed = true;
         this.§[!J§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§[!J§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§[!J§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§[!J§.fixed = true;
         this.§+`§ += param1.§9m§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §1W§;
         var _loc6_:*;
         this.§[!J§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§[!J§[_loc7_ = _loc5_++] = param3;
         this.§[!J§[_loc5_] = param4;
      }
      
      public function §,X§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §1W§;
         var _loc5_:*;
         this.§[!J§[_loc5_ = _loc4_++] = param2;
         this.§[!J§[_loc4_] = param3;
      }
      
      public function getPosition(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §1W§;
         param2.x = this.§[!J§[_loc3_++];
         param2.y = this.§[!J§[_loc3_++];
         param2.z = this.§[!J§[_loc3_];
      }
      
      public function §2!9§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§2!'§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §!!Y§.§&!;§(param2) * _loc4_;
         var _loc6_:Number = §!!Y§.§?!^§(param2) * _loc4_;
         var _loc7_:Number = §!!Y§.§3]§(param2) * _loc4_;
         this.§7!e§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §7!e§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §#!R§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§%!<§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§%!<§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§%!<§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§%!<§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §1!&§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §#!R§;
         var _loc4_:*;
         this.§%!<§[_loc4_ = _loc3_++] = this.§%!<§[_loc4_] * param2;
         var _loc5_:*;
         this.§%!<§[_loc5_ = _loc3_++] = this.§%!<§[_loc5_] * param2;
         var _loc6_:*;
         this.§%!<§[_loc6_ = _loc3_++] = this.§%!<§[_loc6_] * param2;
         this.§%!<§[_loc3_] *= param2;
      }
      
      public function §7k§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §#!R§;
         var _loc3_:Number = !!this.§2!'§ ? Number(this.§%!<§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§%!<§[_loc2_] * _loc3_;
         _loc5_ = this.§%!<§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§%!<§[_loc2_ + 2] * _loc3_;
         return §!!Y§.§;!^§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §@!J§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§2!'§)
         {
            this.§2!9§(param1,this.§7k§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §#!R§ + 3;
            this.§%!<§[_loc3_] = param2;
         }
      }
      
      public function §?!,§(param1:int) : Number
      {
         var _loc2_:int = param1 * §#!R§ + 3;
         return this.§%!<§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §4>§;
         this.§4<§.position = _loc4_ * §`!E§;
         this.§4<§.writeFloat(param2);
         this.§4<§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §4>§;
         this.§4<§.position = _loc3_ * §`!E§;
         param2.x = this.§4<§.readFloat();
         param2.y = this.§4<§.readFloat();
      }
      
      public function §^!<§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §1W§;
         var _loc6_:*;
         this.§[!J§[_loc6_ = _loc5_++] = this.§[!J§[_loc6_] + param2;
         var _loc7_:*;
         this.§[!J§[_loc7_ = _loc5_++] = this.§[!J§[_loc7_] + param3;
         this.§[!J§[_loc5_] += param4;
      }
      
      public function §6!9§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §1W§;
         this.§[-§[0] = this.§[!J§[_loc3_];
         this.§[-§[1] = this.§[!J§[_loc3_ + 1];
         this.§[-§[2] = this.§[!J§[_loc3_ + 2];
         param2.transformVectors(this.§[-§,this.§[-§);
         this.§[!J§[_loc3_] = this.§[-§[0];
         this.§[!J§[_loc3_ + 1] = this.§[-§[1];
         this.§[!J§[_loc3_ + 2] = this.§[-§[2];
      }
      
      public function §9!Y§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§2!'§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §!!Y§.§&!;§(param1) * _loc3_;
         var _loc5_:Number = §!!Y§.§?!^§(param1) * _loc3_;
         var _loc6_:Number = §!!Y§.§3]§(param1) * _loc3_;
         this.§7!e§(0,this.§+`§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §[!I§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §#!R§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§%!<§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§%!<§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§%!<§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§%!<§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §=M§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §#!R§;
         if(this.§2!'§)
         {
            _loc4_ = this.§%!<§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§%!<§[_loc3_] *= _loc4_;
            this.§%!<§[_loc3_ + 1] *= _loc4_;
            this.§%!<§[_loc3_ + 2] *= _loc4_;
            this.§%!<§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§%!<§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§2!'§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§+`§ * §#!R§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§?!,§(0);
               _loc6_ = !!this.§2!'§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§1!&§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§2!'§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§2!'§;
      }
      
      public function get §9m§() : int
      {
         return this.§+`§;
      }
      
      public function set §9m§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §4>§ * §`!E§ - this.§4<§.length;
         _loc4_ = this.§4<§.length;
         this.§4<§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§4<§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §`!E§)
            {
               this.§4<§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§%!<§.fixed = false;
         _loc2_ = param1 * §#!R§ - this.§%!<§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§%!<§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§%!<§.pop();
            _loc3_++;
         }
         this.§%!<§.fixed = true;
         this.§[!J§.fixed = false;
         _loc2_ = param1 * §1W§ - this.§[!J§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§[!J§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§[!J§.pop();
            _loc3_++;
         }
         this.§[!J§.fixed = true;
         this.§+`§ = param1;
      }
      
      public function get §>!I§() : ByteArray
      {
         this.§4<§.position = 0;
         return this.§4<§;
      }
      
      public function get §`!7§() : Vector.<Number>
      {
         return this.§%!<§;
      }
      
      public function get §1!P§() : Vector.<Number>
      {
         return this.§[!J§;
      }
   }
}
