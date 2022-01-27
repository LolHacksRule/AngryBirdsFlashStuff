package §,!b§
{
   import flash.geom.Rectangle;
   
   public class §"!<§
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var §0"e§:int = 0;
      
      private var §?!O§:int = 0;
      
      private var §9q§:int = 8;
      
      private var §%"T§:int = 0;
      
      private var §8"?§:int = 0;
      
      private var §3q§:Array;
      
      private var §?&§:Vector.<§0"'§>;
      
      private var §'!>§:Vector.<§0"'§>;
      
      private var §0"]§:Vector.<§0"'§>;
      
      private var §'"N§:§0"'§;
      
      private var §""g§:Vector.<§5#2§>;
      
      private var §-b§:Vector.<§0"'§>;
      
      public function §"!<§(param1:int, param2:int, param3:int = 0)
      {
         this.§3q§ = [];
         this.§?&§ = new Vector.<§0"'§>();
         this.§'!>§ = new Vector.<§0"'§>();
         this.§0"]§ = new Vector.<§0"'§>();
         this.§""g§ = new Vector.<§5#2§>();
         this.§-b§ = new Vector.<§0"'§>();
         super();
         this.§'"N§ = new §0"'§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2,param3);
      }
      
      public function get §!E§() : int
      {
         return this.§?&§.length;
      }
      
      public function get §6#0§() : int
      {
         return this.§%"T§;
      }
      
      public function get §^j§() : int
      {
         return this.§8"?§;
      }
      
      public function get §]!2§() : int
      {
         return this.§9q§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         while(this.§?&§.length)
         {
            this.§?u§(this.§?&§.pop());
         }
         while(this.§'!>§.length)
         {
            this.§?u§(this.§'!>§.pop());
         }
         this.§0"e§ = param1;
         this.§?!O§ = param2;
         this.§%"T§ = 0;
         this.§8"?§ = 0;
         this.§'!>§[0] = this.§9!9§(0,0,this.§0"e§,this.§?!O§);
         while(this.§3q§.length)
         {
            this.§[!k§(this.§3q§.pop());
         }
         this.§9q§ = param3;
      }
      
      public function §8Z§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§0"'§ = this.§?&§[param1];
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
      
      public function §0L§(param1:int) : int
      {
         var _loc2_:§0"'§ = this.§?&§[param1];
         return _loc2_.id;
      }
      
      public function §;o§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§5#2§ = this.§?!k§(param1,param2,param3);
         this.§3q§.push(_loc4_);
      }
      
      public function §3^§(param1:Boolean = true) : int
      {
         var _loc2_:§5#2§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§0"'§ = null;
         var _loc7_:§0"'§ = null;
         if(param1)
         {
            this.§3q§.sortOn("width",Array.NUMERIC);
         }
         while(this.§3q§.length > 0)
         {
            _loc2_ = this.§3q§.pop() as §5#2§;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§;"$§(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§'!>§[_loc5_];
               (_loc7_ = this.§9!9§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§0!k§(_loc7_,this.§'!>§,this.§0"]§);
               while(this.§0"]§.length > 0)
               {
                  this.§'!>§[this.§'!>§.length] = this.§0"]§.pop();
               }
               this.§?&§[this.§?&§.length] = _loc7_;
               if(_loc7_.right > this.§%"T§)
               {
                  this.§%"T§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§8"?§)
               {
                  this.§8"?§ = _loc7_.bottom;
               }
            }
            this.§[!k§(_loc2_);
         }
         return this.§!E§;
      }
      
      private function §2y§(param1:Vector.<§0"'§>) : void
      {
         var _loc3_:§0"'§ = null;
         var _loc4_:int = 0;
         var _loc5_:§0"'§ = null;
         var _loc6_:§0"'§ = null;
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
                     this.§?u§(_loc3_);
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
      
      private function §0!k§(param1:§0"'§, param2:Vector.<§0"'§>, param3:Vector.<§0"'§>) : void
      {
         var _loc10_:§0"'§ = null;
         var _loc11_:§0"'§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1 + this.§9q§;
         var _loc7_:int = param1.bottom + 1 + this.§9q§;
         var _loc8_:§0"'§ = null;
         if(this.§9q§ == 0)
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
                  _loc8_ = this.§9!9§(param1.x,param1.y,param1.width + this.§9q§,param1.height + this.§9q§);
               }
               this.§#!a§(_loc8_,_loc10_,param3);
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
            this.§?u§(_loc8_);
         }
         this.§2y§(param3);
      }
      
      private function §#!a§(param1:§0"'§, param2:§0"'§, param3:Vector.<§0"'§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§9!9§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§9!9§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§9!9§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§9!9§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§?u§(param2);
         }
      }
      
      private function §;"$§(param1:int, param2:int) : int
      {
         var _loc9_:§0"'§ = null;
         var _loc3_:§0"'§ = this.§'"N§;
         var _loc4_:int = -1;
         var _loc5_:int = param1 + this.§9q§;
         var _loc6_:int = param2 + this.§9q§;
         var _loc7_:int;
         var _loc8_:int = (_loc7_ = this.§'!>§.length) - 1;
         while(_loc8_ >= 0)
         {
            if((_loc9_ = this.§'!>§[_loc8_]).x < this.§%"T§ || _loc9_.y < this.§8"?§)
            {
               if(_loc9_.x < _loc3_.x && _loc5_ <= _loc9_.width && _loc6_ <= _loc9_.height)
               {
                  _loc4_ = _loc8_;
                  if(_loc5_ == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§0"e§ || _loc6_ == _loc9_.height && _loc9_.height <= _loc9_.width)
                  {
                     break;
                  }
                  _loc3_ = _loc9_;
               }
            }
            else if(_loc9_.x < _loc3_.x && param1 <= _loc9_.width && param2 <= _loc9_.height)
            {
               _loc4_ = _loc8_;
               if(param1 == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§0"e§ || param2 == _loc9_.height && _loc9_.height <= _loc9_.width)
               {
                  break;
               }
               _loc3_ = _loc9_;
            }
            _loc8_--;
         }
         return _loc4_;
      }
      
      private function §9!9§(param1:int, param2:int, param3:int, param4:int) : §0"'§
      {
         var _loc5_:§0"'§ = null;
         if(this.§-b§.length > 0)
         {
            (_loc5_ = this.§-b§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §0"'§(param1,param2,param3,param4);
      }
      
      private function §?u§(param1:§0"'§) : void
      {
         this.§-b§[this.§-b§.length] = param1;
      }
      
      private function §?!k§(param1:int, param2:int, param3:int) : §5#2§
      {
         var _loc4_:§5#2§ = null;
         if(this.§""g§.length > 0)
         {
            (_loc4_ = this.§""g§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §5#2§(param1,param2,param3);
      }
      
      private function §[!k§(param1:§5#2§) : void
      {
         this.§""g§[this.§""g§.length] = param1;
      }
   }
}
