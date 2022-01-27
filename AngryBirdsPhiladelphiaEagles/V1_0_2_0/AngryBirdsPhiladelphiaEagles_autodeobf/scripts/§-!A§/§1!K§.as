package §-!A§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §1!K§
   {
      
      public static const §&!1§:int = 4;
      
      public static const §&!&§:int = 2;
      
      public static const §>!9§:int = 3;
      
      public static const §!?§:int = 4;
      
      public static const §6!3§:int = 0;
      
      public static const § U§:int = 0;
      
      public static const § <§:int = 0;
       
      
      private var §<!5§:ByteArray;
      
      private var §7P§:Vector.<Number>;
      
      private var §%!A§:Vector.<Number>;
      
      private var §77§:Boolean;
      
      private var §>!,§:int;
      
      private var override:Vector.<Number>;
      
      public function §1!K§(param1:int, param2:Boolean = false)
      {
         this.override = new Vector.<Number>(12,true);
         super();
         this.§<!5§ = new ByteArray();
         this.§<!5§.endian = Endian.LITTLE_ENDIAN;
         this.§<!5§.length = param1 * §&!&§ * §!?§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §&!&§)
         {
            this.§<!5§.writeFloat(0);
            _loc3_++;
         }
         this.§7P§ = new Vector.<Number>(param1 * §&!1§,true);
         this.§%!A§ = new Vector.<Number>(param1 * §>!9§,true);
         this.§77§ = param2;
         this.§>!,§ = param1;
      }
      
      public function clone() : §1!K§
      {
         var _loc1_:§1!K§ = new §1!K§(0,this.§77§);
         _loc1_.§<!5§.length = this.§<!5§.length;
         _loc1_.§<!5§.writeBytes(this.§<!5§);
         _loc1_.§7P§ = this.§7P§.concat();
         _loc1_.§7P§.fixed = true;
         _loc1_.§%!A§ = this.§%!A§.concat();
         _loc1_.§%!A§.fixed = true;
         _loc1_.§>!,§ = this.§>!,§;
         return _loc1_;
      }
      
      public function copyTo(param1:§1!K§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§%!A§;
         _loc6_ = this.§>!,§ * §>!9§;
         _loc7_ = param2 * §>!9§;
         if(param5)
         {
            param5.transformVectors(this.§%!A§,this.override);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.override[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§%!A§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§<!5§;
         _loc6_ = this.§>!,§ * §&!&§ * §!?§;
         _loc7_ = param2 * §&!&§ * §!?§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§<!5§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§7P§;
            _loc6_ = this.§>!,§ * §&!1§;
            _loc7_ = param2 * §&!1§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§7P§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§>!,§)
               {
                  if(this.§77§)
                  {
                     _loc13_ = this.§7P§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§7P§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§7P§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§7P§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§7P§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§7P§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§7P§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§1!K§) : void
      {
         var _loc2_:int = this.§<!5§.length;
         this.§<!5§.length += param1.§<!5§.length;
         this.§<!5§.position = _loc2_;
         this.§<!5§.writeBytes(param1.§<!5§);
         this.§7P§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§7P§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§7P§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§7P§.fixed = true;
         this.§%!A§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§%!A§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§%!A§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§%!A§.fixed = true;
         this.§>!,§ += param1.§2r§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §>!9§;
         var _loc6_:*;
         this.§%!A§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§%!A§[_loc7_ = _loc5_++] = param3;
         this.§%!A§[_loc5_] = param4;
      }
      
      public function §9[§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §>!9§;
         var _loc5_:*;
         this.§%!A§[_loc5_ = _loc4_++] = param2;
         this.§%!A§[_loc4_] = param3;
      }
      
      public function §?-§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §>!9§;
         param2.x = this.§%!A§[_loc3_++];
         param2.y = this.§%!A§[_loc3_++];
         param2.z = this.§%!A§[_loc3_];
      }
      
      public function §13§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§77§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §6!<§.§4>§(param2) * _loc4_;
         var _loc6_:Number = §6!<§.§[o§(param2) * _loc4_;
         var _loc7_:Number = §6!<§.§'A§(param2) * _loc4_;
         this.§]'§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §]'§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §&!1§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§7P§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§7P§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§7P§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§7P§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §1&§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §&!1§;
         var _loc4_:*;
         this.§7P§[_loc4_ = _loc3_++] = this.§7P§[_loc4_] * param2;
         var _loc5_:*;
         this.§7P§[_loc5_ = _loc3_++] = this.§7P§[_loc5_] * param2;
         var _loc6_:*;
         this.§7P§[_loc6_ = _loc3_++] = this.§7P§[_loc6_] * param2;
         this.§7P§[_loc3_] *= param2;
      }
      
      public function §8!K§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §&!1§;
         var _loc3_:Number = !!this.§77§ ? Number(this.§7P§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§7P§[_loc2_] * _loc3_;
         _loc5_ = this.§7P§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§7P§[_loc2_ + 2] * _loc3_;
         return §6!<§.§0E§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §'G§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§77§)
         {
            this.§13§(param1,this.§8!K§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §&!1§ + 3;
            this.§7P§[_loc3_] = param2;
         }
      }
      
      public function §,j§(param1:int) : Number
      {
         var _loc2_:int = param1 * §&!1§ + 3;
         return this.§7P§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §&!&§;
         this.§<!5§.position = _loc4_ * §!?§;
         this.§<!5§.writeFloat(param2);
         this.§<!5§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §&!&§;
         this.§<!5§.position = _loc3_ * §!?§;
         param2.x = this.§<!5§.readFloat();
         param2.y = this.§<!5§.readFloat();
      }
      
      public function §!#§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §>!9§;
         var _loc6_:*;
         this.§%!A§[_loc6_ = _loc5_++] = this.§%!A§[_loc6_] + param2;
         var _loc7_:*;
         this.§%!A§[_loc7_ = _loc5_++] = this.§%!A§[_loc7_] + param3;
         this.§%!A§[_loc5_] += param4;
      }
      
      public function §`T§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §>!9§;
         this.override[0] = this.§%!A§[_loc3_];
         this.override[1] = this.§%!A§[_loc3_ + 1];
         this.override[2] = this.§%!A§[_loc3_ + 2];
         param2.transformVectors(this.override,this.override);
         this.§%!A§[_loc3_] = this.override[0];
         this.§%!A§[_loc3_ + 1] = this.override[1];
         this.§%!A§[_loc3_ + 2] = this.override[2];
      }
      
      public function §7e§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§77§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §6!<§.§4>§(param1) * _loc3_;
         var _loc5_:Number = §6!<§.§[o§(param1) * _loc3_;
         var _loc6_:Number = §6!<§.§'A§(param1) * _loc3_;
         this.§]'§(0,this.§>!,§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §07§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §&!1§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§7P§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§7P§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§7P§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§7P§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §4<§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §&!1§;
         if(this.§77§)
         {
            _loc4_ = this.§7P§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§7P§[_loc3_] *= _loc4_;
            this.§7P§[_loc3_ + 1] *= _loc4_;
            this.§7P§[_loc3_ + 2] *= _loc4_;
            this.§7P§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§7P§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§77§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§>!,§ * §&!1§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§,j§(0);
               _loc6_ = !!this.§77§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§1&§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§77§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§77§;
      }
      
      public function get §2r§() : int
      {
         return this.§>!,§;
      }
      
      public function set §2r§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §&!&§ * §!?§ - this.§<!5§.length;
         _loc4_ = this.§<!5§.length;
         this.§<!5§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§<!5§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §!?§)
            {
               this.§<!5§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§7P§.fixed = false;
         _loc2_ = param1 * §&!1§ - this.§7P§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§7P§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§7P§.pop();
            _loc3_++;
         }
         this.§7P§.fixed = true;
         this.§%!A§.fixed = false;
         _loc2_ = param1 * §>!9§ - this.§%!A§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§%!A§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§%!A§.pop();
            _loc3_++;
         }
         this.§%!A§.fixed = true;
         this.§>!,§ = param1;
      }
      
      public function get §7!9§() : ByteArray
      {
         this.§<!5§.position = 0;
         return this.§<!5§;
      }
      
      public function get §4!#§() : Vector.<Number>
      {
         return this.§7P§;
      }
      
      public function get §>!6§() : Vector.<Number>
      {
         return this.§%!A§;
      }
   }
}
