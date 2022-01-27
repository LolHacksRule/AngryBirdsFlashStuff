package §7G§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §2r§
   {
      
      public static const §0!K§:int = 4;
      
      public static const §[P§:int = 2;
      
      public static const §"]§:int = 3;
      
      public static const §39§:int = 4;
      
      public static const §8!-§:int = 0;
      
      public static const §05§:int = 0;
      
      public static const §6n§:int = 0;
       
      
      private var §4V§:ByteArray;
      
      private var §@!P§:Vector.<Number>;
      
      private var §3!8§:Vector.<Number>;
      
      private var §8E§:Boolean;
      
      private var §7!'§:int;
      
      private var §?F§:Vector.<Number>;
      
      public function §2r§(param1:int, param2:Boolean = false)
      {
         this.§?F§ = new Vector.<Number>(12,true);
         super();
         this.§4V§ = new ByteArray();
         this.§4V§.endian = Endian.LITTLE_ENDIAN;
         this.§4V§.length = param1 * §[P§ * §39§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §[P§)
         {
            this.§4V§.writeFloat(0);
            _loc3_++;
         }
         this.§@!P§ = new Vector.<Number>(param1 * §0!K§,true);
         this.§3!8§ = new Vector.<Number>(param1 * §"]§,true);
         this.§8E§ = param2;
         this.§7!'§ = param1;
      }
      
      public function clone() : §2r§
      {
         var _loc1_:§2r§ = new §2r§(0,this.§8E§);
         _loc1_.§4V§.length = this.§4V§.length;
         _loc1_.§4V§.writeBytes(this.§4V§);
         _loc1_.§@!P§ = this.§@!P§.concat();
         _loc1_.§@!P§.fixed = true;
         _loc1_.§3!8§ = this.§3!8§.concat();
         _loc1_.§3!8§.fixed = true;
         _loc1_.§7!'§ = this.§7!'§;
         return _loc1_;
      }
      
      public function copyTo(param1:§2r§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§3!8§;
         _loc6_ = this.§7!'§ * §"]§;
         _loc7_ = param2 * §"]§;
         if(param5)
         {
            param5.transformVectors(this.§3!8§,this.§?F§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§?F§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§3!8§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§4V§;
         _loc6_ = this.§7!'§ * §[P§ * §39§;
         _loc7_ = param2 * §[P§ * §39§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§4V§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§@!P§;
            _loc6_ = this.§7!'§ * §0!K§;
            _loc7_ = param2 * §0!K§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§@!P§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§7!'§)
               {
                  if(this.§8E§)
                  {
                     _loc13_ = this.§@!P§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§@!P§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§@!P§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§@!P§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§@!P§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§@!P§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§@!P§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§2r§) : void
      {
         var _loc2_:int = this.§4V§.length;
         this.§4V§.length += param1.§4V§.length;
         this.§4V§.position = _loc2_;
         this.§4V§.writeBytes(param1.§4V§);
         this.§@!P§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§@!P§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§@!P§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§@!P§.fixed = true;
         this.§3!8§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§3!8§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§3!8§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§3!8§.fixed = true;
         this.§7!'§ += param1.§<!8§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §"]§;
         var _loc6_:*;
         this.§3!8§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§3!8§[_loc7_ = _loc5_++] = param3;
         this.§3!8§[_loc5_] = param4;
      }
      
      public function §'s§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §"]§;
         var _loc5_:*;
         this.§3!8§[_loc5_ = _loc4_++] = param2;
         this.§3!8§[_loc4_] = param3;
      }
      
      public function §#t§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §"]§;
         param2.x = this.§3!8§[_loc3_++];
         param2.y = this.§3!8§[_loc3_++];
         param2.z = this.§3!8§[_loc3_];
      }
      
      public function §@1§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§8E§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §[!0§.§-r§(param2) * _loc4_;
         var _loc6_:Number = §[!0§.§;!=§(param2) * _loc4_;
         var _loc7_:Number = §[!0§.§]&§(param2) * _loc4_;
         this.§[[§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §[[§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §0!K§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§@!P§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§@!P§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§@!P§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§@!P§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §8!%§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §0!K§;
         var _loc4_:*;
         this.§@!P§[_loc4_ = _loc3_++] = this.§@!P§[_loc4_] * param2;
         var _loc5_:*;
         this.§@!P§[_loc5_ = _loc3_++] = this.§@!P§[_loc5_] * param2;
         var _loc6_:*;
         this.§@!P§[_loc6_ = _loc3_++] = this.§@!P§[_loc6_] * param2;
         this.§@!P§[_loc3_] *= param2;
      }
      
      public function §2l§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §0!K§;
         var _loc3_:Number = !!this.§8E§ ? Number(this.§@!P§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§@!P§[_loc2_] * _loc3_;
         _loc5_ = this.§@!P§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§@!P§[_loc2_ + 2] * _loc3_;
         return §[!0§.§3=§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §0!§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§8E§)
         {
            this.§@1§(param1,this.§2l§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §0!K§ + 3;
            this.§@!P§[_loc3_] = param2;
         }
      }
      
      public function §;V§(param1:int) : Number
      {
         var _loc2_:int = param1 * §0!K§ + 3;
         return this.§@!P§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §[P§;
         this.§4V§.position = _loc4_ * §39§;
         this.§4V§.writeFloat(param2);
         this.§4V§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §[P§;
         this.§4V§.position = _loc3_ * §39§;
         param2.x = this.§4V§.readFloat();
         param2.y = this.§4V§.readFloat();
      }
      
      public function §-#§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §"]§;
         var _loc6_:*;
         this.§3!8§[_loc6_ = _loc5_++] = this.§3!8§[_loc6_] + param2;
         var _loc7_:*;
         this.§3!8§[_loc7_ = _loc5_++] = this.§3!8§[_loc7_] + param3;
         this.§3!8§[_loc5_] += param4;
      }
      
      public function §1a§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §"]§;
         this.§?F§[0] = this.§3!8§[_loc3_];
         this.§?F§[1] = this.§3!8§[_loc3_ + 1];
         this.§?F§[2] = this.§3!8§[_loc3_ + 2];
         param2.transformVectors(this.§?F§,this.§?F§);
         this.§3!8§[_loc3_] = this.§?F§[0];
         this.§3!8§[_loc3_ + 1] = this.§?F§[1];
         this.§3!8§[_loc3_ + 2] = this.§?F§[2];
      }
      
      public function §;Z§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§8E§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §[!0§.§-r§(param1) * _loc3_;
         var _loc5_:Number = §[!0§.§;!=§(param1) * _loc3_;
         var _loc6_:Number = §[!0§.§]&§(param1) * _loc3_;
         this.§[[§(0,this.§7!'§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §2o§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §0!K§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§@!P§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§@!P§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§@!P§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§@!P§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §2!=§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §0!K§;
         if(this.§8E§)
         {
            _loc4_ = this.§@!P§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§@!P§[_loc3_] *= _loc4_;
            this.§@!P§[_loc3_ + 1] *= _loc4_;
            this.§@!P§[_loc3_ + 2] *= _loc4_;
            this.§@!P§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§@!P§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§8E§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§7!'§ * §0!K§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§;V§(0);
               _loc6_ = !!this.§8E§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§8!%§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§8E§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§8E§;
      }
      
      public function get §<!8§() : int
      {
         return this.§7!'§;
      }
      
      public function set §<!8§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §[P§ * §39§ - this.§4V§.length;
         _loc4_ = this.§4V§.length;
         this.§4V§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§4V§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §39§)
            {
               this.§4V§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§@!P§.fixed = false;
         _loc2_ = param1 * §0!K§ - this.§@!P§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§@!P§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§@!P§.pop();
            _loc3_++;
         }
         this.§@!P§.fixed = true;
         this.§3!8§.fixed = false;
         _loc2_ = param1 * §"]§ - this.§3!8§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§3!8§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§3!8§.pop();
            _loc3_++;
         }
         this.§3!8§.fixed = true;
         this.§7!'§ = param1;
      }
      
      public function get §+!C§() : ByteArray
      {
         this.§4V§.position = 0;
         return this.§4V§;
      }
      
      public function get §9<§() : Vector.<Number>
      {
         return this.§@!P§;
      }
      
      public function get §?E§() : Vector.<Number>
      {
         return this.§3!8§;
      }
   }
}
