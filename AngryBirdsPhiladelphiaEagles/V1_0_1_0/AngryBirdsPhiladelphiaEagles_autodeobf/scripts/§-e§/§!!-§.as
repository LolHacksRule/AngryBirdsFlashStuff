package §-e§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §!!-§
   {
       
      
      private var §#o§:Array;
      
      private var §[!C§:Array;
      
      private var §;n§:Array;
      
      private var §&K§:Array;
      
      private var § !!§:Array;
      
      private var §#'§:Array;
      
      private var §^z§:Array;
      
      private var §8f§:Array;
      
      private var §7%§:Array;
      
      private var §%!K§:Array;
      
      private var §&[§:Array;
      
      private var §6f§:Array;
      
      private var §^!'§:Array;
      
      private var § !>§:Array;
      
      private var §+x§:Array;
      
      private var § !§:Array;
      
      private var §!!#§:Array;
      
      private var §#!K§:Array;
      
      private var category:Array;
      
      private var §=!E§:ByteArray;
      
      private var §^!N§:int = 0;
      
      private var §5U§:int = 7;
      
      private var §!%§:Array;
      
      private var §1!!§:Array;
      
      private var §>!G§:Array;
      
      private var §1W§:Array;
      
      public function §!!-§(param1:Number = 50)
      {
         this.§#o§ = [0,1,5,6,14,15,27,28,2,4,7,13,16,26,29,42,3,8,12,17,25,30,41,43,9,11,18,24,31,40,44,53,10,19,23,32,39,45,52,54,20,22,33,38,46,51,55,60,21,34,37,47,50,56,59,61,35,36,48,49,57,58,62,63];
         this.§[!C§ = new Array(64);
         this.§;n§ = new Array(64);
         this.§&K§ = new Array(64);
         this.§ !!§ = new Array(64);
         this.§%!K§ = [0,0,1,5,1,1,1,1,1,1,0,0,0,0,0,0,0];
         this.§&[§ = [0,1,2,3,4,5,6,7,8,9,10,11];
         this.§6f§ = [0,0,2,1,3,3,2,4,3,5,5,4,4,0,0,1,125];
         this.§^!'§ = [1,2,3,0,4,17,5,18,33,49,65,6,19,81,97,7,34,113,20,50,129,145,161,8,35,66,177,193,21,82,209,240,36,51,98,114,130,9,10,22,23,24,25,26,37,38,39,40,41,42,52,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,86,87,88,89,90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,122,131,132,133,134,135,136,137,138,146,147,148,149,150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180,181,182,183,184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218,225,226,227,228,229,230,231,232,233,234,241,242,243,244,245,246,247,248,249,250];
         this.§ !>§ = [0,0,3,1,1,1,1,1,1,1,1,1,0,0,0,0,0];
         this.§+x§ = [0,1,2,3,4,5,6,7,8,9,10,11];
         this.§ !§ = [0,0,2,1,2,4,4,3,4,7,5,4,4,0,1,2,119];
         this.§!!#§ = [0,1,2,3,17,4,5,33,49,6,18,65,81,7,97,113,19,34,50,129,8,20,66,145,161,177,193,9,35,51,82,240,21,98,114,209,10,22,36,52,225,37,241,23,24,25,26,38,39,40,41,42,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,86,87,88,89,90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,122,130,131,132,133,134,135,136,137,138,146,147,148,149,150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180,181,182,183,184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218,226,227,228,229,230,231,232,233,234,242,243,244,245,246,247,248,249,250];
         this.§#!K§ = new Array(65535);
         this.category = new Array(65535);
         this.§!%§ = new Array(64);
         this.§1!!§ = new Array(64);
         this.§>!G§ = new Array(64);
         this.§1W§ = new Array(64);
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
         this.§?^§();
         this.§,!"§();
         this.§&0§(_loc2_);
      }
      
      private function §&0§(param1:int) : void
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
            this.§[!C§[this.§#o§[_loc2_]] = _loc3_;
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
            this.§;n§[this.§#o§[_loc2_]] = _loc3_;
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
               this.§&K§[_loc2_] = 1 / (this.§[!C§[this.§#o§[_loc2_]] * _loc6_[_loc7_] * _loc6_[_loc8_] * 8);
               this.§ !!§[_loc2_] = 1 / (this.§;n§[this.§#o§[_loc2_]] * _loc6_[_loc7_] * _loc6_[_loc8_] * 8);
               _loc2_++;
               _loc8_++;
            }
            _loc7_++;
         }
      }
      
      private function §@&§(param1:Array, param2:Array) : Array
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
               _loc5_[param2[_loc4_]] = new §',§();
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
      
      private function §?^§() : void
      {
         this.§#'§ = this.§@&§(this.§%!K§,this.§&[§);
         this.§^z§ = this.§@&§(this.§ !>§,this.§+x§);
         this.§8f§ = this.§@&§(this.§6f§,this.§^!'§);
         this.§7%§ = this.§@&§(this.§ !§,this.§!!#§);
      }
      
      private function §,!"§() : void
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
               this.§#!K§[32767 + _loc3_] = new §',§();
               this.§#!K§[32767 + _loc3_].len = _loc4_;
               this.§#!K§[32767 + _loc3_].val = _loc3_;
               _loc3_++;
            }
            _loc3_ = -(_loc2_ - 1);
            while(_loc3_ <= -_loc1_)
            {
               this.category[32767 + _loc3_] = _loc4_;
               this.§#!K§[32767 + _loc3_] = new §',§();
               this.§#!K§[32767 + _loc3_].len = _loc4_;
               this.§#!K§[32767 + _loc3_].val = _loc2_ - 1 + _loc3_;
               _loc3_++;
            }
            _loc1_ <<= 1;
            _loc2_ <<= 1;
            _loc4_++;
         }
      }
      
      private function §?1§(param1:§',§) : void
      {
         var _loc2_:int = param1.val;
         var _loc3_:int = param1.len - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_ & uint(1 << _loc3_))
            {
               this.§^!N§ |= uint(1 << this.§5U§);
            }
            _loc3_--;
            --this.§5U§;
            if(this.§5U§ < 0)
            {
               if(this.§^!N§ == 255)
               {
                  this.writeByte(255);
                  this.writeByte(0);
               }
               else
               {
                  this.writeByte(this.§^!N§);
               }
               this.§5U§ = 7;
               this.§^!N§ = 0;
            }
         }
      }
      
      private function writeByte(param1:int) : void
      {
         this.§=!E§.writeByte(param1);
      }
      
      private function §2j§(param1:int) : void
      {
         this.writeByte(param1 >> 8 & 255);
         this.writeByte(param1 & 255);
      }
      
      private function §2!G§(param1:Array, param2:Array) : Array
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
      
      private function §&!Q§() : void
      {
         this.§2j§(65504);
         this.§2j§(16);
         this.writeByte(74);
         this.writeByte(70);
         this.writeByte(73);
         this.writeByte(70);
         this.writeByte(0);
         this.writeByte(1);
         this.writeByte(1);
         this.writeByte(0);
         this.§2j§(1);
         this.§2j§(1);
         this.writeByte(0);
         this.writeByte(0);
      }
      
      private function §[,§(param1:int, param2:int) : void
      {
         this.§2j§(65472);
         this.§2j§(17);
         this.writeByte(8);
         this.§2j§(param2);
         this.§2j§(param1);
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
      
      private function § i§() : void
      {
         var _loc1_:int = 0;
         this.§2j§(65499);
         this.§2j§(132);
         this.writeByte(0);
         _loc1_ = 0;
         while(_loc1_ < 64)
         {
            this.writeByte(this.§[!C§[_loc1_]);
            _loc1_++;
         }
         this.writeByte(1);
         _loc1_ = 0;
         while(_loc1_ < 64)
         {
            this.writeByte(this.§;n§[_loc1_]);
            _loc1_++;
         }
      }
      
      private function §?i§() : void
      {
         var _loc1_:int = 0;
         this.§2j§(65476);
         this.§2j§(418);
         this.writeByte(0);
         _loc1_ = 0;
         while(_loc1_ < 16)
         {
            this.writeByte(this.§%!K§[_loc1_ + 1]);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 11)
         {
            this.writeByte(this.§&[§[_loc1_]);
            _loc1_++;
         }
         this.writeByte(16);
         _loc1_ = 0;
         while(_loc1_ < 16)
         {
            this.writeByte(this.§6f§[_loc1_ + 1]);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 161)
         {
            this.writeByte(this.§^!'§[_loc1_]);
            _loc1_++;
         }
         this.writeByte(1);
         _loc1_ = 0;
         while(_loc1_ < 16)
         {
            this.writeByte(this.§ !>§[_loc1_ + 1]);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 11)
         {
            this.writeByte(this.§+x§[_loc1_]);
            _loc1_++;
         }
         this.writeByte(17);
         _loc1_ = 0;
         while(_loc1_ < 16)
         {
            this.writeByte(this.§ !§[_loc1_ + 1]);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 161)
         {
            this.writeByte(this.§!!#§[_loc1_]);
            _loc1_++;
         }
      }
      
      private function §"!8§() : void
      {
         this.§2j§(65498);
         this.§2j§(12);
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
      
      private function §'7§(param1:Array, param2:Array, param3:Number, param4:Array, param5:Array) : Number
      {
         var _loc8_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc6_:§',§ = param5[0];
         var _loc7_:§',§ = param5[240];
         var _loc9_:Array = this.§2!G§(param1,param2);
         _loc8_ = 0;
         while(_loc8_ < 64)
         {
            this.§!%§[this.§#o§[_loc8_]] = _loc9_[_loc8_];
            _loc8_++;
         }
         var _loc10_:int = this.§!%§[0] - param3;
         param3 = this.§!%§[0];
         if(_loc10_ == 0)
         {
            this.§?1§(param4[0]);
         }
         else
         {
            this.§?1§(param4[this.category[32767 + _loc10_]]);
            this.§?1§(this.§#!K§[32767 + _loc10_]);
         }
         var _loc11_:int = 63;
         while(_loc11_ > 0 && this.§!%§[_loc11_] == 0)
         {
            _loc11_--;
         }
         if(_loc11_ == 0)
         {
            this.§?1§(_loc6_);
            return param3;
         }
         _loc8_ = 1;
         while(_loc8_ <= _loc11_)
         {
            _loc12_ = _loc8_;
            while(this.§!%§[_loc8_] == 0 && _loc8_ <= _loc11_)
            {
               _loc8_++;
            }
            if((_loc13_ = _loc8_ - _loc12_) >= 16)
            {
               _loc14_ = 1;
               while(_loc14_ <= _loc13_ / 16)
               {
                  this.§?1§(_loc7_);
                  _loc14_++;
               }
               _loc13_ = int(_loc13_ & 15);
            }
            this.§?1§(param5[_loc13_ * 16 + this.category[32767 + this.§!%§[_loc8_]]]);
            this.§?1§(this.§#!K§[32767 + this.§!%§[_loc8_]]);
            _loc8_++;
         }
         if(_loc11_ != 63)
         {
            this.§?1§(_loc6_);
         }
         return param3;
      }
      
      private function §;?§(param1:BitmapData, param2:int, param3:int) : void
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
               this.§1!!§[_loc4_] = 0.299 * _loc8_ + 0.587 * _loc9_ + 0.114 * _loc10_ - 128;
               this.§>!G§[_loc4_] = -0.16874 * _loc8_ + -0.33126 * _loc9_ + 0.5 * _loc10_;
               this.§1W§[_loc4_] = 0.5 * _loc8_ + -0.41869 * _loc9_ + -0.08131 * _loc10_;
               _loc4_++;
               _loc6_++;
            }
            _loc5_++;
         }
      }
      
      public function encode(param1:BitmapData) : ByteArray
      {
         var _loc6_:int = 0;
         var _loc7_:§',§ = null;
         this.§=!E§ = new ByteArray();
         this.§^!N§ = 0;
         this.§5U§ = 7;
         this.§2j§(65496);
         this.§&!Q§();
         this.§ i§();
         this.§[,§(param1.width,param1.height);
         this.§?i§();
         this.§"!8§();
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         this.§^!N§ = 0;
         this.§5U§ = 7;
         var _loc5_:int = 0;
         while(_loc5_ < param1.height)
         {
            _loc6_ = 0;
            while(_loc6_ < param1.width)
            {
               this.§;?§(param1,_loc6_,_loc5_);
               _loc2_ = this.§'7§(this.§1!!§,this.§&K§,_loc2_,this.§#'§,this.§8f§);
               _loc3_ = this.§'7§(this.§>!G§,this.§ !!§,_loc3_,this.§^z§,this.§7%§);
               _loc4_ = this.§'7§(this.§1W§,this.§ !!§,_loc4_,this.§^z§,this.§7%§);
               _loc6_ += 8;
            }
            _loc5_ += 8;
         }
         if(this.§5U§ >= 0)
         {
            (_loc7_ = new §',§()).len = this.§5U§ + 1;
            _loc7_.val = (1 << this.§5U§ + 1) - 1;
            this.§?1§(_loc7_);
         }
         this.§2j§(65497);
         return this.§=!E§;
      }
   }
}
