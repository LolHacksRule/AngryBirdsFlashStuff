package §%s§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §[4§
   {
       
      
      private var §7q§:Array;
      
      private var §=!D§:Array;
      
      private var §[!K§:Array;
      
      private var §>]§:Array;
      
      private var §==§:Array;
      
      private var §0;§:Array;
      
      private var §'!7§:Array;
      
      private var §"S§:Array;
      
      private var §;W§:Array;
      
      private var §'!?§:Array;
      
      private var §,e§:Array;
      
      private var §5g§:Array;
      
      private var §-W§:Array;
      
      private var §3+§:Array;
      
      private var §[!4§:Array;
      
      private var §@!H§:Array;
      
      private var §8d§:Array;
      
      private var §&h§:Array;
      
      private var category:Array;
      
      private var §1!I§:ByteArray;
      
      private var §6Q§:int = 0;
      
      private var §1!,§:int = 7;
      
      private var §,y§:Array;
      
      private var §-!+§:Array;
      
      private var §5%§:Array;
      
      private var §1W§:Array;
      
      public function §[4§(param1:Number = 50)
      {
         this.§7q§ = [0,1,5,6,14,15,27,28,2,4,7,13,16,26,29,42,3,8,12,17,25,30,41,43,9,11,18,24,31,40,44,53,10,19,23,32,39,45,52,54,20,22,33,38,46,51,55,60,21,34,37,47,50,56,59,61,35,36,48,49,57,58,62,63];
         this.§=!D§ = new Array(64);
         this.§[!K§ = new Array(64);
         this.§>]§ = new Array(64);
         this.§==§ = new Array(64);
         this.§'!?§ = [0,0,1,5,1,1,1,1,1,1,0,0,0,0,0,0,0];
         this.§,e§ = [0,1,2,3,4,5,6,7,8,9,10,11];
         this.§5g§ = [0,0,2,1,3,3,2,4,3,5,5,4,4,0,0,1,125];
         this.§-W§ = [1,2,3,0,4,17,5,18,33,49,65,6,19,81,97,7,34,113,20,50,129,145,161,8,35,66,177,193,21,82,209,240,36,51,98,114,130,9,10,22,23,24,25,26,37,38,39,40,41,42,52,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,86,87,88,89,90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,122,131,132,133,134,135,136,137,138,146,147,148,149,150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180,181,182,183,184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218,225,226,227,228,229,230,231,232,233,234,241,242,243,244,245,246,247,248,249,250];
         this.§3+§ = [0,0,3,1,1,1,1,1,1,1,1,1,0,0,0,0,0];
         this.§[!4§ = [0,1,2,3,4,5,6,7,8,9,10,11];
         this.§@!H§ = [0,0,2,1,2,4,4,3,4,7,5,4,4,0,1,2,119];
         this.§8d§ = [0,1,2,3,17,4,5,33,49,6,18,65,81,7,97,113,19,34,50,129,8,20,66,145,161,177,193,9,35,51,82,240,21,98,114,209,10,22,36,52,225,37,241,23,24,25,26,38,39,40,41,42,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,86,87,88,89,90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,122,130,131,132,133,134,135,136,137,138,146,147,148,149,150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180,181,182,183,184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218,226,227,228,229,230,231,232,233,234,242,243,244,245,246,247,248,249,250];
         this.§&h§ = new Array(65535);
         this.category = new Array(65535);
         this.§,y§ = new Array(64);
         this.§-!+§ = new Array(64);
         this.§5%§ = new Array(64);
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
         this.§1!]§();
         this.§6!4§();
         this.§@S§(_loc2_);
      }
      
      private function §@S§(param1:int) : void
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
            this.§=!D§[this.§7q§[_loc2_]] = _loc3_;
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
            this.§[!K§[this.§7q§[_loc2_]] = _loc3_;
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
               this.§>]§[_loc2_] = 1 / (this.§=!D§[this.§7q§[_loc2_]] * _loc6_[_loc7_] * _loc6_[_loc8_] * 8);
               this.§==§[_loc2_] = 1 / (this.§[!K§[this.§7q§[_loc2_]] * _loc6_[_loc7_] * _loc6_[_loc8_] * 8);
               _loc2_++;
               _loc8_++;
            }
            _loc7_++;
         }
      }
      
      private function §1t§(param1:Array, param2:Array) : Array
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
               _loc5_[param2[_loc4_]] = new §7!5§();
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
      
      private function §1!]§() : void
      {
         this.§0;§ = this.§1t§(this.§'!?§,this.§,e§);
         this.§'!7§ = this.§1t§(this.§3+§,this.§[!4§);
         this.§"S§ = this.§1t§(this.§5g§,this.§-W§);
         this.§;W§ = this.§1t§(this.§@!H§,this.§8d§);
      }
      
      private function §6!4§() : void
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
               this.§&h§[32767 + _loc3_] = new §7!5§();
               this.§&h§[32767 + _loc3_].len = _loc4_;
               this.§&h§[32767 + _loc3_].val = _loc3_;
               _loc3_++;
            }
            _loc3_ = -(_loc2_ - 1);
            while(_loc3_ <= -_loc1_)
            {
               this.category[32767 + _loc3_] = _loc4_;
               this.§&h§[32767 + _loc3_] = new §7!5§();
               this.§&h§[32767 + _loc3_].len = _loc4_;
               this.§&h§[32767 + _loc3_].val = _loc2_ - 1 + _loc3_;
               _loc3_++;
            }
            _loc1_ <<= 1;
            _loc2_ <<= 1;
            _loc4_++;
         }
      }
      
      private function §"!0§(param1:§7!5§) : void
      {
         var _loc2_:int = param1.val;
         var _loc3_:int = param1.len - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_ & uint(1 << _loc3_))
            {
               this.§6Q§ |= uint(1 << this.§1!,§);
            }
            _loc3_--;
            --this.§1!,§;
            if(this.§1!,§ < 0)
            {
               if(this.§6Q§ == 255)
               {
                  this.writeByte(255);
                  this.writeByte(0);
               }
               else
               {
                  this.writeByte(this.§6Q§);
               }
               this.§1!,§ = 7;
               this.§6Q§ = 0;
            }
         }
      }
      
      private function writeByte(param1:int) : void
      {
         this.§1!I§.writeByte(param1);
      }
      
      private function §2!Q§(param1:int) : void
      {
         this.writeByte(param1 >> 8 & 255);
         this.writeByte(param1 & 255);
      }
      
      private function §?u§(param1:Array, param2:Array) : Array
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
      
      private function §#!F§() : void
      {
         this.§2!Q§(65504);
         this.§2!Q§(16);
         this.writeByte(74);
         this.writeByte(70);
         this.writeByte(73);
         this.writeByte(70);
         this.writeByte(0);
         this.writeByte(1);
         this.writeByte(1);
         this.writeByte(0);
         this.§2!Q§(1);
         this.§2!Q§(1);
         this.writeByte(0);
         this.writeByte(0);
      }
      
      private function §,!]§(param1:int, param2:int) : void
      {
         this.§2!Q§(65472);
         this.§2!Q§(17);
         this.writeByte(8);
         this.§2!Q§(param2);
         this.§2!Q§(param1);
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
      
      private function §<!J§() : void
      {
         var _loc1_:int = 0;
         this.§2!Q§(65499);
         this.§2!Q§(132);
         this.writeByte(0);
         _loc1_ = 0;
         while(_loc1_ < 64)
         {
            this.writeByte(this.§=!D§[_loc1_]);
            _loc1_++;
         }
         this.writeByte(1);
         _loc1_ = 0;
         while(_loc1_ < 64)
         {
            this.writeByte(this.§[!K§[_loc1_]);
            _loc1_++;
         }
      }
      
      private function §`+§() : void
      {
         var _loc1_:int = 0;
         this.§2!Q§(65476);
         this.§2!Q§(418);
         this.writeByte(0);
         _loc1_ = 0;
         while(_loc1_ < 16)
         {
            this.writeByte(this.§'!?§[_loc1_ + 1]);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 11)
         {
            this.writeByte(this.§,e§[_loc1_]);
            _loc1_++;
         }
         this.writeByte(16);
         _loc1_ = 0;
         while(_loc1_ < 16)
         {
            this.writeByte(this.§5g§[_loc1_ + 1]);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 161)
         {
            this.writeByte(this.§-W§[_loc1_]);
            _loc1_++;
         }
         this.writeByte(1);
         _loc1_ = 0;
         while(_loc1_ < 16)
         {
            this.writeByte(this.§3+§[_loc1_ + 1]);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 11)
         {
            this.writeByte(this.§[!4§[_loc1_]);
            _loc1_++;
         }
         this.writeByte(17);
         _loc1_ = 0;
         while(_loc1_ < 16)
         {
            this.writeByte(this.§@!H§[_loc1_ + 1]);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 161)
         {
            this.writeByte(this.§8d§[_loc1_]);
            _loc1_++;
         }
      }
      
      private function §7!#§() : void
      {
         this.§2!Q§(65498);
         this.§2!Q§(12);
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
      
      private function §7!$§(param1:Array, param2:Array, param3:Number, param4:Array, param5:Array) : Number
      {
         var _loc8_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc6_:§7!5§ = param5[0];
         var _loc7_:§7!5§ = param5[240];
         var _loc9_:Array = this.§?u§(param1,param2);
         _loc8_ = 0;
         while(_loc8_ < 64)
         {
            this.§,y§[this.§7q§[_loc8_]] = _loc9_[_loc8_];
            _loc8_++;
         }
         var _loc10_:int = this.§,y§[0] - param3;
         param3 = this.§,y§[0];
         if(_loc10_ == 0)
         {
            this.§"!0§(param4[0]);
         }
         else
         {
            this.§"!0§(param4[this.category[32767 + _loc10_]]);
            this.§"!0§(this.§&h§[32767 + _loc10_]);
         }
         var _loc11_:int = 63;
         while(_loc11_ > 0 && this.§,y§[_loc11_] == 0)
         {
            _loc11_--;
         }
         if(_loc11_ == 0)
         {
            this.§"!0§(_loc6_);
            return param3;
         }
         _loc8_ = 1;
         while(_loc8_ <= _loc11_)
         {
            _loc12_ = _loc8_;
            while(this.§,y§[_loc8_] == 0 && _loc8_ <= _loc11_)
            {
               _loc8_++;
            }
            if((_loc13_ = _loc8_ - _loc12_) >= 16)
            {
               _loc14_ = 1;
               while(_loc14_ <= _loc13_ / 16)
               {
                  this.§"!0§(_loc7_);
                  _loc14_++;
               }
               _loc13_ = int(_loc13_ & 15);
            }
            this.§"!0§(param5[_loc13_ * 16 + this.category[32767 + this.§,y§[_loc8_]]]);
            this.§"!0§(this.§&h§[32767 + this.§,y§[_loc8_]]);
            _loc8_++;
         }
         if(_loc11_ != 63)
         {
            this.§"!0§(_loc6_);
         }
         return param3;
      }
      
      private function §#!G§(param1:BitmapData, param2:int, param3:int) : void
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
               this.§-!+§[_loc4_] = 0.299 * _loc8_ + 0.587 * _loc9_ + 0.114 * _loc10_ - 128;
               this.§5%§[_loc4_] = -0.16874 * _loc8_ + -0.33126 * _loc9_ + 0.5 * _loc10_;
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
         var _loc7_:§7!5§ = null;
         this.§1!I§ = new ByteArray();
         this.§6Q§ = 0;
         this.§1!,§ = 7;
         this.§2!Q§(65496);
         this.§#!F§();
         this.§<!J§();
         this.§,!]§(param1.width,param1.height);
         this.§`+§();
         this.§7!#§();
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         this.§6Q§ = 0;
         this.§1!,§ = 7;
         var _loc5_:int = 0;
         while(_loc5_ < param1.height)
         {
            _loc6_ = 0;
            while(_loc6_ < param1.width)
            {
               this.§#!G§(param1,_loc6_,_loc5_);
               _loc2_ = this.§7!$§(this.§-!+§,this.§>]§,_loc2_,this.§0;§,this.§"S§);
               _loc3_ = this.§7!$§(this.§5%§,this.§==§,_loc3_,this.§'!7§,this.§;W§);
               _loc4_ = this.§7!$§(this.§1W§,this.§==§,_loc4_,this.§'!7§,this.§;W§);
               _loc6_ += 8;
            }
            _loc5_ += 8;
         }
         if(this.§1!,§ >= 0)
         {
            (_loc7_ = new §7!5§()).len = this.§1!,§ + 1;
            _loc7_.val = (1 << this.§1!,§ + 1) - 1;
            this.§"!0§(_loc7_);
         }
         this.§2!Q§(65497);
         return this.§1!I§;
      }
   }
}
