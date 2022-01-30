package §[q§
{
   import flash.geom.Rectangle;
   
   public class §;!u§
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var §`!p§:int = 0;
      
      private var §<c§:int = 0;
      
      private var §;!F§:int = 8;
      
      private var § C§:int = 0;
      
      private var §"!V§:int = 0;
      
      private var §'"0§:Array;
      
      private var §&!L§:Vector.<§61§>;
      
      private var §[<§:Vector.<§61§>;
      
      private var §^J§:Vector.<§61§>;
      
      private var §2!u§:§61§;
      
      private var §6O§:Vector.<§9V§>;
      
      private var §8!-§:Vector.<§61§>;
      
      public function §;!u§(param1:int, param2:int, param3:int = 0)
      {
         this.§'"0§ = [];
         this.§&!L§ = new Vector.<§61§>();
         this.§[<§ = new Vector.<§61§>();
         this.§^J§ = new Vector.<§61§>();
         this.§6O§ = new Vector.<§9V§>();
         this.§8!-§ = new Vector.<§61§>();
         super();
         this.§2!u§ = new §61§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2,param3);
      }
      
      public function get §]W§() : int
      {
         return this.§&!L§.length;
      }
      
      public function get §7,§() : int
      {
         return this.§ C§;
      }
      
      public function get §^!!§() : int
      {
         return this.§"!V§;
      }
      
      public function get §3!B§() : int
      {
         return this.§;!F§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         while(this.§&!L§.length)
         {
            this.§5U§(this.§&!L§.pop());
         }
         while(this.§[<§.length)
         {
            this.§5U§(this.§[<§.pop());
         }
         this.§`!p§ = param1;
         this.§<c§ = param2;
         this.§ C§ = 0;
         this.§"!V§ = 0;
         this.§[<§[0] = this.§-!8§(0,0,this.§`!p§,this.§<c§);
         while(this.§'"0§.length)
         {
            this.§3"'§(this.§'"0§.pop());
         }
         this.§;!F§ = param3;
      }
      
      public function §4!n§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§61§ = this.§&!L§[param1];
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
      
      public function §<v§(param1:int) : int
      {
         var _loc2_:§61§ = this.§&!L§[param1];
         return _loc2_.id;
      }
      
      public function §?j§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§9V§ = this.§ "3§(param1,param2,param3);
         this.§'"0§.push(_loc4_);
      }
      
      public function §@!g§(param1:Boolean = true) : int
      {
         var _loc2_:§9V§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§61§ = null;
         var _loc7_:§61§ = null;
         if(param1)
         {
            this.§'"0§.sortOn("width",Array.NUMERIC);
         }
         while(this.§'"0§.length > 0)
         {
            _loc2_ = this.§'"0§.pop() as §9V§;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§&u§(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§[<§[_loc5_];
               (_loc7_ = this.§-!8§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§^!A§(_loc7_,this.§[<§,this.§^J§);
               while(this.§^J§.length > 0)
               {
                  this.§[<§[this.§[<§.length] = this.§^J§.pop();
               }
               this.§&!L§[this.§&!L§.length] = _loc7_;
               if(_loc7_.right > this.§ C§)
               {
                  this.§ C§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§"!V§)
               {
                  this.§"!V§ = _loc7_.bottom;
               }
            }
            this.§3"'§(_loc2_);
         }
         return this.§]W§;
      }
      
      private function §`!#§(param1:Vector.<§61§>) : void
      {
         var _loc3_:§61§ = null;
         var _loc4_:int = 0;
         var _loc5_:§61§ = null;
         var _loc6_:§61§ = null;
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
                     this.§5U§(_loc3_);
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
      
      private function §^!A§(param1:§61§, param2:Vector.<§61§>, param3:Vector.<§61§>) : void
      {
         var _loc10_:§61§ = null;
         var _loc11_:§61§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1 + this.§;!F§;
         var _loc7_:int = param1.bottom + 1 + this.§;!F§;
         var _loc8_:§61§ = null;
         if(this.§;!F§ == 0)
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
                  _loc8_ = this.§-!8§(param1.x,param1.y,param1.width + this.§;!F§,param1.height + this.§;!F§);
               }
               this.§4V§(_loc8_,_loc10_,param3);
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
            this.§5U§(_loc8_);
         }
         this.§`!#§(param3);
      }
      
      private function §4V§(param1:§61§, param2:§61§, param3:Vector.<§61§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§-!8§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§-!8§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§-!8§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§-!8§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§5U§(param2);
         }
      }
      
      private function §&u§(param1:int, param2:int) : int
      {
         var _loc9_:§61§ = null;
         var _loc3_:§61§ = this.§2!u§;
         var _loc4_:int = -1;
         var _loc5_:int = param1 + this.§;!F§;
         var _loc6_:int = param2 + this.§;!F§;
         var _loc7_:int;
         var _loc8_:int = (_loc7_ = this.§[<§.length) - 1;
         while(_loc8_ >= 0)
         {
            if((_loc9_ = this.§[<§[_loc8_]).x < this.§ C§ || _loc9_.y < this.§"!V§)
            {
               if(_loc9_.x < _loc3_.x && _loc5_ <= _loc9_.width && _loc6_ <= _loc9_.height)
               {
                  _loc4_ = _loc8_;
                  if(_loc5_ == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§`!p§ || _loc6_ == _loc9_.height && _loc9_.height <= _loc9_.width)
                  {
                     break;
                  }
                  _loc3_ = _loc9_;
               }
            }
            else if(_loc9_.x < _loc3_.x && param1 <= _loc9_.width && param2 <= _loc9_.height)
            {
               _loc4_ = _loc8_;
               if(param1 == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§`!p§ || param2 == _loc9_.height && _loc9_.height <= _loc9_.width)
               {
                  break;
               }
               _loc3_ = _loc9_;
            }
            _loc8_--;
         }
         return _loc4_;
      }
      
      private function §-!8§(param1:int, param2:int, param3:int, param4:int) : §61§
      {
         var _loc5_:§61§ = null;
         if(this.§8!-§.length > 0)
         {
            (_loc5_ = this.§8!-§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §61§(param1,param2,param3,param4);
      }
      
      private function §5U§(param1:§61§) : void
      {
         this.§8!-§[this.§8!-§.length] = param1;
      }
      
      private function § "3§(param1:int, param2:int, param3:int) : §9V§
      {
         var _loc4_:§9V§ = null;
         if(this.§6O§.length > 0)
         {
            (_loc4_ = this.§6O§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §9V§(param1,param2,param3);
      }
      
      private function §3"'§(param1:§9V§) : void
      {
         this.§6O§[this.§6O§.length] = param1;
      }
   }
}
