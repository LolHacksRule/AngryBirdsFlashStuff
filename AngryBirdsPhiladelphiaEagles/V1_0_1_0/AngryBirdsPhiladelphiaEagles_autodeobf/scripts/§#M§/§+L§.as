package §#M§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §+L§
   {
      
      public static const §&y§:int = 4;
      
      public static const §]J§:int = 2;
      
      public static const §2k§:int = 3;
      
      public static const § %§:int = 4;
      
      public static const §6!!§:int = 0;
      
      public static const §3e§:int = 0;
      
      public static const §%!M§:int = 0;
       
      
      private var §@I§:ByteArray;
      
      private var §2!6§:Vector.<Number>;
      
      private var §>!F§:Vector.<Number>;
      
      private var §&!@§:Boolean;
      
      private var §=§:int;
      
      private var §%M§:Vector.<Number>;
      
      public function §+L§(param1:int, param2:Boolean = false)
      {
         this.§%M§ = new Vector.<Number>(12,true);
         super();
         this.§@I§ = new ByteArray();
         this.§@I§.endian = Endian.LITTLE_ENDIAN;
         this.§@I§.length = param1 * §]J§ * § %§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §]J§)
         {
            this.§@I§.writeFloat(0);
            _loc3_++;
         }
         this.§2!6§ = new Vector.<Number>(param1 * §&y§,true);
         this.§>!F§ = new Vector.<Number>(param1 * §2k§,true);
         this.§&!@§ = param2;
         this.§=§ = param1;
      }
      
      public function clone() : §+L§
      {
         var _loc1_:§+L§ = new §+L§(0,this.§&!@§);
         _loc1_.§@I§.length = this.§@I§.length;
         _loc1_.§@I§.writeBytes(this.§@I§);
         _loc1_.§2!6§ = this.§2!6§.concat();
         _loc1_.§2!6§.fixed = true;
         _loc1_.§>!F§ = this.§>!F§.concat();
         _loc1_.§>!F§.fixed = true;
         _loc1_.§=§ = this.§=§;
         return _loc1_;
      }
      
      public function copyTo(param1:§+L§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§>!F§;
         _loc6_ = this.§=§ * §2k§;
         _loc7_ = param2 * §2k§;
         if(param5)
         {
            param5.transformVectors(this.§>!F§,this.§%M§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§%M§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§>!F§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§@I§;
         _loc6_ = this.§=§ * §]J§ * § %§;
         _loc7_ = param2 * §]J§ * § %§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§@I§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§2!6§;
            _loc6_ = this.§=§ * §&y§;
            _loc7_ = param2 * §&y§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§2!6§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§=§)
               {
                  if(this.§&!@§)
                  {
                     _loc13_ = this.§2!6§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§2!6§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§2!6§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§2!6§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§2!6§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§2!6§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§2!6§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§+L§) : void
      {
         var _loc2_:int = this.§@I§.length;
         this.§@I§.length += param1.§@I§.length;
         this.§@I§.position = _loc2_;
         this.§@I§.writeBytes(param1.§@I§);
         this.§2!6§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§2!6§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§2!6§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§2!6§.fixed = true;
         this.§>!F§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§>!F§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§>!F§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§>!F§.fixed = true;
         this.§=§ += param1.§ a§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §2k§;
         var _loc6_:*;
         this.§>!F§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§>!F§[_loc7_ = _loc5_++] = param3;
         this.§>!F§[_loc5_] = param4;
      }
      
      public function §]V§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §2k§;
         var _loc5_:*;
         this.§>!F§[_loc5_ = _loc4_++] = param2;
         this.§>!F§[_loc4_] = param3;
      }
      
      public function §6!"§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §2k§;
         param2.x = this.§>!F§[_loc3_++];
         param2.y = this.§>!F§[_loc3_++];
         param2.z = this.§>!F§[_loc3_];
      }
      
      public function §#?§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§&!@§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §99§.§8`§(param2) * _loc4_;
         var _loc6_:Number = §99§.§[3§(param2) * _loc4_;
         var _loc7_:Number = §99§.§<K§(param2) * _loc4_;
         this.§]b§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §]b§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §&y§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§2!6§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§2!6§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§2!6§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§2!6§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §8h§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §&y§;
         var _loc4_:*;
         this.§2!6§[_loc4_ = _loc3_++] = this.§2!6§[_loc4_] * param2;
         var _loc5_:*;
         this.§2!6§[_loc5_ = _loc3_++] = this.§2!6§[_loc5_] * param2;
         var _loc6_:*;
         this.§2!6§[_loc6_ = _loc3_++] = this.§2!6§[_loc6_] * param2;
         this.§2!6§[_loc3_] *= param2;
      }
      
      public function §8!5§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §&y§;
         var _loc3_:Number = !!this.§&!@§ ? Number(this.§2!6§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§2!6§[_loc2_] * _loc3_;
         _loc5_ = this.§2!6§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§2!6§[_loc2_ + 2] * _loc3_;
         return §99§.§?m§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §[!7§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§&!@§)
         {
            this.§#?§(param1,this.§8!5§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §&y§ + 3;
            this.§2!6§[_loc3_] = param2;
         }
      }
      
      public function §=V§(param1:int) : Number
      {
         var _loc2_:int = param1 * §&y§ + 3;
         return this.§2!6§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §]J§;
         this.§@I§.position = _loc4_ * § %§;
         this.§@I§.writeFloat(param2);
         this.§@I§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §]J§;
         this.§@I§.position = _loc3_ * § %§;
         param2.x = this.§@I§.readFloat();
         param2.y = this.§@I§.readFloat();
      }
      
      public function §>!B§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §2k§;
         var _loc6_:*;
         this.§>!F§[_loc6_ = _loc5_++] = this.§>!F§[_loc6_] + param2;
         var _loc7_:*;
         this.§>!F§[_loc7_ = _loc5_++] = this.§>!F§[_loc7_] + param3;
         this.§>!F§[_loc5_] += param4;
      }
      
      public function §#s§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §2k§;
         this.§%M§[0] = this.§>!F§[_loc3_];
         this.§%M§[1] = this.§>!F§[_loc3_ + 1];
         this.§%M§[2] = this.§>!F§[_loc3_ + 2];
         param2.transformVectors(this.§%M§,this.§%M§);
         this.§>!F§[_loc3_] = this.§%M§[0];
         this.§>!F§[_loc3_ + 1] = this.§%M§[1];
         this.§>!F§[_loc3_ + 2] = this.§%M§[2];
      }
      
      public function §2!M§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§&!@§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §99§.§8`§(param1) * _loc3_;
         var _loc5_:Number = §99§.§[3§(param1) * _loc3_;
         var _loc6_:Number = §99§.§<K§(param1) * _loc3_;
         this.§]b§(0,this.§=§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §8I§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §&y§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§2!6§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§2!6§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§2!6§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§2!6§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §`0§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §&y§;
         if(this.§&!@§)
         {
            _loc4_ = this.§2!6§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§2!6§[_loc3_] *= _loc4_;
            this.§2!6§[_loc3_ + 1] *= _loc4_;
            this.§2!6§[_loc3_ + 2] *= _loc4_;
            this.§2!6§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§2!6§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§&!@§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§=§ * §&y§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§=V§(0);
               _loc6_ = !!this.§&!@§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§8h§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§&!@§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§&!@§;
      }
      
      public function get § a§() : int
      {
         return this.§=§;
      }
      
      public function set § a§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §]J§ * § %§ - this.§@I§.length;
         _loc4_ = this.§@I§.length;
         this.§@I§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§@I§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / § %§)
            {
               this.§@I§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§2!6§.fixed = false;
         _loc2_ = param1 * §&y§ - this.§2!6§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§2!6§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§2!6§.pop();
            _loc3_++;
         }
         this.§2!6§.fixed = true;
         this.§>!F§.fixed = false;
         _loc2_ = param1 * §2k§ - this.§>!F§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§>!F§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§>!F§.pop();
            _loc3_++;
         }
         this.§>!F§.fixed = true;
         this.§=§ = param1;
      }
      
      public function get §5-§() : ByteArray
      {
         this.§@I§.position = 0;
         return this.§@I§;
      }
      
      public function get §7T§() : Vector.<Number>
      {
         return this.§2!6§;
      }
      
      public function get §!u§() : Vector.<Number>
      {
         return this.§>!F§;
      }
   }
}
