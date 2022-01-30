package §-$§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §6"5§
   {
      
      public static const §6!B§:int = 4;
      
      public static const §"<§:int = 2;
      
      public static const §<!=§:int = 3;
      
      public static const §>!$§:int = 4;
      
      public static const §"!L§:int = 0;
      
      public static const §%!;§:int = 0;
      
      public static const §1I§:int = 0;
       
      
      private var §[$§:ByteArray;
      
      private var §9s§:Vector.<Number>;
      
      private var §&B§:Vector.<Number>;
      
      private var §>P§:Boolean;
      
      private var §`!+§:int;
      
      private var §!!t§:Vector.<Number>;
      
      public function §6"5§(param1:int, param2:Boolean = false)
      {
         this.§!!t§ = new Vector.<Number>(12,true);
         super();
         this.§[$§ = new ByteArray();
         this.§[$§.endian = Endian.LITTLE_ENDIAN;
         this.§[$§.length = param1 * §"<§ * §>!$§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §"<§)
         {
            this.§[$§.writeFloat(0);
            _loc3_++;
         }
         this.§9s§ = new Vector.<Number>(param1 * §6!B§,true);
         this.§&B§ = new Vector.<Number>(param1 * §<!=§,true);
         this.§>P§ = param2;
         this.§`!+§ = param1;
      }
      
      public function clone() : §6"5§
      {
         var _loc1_:§6"5§ = new §6"5§(0,this.§>P§);
         _loc1_.§[$§.length = this.§[$§.length;
         _loc1_.§[$§.writeBytes(this.§[$§);
         _loc1_.§9s§ = this.§9s§.concat();
         _loc1_.§9s§.fixed = true;
         _loc1_.§&B§ = this.§&B§.concat();
         _loc1_.§&B§.fixed = true;
         _loc1_.§`!+§ = this.§`!+§;
         return _loc1_;
      }
      
      public function copyTo(param1:§6"5§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§&B§;
         _loc6_ = this.§`!+§ * §<!=§;
         _loc7_ = param2 * §<!=§;
         if(param5)
         {
            param5.transformVectors(this.§&B§,this.§!!t§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§!!t§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§&B§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§[$§;
         _loc6_ = this.§`!+§ * §"<§ * §>!$§;
         _loc7_ = param2 * §"<§ * §>!$§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§[$§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§9s§;
            _loc6_ = this.§`!+§ * §6!B§;
            _loc7_ = param2 * §6!B§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§9s§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§`!+§)
               {
                  if(this.§>P§)
                  {
                     _loc13_ = this.§9s§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§9s§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§9s§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§9s§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§9s§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§9s§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§9s§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§6"5§) : void
      {
         var _loc2_:int = this.§[$§.length;
         this.§[$§.length += param1.§[$§.length;
         this.§[$§.position = _loc2_;
         this.§[$§.writeBytes(param1.§[$§);
         this.§9s§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§9s§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§9s§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§9s§.fixed = true;
         this.§&B§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§&B§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§&B§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§&B§.fixed = true;
         this.§`!+§ += param1.§"@§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §<!=§;
         var _loc6_:*;
         this.§&B§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§&B§[_loc7_ = _loc5_++] = param3;
         this.§&B§[_loc5_] = param4;
      }
      
      public function §%_§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §<!=§;
         var _loc5_:*;
         this.§&B§[_loc5_ = _loc4_++] = param2;
         this.§&B§[_loc4_] = param3;
      }
      
      public function §&§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §<!=§;
         param2.x = this.§&B§[_loc3_++];
         param2.y = this.§&B§[_loc3_++];
         param2.z = this.§&B§[_loc3_];
      }
      
      public function §"N§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§>P§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §4!f§.§=!S§(param2) * _loc4_;
         var _loc6_:Number = §4!f§.§if §(param2) * _loc4_;
         var _loc7_:Number = §4!f§.§^j§(param2) * _loc4_;
         this.§!"6§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §!"6§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §6!B§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§9s§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§9s§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§9s§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§9s§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §[!+§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §6!B§;
         var _loc4_:*;
         this.§9s§[_loc4_ = _loc3_++] = this.§9s§[_loc4_] * param2;
         var _loc5_:*;
         this.§9s§[_loc5_ = _loc3_++] = this.§9s§[_loc5_] * param2;
         var _loc6_:*;
         this.§9s§[_loc6_ = _loc3_++] = this.§9s§[_loc6_] * param2;
         this.§9s§[_loc3_] *= param2;
      }
      
      public function §,!X§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §6!B§;
         var _loc3_:Number = !!this.§>P§ ? Number(this.§9s§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§9s§[_loc2_] * _loc3_;
         _loc5_ = this.§9s§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§9s§[_loc2_ + 2] * _loc3_;
         return §4!f§.§;1§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §6!L§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§>P§)
         {
            this.§"N§(param1,this.§,!X§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §6!B§ + 3;
            this.§9s§[_loc3_] = param2;
         }
      }
      
      public function § 3§(param1:int) : Number
      {
         var _loc2_:int = param1 * §6!B§ + 3;
         return this.§9s§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §"<§;
         this.§[$§.position = _loc4_ * §>!$§;
         this.§[$§.writeFloat(param2);
         this.§[$§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §"<§;
         this.§[$§.position = _loc3_ * §>!$§;
         param2.x = this.§[$§.readFloat();
         param2.y = this.§[$§.readFloat();
      }
      
      public function §"F§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §<!=§;
         var _loc6_:*;
         this.§&B§[_loc6_ = _loc5_++] = this.§&B§[_loc6_] + param2;
         var _loc7_:*;
         this.§&B§[_loc7_ = _loc5_++] = this.§&B§[_loc7_] + param3;
         this.§&B§[_loc5_] += param4;
      }
      
      public function §&!;§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §<!=§;
         this.§!!t§[0] = this.§&B§[_loc3_];
         this.§!!t§[1] = this.§&B§[_loc3_ + 1];
         this.§!!t§[2] = this.§&B§[_loc3_ + 2];
         param2.transformVectors(this.§!!t§,this.§!!t§);
         this.§&B§[_loc3_] = this.§!!t§[0];
         this.§&B§[_loc3_ + 1] = this.§!!t§[1];
         this.§&B§[_loc3_ + 2] = this.§!!t§[2];
      }
      
      public function §>!=§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§>P§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §4!f§.§=!S§(param1) * _loc3_;
         var _loc5_:Number = §4!f§.§if §(param1) * _loc3_;
         var _loc6_:Number = §4!f§.§^j§(param1) * _loc3_;
         this.§!"6§(0,this.§`!+§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §#"+§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §6!B§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§9s§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§9s§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§9s§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§9s§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §8v§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §6!B§;
         if(this.§>P§)
         {
            _loc4_ = this.§9s§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§9s§[_loc3_] *= _loc4_;
            this.§9s§[_loc3_ + 1] *= _loc4_;
            this.§9s§[_loc3_ + 2] *= _loc4_;
            this.§9s§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§9s§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §3"4§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§>P§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§`!+§ * §6!B§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§ 3§(0);
               _loc6_ = !!this.§>P§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§[!+§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§>P§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§>P§;
      }
      
      public function get §"@§() : int
      {
         return this.§`!+§;
      }
      
      public function set §"@§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §"<§ * §>!$§ - this.§[$§.length;
         _loc4_ = this.§[$§.length;
         this.§[$§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§[$§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §>!$§)
            {
               this.§[$§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§9s§.fixed = false;
         _loc2_ = param1 * §6!B§ - this.§9s§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§9s§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§9s§.pop();
            _loc3_++;
         }
         this.§9s§.fixed = true;
         this.§&B§.fixed = false;
         _loc2_ = param1 * §<!=§ - this.§&B§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§&B§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§&B§.pop();
            _loc3_++;
         }
         this.§&B§.fixed = true;
         this.§`!+§ = param1;
      }
      
      public function get §]!p§() : ByteArray
      {
         this.§[$§.position = 0;
         return this.§[$§;
      }
      
      public function get §+!N§() : Vector.<Number>
      {
         return this.§9s§;
      }
      
      public function get §@!%§() : Vector.<Number>
      {
         return this.§&B§;
      }
   }
}
