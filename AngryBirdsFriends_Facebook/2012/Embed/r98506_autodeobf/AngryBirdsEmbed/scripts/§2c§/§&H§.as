package §2c§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §&H§
   {
      
      public static const §[!E§:int = 4;
      
      public static const §]B§:int = 2;
      
      public static const §!X§:int = 3;
      
      public static const §5k§:int = 4;
      
      public static const §[!I§:int = 0;
      
      public static const §4!I§:int = 0;
      
      public static const §3^§:int = 0;
       
      
      private var §?w§:ByteArray;
      
      private var §^!§:Vector.<Number>;
      
      private var §]C§:Vector.<Number>;
      
      private var §&n§:Boolean;
      
      private var §+l§:int;
      
      private var §^f§:Vector.<Number>;
      
      public function §&H§(param1:int, param2:Boolean = false)
      {
         this.§^f§ = new Vector.<Number>(12,true);
         super();
         this.§?w§ = new ByteArray();
         this.§?w§.endian = Endian.LITTLE_ENDIAN;
         this.§?w§.length = param1 * §]B§ * §5k§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §]B§)
         {
            this.§?w§.writeFloat(0);
            _loc3_++;
         }
         this.§^!§ = new Vector.<Number>(param1 * §[!E§,true);
         this.§]C§ = new Vector.<Number>(param1 * §!X§,true);
         this.§&n§ = param2;
         this.§+l§ = param1;
      }
      
      public function clone() : §&H§
      {
         var _loc1_:§&H§ = new §&H§(0,this.§&n§);
         _loc1_.§?w§.length = this.§?w§.length;
         _loc1_.§?w§.writeBytes(this.§?w§);
         _loc1_.§^!§ = this.§^!§.concat();
         _loc1_.§^!§.fixed = true;
         _loc1_.§]C§ = this.§]C§.concat();
         _loc1_.§]C§.fixed = true;
         _loc1_.§+l§ = this.§+l§;
         return _loc1_;
      }
      
      public function copyTo(param1:§&H§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§]C§;
         _loc6_ = this.§+l§ * §!X§;
         _loc7_ = param2 * §!X§;
         if(param5)
         {
            param5.transformVectors(this.§]C§,this.§^f§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§^f§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§]C§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§?w§;
         _loc6_ = this.§+l§ * §]B§ * §5k§;
         _loc7_ = param2 * §]B§ * §5k§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§?w§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§^!§;
            _loc6_ = this.§+l§ * §[!E§;
            _loc7_ = param2 * §[!E§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§^!§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§+l§)
               {
                  if(this.§&n§)
                  {
                     _loc13_ = this.§^!§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§^!§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§^!§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§^!§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§^!§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§^!§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§^!§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§&H§) : void
      {
         var _loc2_:int = this.§?w§.length;
         this.§?w§.length += param1.§?w§.length;
         this.§?w§.position = _loc2_;
         this.§?w§.writeBytes(param1.§?w§);
         this.§^!§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§^!§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§^!§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§^!§.fixed = true;
         this.§]C§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§]C§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§]C§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§]C§.fixed = true;
         this.§+l§ += param1.§2$§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §!X§;
         var _loc6_:*;
         this.§]C§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§]C§[_loc7_ = _loc5_++] = param3;
         this.§]C§[_loc5_] = param4;
      }
      
      public function §4%§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §!X§;
         var _loc5_:*;
         this.§]C§[_loc5_ = _loc4_++] = param2;
         this.§]C§[_loc4_] = param3;
      }
      
      public function §-+§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §!X§;
         param2.x = this.§]C§[_loc3_++];
         param2.y = this.§]C§[_loc3_++];
         param2.z = this.§]C§[_loc3_];
      }
      
      public function §9! §(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§&n§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §]e§.§&!6§(param2) * _loc4_;
         var _loc6_:Number = §]e§.§2U§(param2) * _loc4_;
         var _loc7_:Number = §]e§.§8!B§(param2) * _loc4_;
         this.§<z§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §<z§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §[!E§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§^!§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§^!§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§^!§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§^!§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §7_§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §[!E§;
         var _loc4_:*;
         this.§^!§[_loc4_ = _loc3_++] = this.§^!§[_loc4_] * param2;
         var _loc5_:*;
         this.§^!§[_loc5_ = _loc3_++] = this.§^!§[_loc5_] * param2;
         var _loc6_:*;
         this.§^!§[_loc6_ = _loc3_++] = this.§^!§[_loc6_] * param2;
         this.§^!§[_loc3_] *= param2;
      }
      
      public function §^B§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §[!E§;
         var _loc3_:Number = !!this.§&n§ ? Number(this.§^!§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§^!§[_loc2_] * _loc3_;
         _loc5_ = this.§^!§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§^!§[_loc2_ + 2] * _loc3_;
         return §]e§.§@O§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §?!5§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§&n§)
         {
            this.§9! §(param1,this.§^B§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §[!E§ + 3;
            this.§^!§[_loc3_] = param2;
         }
      }
      
      public function §7A§(param1:int) : Number
      {
         var _loc2_:int = param1 * §[!E§ + 3;
         return this.§^!§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §]B§;
         this.§?w§.position = _loc4_ * §5k§;
         this.§?w§.writeFloat(param2);
         this.§?w§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §]B§;
         this.§?w§.position = _loc3_ * §5k§;
         param2.x = this.§?w§.readFloat();
         param2.y = this.§?w§.readFloat();
      }
      
      public function §;!=§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §!X§;
         var _loc6_:*;
         this.§]C§[_loc6_ = _loc5_++] = this.§]C§[_loc6_] + param2;
         var _loc7_:*;
         this.§]C§[_loc7_ = _loc5_++] = this.§]C§[_loc7_] + param3;
         this.§]C§[_loc5_] += param4;
      }
      
      public function §[W§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §!X§;
         this.§^f§[0] = this.§]C§[_loc3_];
         this.§^f§[1] = this.§]C§[_loc3_ + 1];
         this.§^f§[2] = this.§]C§[_loc3_ + 2];
         param2.transformVectors(this.§^f§,this.§^f§);
         this.§]C§[_loc3_] = this.§^f§[0];
         this.§]C§[_loc3_ + 1] = this.§^f§[1];
         this.§]C§[_loc3_ + 2] = this.§^f§[2];
      }
      
      public function §%!;§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§&n§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §]e§.§&!6§(param1) * _loc3_;
         var _loc5_:Number = §]e§.§2U§(param1) * _loc3_;
         var _loc6_:Number = §]e§.§8!B§(param1) * _loc3_;
         this.§<z§(0,this.§+l§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §6!A§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §[!E§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§^!§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§^!§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§^!§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§^!§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §;c§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §[!E§;
         if(this.§&n§)
         {
            _loc4_ = this.§^!§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§^!§[_loc3_] *= _loc4_;
            this.§^!§[_loc3_ + 1] *= _loc4_;
            this.§^!§[_loc3_ + 2] *= _loc4_;
            this.§^!§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§^!§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§&n§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§+l§ * §[!E§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§7A§(0);
               _loc6_ = !!this.§&n§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§7_§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§&n§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§&n§;
      }
      
      public function get §2$§() : int
      {
         return this.§+l§;
      }
      
      public function set §2$§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §]B§ * §5k§ - this.§?w§.length;
         _loc4_ = this.§?w§.length;
         this.§?w§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§?w§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §5k§)
            {
               this.§?w§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§^!§.fixed = false;
         _loc2_ = param1 * §[!E§ - this.§^!§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§^!§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§^!§.pop();
            _loc3_++;
         }
         this.§^!§.fixed = true;
         this.§]C§.fixed = false;
         _loc2_ = param1 * §!X§ - this.§]C§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§]C§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§]C§.pop();
            _loc3_++;
         }
         this.§]C§.fixed = true;
         this.§+l§ = param1;
      }
      
      public function get § -§() : ByteArray
      {
         this.§?w§.position = 0;
         return this.§?w§;
      }
      
      public function get § B§() : Vector.<Number>
      {
         return this.§^!§;
      }
      
      public function get §>"§() : Vector.<Number>
      {
         return this.§]C§;
      }
   }
}
