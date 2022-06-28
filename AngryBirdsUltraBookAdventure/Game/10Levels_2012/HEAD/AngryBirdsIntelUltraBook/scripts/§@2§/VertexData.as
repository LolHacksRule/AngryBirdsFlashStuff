package §@2§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class VertexData
   {
      
      public static const §6`§:int = 4;
      
      public static const §'M§:int = 2;
      
      public static const §?F§:int = 3;
      
      public static const §,!0§:int = 4;
      
      public static const §`[§:int = 0;
      
      public static const §]!C§:int = 0;
      
      public static const §[^§:int = 0;
       
      
      private var §2!#§:ByteArray;
      
      private var §,!;§:Vector.<Number>;
      
      private var §!]§:Vector.<Number>;
      
      private var §1J§:Boolean;
      
      private var §9W§:int;
      
      private var §[l§:Vector.<Number>;
      
      public function VertexData(param1:int, param2:Boolean = false)
      {
         this.§[l§ = new Vector.<Number>(12,true);
         super();
         this.§2!#§ = new ByteArray();
         this.§2!#§.endian = Endian.LITTLE_ENDIAN;
         this.§2!#§.length = param1 * §'M§ * §,!0§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §'M§)
         {
            this.§2!#§.writeFloat(0);
            _loc3_++;
         }
         this.§,!;§ = new Vector.<Number>(param1 * §6`§,true);
         this.§!]§ = new Vector.<Number>(param1 * §?F§,true);
         this.§1J§ = param2;
         this.§9W§ = param1;
      }
      
      public function clone() : VertexData
      {
         var _loc1_:VertexData = new VertexData(0,this.§1J§);
         _loc1_.§2!#§.length = this.§2!#§.length;
         _loc1_.§2!#§.writeBytes(this.§2!#§);
         _loc1_.§,!;§ = this.§,!;§.concat();
         _loc1_.§,!;§.fixed = true;
         _loc1_.§!]§ = this.§!]§.concat();
         _loc1_.§!]§.fixed = true;
         _loc1_.§9W§ = this.§9W§;
         return _loc1_;
      }
      
      public function copyTo(param1:VertexData, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§!]§;
         _loc6_ = this.§9W§ * §?F§;
         _loc7_ = param2 * §?F§;
         if(param5)
         {
            param5.transformVectors(this.§!]§,this.§[l§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:* = _loc7_++;
               _loc9_[_loc14_] = this.§[l§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc14_ = _loc7_++;
               _loc9_[_loc14_] = this.§!]§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§2!#§;
         _loc6_ = this.§9W§ * §'M§ * §,!0§;
         _loc7_ = param2 * §'M§ * §,!0§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§2!#§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§,!;§;
            _loc6_ = this.§9W§ * §6`§;
            _loc7_ = param2 * §6`§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc14_ = _loc7_++;
                  _loc11_[_loc14_] = this.§,!;§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§9W§)
               {
                  if(this.§1J§)
                  {
                     _loc13_ = this.§,!;§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc14_ = _loc7_++;
                     _loc11_[_loc14_] = this.§,!;§[_loc12_++] * _loc13_;
                     var _loc15_:* = _loc7_++;
                     _loc11_[_loc15_] = this.§,!;§[_loc12_++] * _loc13_;
                     var _loc16_:* = _loc7_++;
                     _loc11_[_loc16_] = this.§,!;§[_loc12_++] * _loc13_;
                     var _loc17_:* = _loc7_++;
                     _loc11_[_loc17_] = param3;
                  }
                  else
                  {
                     _loc14_ = _loc7_++;
                     _loc11_[_loc14_] = this.§,!;§[_loc12_++];
                     _loc15_ = _loc7_++;
                     _loc11_[_loc15_] = this.§,!;§[_loc12_++];
                     _loc16_ = _loc7_++;
                     _loc11_[_loc16_] = this.§,!;§[_loc12_++];
                     _loc17_ = _loc7_++;
                     _loc11_[_loc17_] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:VertexData) : void
      {
         var _loc2_:int = this.§2!#§.length;
         this.§2!#§.length += param1.§2!#§.length;
         this.§2!#§.position = _loc2_;
         this.§2!#§.writeBytes(param1.§2!#§);
         this.§,!;§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§,!;§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§,!;§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§,!;§.fixed = true;
         this.§!]§.fixed = false;
         var _loc6_:Vector.<Number> = param1.§!]§;
         var _loc7_:int = _loc6_.length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§!]§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§!]§.fixed = true;
         this.§9W§ += param1.§]!;§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §?F§;
         var _loc6_:* = _loc5_++;
         this.§!]§[_loc6_] = param2;
         var _loc7_:* = _loc5_++;
         this.§!]§[_loc7_] = param3;
         this.§!]§[_loc5_] = param4;
      }
      
      public function §^!L§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §?F§;
         var _loc5_:* = _loc4_++;
         this.§!]§[_loc5_] = param2;
         this.§!]§[_loc4_] = param3;
      }
      
      public function §&n§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §?F§;
         param2.x = this.§!]§[_loc3_++];
         param2.y = this.§!]§[_loc3_++];
         param2.z = this.§!]§[_loc3_];
      }
      
      public function § !R§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = !!this.§1J§ ? Number(param3) : Number(1);
         _loc4_ /= 255;
         var _loc5_:Number = §3§.§0!k§(param2) * _loc4_;
         var _loc6_:Number = §3§.§0!T§(param2) * _loc4_;
         var _loc7_:Number = §3§.§2&§(param2) * _loc4_;
         this.§=!W§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §=!W§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §6`§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:* = _loc7_++;
            this.§,!;§[_loc9_] = param3;
            var _loc10_:* = _loc7_++;
            this.§,!;§[_loc10_] = param4;
            var _loc11_:* = _loc7_++;
            this.§,!;§[_loc11_] = param5;
            var _loc12_:* = _loc7_++;
            this.§,!;§[_loc12_] = param6;
            _loc8_--;
         }
      }
      
      private function §`!X§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §6`§;
         var _loc4_:* = _loc3_++;
         this.§,!;§[_loc4_] *= param2;
         var _loc5_:* = _loc3_++;
         this.§,!;§[_loc5_] *= param2;
         var _loc6_:* = _loc3_++;
         this.§,!;§[_loc6_] *= param2;
         this.§,!;§[_loc3_] *= param2;
      }
      
      public function §9!#§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §6`§;
         var _loc3_:Number = !!this.§1J§ ? Number(this.§,!;§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§,!;§[_loc2_] * _loc3_;
         _loc5_ = this.§,!;§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§,!;§[_loc2_ + 2] * _loc3_;
         return §3§.§-5§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §"!>§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§1J§)
         {
            this.§ !R§(param1,this.§9!#§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §6`§ + 3;
            this.§,!;§[_loc3_] = param2;
         }
      }
      
      public function §3!>§(param1:int) : Number
      {
         var _loc2_:int = param1 * §6`§ + 3;
         return this.§,!;§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §'M§;
         this.§2!#§.position = _loc4_ * §,!0§;
         this.§2!#§.writeFloat(param2);
         this.§2!#§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §'M§;
         this.§2!#§.position = _loc3_ * §,!0§;
         param2.x = this.§2!#§.readFloat();
         param2.y = this.§2!#§.readFloat();
      }
      
      public function §^!j§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §?F§;
         var _loc6_:* = _loc5_++;
         this.§!]§[_loc6_] += param2;
         var _loc7_:* = _loc5_++;
         this.§!]§[_loc7_] += param3;
         this.§!]§[_loc5_] += param4;
      }
      
      public function §4O§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §?F§;
         this.§[l§[0] = this.§!]§[_loc3_];
         this.§[l§[1] = this.§!]§[_loc3_ + 1];
         this.§[l§[2] = this.§!]§[_loc3_ + 2];
         param2.transformVectors(this.§[l§,this.§[l§);
         this.§!]§[_loc3_] = this.§[l§[0];
         this.§!]§[_loc3_ + 1] = this.§[l§[1];
         this.§!]§[_loc3_ + 2] = this.§[l§[2];
      }
      
      public function §>e§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§1J§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §3§.§0!k§(param1) * _loc3_;
         var _loc5_:Number = §3§.§0!T§(param1) * _loc3_;
         var _loc6_:Number = §3§.§2&§(param1) * _loc3_;
         this.§=!W§(0,this.§9W§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §<-§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §6`§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:* = _loc7_++;
            this.§,!;§[_loc9_] = param3;
            var _loc10_:* = _loc7_++;
            this.§,!;§[_loc10_] = param4;
            var _loc11_:* = _loc7_++;
            this.§,!;§[_loc11_] = param5;
            var _loc12_:* = _loc7_++;
            this.§,!;§[_loc12_] = param6;
            _loc8_++;
         }
      }
      
      public function §?i§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §6`§;
         if(this.§1J§)
         {
            _loc4_ = this.§,!;§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§,!;§[_loc3_] *= _loc4_;
            this.§,!;§[_loc3_ + 1] *= _loc4_;
            this.§,!;§[_loc3_ + 2] *= _loc4_;
            this.§,!;§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§,!;§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§1J§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§9W§ * §6`§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§3!>§(0);
               _loc6_ = !!this.§1J§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§`!X§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§1J§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§1J§;
      }
      
      public function get §]!;§() : int
      {
         return this.§9W§;
      }
      
      public function set §]!;§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §'M§ * §,!0§ - this.§2!#§.length;
         _loc4_ = this.§2!#§.length;
         this.§2!#§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§2!#§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §,!0§)
            {
               this.§2!#§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§,!;§.fixed = false;
         _loc2_ = param1 * §6`§ - this.§,!;§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§,!;§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§,!;§.pop();
            _loc3_++;
         }
         this.§,!;§.fixed = true;
         this.§!]§.fixed = false;
         _loc2_ = param1 * §?F§ - this.§!]§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§!]§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§!]§.pop();
            _loc3_++;
         }
         this.§!]§.fixed = true;
         this.§9W§ = param1;
      }
      
      public function get §%0§() : ByteArray
      {
         this.§2!#§.position = 0;
         return this.§2!#§;
      }
      
      public function get §&+§() : Vector.<Number>
      {
         return this.§,!;§;
      }
      
      public function get §7!a§() : Vector.<Number>
      {
         return this.§!]§;
      }
   }
}
