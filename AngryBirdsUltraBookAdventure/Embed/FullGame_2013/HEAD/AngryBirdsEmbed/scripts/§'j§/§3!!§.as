package §'j§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §3!!§
   {
      
      public static const §<z§:int = 4;
      
      public static const §4!9§:int = 2;
      
      public static const §!B§:int = 3;
      
      public static const §!!A§:int = 4;
      
      public static const §"K§:int = 0;
      
      public static const §17§:int = 0;
      
      public static const §#_§:int = 0;
       
      
      private var §<A§:ByteArray;
      
      private var § p§:Vector.<Number>;
      
      private var §9'§:Vector.<Number>;
      
      private var §7R§:Boolean;
      
      private var §!5§:int;
      
      private var §+o§:Vector.<Number>;
      
      public function §3!!§(param1:int, param2:Boolean = false)
      {
         this.§+o§ = new Vector.<Number>(12,true);
         super();
         this.§<A§ = new ByteArray();
         this.§<A§.endian = Endian.LITTLE_ENDIAN;
         this.§<A§.length = param1 * §4!9§ * §!!A§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §4!9§)
         {
            this.§<A§.writeFloat(0);
            _loc3_++;
         }
         this.§ p§ = new Vector.<Number>(param1 * §<z§,true);
         this.§9'§ = new Vector.<Number>(param1 * §!B§,true);
         this.§7R§ = param2;
         this.§!5§ = param1;
      }
      
      public function clone() : §3!!§
      {
         var _loc1_:§3!!§ = new §3!!§(0,this.§7R§);
         _loc1_.§<A§.length = this.§<A§.length;
         _loc1_.§<A§.writeBytes(this.§<A§);
         _loc1_.§ p§ = this.§ p§.concat();
         _loc1_.§ p§.fixed = true;
         _loc1_.§9'§ = this.§9'§.concat();
         _loc1_.§9'§.fixed = true;
         _loc1_.§!5§ = this.§!5§;
         return _loc1_;
      }
      
      public function copyTo(param1:§3!!§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§9'§;
         _loc6_ = this.§!5§ * §!B§;
         _loc7_ = param2 * §!B§;
         if(param5)
         {
            param5.transformVectors(this.§9'§,this.§+o§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§+o§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§9'§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§<A§;
         _loc6_ = this.§!5§ * §4!9§ * §!!A§;
         _loc7_ = param2 * §4!9§ * §!!A§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§<A§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§ p§;
            _loc6_ = this.§!5§ * §<z§;
            _loc7_ = param2 * §<z§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§ p§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§!5§)
               {
                  if(this.§7R§)
                  {
                     _loc13_ = this.§ p§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§ p§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§ p§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§ p§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§ p§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§ p§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§ p§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§3!!§) : void
      {
         var _loc2_:int = this.§<A§.length;
         this.§<A§.length += param1.§<A§.length;
         this.§<A§.position = _loc2_;
         this.§<A§.writeBytes(param1.§<A§);
         this.§ p§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§ p§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§ p§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§ p§.fixed = true;
         this.§9'§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§9'§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§9'§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§9'§.fixed = true;
         this.§!5§ += param1.§`!6§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §!B§;
         var _loc6_:*;
         this.§9'§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§9'§[_loc7_ = _loc5_++] = param3;
         this.§9'§[_loc5_] = param4;
      }
      
      public function §=!3§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §!B§;
         var _loc5_:*;
         this.§9'§[_loc5_ = _loc4_++] = param2;
         this.§9'§[_loc4_] = param3;
      }
      
      public function §#!6§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §!B§;
         param2.x = this.§9'§[_loc3_++];
         param2.y = this.§9'§[_loc3_++];
         param2.z = this.§9'§[_loc3_];
      }
      
      public function §[V§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§7R§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §]Z§.§3e§(param2) * _loc4_;
         var _loc6_:Number = §]Z§.§7Z§(param2) * _loc4_;
         var _loc7_:Number = §]Z§.§?P§(param2) * _loc4_;
         this.§6j§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §6j§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §<z§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§ p§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§ p§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§ p§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§ p§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §!I§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §<z§;
         var _loc4_:*;
         this.§ p§[_loc4_ = _loc3_++] = this.§ p§[_loc4_] * param2;
         var _loc5_:*;
         this.§ p§[_loc5_ = _loc3_++] = this.§ p§[_loc5_] * param2;
         var _loc6_:*;
         this.§ p§[_loc6_ = _loc3_++] = this.§ p§[_loc6_] * param2;
         this.§ p§[_loc3_] *= param2;
      }
      
      public function §+!#§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §<z§;
         var _loc3_:Number = !!this.§7R§ ? Number(this.§ p§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§ p§[_loc2_] * _loc3_;
         _loc5_ = this.§ p§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§ p§[_loc2_ + 2] * _loc3_;
         return §]Z§.§[i§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §0z§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§7R§)
         {
            this.§[V§(param1,this.§+!#§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §<z§ + 3;
            this.§ p§[_loc3_] = param2;
         }
      }
      
      public function §7Q§(param1:int) : Number
      {
         var _loc2_:int = param1 * §<z§ + 3;
         return this.§ p§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §4!9§;
         this.§<A§.position = _loc4_ * §!!A§;
         this.§<A§.writeFloat(param2);
         this.§<A§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §4!9§;
         this.§<A§.position = _loc3_ * §!!A§;
         param2.x = this.§<A§.readFloat();
         param2.y = this.§<A§.readFloat();
      }
      
      public function §[w§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §!B§;
         var _loc6_:*;
         this.§9'§[_loc6_ = _loc5_++] = this.§9'§[_loc6_] + param2;
         var _loc7_:*;
         this.§9'§[_loc7_ = _loc5_++] = this.§9'§[_loc7_] + param3;
         this.§9'§[_loc5_] += param4;
      }
      
      public function §21§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §!B§;
         this.§+o§[0] = this.§9'§[_loc3_];
         this.§+o§[1] = this.§9'§[_loc3_ + 1];
         this.§+o§[2] = this.§9'§[_loc3_ + 2];
         param2.transformVectors(this.§+o§,this.§+o§);
         this.§9'§[_loc3_] = this.§+o§[0];
         this.§9'§[_loc3_ + 1] = this.§+o§[1];
         this.§9'§[_loc3_ + 2] = this.§+o§[2];
      }
      
      public function §^$§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§7R§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §]Z§.§3e§(param1) * _loc3_;
         var _loc5_:Number = §]Z§.§7Z§(param1) * _loc3_;
         var _loc6_:Number = §]Z§.§?P§(param1) * _loc3_;
         this.§6j§(0,this.§!5§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §-!1§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §<z§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§ p§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§ p§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§ p§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§ p§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §^!"§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §<z§;
         if(this.§7R§)
         {
            _loc4_ = this.§ p§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§ p§[_loc3_] *= _loc4_;
            this.§ p§[_loc3_ + 1] *= _loc4_;
            this.§ p§[_loc3_ + 2] *= _loc4_;
            this.§ p§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§ p§[_loc3_ + 3] *= param2;
         }
      }
      
      public function §5!3§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§7R§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§!5§ * §<z§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§7Q§(0);
               _loc6_ = !!this.§7R§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§!I§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§7R§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§7R§;
      }
      
      public function get §`!6§() : int
      {
         return this.§!5§;
      }
      
      public function set §`!6§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §4!9§ * §!!A§ - this.§<A§.length;
         _loc4_ = this.§<A§.length;
         this.§<A§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§<A§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §!!A§)
            {
               this.§<A§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§ p§.fixed = false;
         _loc2_ = param1 * §<z§ - this.§ p§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§ p§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§ p§.pop();
            _loc3_++;
         }
         this.§ p§.fixed = true;
         this.§9'§.fixed = false;
         _loc2_ = param1 * §!B§ - this.§9'§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§9'§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§9'§.pop();
            _loc3_++;
         }
         this.§9'§.fixed = true;
         this.§!5§ = param1;
      }
      
      public function get §]o§() : ByteArray
      {
         this.§<A§.position = 0;
         return this.§<A§;
      }
      
      public function get §-e§() : Vector.<Number>
      {
         return this.§ p§;
      }
      
      public function get §#y§() : Vector.<Number>
      {
         return this.§9'§;
      }
   }
}
