package §4G§
{
   import flash.geom.Rectangle;
   
   public class § #"§
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var §6"?§:int = 0;
      
      private var §[!4§:int = 0;
      
      private var §%"Q§:int = 8;
      
      private var §+##§:int = 0;
      
      private var §4"V§:int = 0;
      
      private var §#"u§:Array;
      
      private var §]!L§:Vector.<§'!m§>;
      
      private var §%!'§:Vector.<§'!m§>;
      
      private var §4#a§:Vector.<§'!m§>;
      
      private var §`!y§:§'!m§;
      
      private var §5"6§:Vector.<§3z§>;
      
      private var §5!#§:Vector.<§'!m§>;
      
      public function § #"§(param1:int, param2:int, param3:int = 0)
      {
         this.§#"u§ = [];
         this.§]!L§ = new Vector.<§'!m§>();
         this.§%!'§ = new Vector.<§'!m§>();
         this.§4#a§ = new Vector.<§'!m§>();
         this.§5"6§ = new Vector.<§3z§>();
         this.§5!#§ = new Vector.<§'!m§>();
         super();
         this.§`!y§ = new §'!m§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2,param3);
      }
      
      public function get §'"u§() : int
      {
         return this.§]!L§.length;
      }
      
      public function get §@#E§() : int
      {
         return this.§+##§;
      }
      
      public function get §9Q§() : int
      {
         return this.§4"V§;
      }
      
      public function get §,"9§() : int
      {
         return this.§%"Q§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         while(this.§]!L§.length)
         {
            this.§@!S§(this.§]!L§.pop());
         }
         while(this.§%!'§.length)
         {
            this.§@!S§(this.§%!'§.pop());
         }
         this.§6"?§ = param1;
         this.§[!4§ = param2;
         this.§+##§ = 0;
         this.§4"V§ = 0;
         this.§%!'§[0] = this.§%"m§(0,0,this.§6"?§,this.§[!4§);
         while(this.§#"u§.length)
         {
            this.§`!@§(this.§#"u§.pop());
         }
         this.§%"Q§ = param3;
      }
      
      public function §^E§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§'!m§ = this.§]!L§[param1];
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
      
      public function §3"w§(param1:int) : int
      {
         var _loc2_:§'!m§ = this.§]!L§[param1];
         return _loc2_.id;
      }
      
      public function §&"M§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§3z§ = this.§]!k§(param1,param2,param3);
         this.§#"u§.push(_loc4_);
      }
      
      public function §+!_§(param1:Boolean = true) : int
      {
         var _loc2_:§3z§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§'!m§ = null;
         var _loc7_:§'!m§ = null;
         if(param1)
         {
            this.§#"u§.sortOn("width",Array.NUMERIC);
         }
         while(this.§#"u§.length > 0)
         {
            _loc2_ = this.§#"u§.pop() as §3z§;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§'m§(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§%!'§[_loc5_];
               (_loc7_ = this.§%"m§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§]!I§(_loc7_,this.§%!'§,this.§4#a§);
               while(this.§4#a§.length > 0)
               {
                  this.§%!'§[this.§%!'§.length] = this.§4#a§.pop();
               }
               this.§]!L§[this.§]!L§.length] = _loc7_;
               if(_loc7_.right > this.§+##§)
               {
                  this.§+##§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§4"V§)
               {
                  this.§4"V§ = _loc7_.bottom;
               }
            }
            this.§`!@§(_loc2_);
         }
         return this.§'"u§;
      }
      
      private function §;p§(param1:Vector.<§'!m§>) : void
      {
         var _loc3_:§'!m§ = null;
         var _loc4_:int = 0;
         var _loc5_:§'!m§ = null;
         var _loc6_:§'!m§ = null;
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
                     this.§@!S§(_loc3_);
                     _loc6_ = param1.pop();
                     if(_loc2_ < param1.length)
                     {
                        param1[_loc2_] = _loc6_;
                     }
                     break;
                  }
               }
               _loc4_--;
            }
            _loc2_--;
         }
      }
      
      private function §]!I§(param1:§'!m§, param2:Vector.<§'!m§>, param3:Vector.<§'!m§>) : void
      {
         var _loc10_:§'!m§ = null;
         var _loc11_:§'!m§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1 + this.§%"Q§;
         var _loc7_:int = param1.bottom + 1 + this.§%"Q§;
         var _loc8_:§'!m§ = null;
         if(this.§%"Q§ == 0)
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
                  _loc8_ = this.§%"m§(param1.x,param1.y,param1.width + this.§%"Q§,param1.height + this.§%"Q§);
               }
               this.§^#B§(_loc8_,_loc10_,param3);
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
            this.§@!S§(_loc8_);
         }
         this.§;p§(param3);
      }
      
      private function §^#B§(param1:§'!m§, param2:§'!m§, param3:Vector.<§'!m§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§%"m§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§%"m§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§%"m§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§%"m§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§@!S§(param2);
         }
      }
      
      private function §'m§(param1:int, param2:int) : int
      {
         var _loc9_:§'!m§ = null;
         var _loc3_:§'!m§ = this.§`!y§;
         var _loc4_:int = -1;
         var _loc5_:int = param1 + this.§%"Q§;
         var _loc6_:int = param2 + this.§%"Q§;
         var _loc7_:int;
         var _loc8_:int = (_loc7_ = this.§%!'§.length) - 1;
         while(_loc8_ >= 0)
         {
            if((_loc9_ = this.§%!'§[_loc8_]).x < this.§+##§ || _loc9_.y < this.§4"V§)
            {
               if(_loc9_.x < _loc3_.x && _loc5_ <= _loc9_.width && _loc6_ <= _loc9_.height)
               {
                  _loc4_ = _loc8_;
                  if(_loc5_ == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§6"?§ || _loc6_ == _loc9_.height && _loc9_.height <= _loc9_.width)
                  {
                     break;
                  }
                  _loc3_ = _loc9_;
               }
            }
            else if(_loc9_.x < _loc3_.x && param1 <= _loc9_.width && param2 <= _loc9_.height)
            {
               _loc4_ = _loc8_;
               if(param1 == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§6"?§ || param2 == _loc9_.height && _loc9_.height <= _loc9_.width)
               {
                  break;
               }
               _loc3_ = _loc9_;
            }
            _loc8_--;
         }
         return _loc4_;
      }
      
      private function §%"m§(param1:int, param2:int, param3:int, param4:int) : §'!m§
      {
         var _loc5_:§'!m§ = null;
         if(this.§5!#§.length > 0)
         {
            (_loc5_ = this.§5!#§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §'!m§(param1,param2,param3,param4);
      }
      
      private function §@!S§(param1:§'!m§) : void
      {
         this.§5!#§[this.§5!#§.length] = param1;
      }
      
      private function §]!k§(param1:int, param2:int, param3:int) : §3z§
      {
         var _loc4_:§3z§ = null;
         if(this.§5"6§.length > 0)
         {
            (_loc4_ = this.§5"6§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §3z§(param1,param2,param3);
      }
      
      private function §`!@§(param1:§3z§) : void
      {
         this.§5"6§[this.§5"6§.length] = param1;
      }
   }
}
