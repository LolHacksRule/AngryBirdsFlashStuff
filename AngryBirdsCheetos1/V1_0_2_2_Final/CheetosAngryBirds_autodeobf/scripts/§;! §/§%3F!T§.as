package §;! §
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §?!T§
   {
      
      public static const §`2§:int = 4;
      
      public static const §@t§:int = 2;
      
      public static const §!!6§:int = 3;
      
      public static const §?!W§:int = 4;
      
      public static const §94§:int = 0;
      
      public static const §&!E§:int = 0;
      
      public static const §0a§:int = 0;
       
      
      private var §#s§:ByteArray;
      
      private var §>9§:Vector.<Number>;
      
      private var §71§:Vector.<Number>;
      
      private var §'!P§:Boolean;
      
      private var §&>§:int;
      
      private var §9<§:Vector.<Number>;
      
      public function §?!T§(param1:int, param2:Boolean = false)
      {
         this.§9<§ = new Vector.<Number>(12,true);
         super();
         this.§#s§ = new ByteArray();
         this.§#s§.endian = Endian.LITTLE_ENDIAN;
         this.§#s§.length = param1 * §@t§ * §?!W§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §@t§)
         {
            this.§#s§.writeFloat(0);
            _loc3_++;
         }
         this.§>9§ = new Vector.<Number>(param1 * §`2§,true);
         this.§71§ = new Vector.<Number>(param1 * §!!6§,true);
         this.§'!P§ = param2;
         this.§&>§ = param1;
      }
      
      public function clone() : §?!T§
      {
         var _loc1_:§?!T§ = new §?!T§(0,this.§'!P§);
         _loc1_.§#s§.length = this.§#s§.length;
         _loc1_.§#s§.writeBytes(this.§#s§);
         _loc1_.§>9§ = this.§>9§.concat();
         _loc1_.§>9§.fixed = true;
         _loc1_.§71§ = this.§71§.concat();
         _loc1_.§71§.fixed = true;
         _loc1_.§&>§ = this.§&>§;
         return _loc1_;
      }
      
      public function copyTo(param1:§?!T§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§71§;
         _loc6_ = this.§&>§ * §!!6§;
         _loc7_ = param2 * §!!6§;
         if(param5)
         {
            param5.transformVectors(this.§71§,this.§9<§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§9<§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§71§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§#s§;
         _loc6_ = this.§&>§ * §@t§ * §?!W§;
         _loc7_ = param2 * §@t§ * §?!W§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§#s§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§>9§;
            _loc6_ = this.§&>§ * §`2§;
            _loc7_ = param2 * §`2§;
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
               while(_loc8_ < this.§&>§)
               {
                  if(this.§'!P§)
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
      
      public function append(param1:§?!T§) : void
      {
         var _loc2_:int = this.§#s§.length;
         this.§#s§.length += param1.§#s§.length;
         this.§#s§.position = _loc2_;
         this.§#s§.writeBytes(param1.§#s§);
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
         this.§71§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§71§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§71§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§71§.fixed = true;
         this.§&>§ += param1.§>"§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §!!6§;
         var _loc6_:*;
         this.§71§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§71§[_loc7_ = _loc5_++] = param3;
         this.§71§[_loc5_] = param4;
      }
      
      public function §6#§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §!!6§;
         var _loc5_:*;
         this.§71§[_loc5_ = _loc4_++] = param2;
         this.§71§[_loc4_] = param3;
      }
      
      public function §@!+§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §!!6§;
         param2.x = this.§71§[_loc3_++];
         param2.y = this.§71§[_loc3_++];
         param2.z = this.§71§[_loc3_];
      }
      
      public function §,m§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§'!P§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §[!'§.§,!6§(param2) * _loc4_;
         var _loc6_:Number = §[!'§.§`^§(param2) * _loc4_;
         var _loc7_:Number = §[!'§.§5R§(param2) * _loc4_;
         this.§4n§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §4n§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §`2§;
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
      
      private function §3"§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §`2§;
         var _loc4_:*;
         this.§>9§[_loc4_ = _loc3_++] = this.§>9§[_loc4_] * param2;
         var _loc5_:*;
         this.§>9§[_loc5_ = _loc3_++] = this.§>9§[_loc5_] * param2;
         var _loc6_:*;
         this.§>9§[_loc6_ = _loc3_++] = this.§>9§[_loc6_] * param2;
         this.§>9§[_loc3_] *= param2;
      }
      
      public function §+;§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §`2§;
         var _loc3_:Number = !!this.§'!P§ ? Number(this.§>9§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§>9§[_loc2_] * _loc3_;
         _loc5_ = this.§>9§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§>9§[_loc2_ + 2] * _loc3_;
         return §[!'§.§,!_§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §6!Y§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§'!P§)
         {
            this.§,m§(param1,this.§+;§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §`2§ + 3;
            this.§>9§[_loc3_] = param2;
         }
      }
      
      public function §>W§(param1:int) : Number
      {
         var _loc2_:int = param1 * §`2§ + 3;
         return this.§>9§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §@t§;
         this.§#s§.position = _loc4_ * §?!W§;
         this.§#s§.writeFloat(param2);
         this.§#s§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §@t§;
         this.§#s§.position = _loc3_ * §?!W§;
         param2.x = this.§#s§.readFloat();
         param2.y = this.§#s§.readFloat();
      }
      
      public function §^!%§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §!!6§;
         var _loc6_:*;
         this.§71§[_loc6_ = _loc5_++] = this.§71§[_loc6_] + param2;
         var _loc7_:*;
         this.§71§[_loc7_ = _loc5_++] = this.§71§[_loc7_] + param3;
         this.§71§[_loc5_] += param4;
      }
      
      public function §;>§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §!!6§;
         this.§9<§[0] = this.§71§[_loc3_];
         this.§9<§[1] = this.§71§[_loc3_ + 1];
         this.§9<§[2] = this.§71§[_loc3_ + 2];
         param2.transformVectors(this.§9<§,this.§9<§);
         this.§71§[_loc3_] = this.§9<§[0];
         this.§71§[_loc3_ + 1] = this.§9<§[1];
         this.§71§[_loc3_ + 2] = this.§9<§[2];
      }
      
      public function §-G§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§'!P§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §[!'§.§,!6§(param1) * _loc3_;
         var _loc5_:Number = §[!'§.§`^§(param1) * _loc3_;
         var _loc6_:Number = §[!'§.§5R§(param1) * _loc3_;
         this.§4n§(0,this.§&>§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §[!@§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §`2§;
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
      
      public function §"!E§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §`2§;
         if(this.§'!P§)
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
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§'!P§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§&>§ * §`2§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§>W§(0);
               _loc6_ = !!this.§'!P§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§3"§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§'!P§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§'!P§;
      }
      
      public function get §>"§() : int
      {
         return this.§&>§;
      }
      
      public function set §>"§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §@t§ * §?!W§ - this.§#s§.length;
         _loc4_ = this.§#s§.length;
         this.§#s§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§#s§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §?!W§)
            {
               this.§#s§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§>9§.fixed = false;
         _loc2_ = param1 * §`2§ - this.§>9§.length;
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
         this.§71§.fixed = false;
         _loc2_ = param1 * §!!6§ - this.§71§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§71§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§71§.pop();
            _loc3_++;
         }
         this.§71§.fixed = true;
         this.§&>§ = param1;
      }
      
      public function get §8!H§() : ByteArray
      {
         this.§#s§.position = 0;
         return this.§#s§;
      }
      
      public function get §8l§() : Vector.<Number>
      {
         return this.§>9§;
      }
      
      public function get §<!9§() : Vector.<Number>
      {
         return this.§71§;
      }
   }
}
