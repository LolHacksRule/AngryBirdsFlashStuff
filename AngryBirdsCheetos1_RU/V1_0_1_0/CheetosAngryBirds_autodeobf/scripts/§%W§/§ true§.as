package §%W§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class § true§
   {
      
      public static const §,V§:int = 4;
      
      public static const §0!Z§:int = 2;
      
      public static const §+l§:int = 3;
      
      public static const § !4§:int = 4;
      
      public static const §3!E§:int = 0;
      
      public static const §2!_§:int = 0;
      
      public static const §>!3§:int = 0;
       
      
      private var §5t§:ByteArray;
      
      private var §?!0§:Vector.<Number>;
      
      private var §7n§:Vector.<Number>;
      
      private var §<$§:Boolean;
      
      private var § T§:int;
      
      private var §0!I§:Vector.<Number>;
      
      public function § true§(param1:int, param2:Boolean = false)
      {
         this.§0!I§ = new Vector.<Number>(12,true);
         super();
         this.§5t§ = new ByteArray();
         this.§5t§.endian = Endian.LITTLE_ENDIAN;
         this.§5t§.length = param1 * §0!Z§ * § !4§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §0!Z§)
         {
            this.§5t§.writeFloat(0);
            _loc3_++;
         }
         this.§?!0§ = new Vector.<Number>(param1 * §,V§,true);
         this.§7n§ = new Vector.<Number>(param1 * §+l§,true);
         this.§<$§ = param2;
         this.§ T§ = param1;
      }
      
      public function clone() : § true§
      {
         var _loc1_:§ true§ = new § true§(0,this.§<$§);
         _loc1_.§5t§.length = this.§5t§.length;
         _loc1_.§5t§.writeBytes(this.§5t§);
         _loc1_.§?!0§ = this.§?!0§.concat();
         _loc1_.§?!0§.fixed = true;
         _loc1_.§7n§ = this.§7n§.concat();
         _loc1_.§7n§.fixed = true;
         _loc1_.§ T§ = this.§ T§;
         return _loc1_;
      }
      
      public function copyTo(param1:§ true§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§7n§;
         _loc6_ = this.§ T§ * §+l§;
         _loc7_ = param2 * §+l§;
         if(param5)
         {
            param5.transformVectors(this.§7n§,this.§0!I§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§0!I§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§7n§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§5t§;
         _loc6_ = this.§ T§ * §0!Z§ * § !4§;
         _loc7_ = param2 * §0!Z§ * § !4§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§5t§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§?!0§;
            _loc6_ = this.§ T§ * §,V§;
            _loc7_ = param2 * §,V§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§?!0§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§ T§)
               {
                  if(this.§<$§)
                  {
                     _loc13_ = this.§?!0§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§?!0§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§?!0§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§?!0§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§?!0§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§?!0§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§?!0§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§ true§) : void
      {
         var _loc2_:int = this.§5t§.length;
         this.§5t§.length += param1.§5t§.length;
         this.§5t§.position = _loc2_;
         this.§5t§.writeBytes(param1.§5t§);
         this.§?!0§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§?!0§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§?!0§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§?!0§.fixed = true;
         this.§7n§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§7n§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§7n§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§7n§.fixed = true;
         this.§ T§ += param1.§1o§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §+l§;
         var _loc6_:*;
         this.§7n§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§7n§[_loc7_ = _loc5_++] = param3;
         this.§7n§[_loc5_] = param4;
      }
      
      public function §&f§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §+l§;
         var _loc5_:*;
         this.§7n§[_loc5_ = _loc4_++] = param2;
         this.§7n§[_loc4_] = param3;
      }
      
      public function §>G§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §+l§;
         param2.x = this.§7n§[_loc3_++];
         param2.y = this.§7n§[_loc3_++];
         param2.z = this.§7n§[_loc3_];
      }
      
      public function §35§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§<$§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §1! §.§+a§(param2) * _loc4_;
         var _loc6_:Number = §1! §.§'!5§(param2) * _loc4_;
         var _loc7_:Number = §1! §.§6!1§(param2) * _loc4_;
         this.§!!6§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §!!6§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §,V§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§?!0§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§?!0§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§?!0§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§?!0§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §4H§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §,V§;
         var _loc4_:*;
         this.§?!0§[_loc4_ = _loc3_++] = this.§?!0§[_loc4_] * param2;
         var _loc5_:*;
         this.§?!0§[_loc5_ = _loc3_++] = this.§?!0§[_loc5_] * param2;
         var _loc6_:*;
         this.§?!0§[_loc6_ = _loc3_++] = this.§?!0§[_loc6_] * param2;
         this.§?!0§[_loc3_] *= param2;
      }
      
      public function §]?§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §,V§;
         var _loc3_:Number = !!this.§<$§ ? Number(this.§?!0§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§?!0§[_loc2_] * _loc3_;
         _loc5_ = this.§?!0§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§?!0§[_loc2_ + 2] * _loc3_;
         return §1! §.§<W§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §8H§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§<$§)
         {
            this.§35§(param1,this.§]?§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §,V§ + 3;
            this.§?!0§[_loc3_] = param2;
         }
      }
      
      public function §"!+§(param1:int) : Number
      {
         var _loc2_:int = param1 * §,V§ + 3;
         return this.§?!0§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §0!Z§;
         this.§5t§.position = _loc4_ * § !4§;
         this.§5t§.writeFloat(param2);
         this.§5t§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §0!Z§;
         this.§5t§.position = _loc3_ * § !4§;
         param2.x = this.§5t§.readFloat();
         param2.y = this.§5t§.readFloat();
      }
      
      public function §2!§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §+l§;
         var _loc6_:*;
         this.§7n§[_loc6_ = _loc5_++] = this.§7n§[_loc6_] + param2;
         var _loc7_:*;
         this.§7n§[_loc7_ = _loc5_++] = this.§7n§[_loc7_] + param3;
         this.§7n§[_loc5_] += param4;
      }
      
      public function §@+§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §+l§;
         this.§0!I§[0] = this.§7n§[_loc3_];
         this.§0!I§[1] = this.§7n§[_loc3_ + 1];
         this.§0!I§[2] = this.§7n§[_loc3_ + 2];
         param2.transformVectors(this.§0!I§,this.§0!I§);
         this.§7n§[_loc3_] = this.§0!I§[0];
         this.§7n§[_loc3_ + 1] = this.§0!I§[1];
         this.§7n§[_loc3_ + 2] = this.§0!I§[2];
      }
      
      public function § x§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§<$§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §1! §.§+a§(param1) * _loc3_;
         var _loc5_:Number = §1! §.§'!5§(param1) * _loc3_;
         var _loc6_:Number = §1! §.§6!1§(param1) * _loc3_;
         this.§!!6§(0,this.§ T§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §<!5§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §,V§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§?!0§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§?!0§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§?!0§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§?!0§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §'Q§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §,V§;
         if(this.§<$§)
         {
            _loc4_ = this.§?!0§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§?!0§[_loc3_] *= _loc4_;
            this.§?!0§[_loc3_ + 1] *= _loc4_;
            this.§?!0§[_loc3_ + 2] *= _loc4_;
            this.§?!0§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§?!0§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§<$§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§ T§ * §,V§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§"!+§(0);
               _loc6_ = !!this.§<$§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§4H§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§<$§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§<$§;
      }
      
      public function get §1o§() : int
      {
         return this.§ T§;
      }
      
      public function set §1o§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §0!Z§ * § !4§ - this.§5t§.length;
         _loc4_ = this.§5t§.length;
         this.§5t§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§5t§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / § !4§)
            {
               this.§5t§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§?!0§.fixed = false;
         _loc2_ = param1 * §,V§ - this.§?!0§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§?!0§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§?!0§.pop();
            _loc3_++;
         }
         this.§?!0§.fixed = true;
         this.§7n§.fixed = false;
         _loc2_ = param1 * §+l§ - this.§7n§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§7n§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§7n§.pop();
            _loc3_++;
         }
         this.§7n§.fixed = true;
         this.§ T§ = param1;
      }
      
      public function get § get§() : ByteArray
      {
         this.§5t§.position = 0;
         return this.§5t§;
      }
      
      public function get §]!^§() : Vector.<Number>
      {
         return this.§?!0§;
      }
      
      public function get §;'§() : Vector.<Number>
      {
         return this.§7n§;
      }
   }
}
