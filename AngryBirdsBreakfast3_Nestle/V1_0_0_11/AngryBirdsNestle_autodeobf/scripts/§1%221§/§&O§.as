package §1"1§
{
   import flash.geom.Rectangle;
   
   public class §&O§
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var §5"5§:int = 0;
      
      private var §"!i§:int = 0;
      
      private var §?`§:int = 8;
      
      private var §#!+§:int = 0;
      
      private var §5! §:int = 0;
      
      private var §8!c§:Array;
      
      private var §,&§:Vector.<§5O§>;
      
      private var §5F§:Vector.<§5O§>;
      
      private var § !b§:Vector.<§5O§>;
      
      private var §!w§:§5O§;
      
      private var §!!j§:Vector.<§4!F§>;
      
      private var §1!X§:Vector.<§5O§>;
      
      public function §&O§(param1:int, param2:int, param3:int = 0)
      {
         this.§8!c§ = [];
         this.§,&§ = new Vector.<§5O§>();
         this.§5F§ = new Vector.<§5O§>();
         this.§ !b§ = new Vector.<§5O§>();
         this.§!!j§ = new Vector.<§4!F§>();
         this.§1!X§ = new Vector.<§5O§>();
         super();
         this.§!w§ = new §5O§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2,param3);
      }
      
      public function get §6!&§() : int
      {
         return this.§,&§.length;
      }
      
      public function get §2%§() : int
      {
         return this.§#!+§;
      }
      
      public function get §1!1§() : int
      {
         return this.§5! §;
      }
      
      public function get §8"&§() : int
      {
         return this.§?`§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         while(this.§,&§.length)
         {
            this.§;C§(this.§,&§.pop());
         }
         while(this.§5F§.length)
         {
            this.§;C§(this.§5F§.pop());
         }
         this.§5"5§ = param1;
         this.§"!i§ = param2;
         this.§#!+§ = 0;
         this.§5! § = 0;
         this.§5F§[0] = this.§,!U§(0,0,this.§5"5§,this.§"!i§);
         while(this.§8!c§.length)
         {
            this.§"!A§(this.§8!c§.pop());
         }
         this.§?`§ = param3;
      }
      
      public function §,!%§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§5O§ = this.§,&§[param1];
         if(param2)
         {
            param2.x = _loc3_.x;
            param2.y = _loc3_.y;
            param2.width = _loc3_.width;
            param2.height = _loc3_.height;
            return param2;
         }
         return new Rectangle(_loc3_.x,_loc3_.y,_loc3_.width,_loc3_.height);
      }
      
      public function §9"6§(param1:int) : int
      {
         var _loc2_:§5O§ = this.§,&§[param1];
         return _loc2_.id;
      }
      
      public function §-!i§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§4!F§ = this.§1!`§(param1,param2,param3);
         this.§8!c§.push(_loc4_);
      }
      
      public function §2!B§(param1:Boolean = true) : int
      {
         var _loc2_:§4!F§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§5O§ = null;
         var _loc7_:§5O§ = null;
         if(param1)
         {
            this.§8!c§.sortOn("width",Array.NUMERIC);
         }
         while(this.§8!c§.length > 0)
         {
            _loc2_ = this.§8!c§.pop() as §4!F§;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§-n§(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§5F§[_loc5_];
               (_loc7_ = this.§,!U§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§[#§(_loc7_,this.§5F§,this.§ !b§);
               while(this.§ !b§.length > 0)
               {
                  this.§5F§[this.§5F§.length] = this.§ !b§.pop();
               }
               this.§,&§[this.§,&§.length] = _loc7_;
               if(_loc7_.right > this.§#!+§)
               {
                  this.§#!+§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§5! §)
               {
                  this.§5! § = _loc7_.bottom;
               }
            }
            this.§"!A§(_loc2_);
         }
         return this.§6!&§;
      }
      
      private function §&"8§(param1:Vector.<§5O§>) : void
      {
         var _loc3_:§5O§ = null;
         var _loc4_:int = 0;
         var _loc5_:§5O§ = null;
         var _loc6_:§5O§ = null;
         var _loc2_:int = param1.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = param1[_loc2_];
            _loc4_ = param1.length - 1;
            while(_loc4_ >= 0)
            {
               if(_loc2_ != _loc4_)
               {
                  _loc5_ = param1[_loc4_];
                  if(_loc3_.x >= _loc5_.x && _loc3_.y >= _loc5_.y && _loc3_.right <= _loc5_.right && _loc3_.bottom <= _loc5_.bottom)
                  {
                     this.§;C§(_loc3_);
                     _loc6_ = param1.pop();
                     if(_loc2_ < param1.length)
                     {
                        param1[_loc2_] = _loc6_;
                        break;
                     }
                     break;
                  }
               }
               _loc4_--;
            }
            _loc2_--;
         }
      }
      
      private function §[#§(param1:§5O§, param2:Vector.<§5O§>, param3:Vector.<§5O§>) : void
      {
         var _loc10_:§5O§ = null;
         var _loc11_:§5O§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1 + this.§?`§;
         var _loc7_:int = param1.bottom + 1 + this.§?`§;
         var _loc8_:§5O§ = null;
         if(this.§?`§ == 0)
         {
            _loc8_ = param1;
         }
         var _loc9_:int = param2.length - 1;
         while(_loc9_ >= 0)
         {
            _loc10_ = param2[_loc9_];
            if(!(_loc4_ >= _loc10_.right || _loc6_ <= _loc10_.x || _loc5_ >= _loc10_.bottom || _loc7_ <= _loc10_.y))
            {
               if(!_loc8_)
               {
                  _loc8_ = this.§,!U§(param1.x,param1.y,param1.width + this.§?`§,param1.height + this.§?`§);
               }
               this.§!!W§(_loc8_,_loc10_,param3);
               _loc11_ = param2.pop();
               if(_loc9_ < param2.length)
               {
                  param2[_loc9_] = _loc11_;
               }
            }
            _loc9_--;
         }
         if(_loc8_ && _loc8_ != param1)
         {
            this.§;C§(_loc8_);
         }
         this.§&"8§(param3);
      }
      
      private function §!!W§(param1:§5O§, param2:§5O§, param3:Vector.<§5O§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§,!U§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§,!U§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§,!U§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§,!U§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§;C§(param2);
         }
      }
      
      private function §-n§(param1:int, param2:int) : int
      {
         var _loc9_:§5O§ = null;
         var _loc3_:§5O§ = this.§!w§;
         var _loc4_:int = -1;
         var _loc5_:int = param1 + this.§?`§;
         var _loc6_:int = param2 + this.§?`§;
         var _loc7_:int;
         var _loc8_:int = (_loc7_ = this.§5F§.length) - 1;
         while(_loc8_ >= 0)
         {
            if((_loc9_ = this.§5F§[_loc8_]).x < this.§#!+§ || _loc9_.y < this.§5! §)
            {
               if(_loc9_.x < _loc3_.x && _loc5_ <= _loc9_.width && _loc6_ <= _loc9_.height)
               {
                  _loc4_ = _loc8_;
                  if(_loc5_ == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§5"5§ || _loc6_ == _loc9_.height && _loc9_.height <= _loc9_.width)
                  {
                     break;
                  }
                  _loc3_ = _loc9_;
               }
            }
            else if(_loc9_.x < _loc3_.x && param1 <= _loc9_.width && param2 <= _loc9_.height)
            {
               _loc4_ = _loc8_;
               if(param1 == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§5"5§ || param2 == _loc9_.height && _loc9_.height <= _loc9_.width)
               {
                  break;
               }
               _loc3_ = _loc9_;
            }
            _loc8_--;
         }
         return _loc4_;
      }
      
      private function §,!U§(param1:int, param2:int, param3:int, param4:int) : §5O§
      {
         var _loc5_:§5O§ = null;
         if(this.§1!X§.length > 0)
         {
            (_loc5_ = this.§1!X§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §5O§(param1,param2,param3,param4);
      }
      
      private function §;C§(param1:§5O§) : void
      {
         this.§1!X§[this.§1!X§.length] = param1;
      }
      
      private function §1!`§(param1:int, param2:int, param3:int) : §4!F§
      {
         var _loc4_:§4!F§ = null;
         if(this.§!!j§.length > 0)
         {
            (_loc4_ = this.§!!j§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §4!F§(param1,param2,param3);
      }
      
      private function §"!A§(param1:§4!F§) : void
      {
         this.§!!j§[this.§!!j§.length] = param1;
      }
   }
}
