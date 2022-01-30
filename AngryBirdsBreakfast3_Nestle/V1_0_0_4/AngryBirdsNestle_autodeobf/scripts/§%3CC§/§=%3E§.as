package §<C§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §=>§
   {
      
      public static const §<"+§:int = 4;
      
      public static const §@!S§:int = 2;
      
      public static const §]!"§:int = 3;
      
      public static const §&!g§:int = 4;
      
      public static const §1!"§:int = 0;
      
      public static const §@!D§:int = 0;
      
      public static const §[i§:int = 0;
       
      
      private var §>!E§:ByteArray;
      
      private var §4!b§:Vector.<Number>;
      
      private var §;!Y§:Vector.<Number>;
      
      private var §'!7§:Boolean;
      
      private var §5h§:int;
      
      private var §5!6§:Vector.<Number>;
      
      public function §=>§(param1:int, param2:Boolean = false)
      {
         this.§5!6§ = new Vector.<Number>(12,true);
         super();
         this.§>!E§ = new ByteArray();
         this.§>!E§.endian = Endian.LITTLE_ENDIAN;
         this.§>!E§.length = param1 * §@!S§ * §&!g§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §@!S§)
         {
            this.§>!E§.writeFloat(0);
            _loc3_++;
         }
         this.§4!b§ = new Vector.<Number>(param1 * §<"+§,true);
         this.§;!Y§ = new Vector.<Number>(param1 * §]!"§,true);
         this.§'!7§ = param2;
         this.§5h§ = param1;
      }
      
      public function clone() : §=>§
      {
         var _loc1_:§=>§ = new §=>§(0,this.§'!7§);
         _loc1_.§>!E§.length = this.§>!E§.length;
         _loc1_.§>!E§.writeBytes(this.§>!E§);
         _loc1_.§4!b§ = this.§4!b§.concat();
         _loc1_.§4!b§.fixed = true;
         _loc1_.§;!Y§ = this.§;!Y§.concat();
         _loc1_.§;!Y§.fixed = true;
         _loc1_.§5h§ = this.§5h§;
         return _loc1_;
      }
      
      public function copyTo(param1:§=>§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§;!Y§;
         _loc6_ = this.§5h§ * §]!"§;
         _loc7_ = param2 * §]!"§;
         if(param5)
         {
            param5.transformVectors(this.§;!Y§,this.§5!6§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§5!6§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§;!Y§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§>!E§;
         _loc6_ = this.§5h§ * §@!S§ * §&!g§;
         _loc7_ = param2 * §@!S§ * §&!g§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§>!E§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§4!b§;
            _loc6_ = this.§5h§ * §<"+§;
            _loc7_ = param2 * §<"+§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§4!b§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§5h§)
               {
                  if(this.§'!7§)
                  {
                     _loc13_ = this.§4!b§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§4!b§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§4!b§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§4!b§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§4!b§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§4!b§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§4!b§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§=>§) : void
      {
         var _loc2_:int = this.§>!E§.length;
         this.§>!E§.length += param1.§>!E§.length;
         this.§>!E§.position = _loc2_;
         this.§>!E§.writeBytes(param1.§>!E§);
         this.§4!b§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§4!b§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§4!b§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§4!b§.fixed = true;
         this.§;!Y§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§;!Y§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§;!Y§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§;!Y§.fixed = true;
         this.§5h§ += param1.§5!M§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §]!"§;
         var _loc6_:*;
         this.§;!Y§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§;!Y§[_loc7_ = _loc5_++] = param3;
         this.§;!Y§[_loc5_] = param4;
      }
      
      public function §@2§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §]!"§;
         var _loc5_:*;
         this.§;!Y§[_loc5_ = _loc4_++] = param2;
         this.§;!Y§[_loc4_] = param3;
      }
      
      public function §'!F§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §]!"§;
         param2.x = this.§;!Y§[_loc3_++];
         param2.y = this.§;!Y§[_loc3_++];
         param2.z = this.§;!Y§[_loc3_];
      }
      
      public function §&!V§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§'!7§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §&L§.§4! §(param2) * _loc4_;
         var _loc6_:Number = §&L§.§,!e§(param2) * _loc4_;
         var _loc7_:Number = §&L§.§1<§(param2) * _loc4_;
         this.§#!o§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §#!o§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §<"+§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§4!b§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§4!b§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§4!b§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§4!b§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §>!O§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §<"+§;
         var _loc4_:*;
         this.§4!b§[_loc4_ = _loc3_++] = this.§4!b§[_loc4_] * param2;
         var _loc5_:*;
         this.§4!b§[_loc5_ = _loc3_++] = this.§4!b§[_loc5_] * param2;
         var _loc6_:*;
         this.§4!b§[_loc6_ = _loc3_++] = this.§4!b§[_loc6_] * param2;
         this.§4!b§[_loc3_] *= param2;
      }
      
      public function §1! §(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §<"+§;
         var _loc3_:Number = !!this.§'!7§ ? Number(this.§4!b§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§4!b§[_loc2_] * _loc3_;
         _loc5_ = this.§4!b§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§4!b§[_loc2_ + 2] * _loc3_;
         return §&L§.§,!d§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §7!B§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§'!7§)
         {
            this.§&!V§(param1,this.§1! §(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §<"+§ + 3;
            this.§4!b§[_loc3_] = param2;
         }
      }
      
      public function §'-§(param1:int) : Number
      {
         var _loc2_:int = param1 * §<"+§ + 3;
         return this.§4!b§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §@!S§;
         this.§>!E§.position = _loc4_ * §&!g§;
         this.§>!E§.writeFloat(param2);
         this.§>!E§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §@!S§;
         this.§>!E§.position = _loc3_ * §&!g§;
         param2.x = this.§>!E§.readFloat();
         param2.y = this.§>!E§.readFloat();
      }
      
      public function §,=§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §]!"§;
         var _loc6_:*;
         this.§;!Y§[_loc6_ = _loc5_++] = this.§;!Y§[_loc6_] + param2;
         var _loc7_:*;
         this.§;!Y§[_loc7_ = _loc5_++] = this.§;!Y§[_loc7_] + param3;
         this.§;!Y§[_loc5_] += param4;
      }
      
      public function §<;§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §]!"§;
         this.§5!6§[0] = this.§;!Y§[_loc3_];
         this.§5!6§[1] = this.§;!Y§[_loc3_ + 1];
         this.§5!6§[2] = this.§;!Y§[_loc3_ + 2];
         param2.transformVectors(this.§5!6§,this.§5!6§);
         this.§;!Y§[_loc3_] = this.§5!6§[0];
         this.§;!Y§[_loc3_ + 1] = this.§5!6§[1];
         this.§;!Y§[_loc3_ + 2] = this.§5!6§[2];
      }
      
      public function §'B§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§'!7§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §&L§.§4! §(param1) * _loc3_;
         var _loc5_:Number = §&L§.§,!e§(param1) * _loc3_;
         var _loc6_:Number = §&L§.§1<§(param1) * _loc3_;
         this.§#!o§(0,this.§5h§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §0D§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §<"+§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§4!b§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§4!b§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§4!b§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§4!b§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function § !o§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §<"+§;
         if(this.§'!7§)
         {
            _loc4_ = this.§4!b§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§4!b§[_loc3_] *= _loc4_;
            this.§4!b§[_loc3_ + 1] *= _loc4_;
            this.§4!b§[_loc3_ + 2] *= _loc4_;
            this.§4!b§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§4!b§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §8"!§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§'!7§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§5h§ * §<"+§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§'-§(0);
               _loc6_ = !!this.§'!7§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§>!O§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§'!7§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§'!7§;
      }
      
      public function get §5!M§() : int
      {
         return this.§5h§;
      }
      
      public function set §5!M§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §@!S§ * §&!g§ - this.§>!E§.length;
         _loc4_ = this.§>!E§.length;
         this.§>!E§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§>!E§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §&!g§)
            {
               this.§>!E§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§4!b§.fixed = false;
         _loc2_ = param1 * §<"+§ - this.§4!b§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§4!b§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§4!b§.pop();
            _loc3_++;
         }
         this.§4!b§.fixed = true;
         this.§;!Y§.fixed = false;
         _loc2_ = param1 * §]!"§ - this.§;!Y§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§;!Y§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§;!Y§.pop();
            _loc3_++;
         }
         this.§;!Y§.fixed = true;
         this.§5h§ = param1;
      }
      
      public function get §^!N§() : ByteArray
      {
         this.§>!E§.position = 0;
         return this.§>!E§;
      }
      
      public function get §,!I§() : Vector.<Number>
      {
         return this.§4!b§;
      }
      
      public function get §="1§() : Vector.<Number>
      {
         return this.§;!Y§;
      }
   }
}
