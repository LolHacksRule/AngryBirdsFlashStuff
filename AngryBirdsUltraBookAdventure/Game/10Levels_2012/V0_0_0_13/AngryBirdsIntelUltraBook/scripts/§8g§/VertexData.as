package §8g§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class VertexData
   {
      
      public static const §`!-§:int = 4;
      
      public static const §1!§:int = 2;
      
      public static const §9;§:int = 3;
      
      public static const §6S§:int = 4;
      
      public static const §=!c§:int = 0;
      
      public static const §0J§:int = 0;
      
      public static const § N§:int = 0;
       
      
      private var §<!U§:ByteArray;
      
      private var §&p§:Vector.<Number>;
      
      private var §"`§:Vector.<Number>;
      
      private var §1y§:Boolean;
      
      private var §^^§:int;
      
      private var §%!;§:Vector.<Number>;
      
      public function VertexData(param1:int, param2:Boolean = false)
      {
         this.§%!;§ = new Vector.<Number>(12,true);
         super();
         this.§<!U§ = new ByteArray();
         this.§<!U§.endian = Endian.LITTLE_ENDIAN;
         this.§<!U§.length = param1 * §1!§ * §6S§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §1!§)
         {
            this.§<!U§.writeFloat(0);
            _loc3_++;
         }
         this.§&p§ = new Vector.<Number>(param1 * §`!-§,true);
         this.§"`§ = new Vector.<Number>(param1 * §9;§,true);
         this.§1y§ = param2;
         this.§^^§ = param1;
      }
      
      public function clone() : VertexData
      {
         var _loc1_:VertexData = new VertexData(0,this.§1y§);
         _loc1_.§<!U§.length = this.§<!U§.length;
         _loc1_.§<!U§.writeBytes(this.§<!U§);
         _loc1_.§&p§ = this.§&p§.concat();
         _loc1_.§&p§.fixed = true;
         _loc1_.§"`§ = this.§"`§.concat();
         _loc1_.§"`§.fixed = true;
         _loc1_.§^^§ = this.§^^§;
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
         var _loc9_:Vector.<Number> = param1.§"`§;
         _loc6_ = this.§^^§ * §9;§;
         _loc7_ = param2 * §9;§;
         if(param5)
         {
            param5.transformVectors(this.§"`§,this.§%!;§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:* = _loc7_++;
               _loc9_[_loc14_] = this.§%!;§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc14_ = _loc7_++;
               _loc9_[_loc14_] = this.§"`§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§<!U§;
         _loc6_ = this.§^^§ * §1!§ * §6S§;
         _loc7_ = param2 * §1!§ * §6S§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§<!U§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§&p§;
            _loc6_ = this.§^^§ * §`!-§;
            _loc7_ = param2 * §`!-§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc14_ = _loc7_++;
                  _loc11_[_loc14_] = this.§&p§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§^^§)
               {
                  if(this.§1y§)
                  {
                     _loc13_ = this.§&p§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc14_ = _loc7_++;
                     _loc11_[_loc14_] = this.§&p§[_loc12_++] * _loc13_;
                     var _loc15_:* = _loc7_++;
                     _loc11_[_loc15_] = this.§&p§[_loc12_++] * _loc13_;
                     var _loc16_:* = _loc7_++;
                     _loc11_[_loc16_] = this.§&p§[_loc12_++] * _loc13_;
                     var _loc17_:* = _loc7_++;
                     _loc11_[_loc17_] = param3;
                  }
                  else
                  {
                     _loc14_ = _loc7_++;
                     _loc11_[_loc14_] = this.§&p§[_loc12_++];
                     _loc15_ = _loc7_++;
                     _loc11_[_loc15_] = this.§&p§[_loc12_++];
                     _loc16_ = _loc7_++;
                     _loc11_[_loc16_] = this.§&p§[_loc12_++];
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
         var _loc2_:int = this.§<!U§.length;
         this.§<!U§.length += param1.§<!U§.length;
         this.§<!U§.position = _loc2_;
         this.§<!U§.writeBytes(param1.§<!U§);
         this.§&p§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§&p§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§&p§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§&p§.fixed = true;
         this.§"`§.fixed = false;
         var _loc6_:Vector.<Number> = param1.§"`§;
         var _loc7_:int = _loc6_.length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§"`§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§"`§.fixed = true;
         this.§^^§ += param1.§>!B§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §9;§;
         var _loc6_:* = _loc5_++;
         this.§"`§[_loc6_] = param2;
         var _loc7_:* = _loc5_++;
         this.§"`§[_loc7_] = param3;
         this.§"`§[_loc5_] = param4;
      }
      
      public function §<a§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §9;§;
         var _loc5_:* = _loc4_++;
         this.§"`§[_loc5_] = param2;
         this.§"`§[_loc4_] = param3;
      }
      
      public function §?!#§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §9;§;
         param2.x = this.§"`§[_loc3_++];
         param2.y = this.§"`§[_loc3_++];
         param2.z = this.§"`§[_loc3_];
      }
      
      public function §-!Z§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = !!this.§1y§ ? Number(param3) : Number(1);
         _loc4_ /= 255;
         var _loc5_:Number = §2!E§.§6,§(param2) * _loc4_;
         var _loc6_:Number = §2!E§.§3i§(param2) * _loc4_;
         var _loc7_:Number = §2!E§.§7!@§(param2) * _loc4_;
         this.§-c§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §-c§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §`!-§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:* = _loc7_++;
            this.§&p§[_loc9_] = param3;
            var _loc10_:* = _loc7_++;
            this.§&p§[_loc10_] = param4;
            var _loc11_:* = _loc7_++;
            this.§&p§[_loc11_] = param5;
            var _loc12_:* = _loc7_++;
            this.§&p§[_loc12_] = param6;
            _loc8_--;
         }
      }
      
      private function §4G§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §`!-§;
         var _loc4_:* = _loc3_++;
         this.§&p§[_loc4_] *= param2;
         var _loc5_:* = _loc3_++;
         this.§&p§[_loc5_] *= param2;
         var _loc6_:* = _loc3_++;
         this.§&p§[_loc6_] *= param2;
         this.§&p§[_loc3_] *= param2;
      }
      
      public function §3<§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §`!-§;
         var _loc3_:Number = !!this.§1y§ ? Number(this.§&p§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§&p§[_loc2_] * _loc3_;
         _loc5_ = this.§&p§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§&p§[_loc2_ + 2] * _loc3_;
         return §2!E§.§@C§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §2X§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§1y§)
         {
            this.§-!Z§(param1,this.§3<§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §`!-§ + 3;
            this.§&p§[_loc3_] = param2;
         }
      }
      
      public function §9Z§(param1:int) : Number
      {
         var _loc2_:int = param1 * §`!-§ + 3;
         return this.§&p§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §1!§;
         this.§<!U§.position = _loc4_ * §6S§;
         this.§<!U§.writeFloat(param2);
         this.§<!U§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §1!§;
         this.§<!U§.position = _loc3_ * §6S§;
         param2.x = this.§<!U§.readFloat();
         param2.y = this.§<!U§.readFloat();
      }
      
      public function §5!$§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §9;§;
         var _loc6_:* = _loc5_++;
         this.§"`§[_loc6_] += param2;
         var _loc7_:* = _loc5_++;
         this.§"`§[_loc7_] += param3;
         this.§"`§[_loc5_] += param4;
      }
      
      public function §`!O§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §9;§;
         this.§%!;§[0] = this.§"`§[_loc3_];
         this.§%!;§[1] = this.§"`§[_loc3_ + 1];
         this.§%!;§[2] = this.§"`§[_loc3_ + 2];
         param2.transformVectors(this.§%!;§,this.§%!;§);
         this.§"`§[_loc3_] = this.§%!;§[0];
         this.§"`§[_loc3_ + 1] = this.§%!;§[1];
         this.§"`§[_loc3_ + 2] = this.§%!;§[2];
      }
      
      public function §2!]§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§1y§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §2!E§.§6,§(param1) * _loc3_;
         var _loc5_:Number = §2!E§.§3i§(param1) * _loc3_;
         var _loc6_:Number = §2!E§.§7!@§(param1) * _loc3_;
         this.§-c§(0,this.§^^§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §if§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §`!-§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:* = _loc7_++;
            this.§&p§[_loc9_] = param3;
            var _loc10_:* = _loc7_++;
            this.§&p§[_loc10_] = param4;
            var _loc11_:* = _loc7_++;
            this.§&p§[_loc11_] = param5;
            var _loc12_:* = _loc7_++;
            this.§&p§[_loc12_] = param6;
            _loc8_++;
         }
      }
      
      public function §2J§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §`!-§;
         if(this.§1y§)
         {
            _loc4_ = this.§&p§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§&p§[_loc3_] *= _loc4_;
            this.§&p§[_loc3_ + 1] *= _loc4_;
            this.§&p§[_loc3_ + 2] *= _loc4_;
            this.§&p§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§&p§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§1y§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§^^§ * §`!-§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§9Z§(0);
               _loc6_ = !!this.§1y§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§4G§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§1y§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§1y§;
      }
      
      public function get §>!B§() : int
      {
         return this.§^^§;
      }
      
      public function set §>!B§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §1!§ * §6S§ - this.§<!U§.length;
         _loc4_ = this.§<!U§.length;
         this.§<!U§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§<!U§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §6S§)
            {
               this.§<!U§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§&p§.fixed = false;
         _loc2_ = param1 * §`!-§ - this.§&p§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§&p§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§&p§.pop();
            _loc3_++;
         }
         this.§&p§.fixed = true;
         this.§"`§.fixed = false;
         _loc2_ = param1 * §9;§ - this.§"`§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§"`§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§"`§.pop();
            _loc3_++;
         }
         this.§"`§.fixed = true;
         this.§^^§ = param1;
      }
      
      public function get §7k§() : ByteArray
      {
         this.§<!U§.position = 0;
         return this.§<!U§;
      }
      
      public function get §2!+§() : Vector.<Number>
      {
         return this.§&p§;
      }
      
      public function get §@#§() : Vector.<Number>
      {
         return this.§"`§;
      }
   }
}
