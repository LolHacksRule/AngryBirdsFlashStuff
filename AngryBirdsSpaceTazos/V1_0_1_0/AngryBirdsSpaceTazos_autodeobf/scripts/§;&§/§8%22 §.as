package §;&§
{
   import flash.geom.Rectangle;
   
   public class §8" §
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var §<!f§:int = 0;
      
      private var §8>§:int = 0;
      
      private var §6%§:int = 0;
      
      private var §@!B§:int = 0;
      
      private var §[N§:Array;
      
      private var §!,§:Vector.<§1!n§>;
      
      private var §6!o§:Vector.<§1!n§>;
      
      private var §?!P§:Vector.<§1!n§>;
      
      private var §%T§:§1!n§;
      
      private var §1"E§:Vector.<§9" §>;
      
      private var §=K§:Vector.<§1!n§>;
      
      public function §8" §(param1:int, param2:int)
      {
         this.§[N§ = [];
         this.§!,§ = new Vector.<§1!n§>();
         this.§6!o§ = new Vector.<§1!n§>();
         this.§?!P§ = new Vector.<§1!n§>();
         this.§1"E§ = new Vector.<§9" §>();
         this.§=K§ = new Vector.<§1!n§>();
         super();
         this.§%T§ = new §1!n§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2);
      }
      
      public function get §9!x§() : int
      {
         return this.§!,§.length;
      }
      
      public function get §-!D§() : int
      {
         return this.§6%§;
      }
      
      public function get §%!M§() : int
      {
         return this.§@!B§;
      }
      
      public function reset(param1:int, param2:int) : void
      {
         while(this.§!,§.length)
         {
            this.§]p§(this.§!,§.pop());
         }
         while(this.§6!o§.length)
         {
            this.§]p§(this.§6!o§.pop());
         }
         this.§<!f§ = param1;
         this.§8>§ = param2;
         this.§6%§ = 0;
         this.§@!B§ = 0;
         this.§6!o§[0] = this.§=!M§(0,0,this.§<!f§,this.§8>§);
         while(this.§[N§.length)
         {
            this.§^!C§(this.§[N§.pop());
         }
      }
      
      public function §3"@§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§1!n§ = this.§!,§[param1];
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
      
      public function §^"?§(param1:int) : int
      {
         var _loc2_:§1!n§ = this.§!,§[param1];
         return _loc2_.id;
      }
      
      public function §@!L§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§9" § = this.§5!"§(param1,param2,param3);
         this.§[N§.push(_loc4_);
      }
      
      public function §8^§(param1:Boolean = true) : int
      {
         var _loc2_:§9" § = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§1!n§ = null;
         var _loc7_:§1!n§ = null;
         if(param1)
         {
            this.§[N§.sortOn("width",Array.NUMERIC);
         }
         while(this.§[N§.length > 0)
         {
            _loc2_ = this.§[N§.pop() as §9" §;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§^!h§(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§6!o§[_loc5_];
               (_loc7_ = this.§=!M§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§=!j§(_loc7_,this.§6!o§,this.§?!P§);
               while(this.§?!P§.length > 0)
               {
                  this.§6!o§[this.§6!o§.length] = this.§?!P§.pop();
               }
               this.§!,§[this.§!,§.length] = _loc7_;
               if(_loc7_.right > this.§6%§)
               {
                  this.§6%§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§@!B§)
               {
                  this.§@!B§ = _loc7_.bottom;
               }
            }
            this.§^!C§(_loc2_);
         }
         return this.§9!x§;
      }
      
      private function §'!I§(param1:Vector.<§1!n§>) : void
      {
         var _loc3_:§1!n§ = null;
         var _loc4_:int = 0;
         var _loc5_:§1!n§ = null;
         var _loc6_:§1!n§ = null;
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
                     this.§]p§(_loc3_);
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
      
      private function §=!j§(param1:§1!n§, param2:Vector.<§1!n§>, param3:Vector.<§1!n§>) : void
      {
         var _loc9_:§1!n§ = null;
         var _loc10_:§1!n§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1;
         var _loc7_:int = param1.bottom + 1;
         var _loc8_:int = param2.length - 1;
         while(_loc8_ >= 0)
         {
            _loc9_ = param2[_loc8_];
            if(!(_loc4_ >= _loc9_.right || _loc6_ <= _loc9_.x || _loc5_ >= _loc9_.bottom || _loc7_ <= _loc9_.y))
            {
               this.§!";§(param1,_loc9_,param3);
               _loc10_ = param2.pop();
               if(_loc8_ < param2.length)
               {
                  param2[_loc8_] = _loc10_;
               }
            }
            _loc8_--;
         }
         this.§'!I§(param3);
      }
      
      private function §!";§(param1:§1!n§, param2:§1!n§, param3:Vector.<§1!n§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§=!M§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§=!M§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§=!M§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§=!M§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§]p§(param2);
         }
      }
      
      private function §^!h§(param1:int, param2:int) : int
      {
         var _loc7_:§1!n§ = null;
         var _loc3_:§1!n§ = this.§%T§;
         var _loc4_:int = -1;
         var _loc5_:int;
         var _loc6_:int = (_loc5_ = this.§6!o§.length) - 1;
         while(_loc6_ >= 0)
         {
            if((_loc7_ = this.§6!o§[_loc6_]).x < _loc3_.x && param1 <= _loc7_.width && param2 <= _loc7_.height)
            {
               _loc4_ = _loc6_;
               if(param1 == _loc7_.width && _loc7_.width <= _loc7_.height && _loc7_.right < this.§<!f§ || param2 == _loc7_.height && _loc7_.height <= _loc7_.width)
               {
                  break;
               }
               _loc3_ = _loc7_;
            }
            _loc6_--;
         }
         return _loc4_;
      }
      
      private function §=!M§(param1:int, param2:int, param3:int, param4:int) : §1!n§
      {
         var _loc5_:§1!n§ = null;
         if(this.§=K§.length > 0)
         {
            (_loc5_ = this.§=K§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §1!n§(param1,param2,param3,param4);
      }
      
      private function §]p§(param1:§1!n§) : void
      {
         this.§=K§[this.§=K§.length] = param1;
      }
      
      private function §5!"§(param1:int, param2:int, param3:int) : §9" §
      {
         var _loc4_:§9" § = null;
         if(this.§1"E§.length > 0)
         {
            (_loc4_ = this.§1"E§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §9" §(param1,param2,param3);
      }
      
      private function §^!C§(param1:§9" §) : void
      {
         this.§1"E§[this.§1"E§.length] = param1;
      }
   }
}
