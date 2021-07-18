package §+§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §0&§
   {
      
      public static const §<W§:int = 4;
      
      public static const §7R§:int = 2;
      
      public static const §&!H§:int = 3;
      
      public static const §8!I§:int = 4;
      
      public static const §%#§:int = 0;
      
      public static const § C§:int = 0;
      
      public static const §@!%§:int = 0;
       
      
      private var §!E§:ByteArray;
      
      private var §+o§:Vector.<Number>;
      
      private var §^x§:Vector.<Number>;
      
      private var §7o§:Boolean;
      
      private var §]m§:int;
      
      private var §>"§:Vector.<Number>;
      
      public function §0&§(param1:int, param2:Boolean = false)
      {
         this.§>"§ = new Vector.<Number>(12,true);
         super();
         this.§!E§ = new ByteArray();
         this.§!E§.endian = Endian.LITTLE_ENDIAN;
         this.§!E§.length = param1 * §7R§ * §8!I§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §7R§)
         {
            this.§!E§.writeFloat(0);
            _loc3_++;
         }
         this.§+o§ = new Vector.<Number>(param1 * §<W§,true);
         this.§^x§ = new Vector.<Number>(param1 * §&!H§,true);
         this.§7o§ = param2;
         this.§]m§ = param1;
      }
      
      public function clone() : §0&§
      {
         var _loc1_:§0&§ = new §0&§(0,this.§7o§);
         _loc1_.§!E§.length = this.§!E§.length;
         _loc1_.§!E§.writeBytes(this.§!E§);
         _loc1_.§+o§ = this.§+o§.concat();
         _loc1_.§+o§.fixed = true;
         _loc1_.§^x§ = this.§^x§.concat();
         _loc1_.§^x§.fixed = true;
         _loc1_.§]m§ = this.§]m§;
         return _loc1_;
      }
      
      public function copyTo(param1:§0&§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§^x§;
         _loc6_ = this.§]m§ * §&!H§;
         _loc7_ = param2 * §&!H§;
         if(param5)
         {
            param5.transformVectors(this.§^x§,this.§>"§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§>"§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§^x§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§!E§;
         _loc6_ = this.§]m§ * §7R§ * §8!I§;
         _loc7_ = param2 * §7R§ * §8!I§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§!E§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§+o§;
            _loc6_ = this.§]m§ * §<W§;
            _loc7_ = param2 * §<W§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§+o§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§]m§)
               {
                  if(this.§7o§)
                  {
                     _loc13_ = this.§+o§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§+o§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§+o§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§+o§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§+o§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§+o§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§+o§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§0&§) : void
      {
         var _loc2_:int = this.§!E§.length;
         this.§!E§.length += param1.§!E§.length;
         this.§!E§.position = _loc2_;
         this.§!E§.writeBytes(param1.§!E§);
         this.§+o§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§+o§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§+o§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§+o§.fixed = true;
         this.§^x§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§^x§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§^x§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§^x§.fixed = true;
         this.§]m§ += param1.§6P§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §&!H§;
         var _loc6_:*;
         this.§^x§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§^x§[_loc7_ = _loc5_++] = param3;
         this.§^x§[_loc5_] = param4;
      }
      
      public function §7! §(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §&!H§;
         var _loc5_:*;
         this.§^x§[_loc5_ = _loc4_++] = param2;
         this.§^x§[_loc4_] = param3;
      }
      
      public function §#I§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §&!H§;
         param2.x = this.§^x§[_loc3_++];
         param2.y = this.§^x§[_loc3_++];
         param2.z = this.§^x§[_loc3_];
      }
      
      public function §'O§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§7o§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §?g§.§"!2§(param2) * _loc4_;
         var _loc6_:Number = §?g§.§2t§(param2) * _loc4_;
         var _loc7_:Number = §?g§.§7p§(param2) * _loc4_;
         this.§=>§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §=>§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §<W§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§+o§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§+o§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§+o§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§+o§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §[r§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §<W§;
         var _loc4_:*;
         this.§+o§[_loc4_ = _loc3_++] = this.§+o§[_loc4_] * param2;
         var _loc5_:*;
         this.§+o§[_loc5_ = _loc3_++] = this.§+o§[_loc5_] * param2;
         var _loc6_:*;
         this.§+o§[_loc6_ = _loc3_++] = this.§+o§[_loc6_] * param2;
         this.§+o§[_loc3_] *= param2;
      }
      
      public function §^3§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §<W§;
         var _loc3_:Number = !!this.§7o§ ? Number(this.§+o§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§+o§[_loc2_] * _loc3_;
         _loc5_ = this.§+o§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§+o§[_loc2_ + 2] * _loc3_;
         return §?g§.§;?§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §3!@§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§7o§)
         {
            this.§'O§(param1,this.§^3§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §<W§ + 3;
            this.§+o§[_loc3_] = param2;
         }
      }
      
      public function §^S§(param1:int) : Number
      {
         var _loc2_:int = param1 * §<W§ + 3;
         return this.§+o§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §7R§;
         this.§!E§.position = _loc4_ * §8!I§;
         this.§!E§.writeFloat(param2);
         this.§!E§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §7R§;
         this.§!E§.position = _loc3_ * §8!I§;
         param2.x = this.§!E§.readFloat();
         param2.y = this.§!E§.readFloat();
      }
      
      public function §7!6§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §&!H§;
         var _loc6_:*;
         this.§^x§[_loc6_ = _loc5_++] = this.§^x§[_loc6_] + param2;
         var _loc7_:*;
         this.§^x§[_loc7_ = _loc5_++] = this.§^x§[_loc7_] + param3;
         this.§^x§[_loc5_] += param4;
      }
      
      public function §+m§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §&!H§;
         this.§>"§[0] = this.§^x§[_loc3_];
         this.§>"§[1] = this.§^x§[_loc3_ + 1];
         this.§>"§[2] = this.§^x§[_loc3_ + 2];
         param2.transformVectors(this.§>"§,this.§>"§);
         this.§^x§[_loc3_] = this.§>"§[0];
         this.§^x§[_loc3_ + 1] = this.§>"§[1];
         this.§^x§[_loc3_ + 2] = this.§>"§[2];
      }
      
      public function §!X§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§7o§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §?g§.§"!2§(param1) * _loc3_;
         var _loc5_:Number = §?g§.§2t§(param1) * _loc3_;
         var _loc6_:Number = §?g§.§7p§(param1) * _loc3_;
         this.§=>§(0,this.§]m§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §0!H§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §<W§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§+o§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§+o§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§+o§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§+o§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §75§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §<W§;
         if(this.§7o§)
         {
            _loc4_ = this.§+o§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§+o§[_loc3_] *= _loc4_;
            this.§+o§[_loc3_ + 1] *= _loc4_;
            this.§+o§[_loc3_ + 2] *= _loc4_;
            this.§+o§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§+o§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§7o§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§]m§ * §<W§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§^S§(0);
               _loc6_ = !!this.§7o§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§[r§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§7o§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§7o§;
      }
      
      public function get §6P§() : int
      {
         return this.§]m§;
      }
      
      public function set §6P§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §7R§ * §8!I§ - this.§!E§.length;
         _loc4_ = this.§!E§.length;
         this.§!E§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§!E§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §8!I§)
            {
               this.§!E§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§+o§.fixed = false;
         _loc2_ = param1 * §<W§ - this.§+o§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§+o§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§+o§.pop();
            _loc3_++;
         }
         this.§+o§.fixed = true;
         this.§^x§.fixed = false;
         _loc2_ = param1 * §&!H§ - this.§^x§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§^x§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§^x§.pop();
            _loc3_++;
         }
         this.§^x§.fixed = true;
         this.§]m§ = param1;
      }
      
      public function get §4!#§() : ByteArray
      {
         this.§!E§.position = 0;
         return this.§!E§;
      }
      
      public function get §+!R§() : Vector.<Number>
      {
         return this.§+o§;
      }
      
      public function get §5q§() : Vector.<Number>
      {
         return this.§^x§;
      }
   }
}
