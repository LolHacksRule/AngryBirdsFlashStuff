package §^!^§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §#!_§
   {
      
      public static const §1+§:int = 4;
      
      public static const each:int = 2;
      
      public static const §+!;§:int = 3;
      
      public static const §],§:int = 4;
      
      public static const §<U§:int = 0;
      
      public static const §>!1§:int = 0;
      
      public static const §[!^§:int = 0;
       
      
      private var §3!]§:ByteArray;
      
      private var §5W§:Vector.<Number>;
      
      private var §+2§:Vector.<Number>;
      
      private var §40§:Boolean;
      
      private var §]!k§:int;
      
      private var §while§:Vector.<Number>;
      
      public function §#!_§(param1:int, param2:Boolean = false)
      {
         this.§while§ = new Vector.<Number>(12,true);
         super();
         this.§3!]§ = new ByteArray();
         this.§3!]§.endian = Endian.LITTLE_ENDIAN;
         this.§3!]§.length = param1 * each * §],§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * each)
         {
            this.§3!]§.writeFloat(0);
            _loc3_++;
         }
         this.§5W§ = new Vector.<Number>(param1 * §1+§,true);
         this.§+2§ = new Vector.<Number>(param1 * §+!;§,true);
         this.§40§ = param2;
         this.§]!k§ = param1;
      }
      
      public function clone() : §#!_§
      {
         var _loc1_:§#!_§ = new §#!_§(0,this.§40§);
         _loc1_.§3!]§.length = this.§3!]§.length;
         _loc1_.§3!]§.writeBytes(this.§3!]§);
         _loc1_.§5W§ = this.§5W§.concat();
         _loc1_.§5W§.fixed = true;
         _loc1_.§+2§ = this.§+2§.concat();
         _loc1_.§+2§.fixed = true;
         _loc1_.§]!k§ = this.§]!k§;
         return _loc1_;
      }
      
      public function copyTo(param1:§#!_§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§+2§;
         _loc6_ = this.§]!k§ * §+!;§;
         _loc7_ = param2 * §+!;§;
         if(param5)
         {
            param5.transformVectors(this.§+2§,this.§while§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§while§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§+2§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§3!]§;
         _loc6_ = this.§]!k§ * each * §],§;
         _loc7_ = param2 * each * §],§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§3!]§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§5W§;
            _loc6_ = this.§]!k§ * §1+§;
            _loc7_ = param2 * §1+§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§5W§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§]!k§)
               {
                  if(this.§40§)
                  {
                     _loc13_ = this.§5W§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§5W§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§5W§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§5W§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§5W§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§5W§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§5W§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§#!_§) : void
      {
         var _loc2_:int = this.§3!]§.length;
         this.§3!]§.length += param1.§3!]§.length;
         this.§3!]§.position = _loc2_;
         this.§3!]§.writeBytes(param1.§3!]§);
         this.§5W§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§5W§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§5W§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§5W§.fixed = true;
         this.§+2§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§+2§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§+2§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§+2§.fixed = true;
         this.§]!k§ += param1.§-!n§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §+!;§;
         var _loc6_:*;
         this.§+2§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§+2§[_loc7_ = _loc5_++] = param3;
         this.§+2§[_loc5_] = param4;
      }
      
      public function §>!o§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §+!;§;
         var _loc5_:*;
         this.§+2§[_loc5_ = _loc4_++] = param2;
         this.§+2§[_loc4_] = param3;
      }
      
      public function §['§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §+!;§;
         param2.x = this.§+2§[_loc3_++];
         param2.y = this.§+2§[_loc3_++];
         param2.z = this.§+2§[_loc3_];
      }
      
      public function §,!;§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§40§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §+%§.§<#§(param2) * _loc4_;
         var _loc6_:Number = §+%§.§4!V§(param2) * _loc4_;
         var _loc7_:Number = §+%§.§7h§(param2) * _loc4_;
         this.§;!T§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §;!T§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §1+§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§5W§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§5W§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§5W§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§5W§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §^!<§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §1+§;
         var _loc4_:*;
         this.§5W§[_loc4_ = _loc3_++] = this.§5W§[_loc4_] * param2;
         var _loc5_:*;
         this.§5W§[_loc5_ = _loc3_++] = this.§5W§[_loc5_] * param2;
         var _loc6_:*;
         this.§5W§[_loc6_ = _loc3_++] = this.§5W§[_loc6_] * param2;
         this.§5W§[_loc3_] *= param2;
      }
      
      public function §9!,§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §1+§;
         var _loc3_:Number = !!this.§40§ ? Number(this.§5W§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§5W§[_loc2_] * _loc3_;
         _loc5_ = this.§5W§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§5W§[_loc2_ + 2] * _loc3_;
         return §+%§.§"!0§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §'7§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§40§)
         {
            this.§,!;§(param1,this.§9!,§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §1+§ + 3;
            this.§5W§[_loc3_] = param2;
         }
      }
      
      public function §2!4§(param1:int) : Number
      {
         var _loc2_:int = param1 * §1+§ + 3;
         return this.§5W§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * each;
         this.§3!]§.position = _loc4_ * §],§;
         this.§3!]§.writeFloat(param2);
         this.§3!]§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * each;
         this.§3!]§.position = _loc3_ * §],§;
         param2.x = this.§3!]§.readFloat();
         param2.y = this.§3!]§.readFloat();
      }
      
      public function §8l§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §+!;§;
         var _loc6_:*;
         this.§+2§[_loc6_ = _loc5_++] = this.§+2§[_loc6_] + param2;
         var _loc7_:*;
         this.§+2§[_loc7_ = _loc5_++] = this.§+2§[_loc7_] + param3;
         this.§+2§[_loc5_] += param4;
      }
      
      public function § !!§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §+!;§;
         this.§while§[0] = this.§+2§[_loc3_];
         this.§while§[1] = this.§+2§[_loc3_ + 1];
         this.§while§[2] = this.§+2§[_loc3_ + 2];
         param2.transformVectors(this.§while§,this.§while§);
         this.§+2§[_loc3_] = this.§while§[0];
         this.§+2§[_loc3_ + 1] = this.§while§[1];
         this.§+2§[_loc3_ + 2] = this.§while§[2];
      }
      
      public function §2N§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§40§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §+%§.§<#§(param1) * _loc3_;
         var _loc5_:Number = §+%§.§4!V§(param1) * _loc3_;
         var _loc6_:Number = §+%§.§7h§(param1) * _loc3_;
         this.§;!T§(0,this.§]!k§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §,;§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §1+§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§5W§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§5W§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§5W§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§5W§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §0!^§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §1+§;
         if(this.§40§)
         {
            _loc4_ = this.§5W§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§5W§[_loc3_] *= _loc4_;
            this.§5W§[_loc3_ + 1] *= _loc4_;
            this.§5W§[_loc3_ + 2] *= _loc4_;
            this.§5W§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§5W§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §3!A§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§40§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§]!k§ * §1+§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§2!4§(0);
               _loc6_ = !!this.§40§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§^!<§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§40§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§40§;
      }
      
      public function get §-!n§() : int
      {
         return this.§]!k§;
      }
      
      public function set §-!n§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * each * §],§ - this.§3!]§.length;
         _loc4_ = this.§3!]§.length;
         this.§3!]§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§3!]§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §],§)
            {
               this.§3!]§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§5W§.fixed = false;
         _loc2_ = param1 * §1+§ - this.§5W§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§5W§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§5W§.pop();
            _loc3_++;
         }
         this.§5W§.fixed = true;
         this.§+2§.fixed = false;
         _loc2_ = param1 * §+!;§ - this.§+2§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§+2§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§+2§.pop();
            _loc3_++;
         }
         this.§+2§.fixed = true;
         this.§]!k§ = param1;
      }
      
      public function get §^%§() : ByteArray
      {
         this.§3!]§.position = 0;
         return this.§3!]§;
      }
      
      public function get §?c§() : Vector.<Number>
      {
         return this.§5W§;
      }
      
      public function get §%!0§() : Vector.<Number>
      {
         return this.§+2§;
      }
   }
}
