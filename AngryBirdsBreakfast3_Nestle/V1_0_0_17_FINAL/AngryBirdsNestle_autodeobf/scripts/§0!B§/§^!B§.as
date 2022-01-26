package §0!B§
{
   import flash.geom.Rectangle;
   
   public class §^!B§
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var §!a§:int = 0;
      
      private var §2!y§:int = 0;
      
      private var §3]§:int = 8;
      
      private var §-"0§:int = 0;
      
      private var §"!q§:int = 0;
      
      private var §-!L§:Array;
      
      private var §3!1§:Vector.<§-!8§>;
      
      private var §;$§:Vector.<§-!8§>;
      
      private var §[`§:Vector.<§-!8§>;
      
      private var §!p§:§-!8§;
      
      private var §@!w§:Vector.<§[!N§>;
      
      private var §6!#§:Vector.<§-!8§>;
      
      public function §^!B§(param1:int, param2:int, param3:int = 0)
      {
         this.§-!L§ = [];
         this.§3!1§ = new Vector.<§-!8§>();
         this.§;$§ = new Vector.<§-!8§>();
         this.§[`§ = new Vector.<§-!8§>();
         this.§@!w§ = new Vector.<§[!N§>();
         this.§6!#§ = new Vector.<§-!8§>();
         super();
         this.§!p§ = new §-!8§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2,param3);
      }
      
      public function get §=;§() : int
      {
         return this.§3!1§.length;
      }
      
      public function get §6Q§() : int
      {
         return this.§-"0§;
      }
      
      public function get §#_§() : int
      {
         return this.§"!q§;
      }
      
      public function get §0!%§() : int
      {
         return this.§3]§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         while(this.§3!1§.length)
         {
            this.§]&§(this.§3!1§.pop());
         }
         while(this.§;$§.length)
         {
            this.§]&§(this.§;$§.pop());
         }
         this.§!a§ = param1;
         this.§2!y§ = param2;
         this.§-"0§ = 0;
         this.§"!q§ = 0;
         this.§;$§[0] = this.§-!p§(0,0,this.§!a§,this.§2!y§);
         while(this.§-!L§.length)
         {
            this.§>!^§(this.§-!L§.pop());
         }
         this.§3]§ = param3;
      }
      
      public function §^!s§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§-!8§ = this.§3!1§[param1];
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
      
      public function §<"3§(param1:int) : int
      {
         var _loc2_:§-!8§ = this.§3!1§[param1];
         return _loc2_.id;
      }
      
      public function §;6§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§[!N§ = this.§9K§(param1,param2,param3);
         this.§-!L§.push(_loc4_);
      }
      
      public function §65§(param1:Boolean = true) : int
      {
         var _loc2_:§[!N§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§-!8§ = null;
         var _loc7_:§-!8§ = null;
         if(param1)
         {
            this.§-!L§.sortOn("width",Array.NUMERIC);
         }
         while(this.§-!L§.length > 0)
         {
            _loc2_ = this.§-!L§.pop() as §[!N§;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§8!o§(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§;$§[_loc5_];
               (_loc7_ = this.§-!p§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§&!<§(_loc7_,this.§;$§,this.§[`§);
               while(this.§[`§.length > 0)
               {
                  this.§;$§[this.§;$§.length] = this.§[`§.pop();
               }
               this.§3!1§[this.§3!1§.length] = _loc7_;
               if(_loc7_.right > this.§-"0§)
               {
                  this.§-"0§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§"!q§)
               {
                  this.§"!q§ = _loc7_.bottom;
               }
            }
            this.§>!^§(_loc2_);
         }
         return this.§=;§;
      }
      
      private function §!!Z§(param1:Vector.<§-!8§>) : void
      {
         var _loc3_:§-!8§ = null;
         var _loc4_:int = 0;
         var _loc5_:§-!8§ = null;
         var _loc6_:§-!8§ = null;
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
                     this.§]&§(_loc3_);
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
      
      private function §&!<§(param1:§-!8§, param2:Vector.<§-!8§>, param3:Vector.<§-!8§>) : void
      {
         var _loc10_:§-!8§ = null;
         var _loc11_:§-!8§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1 + this.§3]§;
         var _loc7_:int = param1.bottom + 1 + this.§3]§;
         var _loc8_:§-!8§ = null;
         if(this.§3]§ == 0)
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
                  _loc8_ = this.§-!p§(param1.x,param1.y,param1.width + this.§3]§,param1.height + this.§3]§);
               }
               this.§1!n§(_loc8_,_loc10_,param3);
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
            this.§]&§(_loc8_);
         }
         this.§!!Z§(param3);
      }
      
      private function §1!n§(param1:§-!8§, param2:§-!8§, param3:Vector.<§-!8§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§-!p§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§-!p§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§-!p§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§-!p§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§]&§(param2);
         }
      }
      
      private function §8!o§(param1:int, param2:int) : int
      {
         var _loc9_:§-!8§ = null;
         var _loc3_:§-!8§ = this.§!p§;
         var _loc4_:int = -1;
         var _loc5_:int = param1 + this.§3]§;
         var _loc6_:int = param2 + this.§3]§;
         var _loc7_:int;
         var _loc8_:int = (_loc7_ = this.§;$§.length) - 1;
         while(_loc8_ >= 0)
         {
            if((_loc9_ = this.§;$§[_loc8_]).x < this.§-"0§ || _loc9_.y < this.§"!q§)
            {
               if(_loc9_.x < _loc3_.x && _loc5_ <= _loc9_.width && _loc6_ <= _loc9_.height)
               {
                  _loc4_ = _loc8_;
                  if(_loc5_ == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§!a§ || _loc6_ == _loc9_.height && _loc9_.height <= _loc9_.width)
                  {
                     break;
                  }
                  _loc3_ = _loc9_;
               }
            }
            else if(_loc9_.x < _loc3_.x && param1 <= _loc9_.width && param2 <= _loc9_.height)
            {
               _loc4_ = _loc8_;
               if(param1 == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§!a§ || param2 == _loc9_.height && _loc9_.height <= _loc9_.width)
               {
                  break;
               }
               _loc3_ = _loc9_;
            }
            _loc8_--;
         }
         return _loc4_;
      }
      
      private function §-!p§(param1:int, param2:int, param3:int, param4:int) : §-!8§
      {
         var _loc5_:§-!8§ = null;
         if(this.§6!#§.length > 0)
         {
            (_loc5_ = this.§6!#§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §-!8§(param1,param2,param3,param4);
      }
      
      private function §]&§(param1:§-!8§) : void
      {
         this.§6!#§[this.§6!#§.length] = param1;
      }
      
      private function §9K§(param1:int, param2:int, param3:int) : §[!N§
      {
         var _loc4_:§[!N§ = null;
         if(this.§@!w§.length > 0)
         {
            (_loc4_ = this.§@!w§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §[!N§(param1,param2,param3);
      }
      
      private function §>!^§(param1:§[!N§) : void
      {
         this.§@!w§[this.§@!w§.length] = param1;
      }
   }
}
