package §_-7h§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §_-E8§
   {
       
      
      private var §_-5j§:Array;
      
      private var §_-Ot§:Array;
      
      private var §_-ER§:Array;
      
      private var §_-td§:Array;
      
      private var §_-rf§:Array;
      
      private var §_-gw§:Array;
      
      private var §_-ZM§:Array;
      
      private var §_-gN§:Array;
      
      private var §_-1k§:Array;
      
      private var §_-50§:Array;
      
      private var §_-lB§:Array;
      
      private var §_-Rt§:Array;
      
      private var §_-Tb§:Array;
      
      private var §_-kE§:Array;
      
      private var §_-V§:Array;
      
      private var §_-QZ§:Array;
      
      private var §_-eZ§:Array;
      
      private var §_-lh§:Array;
      
      private var category:Array;
      
      private var §_-yQ§:ByteArray;
      
      private var §_-bb§:int = 0;
      
      private var §_-Au§:int = 7;
      
      private var §_-JE§:Array;
      
      private var §_-wp§:Array;
      
      private var §_-5p§:Array;
      
      private var §_-nA§:Array;
      
      public function §_-E8§(param1:Number = 50)
      {
         this.§_-5j§ = [0,1,5,6,14,15,27,28,2,4,7,13,16,26,29,42,3,8,12,17,25,30,41,43,9,11,18,24,31,40,44,53,10,19,23,32,39,45,52,54,20,22,33,38,46,51,55,60,21,34,37,47,50,56,59,61,35,36,48,49,57,58,62,63];
         this.§_-Ot§ = new Array(64);
         this.§_-ER§ = new Array(64);
         this.§_-td§ = new Array(64);
         this.§_-rf§ = new Array(64);
         this.§_-50§ = [0,0,1,5,1,1,1,1,1,1,0,0,0,0,0,0,0];
         this.§_-lB§ = [0,1,2,3,4,5,6,7,8,9,10,11];
         this.§_-Rt§ = [0,0,2,1,3,3,2,4,3,5,5,4,4,0,0,1,125];
         this.§_-Tb§ = [1,2,3,0,4,17,5,18,33,49,65,6,19,81,97,7,34,113,20,50,129,145,161,8,35,66,177,193,21,82,209,240,36,51,98,114,130,9,10,22,23,24,25,26,37,38,39,40,41,42,52,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,86,87,88,89,90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,122,131,132,133,134,135,136,137,138,146,147,148,149,150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180,181,182,183,184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218,225,226,227,228,229,230,231,232,233,234,241,242,243,244,245,246,247,248,249,250];
         this.§_-kE§ = [0,0,3,1,1,1,1,1,1,1,1,1,0,0,0,0,0];
         this.§_-V§ = [0,1,2,3,4,5,6,7,8,9,10,11];
         this.§_-QZ§ = [0,0,2,1,2,4,4,3,4,7,5,4,4,0,1,2,119];
         this.§_-eZ§ = [0,1,2,3,17,4,5,33,49,6,18,65,81,7,97,113,19,34,50,129,8,20,66,145,161,177,193,9,35,51,82,240,21,98,114,209,10,22,36,52,225,37,241,23,24,25,26,38,39,40,41,42,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,86,87,88,89,90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,122,130,131,132,133,134,135,136,137,138,146,147,148,149,150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180,181,182,183,184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218,226,227,228,229,230,231,232,233,234,242,243,244,245,246,247,248,249,250];
         this.§_-lh§ = new Array(65535);
         this.category = new Array(65535);
         this.§_-JE§ = new Array(64);
         this.§_-wp§ = new Array(64);
         this.§_-5p§ = new Array(64);
         this.§_-nA§ = new Array(64);
         super();
         if(param1 <= 0)
         {
            param1 = 1;
         }
         if(param1 > 100)
         {
            param1 = 100;
         }
         var _loc2_:int = 0;
         if(param1 < 50)
         {
            _loc2_ = int(5000 / param1);
         }
         else
         {
            _loc2_ = int(200 - param1 * 2);
         }
         this.§_-GW§();
         this.§_-Md§();
         this.§_-NK§(_loc2_);
      }
      
      private function §_-NK§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc8_:int = 0;
         var _loc4_:Array = [16,11,10,16,24,40,51,61,12,12,14,19,26,58,60,55,14,13,16,24,40,57,69,56,14,17,22,29,51,87,80,62,18,22,37,56,68,109,103,77,24,35,55,64,81,104,113,92,49,64,78,87,103,121,120,101,72,92,95,98,112,100,103,99];
         _loc2_ = 0;
         while(_loc2_ < 64)
         {
            _loc3_ = Math.floor((_loc4_[_loc2_] * param1 + 50) / 100);
            if(_loc3_ < 1)
            {
               _loc3_ = 1;
            }
            else if(_loc3_ > 255)
            {
               _loc3_ = 255;
            }
            this.§_-Ot§[this.§_-5j§[_loc2_]] = _loc3_;
            _loc2_++;
         }
         var _loc5_:Array = [17,18,24,47,99,99,99,99,18,21,26,66,99,99,99,99,24,26,56,99,99,99,99,99,47,66,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99];
         _loc2_ = 0;
         while(_loc2_ < 64)
         {
            _loc3_ = Math.floor((_loc5_[_loc2_] * param1 + 50) / 100);
            if(_loc3_ < 1)
            {
               _loc3_ = 1;
            }
            else if(_loc3_ > 255)
            {
               _loc3_ = 255;
            }
            this.§_-ER§[this.§_-5j§[_loc2_]] = _loc3_;
            _loc2_++;
         }
         var _loc6_:Array = [1,1.387039845,1.306562965,1.175875602,1,0.785694958,0.5411961,0.275899379];
         _loc2_ = 0;
         var _loc7_:int = 0;
         while(_loc7_ < 8)
         {
            _loc8_ = 0;
            while(_loc8_ < 8)
            {
               this.§_-td§[_loc2_] = 1 / (this.§_-Ot§[this.§_-5j§[_loc2_]] * _loc6_[_loc7_] * _loc6_[_loc8_] * 8);
               this.§_-rf§[_loc2_] = 1 / (this.§_-ER§[this.§_-5j§[_loc2_]] * _loc6_[_loc7_] * _loc6_[_loc8_] * 8);
               _loc2_++;
               _loc8_++;
            }
            _loc7_++;
         }
      }
      
      private function §_-6D§(param1:Array, param2:Array) : Array
      {
         var _loc7_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Array = new Array();
         var _loc6_:int = 1;
         while(_loc6_ <= 16)
         {
            _loc7_ = 1;
            while(_loc7_ <= param1[_loc6_])
            {
               _loc5_[param2[_loc4_]] = new §_-9x§();
               _loc5_[param2[_loc4_]].val = _loc3_;
               _loc5_[param2[_loc4_]].len = _loc6_;
               _loc4_++;
               _loc3_++;
               _loc7_++;
            }
            _loc3_ *= 2;
            _loc6_++;
         }
         return _loc5_;
      }
      
      private function §_-GW§() : void
      {
         this.§_-gw§ = this.§_-6D§(this.§_-50§,this.§_-lB§);
         this.§_-ZM§ = this.§_-6D§(this.§_-kE§,this.§_-V§);
         this.§_-gN§ = this.§_-6D§(this.§_-Rt§,this.§_-Tb§);
         this.§_-1k§ = this.§_-6D§(this.§_-QZ§,this.§_-eZ§);
      }
      
      private function §_-Md§() : void
      {
         var _loc3_:int = 0;
         var _loc1_:* = 1;
         var _loc2_:* = 2;
         var _loc4_:int = 1;
         while(_loc4_ <= 15)
         {
            _loc3_ = _loc1_;
            while(_loc3_ < _loc2_)
            {
               this.category[32767 + _loc3_] = _loc4_;
               this.§_-lh§[32767 + _loc3_] = new §_-9x§();
               this.§_-lh§[32767 + _loc3_].len = _loc4_;
               this.§_-lh§[32767 + _loc3_].val = _loc3_;
               _loc3_++;
            }
            _loc3_ = -(_loc2_ - 1);
            while(_loc3_ <= -_loc1_)
            {
               this.category[32767 + _loc3_] = _loc4_;
               this.§_-lh§[32767 + _loc3_] = new §_-9x§();
               this.§_-lh§[32767 + _loc3_].len = _loc4_;
               this.§_-lh§[32767 + _loc3_].val = _loc2_ - 1 + _loc3_;
               _loc3_++;
            }
            _loc1_ <<= 1;
            _loc2_ <<= 1;
            _loc4_++;
         }
      }
      
      private function §_-F0§(param1:§_-9x§) : void
      {
         var _loc2_:int = param1.val;
         var _loc3_:int = param1.len - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_ & uint(1 << _loc3_))
            {
               this.§_-bb§ |= uint(1 << this.§_-Au§);
            }
            _loc3_--;
            --this.§_-Au§;
            if(this.§_-Au§ < 0)
            {
               if(this.§_-bb§ == 255)
               {
                  this.writeByte(255);
                  this.writeByte(0);
               }
               else
               {
                  this.writeByte(this.§_-bb§);
               }
               this.§_-Au§ = 7;
               this.§_-bb§ = 0;
            }
         }
      }
      
      private function writeByte(param1:int) : void
      {
         this.§_-yQ§.writeByte(param1);
      }
      
      private function §_-wh§(param1:int) : void
      {
         this.writeByte(param1 >> 8 & 255);
         this.writeByte(param1 & 255);
      }
      
      private function §_-Qd§(param1:Array, param2:Array) : Array
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         _loc22_ = 0;
         while(_loc22_ < 8)
         {
            _loc3_ = param1[_loc23_ + 0] + param1[_loc23_ + 7];
            _loc10_ = param1[_loc23_ + 0] - param1[_loc23_ + 7];
            _loc4_ = param1[_loc23_ + 1] + param1[_loc23_ + 6];
            _loc9_ = param1[_loc23_ + 1] - param1[_loc23_ + 6];
            _loc5_ = param1[_loc23_ + 2] + param1[_loc23_ + 5];
            _loc8_ = param1[_loc23_ + 2] - param1[_loc23_ + 5];
            _loc6_ = param1[_loc23_ + 3] + param1[_loc23_ + 4];
            _loc7_ = param1[_loc23_ + 3] - param1[_loc23_ + 4];
            _loc11_ = _loc3_ + _loc6_;
            _loc14_ = _loc3_ - _loc6_;
            _loc12_ = _loc4_ + _loc5_;
            _loc13_ = _loc4_ - _loc5_;
            param1[_loc23_ + 0] = _loc11_ + _loc12_;
            param1[_loc23_ + 4] = _loc11_ - _loc12_;
            _loc15_ = (_loc13_ + _loc14_) * 0.707106781;
            param1[_loc23_ + 2] = _loc14_ + _loc15_;
            param1[_loc23_ + 6] = _loc14_ - _loc15_;
            _loc11_ = _loc7_ + _loc8_;
            _loc12_ = _loc8_ + _loc9_;
            _loc13_ = _loc9_ + _loc10_;
            _loc19_ = (_loc11_ - _loc13_) * 0.382683433;
            _loc16_ = 0.5411961 * _loc11_ + _loc19_;
            _loc18_ = 1.306562965 * _loc13_ + _loc19_;
            _loc17_ = _loc12_ * 0.707106781;
            _loc20_ = _loc10_ + _loc17_;
            _loc21_ = _loc10_ - _loc17_;
            param1[_loc23_ + 5] = _loc21_ + _loc16_;
            param1[_loc23_ + 3] = _loc21_ - _loc16_;
            param1[_loc23_ + 1] = _loc20_ + _loc18_;
            param1[_loc23_ + 7] = _loc20_ - _loc18_;
            _loc23_ += 8;
            _loc22_++;
         }
         _loc23_ = 0;
         _loc22_ = 0;
         while(_loc22_ < 8)
         {
            _loc3_ = param1[_loc23_ + 0] + param1[_loc23_ + 56];
            _loc10_ = param1[_loc23_ + 0] - param1[_loc23_ + 56];
            _loc4_ = param1[_loc23_ + 8] + param1[_loc23_ + 48];
            _loc9_ = param1[_loc23_ + 8] - param1[_loc23_ + 48];
            _loc5_ = param1[_loc23_ + 16] + param1[_loc23_ + 40];
            _loc8_ = param1[_loc23_ + 16] - param1[_loc23_ + 40];
            _loc6_ = param1[_loc23_ + 24] + param1[_loc23_ + 32];
            _loc7_ = param1[_loc23_ + 24] - param1[_loc23_ + 32];
            _loc11_ = _loc3_ + _loc6_;
            _loc14_ = _loc3_ - _loc6_;
            _loc12_ = _loc4_ + _loc5_;
            _loc13_ = _loc4_ - _loc5_;
            param1[_loc23_ + 0] = _loc11_ + _loc12_;
            param1[_loc23_ + 32] = _loc11_ - _loc12_;
            _loc15_ = (_loc13_ + _loc14_) * 0.707106781;
            param1[_loc23_ + 16] = _loc14_ + _loc15_;
            param1[_loc23_ + 48] = _loc14_ - _loc15_;
            _loc11_ = _loc7_ + _loc8_;
            _loc12_ = _loc8_ + _loc9_;
            _loc13_ = _loc9_ + _loc10_;
            _loc19_ = (_loc11_ - _loc13_) * 0.382683433;
            _loc16_ = 0.5411961 * _loc11_ + _loc19_;
            _loc18_ = 1.306562965 * _loc13_ + _loc19_;
            _loc17_ = _loc12_ * 0.707106781;
            _loc20_ = _loc10_ + _loc17_;
            _loc21_ = _loc10_ - _loc17_;
            param1[_loc23_ + 40] = _loc21_ + _loc16_;
            param1[_loc23_ + 24] = _loc21_ - _loc16_;
            param1[_loc23_ + 8] = _loc20_ + _loc18_;
            param1[_loc23_ + 56] = _loc20_ - _loc18_;
            _loc23_++;
            _loc22_++;
         }
         _loc22_ = 0;
         while(_loc22_ < 64)
         {
            param1[_loc22_] = Math.round(param1[_loc22_] * param2[_loc22_]);
            _loc22_++;
         }
         return param1;
      }
      
      private function §_-d2§() : void
      {
         this.§_-wh§(65504);
         this.§_-wh§(16);
         this.writeByte(74);
         this.writeByte(70);
         this.writeByte(73);
         this.writeByte(70);
         this.writeByte(0);
         this.writeByte(1);
         this.writeByte(1);
         this.writeByte(0);
         this.§_-wh§(1);
         this.§_-wh§(1);
         this.writeByte(0);
         this.writeByte(0);
      }
      
      private function §_-qd§(param1:int, param2:int) : void
      {
         this.§_-wh§(65472);
         this.§_-wh§(17);
         this.writeByte(8);
         this.§_-wh§(param2);
         this.§_-wh§(param1);
         this.writeByte(3);
         this.writeByte(1);
         this.writeByte(17);
         this.writeByte(0);
         this.writeByte(2);
         this.writeByte(17);
         this.writeByte(1);
         this.writeByte(3);
         this.writeByte(17);
         this.writeByte(1);
      }
      
      private function §_-fZ§() : void
      {
         var _loc1_:int = 0;
         this.§_-wh§(65499);
         this.§_-wh§(132);
         this.writeByte(0);
         _loc1_ = 0;
         while(_loc1_ < 64)
         {
            this.writeByte(this.§_-Ot§[_loc1_]);
            _loc1_++;
         }
         this.writeByte(1);
         _loc1_ = 0;
         while(_loc1_ < 64)
         {
            this.writeByte(this.§_-ER§[_loc1_]);
            _loc1_++;
         }
      }
      
      private function §_-H0§() : void
      {
         var _loc1_:int = 0;
         this.§_-wh§(65476);
         this.§_-wh§(418);
         this.writeByte(0);
         _loc1_ = 0;
         while(_loc1_ < 16)
         {
            this.writeByte(this.§_-50§[_loc1_ + 1]);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 11)
         {
            this.writeByte(this.§_-lB§[_loc1_]);
            _loc1_++;
         }
         this.writeByte(16);
         _loc1_ = 0;
         while(_loc1_ < 16)
         {
            this.writeByte(this.§_-Rt§[_loc1_ + 1]);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 161)
         {
            this.writeByte(this.§_-Tb§[_loc1_]);
            _loc1_++;
         }
         this.writeByte(1);
         _loc1_ = 0;
         while(_loc1_ < 16)
         {
            this.writeByte(this.§_-kE§[_loc1_ + 1]);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 11)
         {
            this.writeByte(this.§_-V§[_loc1_]);
            _loc1_++;
         }
         this.writeByte(17);
         _loc1_ = 0;
         while(_loc1_ < 16)
         {
            this.writeByte(this.§_-QZ§[_loc1_ + 1]);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 161)
         {
            this.writeByte(this.§_-eZ§[_loc1_]);
            _loc1_++;
         }
      }
      
      private function §_-MI§() : void
      {
         this.§_-wh§(65498);
         this.§_-wh§(12);
         this.writeByte(3);
         this.writeByte(1);
         this.writeByte(0);
         this.writeByte(2);
         this.writeByte(17);
         this.writeByte(3);
         this.writeByte(17);
         this.writeByte(0);
         this.writeByte(63);
         this.writeByte(0);
      }
      
      private function §_-CB§(param1:Array, param2:Array, param3:Number, param4:Array, param5:Array) : Number
      {
         var _loc8_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc6_:§_-9x§ = param5[0];
         var _loc7_:§_-9x§ = param5[240];
         var _loc9_:Array = this.§_-Qd§(param1,param2);
         _loc8_ = 0;
         while(_loc8_ < 64)
         {
            this.§_-JE§[this.§_-5j§[_loc8_]] = _loc9_[_loc8_];
            _loc8_++;
         }
         var _loc10_:int = this.§_-JE§[0] - param3;
         param3 = this.§_-JE§[0];
         if(_loc10_ == 0)
         {
            this.§_-F0§(param4[0]);
         }
         else
         {
            this.§_-F0§(param4[this.category[32767 + _loc10_]]);
            this.§_-F0§(this.§_-lh§[32767 + _loc10_]);
         }
         var _loc11_:int = 63;
         while(_loc11_ > 0 && this.§_-JE§[_loc11_] == 0)
         {
            _loc11_--;
         }
         if(_loc11_ == 0)
         {
            this.§_-F0§(_loc6_);
            return param3;
         }
         _loc8_ = 1;
         while(_loc8_ <= _loc11_)
         {
            _loc12_ = _loc8_;
            while(this.§_-JE§[_loc8_] == 0 && _loc8_ <= _loc11_)
            {
               _loc8_++;
            }
            if((_loc13_ = _loc8_ - _loc12_) >= 16)
            {
               _loc14_ = 1;
               while(_loc14_ <= _loc13_ / 16)
               {
                  this.§_-F0§(_loc7_);
                  _loc14_++;
               }
               _loc13_ = int(_loc13_ & 15);
            }
            this.§_-F0§(param5[_loc13_ * 16 + this.category[32767 + this.§_-JE§[_loc8_]]]);
            this.§_-F0§(this.§_-lh§[32767 + this.§_-JE§[_loc8_]]);
            _loc8_++;
         }
         if(_loc11_ != 63)
         {
            this.§_-F0§(_loc6_);
         }
         return param3;
      }
      
      private function §_-P1§(param1:BitmapData, param2:int, param3:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:uint = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(_loc5_ < 8)
         {
            _loc6_ = 0;
            while(_loc6_ < 8)
            {
               _loc7_ = param1.getPixel32(param2 + _loc6_,param3 + _loc5_);
               _loc8_ = Number(_loc7_ >> 16 & 255);
               _loc9_ = Number(_loc7_ >> 8 & 255);
               _loc10_ = Number(_loc7_ & 255);
               this.§_-wp§[_loc4_] = 0.299 * _loc8_ + 0.587 * _loc9_ + 0.114 * _loc10_ - 128;
               this.§_-5p§[_loc4_] = -0.16874 * _loc8_ + -0.33126 * _loc9_ + 0.5 * _loc10_;
               this.§_-nA§[_loc4_] = 0.5 * _loc8_ + -0.41869 * _loc9_ + -0.08131 * _loc10_;
               _loc4_++;
               _loc6_++;
            }
            _loc5_++;
         }
      }
      
      public function encode(param1:BitmapData) : ByteArray
      {
         var _loc6_:int = 0;
         var _loc7_:§_-9x§ = null;
         this.§_-yQ§ = new ByteArray();
         this.§_-bb§ = 0;
         this.§_-Au§ = 7;
         this.§_-wh§(65496);
         this.§_-d2§();
         this.§_-fZ§();
         this.§_-qd§(param1.width,param1.height);
         this.§_-H0§();
         this.§_-MI§();
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         this.§_-bb§ = 0;
         this.§_-Au§ = 7;
         var _loc5_:int = 0;
         while(_loc5_ < param1.height)
         {
            _loc6_ = 0;
            while(_loc6_ < param1.width)
            {
               this.§_-P1§(param1,_loc6_,_loc5_);
               _loc2_ = this.§_-CB§(this.§_-wp§,this.§_-td§,_loc2_,this.§_-gw§,this.§_-gN§);
               _loc3_ = this.§_-CB§(this.§_-5p§,this.§_-rf§,_loc3_,this.§_-ZM§,this.§_-1k§);
               _loc4_ = this.§_-CB§(this.§_-nA§,this.§_-rf§,_loc4_,this.§_-ZM§,this.§_-1k§);
               _loc6_ += 8;
            }
            _loc5_ += 8;
         }
         if(this.§_-Au§ >= 0)
         {
            (_loc7_ = new §_-9x§()).len = this.§_-Au§ + 1;
            _loc7_.val = (1 << this.§_-Au§ + 1) - 1;
            this.§_-F0§(_loc7_);
         }
         this.§_-wh§(65497);
         return this.§_-yQ§;
      }
   }
}
