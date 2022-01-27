package §8";§
{
   import flash.geom.Rectangle;
   
   public class §,o§
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var §]!d§:int = 0;
      
      private var §!"-§:int = 0;
      
      private var §!"F§:int = 8;
      
      private var §2_§:int = 0;
      
      private var §,!h§:int = 0;
      
      private var §,!W§:Array;
      
      private var §6!#§:Vector.<§]u§>;
      
      private var §%'§:Vector.<§]u§>;
      
      private var §@!g§:Vector.<§]u§>;
      
      private var §?!Q§:§]u§;
      
      private var §+">§:Vector.<§2V§>;
      
      private var §9z§:Vector.<§]u§>;
      
      public function §,o§(param1:int, param2:int, param3:int = 0)
      {
         this.§,!W§ = [];
         this.§6!#§ = new Vector.<§]u§>();
         this.§%'§ = new Vector.<§]u§>();
         this.§@!g§ = new Vector.<§]u§>();
         this.§+">§ = new Vector.<§2V§>();
         this.§9z§ = new Vector.<§]u§>();
         super();
         this.§?!Q§ = new §]u§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2,param3);
      }
      
      public function get §,!f§() : int
      {
         return this.§6!#§.length;
      }
      
      public function get §&$§() : int
      {
         return this.§2_§;
      }
      
      public function get §`"F§() : int
      {
         return this.§,!h§;
      }
      
      public function get §3!k§() : int
      {
         return this.§!"F§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         while(this.§6!#§.length)
         {
            this.§%!b§(this.§6!#§.pop());
         }
         while(this.§%'§.length)
         {
            this.§%!b§(this.§%'§.pop());
         }
         this.§]!d§ = param1;
         this.§!"-§ = param2;
         this.§2_§ = 0;
         this.§,!h§ = 0;
         this.§%'§[0] = this.§8@§(0,0,this.§]!d§,this.§!"-§);
         while(this.§,!W§.length)
         {
            this.§?!f§(this.§,!W§.pop());
         }
         this.§!"F§ = param3;
      }
      
      public function §6p§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§]u§ = this.§6!#§[param1];
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
      
      public function § else§(param1:int) : int
      {
         var _loc2_:§]u§ = this.§6!#§[param1];
         return _loc2_.id;
      }
      
      public function §[!V§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§2V§ = this.§7V§(param1,param2,param3);
         this.§,!W§.push(_loc4_);
      }
      
      public function §"p§(param1:Boolean = true) : int
      {
         var _loc2_:§2V§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§]u§ = null;
         var _loc7_:§]u§ = null;
         if(param1)
         {
            this.§,!W§.sortOn("width",Array.NUMERIC);
         }
         while(this.§,!W§.length > 0)
         {
            _loc2_ = this.§,!W§.pop() as §2V§;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§&u§(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§%'§[_loc5_];
               (_loc7_ = this.§8@§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§9!<§(_loc7_,this.§%'§,this.§@!g§);
               while(this.§@!g§.length > 0)
               {
                  this.§%'§[this.§%'§.length] = this.§@!g§.pop();
               }
               this.§6!#§[this.§6!#§.length] = _loc7_;
               if(_loc7_.right > this.§2_§)
               {
                  this.§2_§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§,!h§)
               {
                  this.§,!h§ = _loc7_.bottom;
               }
            }
            this.§?!f§(_loc2_);
         }
         return this.§,!f§;
      }
      
      private function §%6§(param1:Vector.<§]u§>) : void
      {
         var _loc3_:§]u§ = null;
         var _loc4_:int = 0;
         var _loc5_:§]u§ = null;
         var _loc6_:§]u§ = null;
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
                     this.§%!b§(_loc3_);
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
      
      private function §9!<§(param1:§]u§, param2:Vector.<§]u§>, param3:Vector.<§]u§>) : void
      {
         var _loc10_:§]u§ = null;
         var _loc11_:§]u§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1 + this.§!"F§;
         var _loc7_:int = param1.bottom + 1 + this.§!"F§;
         var _loc8_:§]u§ = null;
         if(this.§!"F§ == 0)
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
                  _loc8_ = this.§8@§(param1.x,param1.y,param1.width + this.§!"F§,param1.height + this.§!"F§);
               }
               this.§>J§(_loc8_,_loc10_,param3);
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
            this.§%!b§(_loc8_);
         }
         this.§%6§(param3);
      }
      
      private function §>J§(param1:§]u§, param2:§]u§, param3:Vector.<§]u§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§8@§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§8@§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§8@§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§8@§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§%!b§(param2);
         }
      }
      
      private function §&u§(param1:int, param2:int) : int
      {
         var _loc7_:§]u§ = null;
         var _loc3_:§]u§ = this.§?!Q§;
         var _loc4_:int = -1;
         var _loc5_:int;
         var _loc6_:int = (_loc5_ = this.§%'§.length) - 1;
         while(_loc6_ >= 0)
         {
            if((_loc7_ = this.§%'§[_loc6_]).x < _loc3_.x && param1 <= _loc7_.width && param2 <= _loc7_.height)
            {
               _loc4_ = _loc6_;
               if(param1 == _loc7_.width && _loc7_.width <= _loc7_.height && _loc7_.right < this.§]!d§ || param2 == _loc7_.height && _loc7_.height <= _loc7_.width)
               {
                  break;
               }
               _loc3_ = _loc7_;
            }
            _loc6_--;
         }
         return _loc4_;
      }
      
      private function §8@§(param1:int, param2:int, param3:int, param4:int) : §]u§
      {
         var _loc5_:§]u§ = null;
         if(this.§9z§.length > 0)
         {
            (_loc5_ = this.§9z§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §]u§(param1,param2,param3,param4);
      }
      
      private function §%!b§(param1:§]u§) : void
      {
         this.§9z§[this.§9z§.length] = param1;
      }
      
      private function §7V§(param1:int, param2:int, param3:int) : §2V§
      {
         var _loc4_:§2V§ = null;
         if(this.§+">§.length > 0)
         {
            (_loc4_ = this.§+">§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §2V§(param1,param2,param3);
      }
      
      private function §?!f§(param1:§2V§) : void
      {
         this.§+">§[this.§+">§.length] = param1;
      }
   }
}
