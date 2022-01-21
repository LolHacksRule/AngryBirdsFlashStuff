package §6!J§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §%!k§
   {
      
      public static const §`9§:int = 4;
      
      public static const §0![§:int = 2;
      
      public static const § !@§:int = 3;
      
      public static const §'1§:int = 4;
      
      public static const §"!X§:int = 0;
      
      public static const §,!$§:int = 0;
      
      public static const §]`§:int = 0;
       
      
      private var §&s§:ByteArray;
      
      private var §9!;§:Vector.<Number>;
      
      private var §]8§:Vector.<Number>;
      
      private var §;+§:Boolean;
      
      private var §^!N§:int;
      
      private var §0!V§:Vector.<Number>;
      
      public function §%!k§(param1:int, param2:Boolean = false)
      {
         this.§0!V§ = new Vector.<Number>(12,true);
         super();
         this.§&s§ = new ByteArray();
         this.§&s§.endian = Endian.LITTLE_ENDIAN;
         this.§&s§.length = param1 * §0![§ * §'1§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §0![§)
         {
            this.§&s§.writeFloat(0);
            _loc3_++;
         }
         this.§9!;§ = new Vector.<Number>(param1 * §`9§,true);
         this.§]8§ = new Vector.<Number>(param1 * § !@§,true);
         this.§;+§ = param2;
         this.§^!N§ = param1;
      }
      
      public function clone() : §%!k§
      {
         var _loc1_:§%!k§ = new §%!k§(0,this.§;+§);
         _loc1_.§&s§.length = this.§&s§.length;
         _loc1_.§&s§.writeBytes(this.§&s§);
         _loc1_.§9!;§ = this.§9!;§.concat();
         _loc1_.§9!;§.fixed = true;
         _loc1_.§]8§ = this.§]8§.concat();
         _loc1_.§]8§.fixed = true;
         _loc1_.§^!N§ = this.§^!N§;
         return _loc1_;
      }
      
      public function copyTo(param1:§%!k§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§]8§;
         _loc6_ = this.§^!N§ * § !@§;
         _loc7_ = param2 * § !@§;
         if(param5)
         {
            param5.transformVectors(this.§]8§,this.§0!V§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§0!V§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§]8§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§&s§;
         _loc6_ = this.§^!N§ * §0![§ * §'1§;
         _loc7_ = param2 * §0![§ * §'1§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§&s§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§9!;§;
            _loc6_ = this.§^!N§ * §`9§;
            _loc7_ = param2 * §`9§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§9!;§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§^!N§)
               {
                  if(this.§;+§)
                  {
                     _loc13_ = this.§9!;§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§9!;§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§9!;§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§9!;§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§9!;§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§9!;§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§9!;§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§%!k§) : void
      {
         var _loc2_:int = this.§&s§.length;
         this.§&s§.length += param1.§&s§.length;
         this.§&s§.position = _loc2_;
         this.§&s§.writeBytes(param1.§&s§);
         this.§9!;§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§9!;§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§9!;§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§9!;§.fixed = true;
         this.§]8§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§]8§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§]8§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§]8§.fixed = true;
         this.§^!N§ += param1.§;!N§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * § !@§;
         var _loc6_:*;
         this.§]8§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§]8§[_loc7_ = _loc5_++] = param3;
         this.§]8§[_loc5_] = param4;
      }
      
      public function §&,§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * § !@§;
         var _loc5_:*;
         this.§]8§[_loc5_ = _loc4_++] = param2;
         this.§]8§[_loc4_] = param3;
      }
      
      public function §5B§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * § !@§;
         param2.x = this.§]8§[_loc3_++];
         param2.y = this.§]8§[_loc3_++];
         param2.z = this.§]8§[_loc3_];
      }
      
      public function §;!D§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§;+§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §7s§.§<!K§(param2) * _loc4_;
         var _loc6_:Number = §7s§.§]!I§(param2) * _loc4_;
         var _loc7_:Number = §7s§.§ B§(param2) * _loc4_;
         this.§6! §(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §6! §(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §`9§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§9!;§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§9!;§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§9!;§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§9!;§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §?!?§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §`9§;
         var _loc4_:*;
         this.§9!;§[_loc4_ = _loc3_++] = this.§9!;§[_loc4_] * param2;
         var _loc5_:*;
         this.§9!;§[_loc5_ = _loc3_++] = this.§9!;§[_loc5_] * param2;
         var _loc6_:*;
         this.§9!;§[_loc6_ = _loc3_++] = this.§9!;§[_loc6_] * param2;
         this.§9!;§[_loc3_] *= param2;
      }
      
      public function §,1§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §`9§;
         var _loc3_:Number = !!this.§;+§ ? Number(this.§9!;§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§9!;§[_loc2_] * _loc3_;
         _loc5_ = this.§9!;§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§9!;§[_loc2_ + 2] * _loc3_;
         return §7s§.§6$§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §9!S§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§;+§)
         {
            this.§;!D§(param1,this.§,1§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §`9§ + 3;
            this.§9!;§[_loc3_] = param2;
         }
      }
      
      public function §,!g§(param1:int) : Number
      {
         var _loc2_:int = param1 * §`9§ + 3;
         return this.§9!;§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §0![§;
         this.§&s§.position = _loc4_ * §'1§;
         this.§&s§.writeFloat(param2);
         this.§&s§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §0![§;
         this.§&s§.position = _loc3_ * §'1§;
         param2.x = this.§&s§.readFloat();
         param2.y = this.§&s§.readFloat();
      }
      
      public function §;9§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * § !@§;
         var _loc6_:*;
         this.§]8§[_loc6_ = _loc5_++] = this.§]8§[_loc6_] + param2;
         var _loc7_:*;
         this.§]8§[_loc7_ = _loc5_++] = this.§]8§[_loc7_] + param3;
         this.§]8§[_loc5_] += param4;
      }
      
      public function § !m§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * § !@§;
         this.§0!V§[0] = this.§]8§[_loc3_];
         this.§0!V§[1] = this.§]8§[_loc3_ + 1];
         this.§0!V§[2] = this.§]8§[_loc3_ + 2];
         param2.transformVectors(this.§0!V§,this.§0!V§);
         this.§]8§[_loc3_] = this.§0!V§[0];
         this.§]8§[_loc3_ + 1] = this.§0!V§[1];
         this.§]8§[_loc3_ + 2] = this.§0!V§[2];
      }
      
      public function §^!Y§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§;+§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §7s§.§<!K§(param1) * _loc3_;
         var _loc5_:Number = §7s§.§]!I§(param1) * _loc3_;
         var _loc6_:Number = §7s§.§ B§(param1) * _loc3_;
         this.§6! §(0,this.§^!N§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §&y§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §`9§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§9!;§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§9!;§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§9!;§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§9!;§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §89§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §`9§;
         if(this.§;+§)
         {
            _loc4_ = this.§9!;§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§9!;§[_loc3_] *= _loc4_;
            this.§9!;§[_loc3_ + 1] *= _loc4_;
            this.§9!;§[_loc3_ + 2] *= _loc4_;
            this.§9!;§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§9!;§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§;+§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§^!N§ * §`9§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§,!g§(0);
               _loc6_ = !!this.§;+§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§?!?§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§;+§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§;+§;
      }
      
      public function get §;!N§() : int
      {
         return this.§^!N§;
      }
      
      public function set §;!N§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §0![§ * §'1§ - this.§&s§.length;
         _loc4_ = this.§&s§.length;
         this.§&s§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§&s§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §'1§)
            {
               this.§&s§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§9!;§.fixed = false;
         _loc2_ = param1 * §`9§ - this.§9!;§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§9!;§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§9!;§.pop();
            _loc3_++;
         }
         this.§9!;§.fixed = true;
         this.§]8§.fixed = false;
         _loc2_ = param1 * § !@§ - this.§]8§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§]8§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§]8§.pop();
            _loc3_++;
         }
         this.§]8§.fixed = true;
         this.§^!N§ = param1;
      }
      
      public function get §";§() : ByteArray
      {
         this.§&s§.position = 0;
         return this.§&s§;
      }
      
      public function get §>!O§() : Vector.<Number>
      {
         return this.§9!;§;
      }
      
      public function get §-!@§() : Vector.<Number>
      {
         return this.§]8§;
      }
   }
}
