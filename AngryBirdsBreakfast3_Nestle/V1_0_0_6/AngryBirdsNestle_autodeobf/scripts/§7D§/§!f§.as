package §7D§
{
   import flash.geom.Rectangle;
   
   public class §!f§
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var §9z§:int = 0;
      
      private var §8#§:int = 0;
      
      private var §%"6§:int = 8;
      
      private var §@"4§:int = 0;
      
      private var §[!Z§:int = 0;
      
      private var §+!;§:Array;
      
      private var §#!2§:Vector.<§>!L§>;
      
      private var §3![§:Vector.<§>!L§>;
      
      private var §>]§:Vector.<§>!L§>;
      
      private var §9!f§:§>!L§;
      
      private var §&!?§:Vector.<§[m§>;
      
      private var §7!v§:Vector.<§>!L§>;
      
      public function §!f§(param1:int, param2:int, param3:int = 0)
      {
         this.§+!;§ = [];
         this.§#!2§ = new Vector.<§>!L§>();
         this.§3![§ = new Vector.<§>!L§>();
         this.§>]§ = new Vector.<§>!L§>();
         this.§&!?§ = new Vector.<§[m§>();
         this.§7!v§ = new Vector.<§>!L§>();
         super();
         this.§9!f§ = new §>!L§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2,param3);
      }
      
      public function get § !J§() : int
      {
         return this.§#!2§.length;
      }
      
      public function get §2k§() : int
      {
         return this.§@"4§;
      }
      
      public function get §<!d§() : int
      {
         return this.§[!Z§;
      }
      
      public function get §@!0§() : int
      {
         return this.§%"6§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         while(this.§#!2§.length)
         {
            this.§6"%§(this.§#!2§.pop());
         }
         while(this.§3![§.length)
         {
            this.§6"%§(this.§3![§.pop());
         }
         this.§9z§ = param1;
         this.§8#§ = param2;
         this.§@"4§ = 0;
         this.§[!Z§ = 0;
         this.§3![§[0] = this.§>!!§(0,0,this.§9z§,this.§8#§);
         while(this.§+!;§.length)
         {
            this.§]!X§(this.§+!;§.pop());
         }
         this.§%"6§ = param3;
      }
      
      public function §6"!§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§>!L§ = this.§#!2§[param1];
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
      
      public function §2!+§(param1:int) : int
      {
         var _loc2_:§>!L§ = this.§#!2§[param1];
         return _loc2_.id;
      }
      
      public function §[!`§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§[m§ = this.§1!I§(param1,param2,param3);
         this.§+!;§.push(_loc4_);
      }
      
      public function §6!Q§(param1:Boolean = true) : int
      {
         var _loc2_:§[m§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§>!L§ = null;
         var _loc7_:§>!L§ = null;
         if(param1)
         {
            this.§+!;§.sortOn("width",Array.NUMERIC);
         }
         while(this.§+!;§.length > 0)
         {
            _loc2_ = this.§+!;§.pop() as §[m§;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§`r§(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§3![§[_loc5_];
               (_loc7_ = this.§>!!§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§0!-§(_loc7_,this.§3![§,this.§>]§);
               while(this.§>]§.length > 0)
               {
                  this.§3![§[this.§3![§.length] = this.§>]§.pop();
               }
               this.§#!2§[this.§#!2§.length] = _loc7_;
               if(_loc7_.right > this.§@"4§)
               {
                  this.§@"4§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§[!Z§)
               {
                  this.§[!Z§ = _loc7_.bottom;
               }
            }
            this.§]!X§(_loc2_);
         }
         return this.§ !J§;
      }
      
      private function §8!Q§(param1:Vector.<§>!L§>) : void
      {
         var _loc3_:§>!L§ = null;
         var _loc4_:int = 0;
         var _loc5_:§>!L§ = null;
         var _loc6_:§>!L§ = null;
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
                     this.§6"%§(_loc3_);
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
      
      private function §0!-§(param1:§>!L§, param2:Vector.<§>!L§>, param3:Vector.<§>!L§>) : void
      {
         var _loc10_:§>!L§ = null;
         var _loc11_:§>!L§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1 + this.§%"6§;
         var _loc7_:int = param1.bottom + 1 + this.§%"6§;
         var _loc8_:§>!L§ = null;
         if(this.§%"6§ == 0)
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
                  _loc8_ = this.§>!!§(param1.x,param1.y,param1.width + this.§%"6§,param1.height + this.§%"6§);
               }
               this.§3!+§(_loc8_,_loc10_,param3);
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
            this.§6"%§(_loc8_);
         }
         this.§8!Q§(param3);
      }
      
      private function §3!+§(param1:§>!L§, param2:§>!L§, param3:Vector.<§>!L§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§>!!§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§>!!§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§>!!§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§>!!§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§6"%§(param2);
         }
      }
      
      private function §`r§(param1:int, param2:int) : int
      {
         var _loc9_:§>!L§ = null;
         var _loc3_:§>!L§ = this.§9!f§;
         var _loc4_:int = -1;
         var _loc5_:int = param1 + this.§%"6§;
         var _loc6_:int = param2 + this.§%"6§;
         var _loc7_:int;
         var _loc8_:int = (_loc7_ = this.§3![§.length) - 1;
         while(_loc8_ >= 0)
         {
            if((_loc9_ = this.§3![§[_loc8_]).x < this.§@"4§ || _loc9_.y < this.§[!Z§)
            {
               if(_loc9_.x < _loc3_.x && _loc5_ <= _loc9_.width && _loc6_ <= _loc9_.height)
               {
                  _loc4_ = _loc8_;
                  if(_loc5_ == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§9z§ || _loc6_ == _loc9_.height && _loc9_.height <= _loc9_.width)
                  {
                     break;
                  }
                  _loc3_ = _loc9_;
               }
            }
            else if(_loc9_.x < _loc3_.x && param1 <= _loc9_.width && param2 <= _loc9_.height)
            {
               _loc4_ = _loc8_;
               if(param1 == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§9z§ || param2 == _loc9_.height && _loc9_.height <= _loc9_.width)
               {
                  break;
               }
               _loc3_ = _loc9_;
            }
            _loc8_--;
         }
         return _loc4_;
      }
      
      private function §>!!§(param1:int, param2:int, param3:int, param4:int) : §>!L§
      {
         var _loc5_:§>!L§ = null;
         if(this.§7!v§.length > 0)
         {
            (_loc5_ = this.§7!v§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §>!L§(param1,param2,param3,param4);
      }
      
      private function §6"%§(param1:§>!L§) : void
      {
         this.§7!v§[this.§7!v§.length] = param1;
      }
      
      private function §1!I§(param1:int, param2:int, param3:int) : §[m§
      {
         var _loc4_:§[m§ = null;
         if(this.§&!?§.length > 0)
         {
            (_loc4_ = this.§&!?§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §[m§(param1,param2,param3);
      }
      
      private function §]!X§(param1:§[m§) : void
      {
         this.§&!?§[this.§&!?§.length] = param1;
      }
   }
}
