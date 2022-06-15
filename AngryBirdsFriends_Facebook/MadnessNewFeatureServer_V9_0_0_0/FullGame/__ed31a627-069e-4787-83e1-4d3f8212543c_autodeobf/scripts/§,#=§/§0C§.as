package §,#=§
{
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0C§
   {
      
      public static const §&#Y§:int = 2;
      
      public static const §1!C§:int = 4;
      
      public static const §<!2§:int = 2;
      
      private static var §5"Z§:Point = new Point();
       
      
      private var §9#H§:Vector.<Number>;
      
      private var §?#9§:Vector.<Number>;
      
      private var §9j§:Vector.<Number>;
      
      private var §9! §:Boolean;
      
      private var § #^§:int;
      
      public function §0C§(param1:int, param2:Boolean = false)
      {
         super();
         this.§9#H§ = new Vector.<Number>(0);
         this.§?#9§ = new Vector.<Number>(0);
         this.§9j§ = new Vector.<Number>(0);
         this.§9! § = param2;
         this.numVertices = param1;
      }
      
      public function clone(param1:int = 0, param2:int = -1) : §0C§
      {
         if(param2 < 0 || param1 + param2 > this.§ #^§)
         {
            param2 = this.§ #^§ - param1;
         }
         var _loc3_:§0C§ = new §0C§(0,this.§9! §);
         _loc3_.§ #^§ = param2;
         _loc3_.§9#H§ = this.§9#H§.slice(param1 * §&#Y§,param2 * §&#Y§);
         _loc3_.§?#9§ = this.§?#9§.slice(param1 * §1!C§,param2 * §1!C§);
         _loc3_.§9j§ = this.§9j§.slice(param1 * §<!2§,param2 * §<!2§);
         return _loc3_;
      }
      
      public function copyTo(param1:§0C§, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Matrix = null) : void
      {
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         if(param4 < 0 || param3 + param4 > this.§ #^§)
         {
            param4 = this.§ #^§ - param3;
         }
         var _loc9_:Vector.<Number> = param1.§9#H§;
         var _loc10_:int = param2 * §&#Y§;
         var _loc11_:int = param3 * §&#Y§;
         var _loc12_:int = param4 * §&#Y§;
         var _loc13_:int = 0;
         if(param5)
         {
            if(param8)
            {
               _loc14_ = Number(param8.a);
               _loc15_ = Number(param8.b);
               _loc16_ = Number(param8.c);
               _loc17_ = Number(param8.d);
               _loc18_ = Number(param8.tx);
               _loc19_ = Number(param8.ty);
               _loc13_ = _loc11_;
               while(_loc13_ < _loc12_)
               {
                  _loc20_ = this.§9#H§[int(_loc13_++)];
                  _loc21_ = this.§9#H§[int(_loc13_++)];
                  _loc9_[int(_loc10_++)] = _loc14_ * _loc20_ + _loc16_ * _loc21_ + _loc18_;
                  _loc9_[int(_loc10_++)] = _loc17_ * _loc21_ + _loc15_ * _loc20_ + _loc19_;
               }
            }
            else
            {
               _loc13_ = _loc11_;
               while(_loc13_ < _loc12_)
               {
                  _loc9_[int(_loc10_++)] = this.§9#H§[int(_loc13_++)];
                  _loc9_[int(_loc10_++)] = this.§9#H§[int(_loc13_++)];
               }
            }
         }
         if(param6)
         {
            _loc9_ = param1.§?#9§;
            _loc10_ = param2 * §1!C§;
            _loc11_ = param3 * §1!C§;
            _loc12_ = param4 * §1!C§;
            _loc13_ = _loc11_;
            while(_loc13_ < _loc12_)
            {
               _loc9_[int(_loc10_++)] = this.§?#9§[_loc13_];
               _loc13_++;
            }
         }
         if(param7)
         {
            _loc9_ = param1.§9j§;
            _loc10_ = param2 * §<!2§;
            _loc12_ = this.§ #^§ * §<!2§;
            _loc13_ = _loc11_ = param3 * §<!2§;
            while(_loc13_ < _loc12_)
            {
               _loc9_[int(_loc10_++)] = this.§9j§[_loc13_];
               _loc13_++;
            }
         }
      }
      
      public function §]"P§(param1:§0C§) : void
      {
         param1.copyTo(this,this.§ #^§,0,-1,true,true,true);
         this.§ #^§ += param1.numVertices;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §&#Y§;
         var _loc5_:*;
         this.§9#H§[_loc5_ = _loc4_++] = param2;
         this.§9#H§[_loc4_] = param3;
      }
      
      public function getPosition(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §&#Y§;
         param2.x = this.§9#H§[_loc3_++];
         param2.y = this.§9#H§[_loc3_];
      }
      
      public function §@<§(param1:int, param2:uint) : void
      {
         var _loc3_:int = param1 * §1!C§;
         var _loc4_:Number = !!this.§9! § ? Number(this.§?#9§[int(_loc3_ + 3)]) : Number(1);
         this.§?#9§[_loc3_] = (param2 >> 16 & 255) / 255 * _loc4_;
         this.§?#9§[int(_loc3_ + 1)] = (param2 >> 8 & 255) / 255 * _loc4_;
         this.§?#9§[int(_loc3_ + 2)] = (param2 & 255) / 255 * _loc4_;
      }
      
      public function §0"§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §1!C§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§?#9§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§?#9§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§?#9§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§?#9§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §?y§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §1!C§;
         var _loc3_:Number = !!this.§9! § ? Number(this.§?#9§[int(_loc2_ + 3)]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc4_ = this.§?#9§[_loc2_++] / _loc3_;
         _loc5_ = this.§?#9§[_loc2_++] / _loc3_;
         _loc6_ = this.§?#9§[_loc2_] / _loc3_;
         return int(_loc4_ * 255) << 16 | int(_loc5_ * 255) << 8 | int(_loc6_ * 255);
      }
      
      public function §;"<§(param1:int, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:int = param1 * §1!C§;
         if(this.§9! §)
         {
            if(param2 < 0.001)
            {
               param2 = 0.001;
            }
            _loc4_ = this.§#!W§(param1);
            if(param2 != _loc4_)
            {
               var _loc5_:*;
               this.§?#9§[_loc5_ = _loc3_++] = this.§?#9§[_loc5_] * (param2 / _loc4_);
               var _loc6_:*;
               this.§?#9§[_loc6_ = _loc3_++] = this.§?#9§[_loc6_] * (param2 / _loc4_);
               var _loc7_:*;
               this.§?#9§[_loc7_ = _loc3_++] = this.§?#9§[_loc7_] * (param2 / _loc4_);
               this.§?#9§[_loc3_] = param2;
            }
         }
         else
         {
            this.§?#9§[_loc3_ + 3] = param2;
         }
      }
      
      public function §#!W§(param1:int) : Number
      {
         var _loc2_:int = param1 * §1!C§ + 3;
         return this.§?#9§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §<!2§;
         var _loc5_:*;
         this.§9j§[_loc5_ = _loc4_++] = param2;
         this.§9j§[_loc4_] = param3;
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §<!2§;
         param2.x = this.§9j§[_loc3_++];
         param2.y = this.§9j§[_loc3_];
      }
      
      public function §"!O§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §&#Y§;
         var _loc5_:*;
         this.§9#H§[_loc5_ = _loc4_++] = this.§9#H§[_loc5_] + param2;
         this.§9#H§[_loc4_] += param3;
      }
      
      public function §=!N§(param1:uint) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§ #^§)
         {
            this.§@<§(_loc2_,param1);
            _loc2_++;
         }
      }
      
      public function §[h§(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§ #^§)
         {
            this.§;"<§(_loc2_,param1);
            _loc2_++;
         }
      }
      
      public function §<!B§(param1:int, param2:Number, param3:int = 1) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param2 == 1)
         {
            return;
         }
         if(param3 < 0 || param1 + param3 > this.§ #^§)
         {
            param3 = this.§ #^§ - param1;
         }
         if(this.§9! §)
         {
            _loc4_ = 0;
            while(_loc4_ < param3)
            {
               this.§;"<§(param1 + _loc4_,this.§#!W§(param1 + _loc4_) * param2);
               _loc4_++;
            }
         }
         else
         {
            _loc5_ = param1 * §1!C§ + 3;
            _loc4_ = 0;
            while(_loc4_ < param3)
            {
               this.§?#9§[int(_loc5_ + _loc4_ * §1!C§)] = this.§?#9§[int(_loc5_ + _loc4_ * §1!C§)] * param2;
               _loc4_++;
            }
         }
      }
      
      public function getBounds(param1:Matrix = null, param2:int = 0, param3:int = -1, param4:Rectangle = null) : Rectangle
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:int = 0;
         if(param4 == null)
         {
            param4 = new Rectangle();
         }
         if(param3 < 0 || param2 + param3 > this.§ #^§)
         {
            param3 = this.§ #^§ - param2;
         }
         var _loc5_:Number = Number.MAX_VALUE;
         var _loc6_:Number = -Number.MAX_VALUE;
         var _loc7_:Number = Number.MAX_VALUE;
         var _loc8_:Number = -Number.MAX_VALUE;
         var _loc9_:int = param2 * §&#Y§;
         if(param1 == null)
         {
            _loc12_ = param2;
            while(_loc12_ < param3)
            {
               _loc10_ = this.§9#H§[_loc9_];
               _loc11_ = this.§9#H§[int(_loc9_ + 1)];
               _loc9_ += §&#Y§;
               _loc5_ = _loc5_ < _loc10_ ? Number(_loc5_) : Number(_loc10_);
               _loc6_ = _loc6_ > _loc10_ ? Number(_loc6_) : Number(_loc10_);
               _loc7_ = _loc7_ < _loc11_ ? Number(_loc7_) : Number(_loc11_);
               _loc8_ = _loc8_ > _loc11_ ? Number(_loc8_) : Number(_loc11_);
               _loc12_++;
            }
         }
         else
         {
            _loc12_ = param2;
            while(_loc12_ < param3)
            {
               _loc10_ = this.§9#H§[_loc9_];
               _loc11_ = this.§9#H§[int(_loc9_ + 1)];
               _loc9_ += §&#Y§;
               §>V§.§2>§(param1,_loc10_,_loc11_,§5"Z§);
               _loc5_ = _loc5_ < §5"Z§.x ? Number(_loc5_) : Number(§5"Z§.x);
               _loc6_ = _loc6_ > §5"Z§.x ? Number(_loc6_) : Number(§5"Z§.x);
               _loc7_ = _loc7_ < §5"Z§.y ? Number(_loc7_) : Number(§5"Z§.y);
               _loc8_ = _loc8_ > §5"Z§.y ? Number(_loc8_) : Number(§5"Z§.y);
               _loc12_++;
            }
         }
         param4.setTo(_loc5_,_loc7_,_loc6_ - _loc5_,_loc8_ - _loc7_);
         return param4;
      }
      
      public function get tinted() : Boolean
      {
         var _loc3_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ #^§)
         {
            _loc3_ = 0;
            while(_loc3_ < 4)
            {
               if(this.§?#9§[int(_loc1_ + _loc3_)] != 1)
               {
                  return true;
               }
               _loc3_++;
            }
            _loc1_ += §1!C§;
            _loc2_++;
         }
         return false;
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§9! §)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§ #^§ * §1!C§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§?#9§[int(_loc4_ + 3)];
               _loc6_ = !!this.§9! § ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  this.§?#9§[_loc4_] = this.§?#9§[_loc4_] / _loc6_ * _loc7_;
                  this.§?#9§[int(_loc4_ + 1)] = this.§?#9§[int(_loc4_ + 1)] / _loc6_ * _loc7_;
                  this.§?#9§[int(_loc4_ + 2)] = this.§?#9§[int(_loc4_ + 2)] / _loc6_ * _loc7_;
               }
               _loc4_ += §1!C§;
            }
         }
         this.§9! § = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§9! §;
      }
      
      public function get numVertices() : int
      {
         return this.§ #^§;
      }
      
      public function set numVertices(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = param1 - this.§ #^§;
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.§9#H§.push(0,0);
            this.§?#9§.push(1,1,1,1);
            this.§9j§.push(0,0);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < -_loc3_)
         {
            this.§9#H§.pop();
            this.§9#H§.pop();
            this.§?#9§.pop();
            this.§?#9§.pop();
            this.§?#9§.pop();
            this.§?#9§.pop();
            this.§9j§.pop();
            this.§9j§.pop();
            _loc2_++;
         }
         this.§ #^§ = param1;
      }
      
      public function get §8"B§() : Vector.<Number>
      {
         return this.§9#H§;
      }
      
      public function get §?#e§() : Vector.<Number>
      {
         return this.§?#9§;
      }
      
      public function get §3#3§() : Vector.<Number>
      {
         return this.§9j§;
      }
   }
}
