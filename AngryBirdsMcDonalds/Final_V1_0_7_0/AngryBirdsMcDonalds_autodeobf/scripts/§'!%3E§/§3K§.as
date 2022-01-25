package §'!>§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §3K§
   {
      
      public static const § null§:int = 4;
      
      public static const §#Q§:int = 2;
      
      public static const §+p§:int = 3;
      
      public static const §+!2§:int = 4;
      
      public static const §[@§:int = 0;
      
      public static const §@!J§:int = 0;
      
      public static const §]!O§:int = 0;
       
      
      private var §&§:ByteArray;
      
      private var §&Q§:Vector.<Number>;
      
      private var §'f§:Vector.<Number>;
      
      private var §+d§:Boolean;
      
      private var §`d§:int;
      
      private var §'"§:Vector.<Number>;
      
      public function §3K§(param1:int, param2:Boolean = false)
      {
         this.§'"§ = new Vector.<Number>(12,true);
         super();
         this.§&§ = new ByteArray();
         this.§&§.endian = Endian.LITTLE_ENDIAN;
         this.§&§.length = param1 * §#Q§ * §+!2§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §#Q§)
         {
            this.§&§.writeFloat(0);
            _loc3_++;
         }
         this.§&Q§ = new Vector.<Number>(param1 * § null§,true);
         this.§'f§ = new Vector.<Number>(param1 * §+p§,true);
         this.§+d§ = param2;
         this.§`d§ = param1;
      }
      
      public function clone() : §3K§
      {
         var _loc1_:§3K§ = new §3K§(0,this.§+d§);
         _loc1_.§&§.length = this.§&§.length;
         _loc1_.§&§.writeBytes(this.§&§);
         _loc1_.§&Q§ = this.§&Q§.concat();
         _loc1_.§&Q§.fixed = true;
         _loc1_.§'f§ = this.§'f§.concat();
         _loc1_.§'f§.fixed = true;
         _loc1_.§`d§ = this.§`d§;
         return _loc1_;
      }
      
      public function copyTo(param1:§3K§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§'f§;
         _loc6_ = this.§`d§ * §+p§;
         _loc7_ = param2 * §+p§;
         if(param5)
         {
            param5.transformVectors(this.§'f§,this.§'"§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§'"§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§'f§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§&§;
         _loc6_ = this.§`d§ * §#Q§ * §+!2§;
         _loc7_ = param2 * §#Q§ * §+!2§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§&§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§&Q§;
            _loc6_ = this.§`d§ * § null§;
            _loc7_ = param2 * § null§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§&Q§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§`d§)
               {
                  if(this.§+d§)
                  {
                     _loc13_ = this.§&Q§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§&Q§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§&Q§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§&Q§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§&Q§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§&Q§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§&Q§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§3K§) : void
      {
         var _loc2_:int = this.§&§.length;
         this.§&§.length += param1.§&§.length;
         this.§&§.position = _loc2_;
         this.§&§.writeBytes(param1.§&§);
         this.§&Q§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§&Q§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§&Q§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§&Q§.fixed = true;
         this.§'f§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§'f§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§'f§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§'f§.fixed = true;
         this.§`d§ += param1.§1q§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §+p§;
         var _loc6_:*;
         this.§'f§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§'f§[_loc7_ = _loc5_++] = param3;
         this.§'f§[_loc5_] = param4;
      }
      
      public function §"!j§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §+p§;
         var _loc5_:*;
         this.§'f§[_loc5_ = _loc4_++] = param2;
         this.§'f§[_loc4_] = param3;
      }
      
      public function §&!%§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §+p§;
         param2.x = this.§'f§[_loc3_++];
         param2.y = this.§'f§[_loc3_++];
         param2.z = this.§'f§[_loc3_];
      }
      
      public function §;q§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§+d§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §?!o§.§;!=§(param2) * _loc4_;
         var _loc6_:Number = §?!o§.§]`§(param2) * _loc4_;
         var _loc7_:Number = §?!o§.§3!=§(param2) * _loc4_;
         this.§<!4§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §<!4§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * § null§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§&Q§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§&Q§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§&Q§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§&Q§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §0_§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * § null§;
         var _loc4_:*;
         this.§&Q§[_loc4_ = _loc3_++] = this.§&Q§[_loc4_] * param2;
         var _loc5_:*;
         this.§&Q§[_loc5_ = _loc3_++] = this.§&Q§[_loc5_] * param2;
         var _loc6_:*;
         this.§&Q§[_loc6_ = _loc3_++] = this.§&Q§[_loc6_] * param2;
         this.§&Q§[_loc3_] *= param2;
      }
      
      public function static(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * § null§;
         var _loc3_:Number = !!this.§+d§ ? Number(this.§&Q§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§&Q§[_loc2_] * _loc3_;
         _loc5_ = this.§&Q§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§&Q§[_loc2_ + 2] * _loc3_;
         return §?!o§.§;l§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §'x§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§+d§)
         {
            this.§;q§(param1,this.static(param1),param2);
         }
         else
         {
            _loc3_ = param1 * § null§ + 3;
            this.§&Q§[_loc3_] = param2;
         }
      }
      
      public function §5!;§(param1:int) : Number
      {
         var _loc2_:int = param1 * § null§ + 3;
         return this.§&Q§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §#Q§;
         this.§&§.position = _loc4_ * §+!2§;
         this.§&§.writeFloat(param2);
         this.§&§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §#Q§;
         this.§&§.position = _loc3_ * §+!2§;
         param2.x = this.§&§.readFloat();
         param2.y = this.§&§.readFloat();
      }
      
      public function §0!!§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §+p§;
         var _loc6_:*;
         this.§'f§[_loc6_ = _loc5_++] = this.§'f§[_loc6_] + param2;
         var _loc7_:*;
         this.§'f§[_loc7_ = _loc5_++] = this.§'f§[_loc7_] + param3;
         this.§'f§[_loc5_] += param4;
      }
      
      public function §,z§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §+p§;
         this.§'"§[0] = this.§'f§[_loc3_];
         this.§'"§[1] = this.§'f§[_loc3_ + 1];
         this.§'"§[2] = this.§'f§[_loc3_ + 2];
         param2.transformVectors(this.§'"§,this.§'"§);
         this.§'f§[_loc3_] = this.§'"§[0];
         this.§'f§[_loc3_ + 1] = this.§'"§[1];
         this.§'f§[_loc3_ + 2] = this.§'"§[2];
      }
      
      public function §%!+§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§+d§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §?!o§.§;!=§(param1) * _loc3_;
         var _loc5_:Number = §?!o§.§]`§(param1) * _loc3_;
         var _loc6_:Number = §?!o§.§3!=§(param1) * _loc3_;
         this.§<!4§(0,this.§`d§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §[9§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * § null§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§&Q§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§&Q§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§&Q§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§&Q§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §#!U§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * § null§;
         if(this.§+d§)
         {
            _loc4_ = this.§&Q§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§&Q§[_loc3_] *= _loc4_;
            this.§&Q§[_loc3_ + 1] *= _loc4_;
            this.§&Q§[_loc3_ + 2] *= _loc4_;
            this.§&Q§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§&Q§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §#!;§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§+d§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§`d§ * § null§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§5!;§(0);
               _loc6_ = !!this.§+d§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§0_§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§+d§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§+d§;
      }
      
      public function get §1q§() : int
      {
         return this.§`d§;
      }
      
      public function set §1q§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §#Q§ * §+!2§ - this.§&§.length;
         _loc4_ = this.§&§.length;
         this.§&§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§&§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §+!2§)
            {
               this.§&§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§&Q§.fixed = false;
         _loc2_ = param1 * § null§ - this.§&Q§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§&Q§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§&Q§.pop();
            _loc3_++;
         }
         this.§&Q§.fixed = true;
         this.§'f§.fixed = false;
         _loc2_ = param1 * §+p§ - this.§'f§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§'f§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§'f§.pop();
            _loc3_++;
         }
         this.§'f§.fixed = true;
         this.§`d§ = param1;
      }
      
      public function get §5J§() : ByteArray
      {
         this.§&§.position = 0;
         return this.§&§;
      }
      
      public function get §%!"§() : Vector.<Number>
      {
         return this.§&Q§;
      }
      
      public function get §8I§() : Vector.<Number>
      {
         return this.§'f§;
      }
   }
}
