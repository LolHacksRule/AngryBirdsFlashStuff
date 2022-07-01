package §%"!§
{
   import flash.geom.Rectangle;
   
   public class §0!o§
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var §<!"§:int = 0;
      
      private var §50§:int = 0;
      
      private var §#E§:int = 8;
      
      private var §[s§:int = 0;
      
      private var §8c§:int = 0;
      
      private var §#J§:Array;
      
      private var § o§:Vector.<§9!`§>;
      
      private var §-!U§:Vector.<§9!`§>;
      
      private var §3`§:Vector.<§9!`§>;
      
      private var §<y§:§9!`§;
      
      private var §0!>§:Vector.<§=!3§>;
      
      private var §-!2§:Vector.<§9!`§>;
      
      public function §0!o§(param1:int, param2:int, param3:int = 0)
      {
         this.§#J§ = [];
         this.§ o§ = new Vector.<§9!`§>();
         this.§-!U§ = new Vector.<§9!`§>();
         this.§3`§ = new Vector.<§9!`§>();
         this.§0!>§ = new Vector.<§=!3§>();
         this.§-!2§ = new Vector.<§9!`§>();
         super();
         this.§<y§ = new §9!`§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2,param3);
      }
      
      public function get §?+§() : int
      {
         return this.§ o§.length;
      }
      
      public function get §8#§() : int
      {
         return this.§[s§;
      }
      
      public function get §2"'§() : int
      {
         return this.§8c§;
      }
      
      public function get §]=§() : int
      {
         return this.§#E§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         while(this.§ o§.length)
         {
            this.§<!i§(this.§ o§.pop());
         }
         while(this.§-!U§.length)
         {
            this.§<!i§(this.§-!U§.pop());
         }
         this.§<!"§ = param1;
         this.§50§ = param2;
         this.§[s§ = 0;
         this.§8c§ = 0;
         this.§-!U§[0] = this.§'k§(0,0,this.§<!"§,this.§50§);
         while(this.§#J§.length)
         {
            this.§3X§(this.§#J§.pop());
         }
         this.§#E§ = param3;
      }
      
      public function §=!2§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§9!`§ = this.§ o§[param1];
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
      
      public function §<!C§(param1:int) : int
      {
         var _loc2_:§9!`§ = this.§ o§[param1];
         return _loc2_.id;
      }
      
      public function §[N§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§=!3§ = this.§3!M§(param1,param2,param3);
         this.§#J§.push(_loc4_);
      }
      
      public function §0!f§(param1:Boolean = true) : int
      {
         var _loc2_:§=!3§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§9!`§ = null;
         var _loc7_:§9!`§ = null;
         if(param1)
         {
            this.§#J§.sortOn("width",Array.NUMERIC);
         }
         while(this.§#J§.length > 0)
         {
            _loc2_ = this.§#J§.pop() as §=!3§;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§="'§(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§-!U§[_loc5_];
               (_loc7_ = this.§'k§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§"!s§(_loc7_,this.§-!U§,this.§3`§);
               while(this.§3`§.length > 0)
               {
                  this.§-!U§[this.§-!U§.length] = this.§3`§.pop();
               }
               this.§ o§[this.§ o§.length] = _loc7_;
               if(_loc7_.right > this.§[s§)
               {
                  this.§[s§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§8c§)
               {
                  this.§8c§ = _loc7_.bottom;
               }
            }
            this.§3X§(_loc2_);
         }
         return this.§?+§;
      }
      
      private function §5r§(param1:Vector.<§9!`§>) : void
      {
         var _loc3_:§9!`§ = null;
         var _loc4_:int = 0;
         var _loc5_:§9!`§ = null;
         var _loc6_:§9!`§ = null;
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
                     this.§<!i§(_loc3_);
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
      
      private function §"!s§(param1:§9!`§, param2:Vector.<§9!`§>, param3:Vector.<§9!`§>) : void
      {
         var _loc10_:§9!`§ = null;
         var _loc11_:§9!`§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1 + this.§#E§;
         var _loc7_:int = param1.bottom + 1 + this.§#E§;
         var _loc8_:§9!`§ = null;
         if(this.§#E§ == 0)
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
                  _loc8_ = this.§'k§(param1.x,param1.y,param1.width + this.§#E§,param1.height + this.§#E§);
               }
               this.§`[§(_loc8_,_loc10_,param3);
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
            this.§<!i§(_loc8_);
         }
         this.§5r§(param3);
      }
      
      private function §`[§(param1:§9!`§, param2:§9!`§, param3:Vector.<§9!`§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§'k§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§'k§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§'k§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§'k§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§<!i§(param2);
         }
      }
      
      private function §="'§(param1:int, param2:int) : int
      {
         var _loc9_:§9!`§ = null;
         var _loc3_:§9!`§ = this.§<y§;
         var _loc4_:int = -1;
         var _loc5_:int = param1 + this.§#E§;
         var _loc6_:int = param2 + this.§#E§;
         var _loc7_:int;
         var _loc8_:int = (_loc7_ = this.§-!U§.length) - 1;
         while(_loc8_ >= 0)
         {
            if((_loc9_ = this.§-!U§[_loc8_]).x < this.§[s§ || _loc9_.y < this.§8c§)
            {
               if(_loc9_.x < _loc3_.x && _loc5_ <= _loc9_.width && _loc6_ <= _loc9_.height)
               {
                  _loc4_ = _loc8_;
                  if(_loc5_ == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§<!"§ || _loc6_ == _loc9_.height && _loc9_.height <= _loc9_.width)
                  {
                     break;
                  }
                  _loc3_ = _loc9_;
               }
            }
            else if(_loc9_.x < _loc3_.x && param1 <= _loc9_.width && param2 <= _loc9_.height)
            {
               _loc4_ = _loc8_;
               if(param1 == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§<!"§ || param2 == _loc9_.height && _loc9_.height <= _loc9_.width)
               {
                  break;
               }
               _loc3_ = _loc9_;
            }
            _loc8_--;
         }
         return _loc4_;
      }
      
      private function §'k§(param1:int, param2:int, param3:int, param4:int) : §9!`§
      {
         var _loc5_:§9!`§ = null;
         if(this.§-!2§.length > 0)
         {
            (_loc5_ = this.§-!2§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §9!`§(param1,param2,param3,param4);
      }
      
      private function §<!i§(param1:§9!`§) : void
      {
         this.§-!2§[this.§-!2§.length] = param1;
      }
      
      private function §3!M§(param1:int, param2:int, param3:int) : §=!3§
      {
         var _loc4_:§=!3§ = null;
         if(this.§0!>§.length > 0)
         {
            (_loc4_ = this.§0!>§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §=!3§(param1,param2,param3);
      }
      
      private function §3X§(param1:§=!3§) : void
      {
         this.§0!>§[this.§0!>§.length] = param1;
      }
   }
}
