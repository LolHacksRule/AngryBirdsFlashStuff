package §<M§
{
   import flash.geom.Rectangle;
   
   public class §2W§
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var § ";§:int = 0;
      
      private var §;!U§:int = 0;
      
      private var §8!&§:int = 8;
      
      private var §<!h§:int = 0;
      
      private var §`$ §:int = 0;
      
      private var §1!w§:Array;
      
      private var §8#p§:Vector.<§?!s§>;
      
      private var §,$!§:Vector.<§?!s§>;
      
      private var §7!2§:Vector.<§?!s§>;
      
      private var §9"g§:§?!s§;
      
      private var §,#]§:Vector.<§["3§>;
      
      private var §]!v§:Vector.<§?!s§>;
      
      public function §2W§(param1:int, param2:int, param3:int = 0)
      {
         this.§1!w§ = [];
         this.§8#p§ = new Vector.<§?!s§>();
         this.§,$!§ = new Vector.<§?!s§>();
         this.§7!2§ = new Vector.<§?!s§>();
         this.§,#]§ = new Vector.<§["3§>();
         this.§]!v§ = new Vector.<§?!s§>();
         super();
         this.§9"g§ = new §?!s§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2,param3);
      }
      
      public function get §0I§() : int
      {
         return this.§8#p§.length;
      }
      
      public function get §["@§() : int
      {
         return this.§<!h§;
      }
      
      public function get §"#[§() : int
      {
         return this.§`$ §;
      }
      
      public function get §`>§() : int
      {
         return this.§8!&§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         while(this.§8#p§.length)
         {
            this.§`2§(this.§8#p§.pop());
         }
         while(this.§,$!§.length)
         {
            this.§`2§(this.§,$!§.pop());
         }
         this.§ ";§ = param1;
         this.§;!U§ = param2;
         this.§<!h§ = 0;
         this.§`$ § = 0;
         this.§,$!§[0] = this.§;$§(0,0,this.§ ";§,this.§;!U§);
         while(this.§1!w§.length)
         {
            this.§,#<§(this.§1!w§.pop());
         }
         this.§8!&§ = param3;
      }
      
      public function §0"K§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§?!s§ = this.§8#p§[param1];
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
      
      public function §'$!§(param1:int) : int
      {
         var _loc2_:§?!s§ = this.§8#p§[param1];
         return _loc2_.id;
      }
      
      public function §["6§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§["3§ = this.§+"V§(param1,param2,param3);
         this.§1!w§.push(_loc4_);
      }
      
      public function §8!5§(param1:Boolean = true) : int
      {
         var _loc2_:§["3§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§?!s§ = null;
         var _loc7_:§?!s§ = null;
         if(param1)
         {
            this.§1!w§.sortOn("width",Array.NUMERIC);
         }
         while(this.§1!w§.length > 0)
         {
            _loc2_ = this.§1!w§.pop() as §["3§;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§="0§(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§,$!§[_loc5_];
               (_loc7_ = this.§;$§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§24§(_loc7_,this.§,$!§,this.§7!2§);
               while(this.§7!2§.length > 0)
               {
                  this.§,$!§[this.§,$!§.length] = this.§7!2§.pop();
               }
               this.§8#p§[this.§8#p§.length] = _loc7_;
               if(_loc7_.right > this.§<!h§)
               {
                  this.§<!h§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§`$ §)
               {
                  this.§`$ § = _loc7_.bottom;
               }
            }
            this.§,#<§(_loc2_);
         }
         return this.§0I§;
      }
      
      private function §@#f§(param1:Vector.<§?!s§>) : void
      {
         var _loc3_:§?!s§ = null;
         var _loc4_:int = 0;
         var _loc5_:§?!s§ = null;
         var _loc6_:§?!s§ = null;
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
                     this.§`2§(_loc3_);
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
      
      private function §24§(param1:§?!s§, param2:Vector.<§?!s§>, param3:Vector.<§?!s§>) : void
      {
         var _loc10_:§?!s§ = null;
         var _loc11_:§?!s§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1 + this.§8!&§;
         var _loc7_:int = param1.bottom + 1 + this.§8!&§;
         var _loc8_:§?!s§ = null;
         if(this.§8!&§ == 0)
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
                  _loc8_ = this.§;$§(param1.x,param1.y,param1.width + this.§8!&§,param1.height + this.§8!&§);
               }
               this.§ "k§(_loc8_,_loc10_,param3);
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
            this.§`2§(_loc8_);
         }
         this.§@#f§(param3);
      }
      
      private function § "k§(param1:§?!s§, param2:§?!s§, param3:Vector.<§?!s§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§;$§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§;$§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§;$§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§;$§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§`2§(param2);
         }
      }
      
      private function §="0§(param1:int, param2:int) : int
      {
         var _loc9_:§?!s§ = null;
         var _loc3_:§?!s§ = this.§9"g§;
         var _loc4_:int = -1;
         var _loc5_:int = param1 + this.§8!&§;
         var _loc6_:int = param2 + this.§8!&§;
         var _loc7_:int;
         var _loc8_:int = (_loc7_ = this.§,$!§.length) - 1;
         while(_loc8_ >= 0)
         {
            if((_loc9_ = this.§,$!§[_loc8_]).x < this.§<!h§ || _loc9_.y < this.§`$ §)
            {
               if(_loc9_.x < _loc3_.x && _loc5_ <= _loc9_.width && _loc6_ <= _loc9_.height)
               {
                  _loc4_ = _loc8_;
                  if(_loc5_ == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§ ";§ || _loc6_ == _loc9_.height && _loc9_.height <= _loc9_.width)
                  {
                     break;
                  }
                  _loc3_ = _loc9_;
               }
            }
            else if(_loc9_.x < _loc3_.x && param1 <= _loc9_.width && param2 <= _loc9_.height)
            {
               _loc4_ = _loc8_;
               if(param1 == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§ ";§ || param2 == _loc9_.height && _loc9_.height <= _loc9_.width)
               {
                  break;
               }
               _loc3_ = _loc9_;
            }
            _loc8_--;
         }
         return _loc4_;
      }
      
      private function §;$§(param1:int, param2:int, param3:int, param4:int) : §?!s§
      {
         var _loc5_:§?!s§ = null;
         if(this.§]!v§.length > 0)
         {
            (_loc5_ = this.§]!v§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §?!s§(param1,param2,param3,param4);
      }
      
      private function §`2§(param1:§?!s§) : void
      {
         this.§]!v§[this.§]!v§.length] = param1;
      }
      
      private function §+"V§(param1:int, param2:int, param3:int) : §["3§
      {
         var _loc4_:§["3§ = null;
         if(this.§,#]§.length > 0)
         {
            (_loc4_ = this.§,#]§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §["3§(param1,param2,param3);
      }
      
      private function §,#<§(param1:§["3§) : void
      {
         this.§,#]§[this.§,#]§.length] = param1;
      }
   }
}
