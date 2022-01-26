package §@u§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §@!1§
   {
      
      public static const §#X§:int = 4;
      
      public static const §3+§:int = 2;
      
      public static const §!9§:int = 3;
      
      public static const include:int = 4;
      
      public static const §&E§:int = 0;
      
      public static const §#!Q§:int = 0;
      
      public static const §4!+§:int = 0;
       
      
      private var §[X§:ByteArray;
      
      private var §,1§:Vector.<Number>;
      
      private var §>8§:Vector.<Number>;
      
      private var §;!W§:Boolean;
      
      private var §;e§:int;
      
      private var §9i§:Vector.<Number>;
      
      public function §@!1§(param1:int, param2:Boolean = false)
      {
         this.§9i§ = new Vector.<Number>(12,true);
         super();
         this.§[X§ = new ByteArray();
         this.§[X§.endian = Endian.LITTLE_ENDIAN;
         this.§[X§.length = param1 * §3+§ * include;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §3+§)
         {
            this.§[X§.writeFloat(0);
            _loc3_++;
         }
         this.§,1§ = new Vector.<Number>(param1 * §#X§,true);
         this.§>8§ = new Vector.<Number>(param1 * §!9§,true);
         this.§;!W§ = param2;
         this.§;e§ = param1;
      }
      
      public function clone() : §@!1§
      {
         var _loc1_:§@!1§ = new §@!1§(0,this.§;!W§);
         _loc1_.§[X§.length = this.§[X§.length;
         _loc1_.§[X§.writeBytes(this.§[X§);
         _loc1_.§,1§ = this.§,1§.concat();
         _loc1_.§,1§.fixed = true;
         _loc1_.§>8§ = this.§>8§.concat();
         _loc1_.§>8§.fixed = true;
         _loc1_.§;e§ = this.§;e§;
         return _loc1_;
      }
      
      public function copyTo(param1:§@!1§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§>8§;
         _loc6_ = this.§;e§ * §!9§;
         _loc7_ = param2 * §!9§;
         if(param5)
         {
            param5.transformVectors(this.§>8§,this.§9i§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§9i§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§>8§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§[X§;
         _loc6_ = this.§;e§ * §3+§ * include;
         _loc7_ = param2 * §3+§ * include;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§[X§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§,1§;
            _loc6_ = this.§;e§ * §#X§;
            _loc7_ = param2 * §#X§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§,1§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§;e§)
               {
                  if(this.§;!W§)
                  {
                     _loc13_ = this.§,1§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§,1§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§,1§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§,1§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§,1§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§,1§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§,1§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§@!1§) : void
      {
         var _loc2_:int = this.§[X§.length;
         this.§[X§.length += param1.§[X§.length;
         this.§[X§.position = _loc2_;
         this.§[X§.writeBytes(param1.§[X§);
         this.§,1§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§,1§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§,1§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§,1§.fixed = true;
         this.§>8§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§>8§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§>8§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§>8§.fixed = true;
         this.§;e§ += param1.§'!%§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §!9§;
         var _loc6_:*;
         this.§>8§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§>8§[_loc7_ = _loc5_++] = param3;
         this.§>8§[_loc5_] = param4;
      }
      
      public function §9D§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §!9§;
         var _loc5_:*;
         this.§>8§[_loc5_ = _loc4_++] = param2;
         this.§>8§[_loc4_] = param3;
      }
      
      public function §-!U§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §!9§;
         param2.x = this.§>8§[_loc3_++];
         param2.y = this.§>8§[_loc3_++];
         param2.z = this.§>8§[_loc3_];
      }
      
      public function §'!5§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§;!W§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §#g§.§36§(param2) * _loc4_;
         var _loc6_:Number = §#g§.§+!8§(param2) * _loc4_;
         var _loc7_:Number = §#g§.§ !G§(param2) * _loc4_;
         this.§3d§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §3d§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §#X§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§,1§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§,1§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§,1§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§,1§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §1!P§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §#X§;
         var _loc4_:*;
         this.§,1§[_loc4_ = _loc3_++] = this.§,1§[_loc4_] * param2;
         var _loc5_:*;
         this.§,1§[_loc5_ = _loc3_++] = this.§,1§[_loc5_] * param2;
         var _loc6_:*;
         this.§,1§[_loc6_ = _loc3_++] = this.§,1§[_loc6_] * param2;
         this.§,1§[_loc3_] *= param2;
      }
      
      public function §]!E§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §#X§;
         var _loc3_:Number = !!this.§;!W§ ? Number(this.§,1§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§,1§[_loc2_] * _loc3_;
         _loc5_ = this.§,1§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§,1§[_loc2_ + 2] * _loc3_;
         return §#g§.§;k§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §'!^§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§;!W§)
         {
            this.§'!5§(param1,this.§]!E§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §#X§ + 3;
            this.§,1§[_loc3_] = param2;
         }
      }
      
      public function §>!@§(param1:int) : Number
      {
         var _loc2_:int = param1 * §#X§ + 3;
         return this.§,1§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §3+§;
         this.§[X§.position = _loc4_ * include;
         this.§[X§.writeFloat(param2);
         this.§[X§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §3+§;
         this.§[X§.position = _loc3_ * include;
         param2.x = this.§[X§.readFloat();
         param2.y = this.§[X§.readFloat();
      }
      
      public function §8+§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §!9§;
         var _loc6_:*;
         this.§>8§[_loc6_ = _loc5_++] = this.§>8§[_loc6_] + param2;
         var _loc7_:*;
         this.§>8§[_loc7_ = _loc5_++] = this.§>8§[_loc7_] + param3;
         this.§>8§[_loc5_] += param4;
      }
      
      public function §2X§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §!9§;
         this.§9i§[0] = this.§>8§[_loc3_];
         this.§9i§[1] = this.§>8§[_loc3_ + 1];
         this.§9i§[2] = this.§>8§[_loc3_ + 2];
         param2.transformVectors(this.§9i§,this.§9i§);
         this.§>8§[_loc3_] = this.§9i§[0];
         this.§>8§[_loc3_ + 1] = this.§9i§[1];
         this.§>8§[_loc3_ + 2] = this.§9i§[2];
      }
      
      public function §%!+§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§;!W§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §#g§.§36§(param1) * _loc3_;
         var _loc5_:Number = §#g§.§+!8§(param1) * _loc3_;
         var _loc6_:Number = §#g§.§ !G§(param1) * _loc3_;
         this.§3d§(0,this.§;e§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §+j§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §#X§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§,1§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§,1§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§,1§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§,1§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §8k§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §#X§;
         if(this.§;!W§)
         {
            _loc4_ = this.§,1§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§,1§[_loc3_] *= _loc4_;
            this.§,1§[_loc3_ + 1] *= _loc4_;
            this.§,1§[_loc3_ + 2] *= _loc4_;
            this.§,1§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§,1§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§;!W§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§;e§ * §#X§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§>!@§(0);
               _loc6_ = !!this.§;!W§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§1!P§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§;!W§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§;!W§;
      }
      
      public function get §'!%§() : int
      {
         return this.§;e§;
      }
      
      public function set §'!%§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §3+§ * include - this.§[X§.length;
         _loc4_ = this.§[X§.length;
         this.§[X§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§[X§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / include)
            {
               this.§[X§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§,1§.fixed = false;
         _loc2_ = param1 * §#X§ - this.§,1§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§,1§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§,1§.pop();
            _loc3_++;
         }
         this.§,1§.fixed = true;
         this.§>8§.fixed = false;
         _loc2_ = param1 * §!9§ - this.§>8§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§>8§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§>8§.pop();
            _loc3_++;
         }
         this.§>8§.fixed = true;
         this.§;e§ = param1;
      }
      
      public function get §9=§() : ByteArray
      {
         this.§[X§.position = 0;
         return this.§[X§;
      }
      
      public function get §6Y§() : Vector.<Number>
      {
         return this.§,1§;
      }
      
      public function get §1^§() : Vector.<Number>
      {
         return this.§>8§;
      }
   }
}
