package §`>§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §6v§
   {
      
      public static const §8F§:int = 4;
      
      public static const §=!E§:int = 2;
      
      public static const §[h§:int = 3;
      
      public static const §]!1§:int = 4;
      
      public static const §2X§:int = 0;
      
      public static const §33§:int = 0;
      
      public static const §1v§:int = 0;
       
      
      private var §&!&§:ByteArray;
      
      private var §%8§:Vector.<Number>;
      
      private var §+!e§:Vector.<Number>;
      
      private var §3!M§:Boolean;
      
      private var §5!_§:int;
      
      private var §]!@§:Vector.<Number>;
      
      public function §6v§(param1:int, param2:Boolean = false)
      {
         this.§]!@§ = new Vector.<Number>(12,true);
         super();
         this.§&!&§ = new ByteArray();
         this.§&!&§.endian = Endian.LITTLE_ENDIAN;
         this.§&!&§.length = param1 * §=!E§ * §]!1§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §=!E§)
         {
            this.§&!&§.writeFloat(0);
            _loc3_++;
         }
         this.§%8§ = new Vector.<Number>(param1 * §8F§,true);
         this.§+!e§ = new Vector.<Number>(param1 * §[h§,true);
         this.§3!M§ = param2;
         this.§5!_§ = param1;
      }
      
      public function clone() : §6v§
      {
         var _loc1_:§6v§ = new §6v§(0,this.§3!M§);
         _loc1_.§&!&§.length = this.§&!&§.length;
         _loc1_.§&!&§.writeBytes(this.§&!&§);
         _loc1_.§%8§ = this.§%8§.concat();
         _loc1_.§%8§.fixed = true;
         _loc1_.§+!e§ = this.§+!e§.concat();
         _loc1_.§+!e§.fixed = true;
         _loc1_.§5!_§ = this.§5!_§;
         return _loc1_;
      }
      
      public function copyTo(param1:§6v§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§+!e§;
         _loc6_ = this.§5!_§ * §[h§;
         _loc7_ = param2 * §[h§;
         if(param5)
         {
            param5.transformVectors(this.§+!e§,this.§]!@§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§]!@§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§+!e§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§&!&§;
         _loc6_ = this.§5!_§ * §=!E§ * §]!1§;
         _loc7_ = param2 * §=!E§ * §]!1§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§&!&§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§%8§;
            _loc6_ = this.§5!_§ * §8F§;
            _loc7_ = param2 * §8F§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§%8§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§5!_§)
               {
                  if(this.§3!M§)
                  {
                     _loc13_ = this.§%8§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§%8§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§%8§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§%8§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§%8§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§%8§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§%8§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§6v§) : void
      {
         var _loc2_:int = this.§&!&§.length;
         this.§&!&§.length += param1.§&!&§.length;
         this.§&!&§.position = _loc2_;
         this.§&!&§.writeBytes(param1.§&!&§);
         this.§%8§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§%8§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§%8§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§%8§.fixed = true;
         this.§+!e§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§+!e§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§+!e§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§+!e§.fixed = true;
         this.§5!_§ += param1.§+!N§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §[h§;
         var _loc6_:*;
         this.§+!e§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§+!e§[_loc7_ = _loc5_++] = param3;
         this.§+!e§[_loc5_] = param4;
      }
      
      public function §+V§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §[h§;
         var _loc5_:*;
         this.§+!e§[_loc5_ = _loc4_++] = param2;
         this.§+!e§[_loc4_] = param3;
      }
      
      public function §73§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §[h§;
         param2.x = this.§+!e§[_loc3_++];
         param2.y = this.§+!e§[_loc3_++];
         param2.z = this.§+!e§[_loc3_];
      }
      
      public function § w§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§3!M§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §^!5§.§+!D§(param2) * _loc4_;
         var _loc6_:Number = §^!5§.static(param2) * _loc4_;
         var _loc7_:Number = §^!5§.§%D§(param2) * _loc4_;
         this.§8u§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §8u§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §8F§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§%8§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§%8§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§%8§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§%8§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §'=§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §8F§;
         var _loc4_:*;
         this.§%8§[_loc4_ = _loc3_++] = this.§%8§[_loc4_] * param2;
         var _loc5_:*;
         this.§%8§[_loc5_ = _loc3_++] = this.§%8§[_loc5_] * param2;
         var _loc6_:*;
         this.§%8§[_loc6_ = _loc3_++] = this.§%8§[_loc6_] * param2;
         this.§%8§[_loc3_] *= param2;
      }
      
      public function §^>§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §8F§;
         var _loc3_:Number = !!this.§3!M§ ? Number(this.§%8§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§%8§[_loc2_] * _loc3_;
         _loc5_ = this.§%8§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§%8§[_loc2_ + 2] * _loc3_;
         return §^!5§.§^X§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §[!,§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§3!M§)
         {
            this.§ w§(param1,this.§^>§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §8F§ + 3;
            this.§%8§[_loc3_] = param2;
         }
      }
      
      public function §5w§(param1:int) : Number
      {
         var _loc2_:int = param1 * §8F§ + 3;
         return this.§%8§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §=!E§;
         this.§&!&§.position = _loc4_ * §]!1§;
         this.§&!&§.writeFloat(param2);
         this.§&!&§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §=!E§;
         this.§&!&§.position = _loc3_ * §]!1§;
         param2.x = this.§&!&§.readFloat();
         param2.y = this.§&!&§.readFloat();
      }
      
      public function §,"§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §[h§;
         var _loc6_:*;
         this.§+!e§[_loc6_ = _loc5_++] = this.§+!e§[_loc6_] + param2;
         var _loc7_:*;
         this.§+!e§[_loc7_ = _loc5_++] = this.§+!e§[_loc7_] + param3;
         this.§+!e§[_loc5_] += param4;
      }
      
      public function §%6§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §[h§;
         this.§]!@§[0] = this.§+!e§[_loc3_];
         this.§]!@§[1] = this.§+!e§[_loc3_ + 1];
         this.§]!@§[2] = this.§+!e§[_loc3_ + 2];
         param2.transformVectors(this.§]!@§,this.§]!@§);
         this.§+!e§[_loc3_] = this.§]!@§[0];
         this.§+!e§[_loc3_ + 1] = this.§]!@§[1];
         this.§+!e§[_loc3_ + 2] = this.§]!@§[2];
      }
      
      public function §?!P§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§3!M§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §^!5§.§+!D§(param1) * _loc3_;
         var _loc5_:Number = §^!5§.static(param1) * _loc3_;
         var _loc6_:Number = §^!5§.§%D§(param1) * _loc3_;
         this.§8u§(0,this.§5!_§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §+!E§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §8F§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§%8§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§%8§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§%8§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§%8§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §60§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §8F§;
         if(this.§3!M§)
         {
            _loc4_ = this.§%8§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§%8§[_loc3_] *= _loc4_;
            this.§%8§[_loc3_ + 1] *= _loc4_;
            this.§%8§[_loc3_ + 2] *= _loc4_;
            this.§%8§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§%8§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §=Y§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§3!M§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§5!_§ * §8F§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§5w§(0);
               _loc6_ = !!this.§3!M§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§'=§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§3!M§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§3!M§;
      }
      
      public function get §+!N§() : int
      {
         return this.§5!_§;
      }
      
      public function set §+!N§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §=!E§ * §]!1§ - this.§&!&§.length;
         _loc4_ = this.§&!&§.length;
         this.§&!&§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§&!&§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §]!1§)
            {
               this.§&!&§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§%8§.fixed = false;
         _loc2_ = param1 * §8F§ - this.§%8§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§%8§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§%8§.pop();
            _loc3_++;
         }
         this.§%8§.fixed = true;
         this.§+!e§.fixed = false;
         _loc2_ = param1 * §[h§ - this.§+!e§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§+!e§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§+!e§.pop();
            _loc3_++;
         }
         this.§+!e§.fixed = true;
         this.§5!_§ = param1;
      }
      
      public function get §#!F§() : ByteArray
      {
         this.§&!&§.position = 0;
         return this.§&!&§;
      }
      
      public function get §?m§() : Vector.<Number>
      {
         return this.§%8§;
      }
      
      public function get §%`§() : Vector.<Number>
      {
         return this.§+!e§;
      }
   }
}
