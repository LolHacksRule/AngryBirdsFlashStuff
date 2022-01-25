package §@!a§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §try§
   {
      
      public static const §'!0§:int = 4;
      
      public static const §2§:int = 2;
      
      public static const §?!'§:int = 3;
      
      public static const §4!§:int = 4;
      
      public static const §'6§:int = 0;
      
      public static const §@!&§:int = 0;
      
      public static const §3c§:int = 0;
       
      
      private var §0D§:ByteArray;
      
      private var §-Y§:Vector.<Number>;
      
      private var §"n§:Vector.<Number>;
      
      private var §8"§:Boolean;
      
      private var §&!"§:int;
      
      private var §>W§:Vector.<Number>;
      
      public function §try§(param1:int, param2:Boolean = false)
      {
         this.§>W§ = new Vector.<Number>(12,true);
         super();
         this.§0D§ = new ByteArray();
         this.§0D§.endian = Endian.LITTLE_ENDIAN;
         this.§0D§.length = param1 * §2§ * §4!§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §2§)
         {
            this.§0D§.writeFloat(0);
            _loc3_++;
         }
         this.§-Y§ = new Vector.<Number>(param1 * §'!0§,true);
         this.§"n§ = new Vector.<Number>(param1 * §?!'§,true);
         this.§8"§ = param2;
         this.§&!"§ = param1;
      }
      
      public function clone() : §try§
      {
         var _loc1_:§try§ = new §try§(0,this.§8"§);
         _loc1_.§0D§.length = this.§0D§.length;
         _loc1_.§0D§.writeBytes(this.§0D§);
         _loc1_.§-Y§ = this.§-Y§.concat();
         _loc1_.§-Y§.fixed = true;
         _loc1_.§"n§ = this.§"n§.concat();
         _loc1_.§"n§.fixed = true;
         _loc1_.§&!"§ = this.§&!"§;
         return _loc1_;
      }
      
      public function copyTo(param1:§try§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§"n§;
         _loc6_ = this.§&!"§ * §?!'§;
         _loc7_ = param2 * §?!'§;
         if(param5)
         {
            param5.transformVectors(this.§"n§,this.§>W§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§>W§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§"n§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§0D§;
         _loc6_ = this.§&!"§ * §2§ * §4!§;
         _loc7_ = param2 * §2§ * §4!§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§0D§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§-Y§;
            _loc6_ = this.§&!"§ * §'!0§;
            _loc7_ = param2 * §'!0§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§-Y§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§&!"§)
               {
                  if(this.§8"§)
                  {
                     _loc13_ = this.§-Y§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§-Y§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§-Y§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§-Y§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§-Y§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§-Y§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§-Y§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§try§) : void
      {
         var _loc2_:int = this.§0D§.length;
         this.§0D§.length += param1.§0D§.length;
         this.§0D§.position = _loc2_;
         this.§0D§.writeBytes(param1.§0D§);
         this.§-Y§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§-Y§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§-Y§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§-Y§.fixed = true;
         this.§"n§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§"n§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§"n§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§"n§.fixed = true;
         this.§&!"§ += param1.§#h§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §?!'§;
         var _loc6_:*;
         this.§"n§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§"n§[_loc7_ = _loc5_++] = param3;
         this.§"n§[_loc5_] = param4;
      }
      
      public function §#o§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §?!'§;
         var _loc5_:*;
         this.§"n§[_loc5_ = _loc4_++] = param2;
         this.§"n§[_loc4_] = param3;
      }
      
      public function §]!G§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §?!'§;
         param2.x = this.§"n§[_loc3_++];
         param2.y = this.§"n§[_loc3_++];
         param2.z = this.§"n§[_loc3_];
      }
      
      public function §8n§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§8"§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §`!#§.§do §(param2) * _loc4_;
         var _loc6_:Number = §`!#§.§<!;§(param2) * _loc4_;
         var _loc7_:Number = §`!#§.§27§(param2) * _loc4_;
         this.§]!'§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §]!'§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §'!0§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§-Y§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§-Y§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§-Y§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§-Y§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §<s§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §'!0§;
         var _loc4_:*;
         this.§-Y§[_loc4_ = _loc3_++] = this.§-Y§[_loc4_] * param2;
         var _loc5_:*;
         this.§-Y§[_loc5_ = _loc3_++] = this.§-Y§[_loc5_] * param2;
         var _loc6_:*;
         this.§-Y§[_loc6_ = _loc3_++] = this.§-Y§[_loc6_] * param2;
         this.§-Y§[_loc3_] *= param2;
      }
      
      public function § G§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §'!0§;
         var _loc3_:Number = !!this.§8"§ ? Number(this.§-Y§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§-Y§[_loc2_] * _loc3_;
         _loc5_ = this.§-Y§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§-Y§[_loc2_ + 2] * _loc3_;
         return §`!#§.§2u§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §;!E§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§8"§)
         {
            this.§8n§(param1,this.§ G§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §'!0§ + 3;
            this.§-Y§[_loc3_] = param2;
         }
      }
      
      public function §use§(param1:int) : Number
      {
         var _loc2_:int = param1 * §'!0§ + 3;
         return this.§-Y§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §2§;
         this.§0D§.position = _loc4_ * §4!§;
         this.§0D§.writeFloat(param2);
         this.§0D§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §2§;
         this.§0D§.position = _loc3_ * §4!§;
         param2.x = this.§0D§.readFloat();
         param2.y = this.§0D§.readFloat();
      }
      
      public function §%r§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §?!'§;
         var _loc6_:*;
         this.§"n§[_loc6_ = _loc5_++] = this.§"n§[_loc6_] + param2;
         var _loc7_:*;
         this.§"n§[_loc7_ = _loc5_++] = this.§"n§[_loc7_] + param3;
         this.§"n§[_loc5_] += param4;
      }
      
      public function §5'§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §?!'§;
         this.§>W§[0] = this.§"n§[_loc3_];
         this.§>W§[1] = this.§"n§[_loc3_ + 1];
         this.§>W§[2] = this.§"n§[_loc3_ + 2];
         param2.transformVectors(this.§>W§,this.§>W§);
         this.§"n§[_loc3_] = this.§>W§[0];
         this.§"n§[_loc3_ + 1] = this.§>W§[1];
         this.§"n§[_loc3_ + 2] = this.§>W§[2];
      }
      
      public function §=I§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§8"§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §`!#§.§do §(param1) * _loc3_;
         var _loc5_:Number = §`!#§.§<!;§(param1) * _loc3_;
         var _loc6_:Number = §`!#§.§27§(param1) * _loc3_;
         this.§]!'§(0,this.§&!"§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §>T§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §'!0§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§-Y§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§-Y§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§-Y§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§-Y§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §-!K§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §'!0§;
         if(this.§8"§)
         {
            _loc4_ = this.§-Y§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§-Y§[_loc3_] *= _loc4_;
            this.§-Y§[_loc3_ + 1] *= _loc4_;
            this.§-Y§[_loc3_ + 2] *= _loc4_;
            this.§-Y§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§-Y§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§8"§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§&!"§ * §'!0§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§use§(0);
               _loc6_ = !!this.§8"§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§<s§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§8"§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§8"§;
      }
      
      public function get §#h§() : int
      {
         return this.§&!"§;
      }
      
      public function set §#h§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §2§ * §4!§ - this.§0D§.length;
         _loc4_ = this.§0D§.length;
         this.§0D§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§0D§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §4!§)
            {
               this.§0D§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§-Y§.fixed = false;
         _loc2_ = param1 * §'!0§ - this.§-Y§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§-Y§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§-Y§.pop();
            _loc3_++;
         }
         this.§-Y§.fixed = true;
         this.§"n§.fixed = false;
         _loc2_ = param1 * §?!'§ - this.§"n§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§"n§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§"n§.pop();
            _loc3_++;
         }
         this.§"n§.fixed = true;
         this.§&!"§ = param1;
      }
      
      public function get §[!5§() : ByteArray
      {
         this.§0D§.position = 0;
         return this.§0D§;
      }
      
      public function get § Z§() : Vector.<Number>
      {
         return this.§-Y§;
      }
      
      public function get §-H§() : Vector.<Number>
      {
         return this.§"n§;
      }
   }
}
