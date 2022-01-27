package §9$§
{
   import flash.geom.Rectangle;
   
   public class §=!§
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var §^"t§:int = 0;
      
      private var §`!y§:int = 0;
      
      private var §<"%§:int = 8;
      
      private var §-!x§:int = 0;
      
      private var §!"B§:int = 0;
      
      private var §!#!§:Array;
      
      private var §>^§:Vector.<§3!y§>;
      
      private var §?!y§:Vector.<§3!y§>;
      
      private var §&x§:Vector.<§3!y§>;
      
      private var §]>§:§3!y§;
      
      private var §-q§:Vector.<§["V§>;
      
      private var §6"2§:Vector.<§3!y§>;
      
      public function §=!§(param1:int, param2:int, param3:int = 0)
      {
         this.§!#!§ = [];
         this.§>^§ = new Vector.<§3!y§>();
         this.§?!y§ = new Vector.<§3!y§>();
         this.§&x§ = new Vector.<§3!y§>();
         this.§-q§ = new Vector.<§["V§>();
         this.§6"2§ = new Vector.<§3!y§>();
         super();
         this.§]>§ = new §3!y§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2,param3);
      }
      
      public function get §0"V§() : int
      {
         return this.§>^§.length;
      }
      
      public function get §^#,§() : int
      {
         return this.§-!x§;
      }
      
      public function get §<!E§() : int
      {
         return this.§!"B§;
      }
      
      public function get §<f§() : int
      {
         return this.§<"%§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         while(this.§>^§.length)
         {
            this.§;t§(this.§>^§.pop());
         }
         while(this.§?!y§.length)
         {
            this.§;t§(this.§?!y§.pop());
         }
         this.§^"t§ = param1;
         this.§`!y§ = param2;
         this.§-!x§ = 0;
         this.§!"B§ = 0;
         this.§?!y§[0] = this.§8"o§(0,0,this.§^"t§,this.§`!y§);
         while(this.§!#!§.length)
         {
            this.§,"W§(this.§!#!§.pop());
         }
         this.§<"%§ = param3;
      }
      
      public function §2"w§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§3!y§ = this.§>^§[param1];
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
      
      public function §!"U§(param1:int) : int
      {
         var _loc2_:§3!y§ = this.§>^§[param1];
         return _loc2_.id;
      }
      
      public function §1"T§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§["V§ = this.§>"8§(param1,param2,param3);
         this.§!#!§.push(_loc4_);
      }
      
      public function §^?§(param1:Boolean = true) : int
      {
         var _loc2_:§["V§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§3!y§ = null;
         var _loc7_:§3!y§ = null;
         if(param1)
         {
            this.§!#!§.sortOn("width",Array.NUMERIC);
         }
         while(this.§!#!§.length > 0)
         {
            _loc2_ = this.§!#!§.pop() as §["V§;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§["7§(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§?!y§[_loc5_];
               (_loc7_ = this.§8"o§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§>!Q§(_loc7_,this.§?!y§,this.§&x§);
               while(this.§&x§.length > 0)
               {
                  this.§?!y§[this.§?!y§.length] = this.§&x§.pop();
               }
               this.§>^§[this.§>^§.length] = _loc7_;
               if(_loc7_.right > this.§-!x§)
               {
                  this.§-!x§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§!"B§)
               {
                  this.§!"B§ = _loc7_.bottom;
               }
            }
            this.§,"W§(_loc2_);
         }
         return this.§0"V§;
      }
      
      private function §]B§(param1:Vector.<§3!y§>) : void
      {
         var _loc3_:§3!y§ = null;
         var _loc4_:int = 0;
         var _loc5_:§3!y§ = null;
         var _loc6_:§3!y§ = null;
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
                     this.§;t§(_loc3_);
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
      
      private function §>!Q§(param1:§3!y§, param2:Vector.<§3!y§>, param3:Vector.<§3!y§>) : void
      {
         var _loc10_:§3!y§ = null;
         var _loc11_:§3!y§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1 + this.§<"%§;
         var _loc7_:int = param1.bottom + 1 + this.§<"%§;
         var _loc8_:§3!y§ = null;
         if(this.§<"%§ == 0)
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
                  _loc8_ = this.§8"o§(param1.x,param1.y,param1.width + this.§<"%§,param1.height + this.§<"%§);
               }
               this.§6#6§(_loc8_,_loc10_,param3);
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
            this.§;t§(_loc8_);
         }
         this.§]B§(param3);
      }
      
      private function §6#6§(param1:§3!y§, param2:§3!y§, param3:Vector.<§3!y§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§8"o§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§8"o§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§8"o§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§8"o§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§;t§(param2);
         }
      }
      
      private function §["7§(param1:int, param2:int) : int
      {
         var _loc9_:§3!y§ = null;
         var _loc3_:§3!y§ = this.§]>§;
         var _loc4_:int = -1;
         var _loc5_:int = param1 + this.§<"%§;
         var _loc6_:int = param2 + this.§<"%§;
         var _loc7_:int;
         var _loc8_:int = (_loc7_ = this.§?!y§.length) - 1;
         while(_loc8_ >= 0)
         {
            if((_loc9_ = this.§?!y§[_loc8_]).x < this.§-!x§ || _loc9_.y < this.§!"B§)
            {
               if(_loc9_.x < _loc3_.x && _loc5_ <= _loc9_.width && _loc6_ <= _loc9_.height)
               {
                  _loc4_ = _loc8_;
                  if(_loc5_ == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§^"t§ || _loc6_ == _loc9_.height && _loc9_.height <= _loc9_.width)
                  {
                     break;
                  }
                  _loc3_ = _loc9_;
               }
            }
            else if(_loc9_.x < _loc3_.x && param1 <= _loc9_.width && param2 <= _loc9_.height)
            {
               _loc4_ = _loc8_;
               if(param1 == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§^"t§ || param2 == _loc9_.height && _loc9_.height <= _loc9_.width)
               {
                  break;
               }
               _loc3_ = _loc9_;
            }
            _loc8_--;
         }
         return _loc4_;
      }
      
      private function §8"o§(param1:int, param2:int, param3:int, param4:int) : §3!y§
      {
         var _loc5_:§3!y§ = null;
         if(this.§6"2§.length > 0)
         {
            (_loc5_ = this.§6"2§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §3!y§(param1,param2,param3,param4);
      }
      
      private function §;t§(param1:§3!y§) : void
      {
         this.§6"2§[this.§6"2§.length] = param1;
      }
      
      private function §>"8§(param1:int, param2:int, param3:int) : §["V§
      {
         var _loc4_:§["V§ = null;
         if(this.§-q§.length > 0)
         {
            (_loc4_ = this.§-q§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §["V§(param1,param2,param3);
      }
      
      private function §,"W§(param1:§["V§) : void
      {
         this.§-q§[this.§-q§.length] = param1;
      }
   }
}
