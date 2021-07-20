package §'7§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class VertexData
   {
      
      public static const §@!e§:int = 4;
      
      public static const §4d§:int = 2;
      
      public static const §!<§:int = 3;
      
      public static const § !D§:int = 4;
      
      public static const §@8§:int = 0;
      
      public static const §8!Y§:int = 0;
      
      public static const §+!h§:int = 0;
       
      
      private var §,!W§:ByteArray;
      
      private var § g§:Vector.<Number>;
      
      private var §+!=§:Vector.<Number>;
      
      private var §@!Y§:Boolean;
      
      private var §;!-§:int;
      
      private var §&i§:Vector.<Number>;
      
      public function VertexData(param1:int, param2:Boolean = false)
      {
         this.§&i§ = new Vector.<Number>(12,true);
         super();
         this.§,!W§ = new ByteArray();
         this.§,!W§.endian = Endian.LITTLE_ENDIAN;
         this.§,!W§.length = param1 * §4d§ * § !D§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §4d§)
         {
            this.§,!W§.writeFloat(0);
            _loc3_++;
         }
         this.§ g§ = new Vector.<Number>(param1 * §@!e§,true);
         this.§+!=§ = new Vector.<Number>(param1 * §!<§,true);
         this.§@!Y§ = param2;
         this.§;!-§ = param1;
      }
      
      public function clone() : VertexData
      {
         var _loc1_:VertexData = new VertexData(0,this.§@!Y§);
         _loc1_.§,!W§.length = this.§,!W§.length;
         _loc1_.§,!W§.writeBytes(this.§,!W§);
         _loc1_.§ g§ = this.§ g§.concat();
         _loc1_.§ g§.fixed = true;
         _loc1_.§+!=§ = this.§+!=§.concat();
         _loc1_.§+!=§.fixed = true;
         _loc1_.§;!-§ = this.§;!-§;
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
         var _loc9_:Vector.<Number> = param1.§+!=§;
         _loc6_ = this.§;!-§ * §!<§;
         _loc7_ = param2 * §!<§;
         if(param5)
         {
            param5.transformVectors(this.§+!=§,this.§&i§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:* = _loc7_++;
               _loc9_[_loc14_] = this.§&i§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc14_ = _loc7_++;
               _loc9_[_loc14_] = this.§+!=§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§,!W§;
         _loc6_ = this.§;!-§ * §4d§ * § !D§;
         _loc7_ = param2 * §4d§ * § !D§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§,!W§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§ g§;
            _loc6_ = this.§;!-§ * §@!e§;
            _loc7_ = param2 * §@!e§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc14_ = _loc7_++;
                  _loc11_[_loc14_] = this.§ g§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§;!-§)
               {
                  if(this.§@!Y§)
                  {
                     _loc13_ = this.§ g§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc14_ = _loc7_++;
                     _loc11_[_loc14_] = this.§ g§[_loc12_++] * _loc13_;
                     var _loc15_:* = _loc7_++;
                     _loc11_[_loc15_] = this.§ g§[_loc12_++] * _loc13_;
                     var _loc16_:* = _loc7_++;
                     _loc11_[_loc16_] = this.§ g§[_loc12_++] * _loc13_;
                     var _loc17_:* = _loc7_++;
                     _loc11_[_loc17_] = param3;
                  }
                  else
                  {
                     _loc14_ = _loc7_++;
                     _loc11_[_loc14_] = this.§ g§[_loc12_++];
                     _loc15_ = _loc7_++;
                     _loc11_[_loc15_] = this.§ g§[_loc12_++];
                     _loc16_ = _loc7_++;
                     _loc11_[_loc16_] = this.§ g§[_loc12_++];
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
         var _loc2_:int = this.§,!W§.length;
         this.§,!W§.length += param1.§,!W§.length;
         this.§,!W§.position = _loc2_;
         this.§,!W§.writeBytes(param1.§,!W§);
         this.§ g§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§ g§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§ g§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§ g§.fixed = true;
         this.§+!=§.fixed = false;
         var _loc6_:Vector.<Number> = param1.§+!=§;
         var _loc7_:int = _loc6_.length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§+!=§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§+!=§.fixed = true;
         this.§;!-§ += param1.§ !Z§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §!<§;
         var _loc6_:* = _loc5_++;
         this.§+!=§[_loc6_] = param2;
         var _loc7_:* = _loc5_++;
         this.§+!=§[_loc7_] = param3;
         this.§+!=§[_loc5_] = param4;
      }
      
      public function §`!%§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §!<§;
         var _loc5_:* = _loc4_++;
         this.§+!=§[_loc5_] = param2;
         this.§+!=§[_loc4_] = param3;
      }
      
      public function §=!,§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §!<§;
         param2.x = this.§+!=§[_loc3_++];
         param2.y = this.§+!=§[_loc3_++];
         param2.z = this.§+!=§[_loc3_];
      }
      
      public function §]!G§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = !!this.§@!Y§ ? Number(param3) : Number(1);
         _loc4_ /= 255;
         var _loc5_:Number = §!,§.§0,§(param2) * _loc4_;
         var _loc6_:Number = §!,§.§-[§(param2) * _loc4_;
         var _loc7_:Number = §!,§.§4A§(param2) * _loc4_;
         this.§-6§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §-6§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §@!e§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:* = _loc7_++;
            this.§ g§[_loc9_] = param3;
            var _loc10_:* = _loc7_++;
            this.§ g§[_loc10_] = param4;
            var _loc11_:* = _loc7_++;
            this.§ g§[_loc11_] = param5;
            var _loc12_:* = _loc7_++;
            this.§ g§[_loc12_] = param6;
            _loc8_--;
         }
      }
      
      private function §%!a§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §@!e§;
         var _loc4_:* = _loc3_++;
         this.§ g§[_loc4_] *= param2;
         var _loc5_:* = _loc3_++;
         this.§ g§[_loc5_] *= param2;
         var _loc6_:* = _loc3_++;
         this.§ g§[_loc6_] *= param2;
         this.§ g§[_loc3_] *= param2;
      }
      
      public function §<X§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §@!e§;
         var _loc3_:Number = !!this.§@!Y§ ? Number(this.§ g§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§ g§[_loc2_] * _loc3_;
         _loc5_ = this.§ g§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§ g§[_loc2_ + 2] * _loc3_;
         return §!,§.§5!?§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §-d§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§@!Y§)
         {
            this.§]!G§(param1,this.§<X§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §@!e§ + 3;
            this.§ g§[_loc3_] = param2;
         }
      }
      
      public function §;X§(param1:int) : Number
      {
         var _loc2_:int = param1 * §@!e§ + 3;
         return this.§ g§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §4d§;
         this.§,!W§.position = _loc4_ * § !D§;
         this.§,!W§.writeFloat(param2);
         this.§,!W§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §4d§;
         this.§,!W§.position = _loc3_ * § !D§;
         param2.x = this.§,!W§.readFloat();
         param2.y = this.§,!W§.readFloat();
      }
      
      public function §`g§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §!<§;
         var _loc6_:* = _loc5_++;
         this.§+!=§[_loc6_] += param2;
         var _loc7_:* = _loc5_++;
         this.§+!=§[_loc7_] += param3;
         this.§+!=§[_loc5_] += param4;
      }
      
      public function §1!Q§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §!<§;
         this.§&i§[0] = this.§+!=§[_loc3_];
         this.§&i§[1] = this.§+!=§[_loc3_ + 1];
         this.§&i§[2] = this.§+!=§[_loc3_ + 2];
         param2.transformVectors(this.§&i§,this.§&i§);
         this.§+!=§[_loc3_] = this.§&i§[0];
         this.§+!=§[_loc3_ + 1] = this.§&i§[1];
         this.§+!=§[_loc3_ + 2] = this.§&i§[2];
      }
      
      public function §-![§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§@!Y§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §!,§.§0,§(param1) * _loc3_;
         var _loc5_:Number = §!,§.§-[§(param1) * _loc3_;
         var _loc6_:Number = §!,§.§4A§(param1) * _loc3_;
         this.§-6§(0,this.§;!-§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §1%§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §@!e§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:* = _loc7_++;
            this.§ g§[_loc9_] = param3;
            var _loc10_:* = _loc7_++;
            this.§ g§[_loc10_] = param4;
            var _loc11_:* = _loc7_++;
            this.§ g§[_loc11_] = param5;
            var _loc12_:* = _loc7_++;
            this.§ g§[_loc12_] = param6;
            _loc8_++;
         }
      }
      
      public function §7!I§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §@!e§;
         if(this.§@!Y§)
         {
            _loc4_ = this.§ g§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§ g§[_loc3_] *= _loc4_;
            this.§ g§[_loc3_ + 1] *= _loc4_;
            this.§ g§[_loc3_ + 2] *= _loc4_;
            this.§ g§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§ g§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§@!Y§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§;!-§ * §@!e§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§;X§(0);
               _loc6_ = !!this.§@!Y§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§%!a§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§@!Y§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§@!Y§;
      }
      
      public function get § !Z§() : int
      {
         return this.§;!-§;
      }
      
      public function set § !Z§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §4d§ * § !D§ - this.§,!W§.length;
         _loc4_ = this.§,!W§.length;
         this.§,!W§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§,!W§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / § !D§)
            {
               this.§,!W§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§ g§.fixed = false;
         _loc2_ = param1 * §@!e§ - this.§ g§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§ g§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§ g§.pop();
            _loc3_++;
         }
         this.§ g§.fixed = true;
         this.§+!=§.fixed = false;
         _loc2_ = param1 * §!<§ - this.§+!=§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§+!=§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§+!=§.pop();
            _loc3_++;
         }
         this.§+!=§.fixed = true;
         this.§;!-§ = param1;
      }
      
      public function get §%!T§() : ByteArray
      {
         this.§,!W§.position = 0;
         return this.§,!W§;
      }
      
      public function get §]y§() : Vector.<Number>
      {
         return this.§ g§;
      }
      
      public function get §&c§() : Vector.<Number>
      {
         return this.§+!=§;
      }
   }
}
