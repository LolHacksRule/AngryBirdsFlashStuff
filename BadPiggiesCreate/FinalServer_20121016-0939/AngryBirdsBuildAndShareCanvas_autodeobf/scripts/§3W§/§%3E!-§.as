package §3W§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §>!-§
   {
      
      public static const §6!S§:int = 4;
      
      public static const §@d§:int = 2;
      
      public static const §[e§:int = 3;
      
      public static const §>g§:int = 4;
      
      public static const §[+§:int = 0;
      
      public static const §!!^§:int = 0;
      
      public static const §8A§:int = 0;
       
      
      private var §,V§:ByteArray;
      
      private var §@!"§:Vector.<Number>;
      
      private var §["&§:Vector.<Number>;
      
      private var §,";§:Boolean;
      
      private var §[!>§:int;
      
      private var §-" §:Vector.<Number>;
      
      public function §>!-§(param1:int, param2:Boolean = false)
      {
         this.§-" § = new Vector.<Number>(12,true);
         super();
         this.§,V§ = new ByteArray();
         this.§,V§.endian = Endian.LITTLE_ENDIAN;
         this.§,V§.length = param1 * §@d§ * §>g§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §@d§)
         {
            this.§,V§.writeFloat(0);
            _loc3_++;
         }
         this.§@!"§ = new Vector.<Number>(param1 * §6!S§,true);
         this.§["&§ = new Vector.<Number>(param1 * §[e§,true);
         this.§,";§ = param2;
         this.§[!>§ = param1;
      }
      
      public function clone() : §>!-§
      {
         var _loc1_:§>!-§ = new §>!-§(0,this.§,";§);
         _loc1_.§,V§.length = this.§,V§.length;
         _loc1_.§,V§.writeBytes(this.§,V§);
         _loc1_.§@!"§ = this.§@!"§.concat();
         _loc1_.§@!"§.fixed = true;
         _loc1_.§["&§ = this.§["&§.concat();
         _loc1_.§["&§.fixed = true;
         _loc1_.§[!>§ = this.§[!>§;
         return _loc1_;
      }
      
      public function copyTo(param1:§>!-§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§["&§;
         _loc6_ = this.§[!>§ * §[e§;
         _loc7_ = param2 * §[e§;
         if(param5)
         {
            param5.transformVectors(this.§["&§,this.§-" §);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§-" §[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§["&§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§,V§;
         _loc6_ = this.§[!>§ * §@d§ * §>g§;
         _loc7_ = param2 * §@d§ * §>g§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§,V§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§@!"§;
            _loc6_ = this.§[!>§ * §6!S§;
            _loc7_ = param2 * §6!S§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§@!"§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§[!>§)
               {
                  if(this.§,";§)
                  {
                     _loc13_ = this.§@!"§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§@!"§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§@!"§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§@!"§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§@!"§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§@!"§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§@!"§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§>!-§) : void
      {
         var _loc2_:int = this.§,V§.length;
         this.§,V§.length += param1.§,V§.length;
         this.§,V§.position = _loc2_;
         this.§,V§.writeBytes(param1.§,V§);
         this.§@!"§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§@!"§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§@!"§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§@!"§.fixed = true;
         this.§["&§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§["&§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§["&§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§["&§.fixed = true;
         this.§[!>§ += param1.§!>§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §[e§;
         var _loc6_:*;
         this.§["&§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§["&§[_loc7_ = _loc5_++] = param3;
         this.§["&§[_loc5_] = param4;
      }
      
      public function §9!q§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §[e§;
         var _loc5_:*;
         this.§["&§[_loc5_ = _loc4_++] = param2;
         this.§["&§[_loc4_] = param3;
      }
      
      public function §9!l§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §[e§;
         param2.x = this.§["&§[_loc3_++];
         param2.y = this.§["&§[_loc3_++];
         param2.z = this.§["&§[_loc3_];
      }
      
      public function § "9§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§,";§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §`!h§.§2!,§(param2) * _loc4_;
         var _loc6_:Number = §`!h§.§`"<§(param2) * _loc4_;
         var _loc7_:Number = §`!h§.§]&§(param2) * _loc4_;
         this.§^!o§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §^!o§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §6!S§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§@!"§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§@!"§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§@!"§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§@!"§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §9!5§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §6!S§;
         var _loc4_:*;
         this.§@!"§[_loc4_ = _loc3_++] = this.§@!"§[_loc4_] * param2;
         var _loc5_:*;
         this.§@!"§[_loc5_ = _loc3_++] = this.§@!"§[_loc5_] * param2;
         var _loc6_:*;
         this.§@!"§[_loc6_ = _loc3_++] = this.§@!"§[_loc6_] * param2;
         this.§@!"§[_loc3_] *= param2;
      }
      
      public function §2" §(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §6!S§;
         var _loc3_:Number = !!this.§,";§ ? Number(this.§@!"§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§@!"§[_loc2_] * _loc3_;
         _loc5_ = this.§@!"§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§@!"§[_loc2_ + 2] * _loc3_;
         return §`!h§.§#!X§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §]!G§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§,";§)
         {
            this.§ "9§(param1,this.§2" §(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §6!S§ + 3;
            this.§@!"§[_loc3_] = param2;
         }
      }
      
      public function §&!-§(param1:int) : Number
      {
         var _loc2_:int = param1 * §6!S§ + 3;
         return this.§@!"§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §@d§;
         this.§,V§.position = _loc4_ * §>g§;
         this.§,V§.writeFloat(param2);
         this.§,V§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §@d§;
         this.§,V§.position = _loc3_ * §>g§;
         param2.x = this.§,V§.readFloat();
         param2.y = this.§,V§.readFloat();
      }
      
      public function §"e§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §[e§;
         var _loc6_:*;
         this.§["&§[_loc6_ = _loc5_++] = this.§["&§[_loc6_] + param2;
         var _loc7_:*;
         this.§["&§[_loc7_ = _loc5_++] = this.§["&§[_loc7_] + param3;
         this.§["&§[_loc5_] += param4;
      }
      
      public function §31§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §[e§;
         this.§-" §[0] = this.§["&§[_loc3_];
         this.§-" §[1] = this.§["&§[_loc3_ + 1];
         this.§-" §[2] = this.§["&§[_loc3_ + 2];
         param2.transformVectors(this.§-" §,this.§-" §);
         this.§["&§[_loc3_] = this.§-" §[0];
         this.§["&§[_loc3_ + 1] = this.§-" §[1];
         this.§["&§[_loc3_ + 2] = this.§-" §[2];
      }
      
      public function §[_§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§,";§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §`!h§.§2!,§(param1) * _loc3_;
         var _loc5_:Number = §`!h§.§`"<§(param1) * _loc3_;
         var _loc6_:Number = §`!h§.§]&§(param1) * _loc3_;
         this.§^!o§(0,this.§[!>§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §!d§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §6!S§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§@!"§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§@!"§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§@!"§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§@!"§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §>&§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §6!S§;
         if(this.§,";§)
         {
            _loc4_ = this.§@!"§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§@!"§[_loc3_] *= _loc4_;
            this.§@!"§[_loc3_ + 1] *= _loc4_;
            this.§@!"§[_loc3_ + 2] *= _loc4_;
            this.§@!"§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§@!"§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §&B§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§,";§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§[!>§ * §6!S§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§&!-§(0);
               _loc6_ = !!this.§,";§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§9!5§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§,";§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§,";§;
      }
      
      public function get §!>§() : int
      {
         return this.§[!>§;
      }
      
      public function set §!>§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §@d§ * §>g§ - this.§,V§.length;
         _loc4_ = this.§,V§.length;
         this.§,V§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§,V§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §>g§)
            {
               this.§,V§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§@!"§.fixed = false;
         _loc2_ = param1 * §6!S§ - this.§@!"§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§@!"§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§@!"§.pop();
            _loc3_++;
         }
         this.§@!"§.fixed = true;
         this.§["&§.fixed = false;
         _loc2_ = param1 * §[e§ - this.§["&§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§["&§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§["&§.pop();
            _loc3_++;
         }
         this.§["&§.fixed = true;
         this.§[!>§ = param1;
      }
      
      public function get §7L§() : ByteArray
      {
         this.§,V§.position = 0;
         return this.§,V§;
      }
      
      public function get §[I§() : Vector.<Number>
      {
         return this.§@!"§;
      }
      
      public function get §0!E§() : Vector.<Number>
      {
         return this.§["&§;
      }
   }
}
