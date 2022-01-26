package §3!$§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §+^§
   {
      
      public static const §"!%§:int = 4;
      
      public static const §6!4§:int = 2;
      
      public static const §>!E§:int = 3;
      
      public static const §2'§:int = 4;
      
      public static const §;u§:int = 0;
      
      public static const §;F§:int = 0;
      
      public static const §!^§:int = 0;
       
      
      private var §=!?§:ByteArray;
      
      private var §[k§:Vector.<Number>;
      
      private var §&0§:Vector.<Number>;
      
      private var §3Y§:Boolean;
      
      private var §-!1§:int;
      
      private var §`R§:Vector.<Number>;
      
      public function §+^§(param1:int, param2:Boolean = false)
      {
         this.§`R§ = new Vector.<Number>(12,true);
         super();
         this.§=!?§ = new ByteArray();
         this.§=!?§.endian = Endian.LITTLE_ENDIAN;
         this.§=!?§.length = param1 * §6!4§ * §2'§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §6!4§)
         {
            this.§=!?§.writeFloat(0);
            _loc3_++;
         }
         this.§[k§ = new Vector.<Number>(param1 * §"!%§,true);
         this.§&0§ = new Vector.<Number>(param1 * §>!E§,true);
         this.§3Y§ = param2;
         this.§-!1§ = param1;
      }
      
      public function clone() : §+^§
      {
         var _loc1_:§+^§ = new §+^§(0,this.§3Y§);
         _loc1_.§=!?§.length = this.§=!?§.length;
         _loc1_.§=!?§.writeBytes(this.§=!?§);
         _loc1_.§[k§ = this.§[k§.concat();
         _loc1_.§[k§.fixed = true;
         _loc1_.§&0§ = this.§&0§.concat();
         _loc1_.§&0§.fixed = true;
         _loc1_.§-!1§ = this.§-!1§;
         return _loc1_;
      }
      
      public function copyTo(param1:§+^§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§&0§;
         _loc6_ = this.§-!1§ * §>!E§;
         _loc7_ = param2 * §>!E§;
         if(param5)
         {
            param5.transformVectors(this.§&0§,this.§`R§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§`R§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§&0§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§=!?§;
         _loc6_ = this.§-!1§ * §6!4§ * §2'§;
         _loc7_ = param2 * §6!4§ * §2'§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§=!?§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§[k§;
            _loc6_ = this.§-!1§ * §"!%§;
            _loc7_ = param2 * §"!%§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§[k§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§-!1§)
               {
                  if(this.§3Y§)
                  {
                     _loc13_ = this.§[k§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§[k§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§[k§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§[k§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§[k§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§[k§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§[k§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§+^§) : void
      {
         var _loc2_:int = this.§=!?§.length;
         this.§=!?§.length += param1.§=!?§.length;
         this.§=!?§.position = _loc2_;
         this.§=!?§.writeBytes(param1.§=!?§);
         this.§[k§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§[k§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§[k§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§[k§.fixed = true;
         this.§&0§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§&0§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§&0§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§&0§.fixed = true;
         this.§-!1§ += param1.§7U§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §>!E§;
         var _loc6_:*;
         this.§&0§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§&0§[_loc7_ = _loc5_++] = param3;
         this.§&0§[_loc5_] = param4;
      }
      
      public function §^0§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §>!E§;
         var _loc5_:*;
         this.§&0§[_loc5_ = _loc4_++] = param2;
         this.§&0§[_loc4_] = param3;
      }
      
      public function §>A§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §>!E§;
         param2.x = this.§&0§[_loc3_++];
         param2.y = this.§&0§[_loc3_++];
         param2.z = this.§&0§[_loc3_];
      }
      
      public function §[!"§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§3Y§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §5!6§.§get §(param2) * _loc4_;
         var _loc6_:Number = §5!6§.§>c§(param2) * _loc4_;
         var _loc7_:Number = §5!6§.§;!D§(param2) * _loc4_;
         this.§'K§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §'K§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §"!%§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§[k§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§[k§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§[k§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§[k§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §5!G§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §"!%§;
         var _loc4_:*;
         this.§[k§[_loc4_ = _loc3_++] = this.§[k§[_loc4_] * param2;
         var _loc5_:*;
         this.§[k§[_loc5_ = _loc3_++] = this.§[k§[_loc5_] * param2;
         var _loc6_:*;
         this.§[k§[_loc6_ = _loc3_++] = this.§[k§[_loc6_] * param2;
         this.§[k§[_loc3_] *= param2;
      }
      
      public function §2$§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §"!%§;
         var _loc3_:Number = !!this.§3Y§ ? Number(this.§[k§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§[k§[_loc2_] * _loc3_;
         _loc5_ = this.§[k§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§[k§[_loc2_ + 2] * _loc3_;
         return §5!6§.§<!E§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §,`§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§3Y§)
         {
            this.§[!"§(param1,this.§2$§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §"!%§ + 3;
            this.§[k§[_loc3_] = param2;
         }
      }
      
      public function §+P§(param1:int) : Number
      {
         var _loc2_:int = param1 * §"!%§ + 3;
         return this.§[k§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §6!4§;
         this.§=!?§.position = _loc4_ * §2'§;
         this.§=!?§.writeFloat(param2);
         this.§=!?§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §6!4§;
         this.§=!?§.position = _loc3_ * §2'§;
         param2.x = this.§=!?§.readFloat();
         param2.y = this.§=!?§.readFloat();
      }
      
      public function §7!?§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §>!E§;
         var _loc6_:*;
         this.§&0§[_loc6_ = _loc5_++] = this.§&0§[_loc6_] + param2;
         var _loc7_:*;
         this.§&0§[_loc7_ = _loc5_++] = this.§&0§[_loc7_] + param3;
         this.§&0§[_loc5_] += param4;
      }
      
      public function §8N§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §>!E§;
         this.§`R§[0] = this.§&0§[_loc3_];
         this.§`R§[1] = this.§&0§[_loc3_ + 1];
         this.§`R§[2] = this.§&0§[_loc3_ + 2];
         param2.transformVectors(this.§`R§,this.§`R§);
         this.§&0§[_loc3_] = this.§`R§[0];
         this.§&0§[_loc3_ + 1] = this.§`R§[1];
         this.§&0§[_loc3_ + 2] = this.§`R§[2];
      }
      
      public function §>,§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§3Y§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §5!6§.§get §(param1) * _loc3_;
         var _loc5_:Number = §5!6§.§>c§(param1) * _loc3_;
         var _loc6_:Number = §5!6§.§;!D§(param1) * _loc3_;
         this.§'K§(0,this.§-!1§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §4!F§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §"!%§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§[k§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§[k§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§[k§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§[k§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §<Y§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §"!%§;
         if(this.§3Y§)
         {
            _loc4_ = this.§[k§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§[k§[_loc3_] *= _loc4_;
            this.§[k§[_loc3_ + 1] *= _loc4_;
            this.§[k§[_loc3_ + 2] *= _loc4_;
            this.§[k§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§[k§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§3Y§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§-!1§ * §"!%§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§+P§(0);
               _loc6_ = !!this.§3Y§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§5!G§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§3Y§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§3Y§;
      }
      
      public function get §7U§() : int
      {
         return this.§-!1§;
      }
      
      public function set §7U§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §6!4§ * §2'§ - this.§=!?§.length;
         _loc4_ = this.§=!?§.length;
         this.§=!?§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§=!?§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §2'§)
            {
               this.§=!?§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§[k§.fixed = false;
         _loc2_ = param1 * §"!%§ - this.§[k§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§[k§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§[k§.pop();
            _loc3_++;
         }
         this.§[k§.fixed = true;
         this.§&0§.fixed = false;
         _loc2_ = param1 * §>!E§ - this.§&0§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§&0§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§&0§.pop();
            _loc3_++;
         }
         this.§&0§.fixed = true;
         this.§-!1§ = param1;
      }
      
      public function get §]!E§() : ByteArray
      {
         this.§=!?§.position = 0;
         return this.§=!?§;
      }
      
      public function get §3!?§() : Vector.<Number>
      {
         return this.§[k§;
      }
      
      public function get §[&§() : Vector.<Number>
      {
         return this.§&0§;
      }
   }
}
