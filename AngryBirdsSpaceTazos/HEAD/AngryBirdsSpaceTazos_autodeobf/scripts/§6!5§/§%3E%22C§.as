package §6!5§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §>"C§
   {
      
      public static const §9"C§:int = 4;
      
      public static const §"!?§:int = 2;
      
      public static const §;!l§:int = 3;
      
      public static const §8X§:int = 4;
      
      public static const §!-§:int = 0;
      
      public static const §!"?§:int = 0;
      
      public static const §-!j§:int = 0;
       
      
      private var §+!G§:ByteArray;
      
      private var §>9§:Vector.<Number>;
      
      private var §]!s§:Vector.<Number>;
      
      private var §>"7§:Boolean;
      
      private var §6<§:int;
      
      private var §>!Y§:Vector.<Number>;
      
      public function §>"C§(param1:int, param2:Boolean = false)
      {
         this.§>!Y§ = new Vector.<Number>(12,true);
         super();
         this.§+!G§ = new ByteArray();
         this.§+!G§.endian = Endian.LITTLE_ENDIAN;
         this.§+!G§.length = param1 * §"!?§ * §8X§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §"!?§)
         {
            this.§+!G§.writeFloat(0);
            _loc3_++;
         }
         this.§>9§ = new Vector.<Number>(param1 * §9"C§,true);
         this.§]!s§ = new Vector.<Number>(param1 * §;!l§,true);
         this.§>"7§ = param2;
         this.§6<§ = param1;
      }
      
      public function clone() : §>"C§
      {
         var _loc1_:§>"C§ = new §>"C§(0,this.§>"7§);
         _loc1_.§+!G§.length = this.§+!G§.length;
         _loc1_.§+!G§.writeBytes(this.§+!G§);
         _loc1_.§>9§ = this.§>9§.concat();
         _loc1_.§>9§.fixed = true;
         _loc1_.§]!s§ = this.§]!s§.concat();
         _loc1_.§]!s§.fixed = true;
         _loc1_.§6<§ = this.§6<§;
         return _loc1_;
      }
      
      public function copyTo(param1:§>"C§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§]!s§;
         _loc6_ = this.§6<§ * §;!l§;
         _loc7_ = param2 * §;!l§;
         if(param5)
         {
            param5.transformVectors(this.§]!s§,this.§>!Y§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§>!Y§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§]!s§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§+!G§;
         _loc6_ = this.§6<§ * §"!?§ * §8X§;
         _loc7_ = param2 * §"!?§ * §8X§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§+!G§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§>9§;
            _loc6_ = this.§6<§ * §9"C§;
            _loc7_ = param2 * §9"C§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§>9§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§6<§)
               {
                  if(this.§>"7§)
                  {
                     _loc13_ = this.§>9§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§>9§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§>9§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§>9§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§>9§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§>9§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§>9§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§>"C§) : void
      {
         var _loc2_:int = this.§+!G§.length;
         this.§+!G§.length += param1.§+!G§.length;
         this.§+!G§.position = _loc2_;
         this.§+!G§.writeBytes(param1.§+!G§);
         this.§>9§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§>9§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§>9§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§>9§.fixed = true;
         this.§]!s§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§]!s§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§]!s§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§]!s§.fixed = true;
         this.§6<§ += param1.§#k§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §;!l§;
         var _loc6_:*;
         this.§]!s§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§]!s§[_loc7_ = _loc5_++] = param3;
         this.§]!s§[_loc5_] = param4;
      }
      
      public function §#m§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §;!l§;
         var _loc5_:*;
         this.§]!s§[_loc5_ = _loc4_++] = param2;
         this.§]!s§[_loc4_] = param3;
      }
      
      public function getPosition(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §;!l§;
         param2.x = this.§]!s§[_loc3_++];
         param2.y = this.§]!s§[_loc3_++];
         param2.z = this.§]!s§[_loc3_];
      }
      
      public function §&B§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§>"7§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §3c§.§throw§(param2) * _loc4_;
         var _loc6_:Number = §3c§.§!!u§(param2) * _loc4_;
         var _loc7_:Number = §3c§.§8"-§(param2) * _loc4_;
         this.§1]§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §1]§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §9"C§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§>9§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§>9§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§>9§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§>9§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §3T§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §9"C§;
         var _loc4_:*;
         this.§>9§[_loc4_ = _loc3_++] = this.§>9§[_loc4_] * param2;
         var _loc5_:*;
         this.§>9§[_loc5_ = _loc3_++] = this.§>9§[_loc5_] * param2;
         var _loc6_:*;
         this.§>9§[_loc6_ = _loc3_++] = this.§>9§[_loc6_] * param2;
         this.§>9§[_loc3_] *= param2;
      }
      
      public function §]!v§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §9"C§;
         var _loc3_:Number = !!this.§>"7§ ? Number(this.§>9§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§>9§[_loc2_] * _loc3_;
         _loc5_ = this.§>9§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§>9§[_loc2_ + 2] * _loc3_;
         return §3c§.§&!l§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §6f§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§>"7§)
         {
            this.§&B§(param1,this.§]!v§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §9"C§ + 3;
            this.§>9§[_loc3_] = param2;
         }
      }
      
      public function §;!E§(param1:int) : Number
      {
         var _loc2_:int = param1 * §9"C§ + 3;
         return this.§>9§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §"!?§;
         this.§+!G§.position = _loc4_ * §8X§;
         this.§+!G§.writeFloat(param2);
         this.§+!G§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §"!?§;
         this.§+!G§.position = _loc3_ * §8X§;
         param2.x = this.§+!G§.readFloat();
         param2.y = this.§+!G§.readFloat();
      }
      
      public function §0"#§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §;!l§;
         var _loc6_:*;
         this.§]!s§[_loc6_ = _loc5_++] = this.§]!s§[_loc6_] + param2;
         var _loc7_:*;
         this.§]!s§[_loc7_ = _loc5_++] = this.§]!s§[_loc7_] + param3;
         this.§]!s§[_loc5_] += param4;
      }
      
      public function §'"A§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §;!l§;
         this.§>!Y§[0] = this.§]!s§[_loc3_];
         this.§>!Y§[1] = this.§]!s§[_loc3_ + 1];
         this.§>!Y§[2] = this.§]!s§[_loc3_ + 2];
         param2.transformVectors(this.§>!Y§,this.§>!Y§);
         this.§]!s§[_loc3_] = this.§>!Y§[0];
         this.§]!s§[_loc3_ + 1] = this.§>!Y§[1];
         this.§]!s§[_loc3_ + 2] = this.§>!Y§[2];
      }
      
      public function §1J§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§>"7§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §3c§.§throw§(param1) * _loc3_;
         var _loc5_:Number = §3c§.§!!u§(param1) * _loc3_;
         var _loc6_:Number = §3c§.§8"-§(param1) * _loc3_;
         this.§1]§(0,this.§6<§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §<!H§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §9"C§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§>9§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§>9§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§>9§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§>9§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §3!9§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §9"C§;
         if(this.§>"7§)
         {
            _loc4_ = this.§>9§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§>9§[_loc3_] *= _loc4_;
            this.§>9§[_loc3_ + 1] *= _loc4_;
            this.§>9§[_loc3_ + 2] *= _loc4_;
            this.§>9§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§>9§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §]"#§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§>"7§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§6<§ * §9"C§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§;!E§(0);
               _loc6_ = !!this.§>"7§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§3T§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§>"7§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§>"7§;
      }
      
      public function get §#k§() : int
      {
         return this.§6<§;
      }
      
      public function set §#k§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §"!?§ * §8X§ - this.§+!G§.length;
         _loc4_ = this.§+!G§.length;
         this.§+!G§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§+!G§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §8X§)
            {
               this.§+!G§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§>9§.fixed = false;
         _loc2_ = param1 * §9"C§ - this.§>9§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§>9§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§>9§.pop();
            _loc3_++;
         }
         this.§>9§.fixed = true;
         this.§]!s§.fixed = false;
         _loc2_ = param1 * §;!l§ - this.§]!s§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§]!s§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§]!s§.pop();
            _loc3_++;
         }
         this.§]!s§.fixed = true;
         this.§6<§ = param1;
      }
      
      public function get native() : ByteArray
      {
         this.§+!G§.position = 0;
         return this.§+!G§;
      }
      
      public function get §`5§() : Vector.<Number>
      {
         return this.§>9§;
      }
      
      public function get § "7§() : Vector.<Number>
      {
         return this.§]!s§;
      }
   }
}
