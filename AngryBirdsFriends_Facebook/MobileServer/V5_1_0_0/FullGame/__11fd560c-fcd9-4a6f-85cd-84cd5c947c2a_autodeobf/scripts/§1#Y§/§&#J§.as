package §1#Y§
{
   import flash.geom.Rectangle;
   
   public class §&#J§
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var §4"V§:int = 0;
      
      private var §""&§:int = 0;
      
      private var §3#z§:int = 8;
      
      private var §81§:int = 0;
      
      private var §0#0§:int = 0;
      
      private var §,!8§:Array;
      
      private var §;$7§:Vector.<§4!!§>;
      
      private var §]O§:Vector.<§4!!§>;
      
      private var §<",§:Vector.<§4!!§>;
      
      private var §#g§:§4!!§;
      
      private var §3#d§:Vector.<§0#8§>;
      
      private var §2"7§:Vector.<§4!!§>;
      
      public function §&#J§(param1:int, param2:int, param3:int = 0)
      {
         this.§,!8§ = [];
         this.§;$7§ = new Vector.<§4!!§>();
         this.§]O§ = new Vector.<§4!!§>();
         this.§<",§ = new Vector.<§4!!§>();
         this.§3#d§ = new Vector.<§0#8§>();
         this.§2"7§ = new Vector.<§4!!§>();
         super();
         this.§#g§ = new §4!!§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2,param3);
      }
      
      public function get §<#v§() : int
      {
         return this.§;$7§.length;
      }
      
      public function get §7!]§() : int
      {
         return this.§81§;
      }
      
      public function get §,#H§() : int
      {
         return this.§0#0§;
      }
      
      public function get §'#6§() : int
      {
         return this.§3#z§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         while(this.§;$7§.length)
         {
            this.§1$+§(this.§;$7§.pop());
         }
         while(this.§]O§.length)
         {
            this.§1$+§(this.§]O§.pop());
         }
         this.§4"V§ = param1;
         this.§""&§ = param2;
         this.§81§ = 0;
         this.§0#0§ = 0;
         this.§]O§[0] = this.§5k§(0,0,this.§4"V§,this.§""&§);
         while(this.§,!8§.length)
         {
            this.§5"`§(this.§,!8§.pop());
         }
         this.§3#z§ = param3;
      }
      
      public function §1#Q§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§4!!§ = this.§;$7§[param1];
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
      
      public function §5#f§(param1:int) : int
      {
         var _loc2_:§4!!§ = this.§;$7§[param1];
         return _loc2_.id;
      }
      
      public function §?#H§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§0#8§ = this.§;#=§(param1,param2,param3);
         this.§,!8§.push(_loc4_);
      }
      
      public function §1$3§(param1:Boolean = true) : int
      {
         var _loc2_:§0#8§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§4!!§ = null;
         var _loc7_:§4!!§ = null;
         if(param1)
         {
            this.§,!8§.sortOn("width",Array.NUMERIC);
         }
         while(this.§,!8§.length > 0)
         {
            _loc2_ = this.§,!8§.pop() as §0#8§;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§##N§(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§]O§[_loc5_];
               (_loc7_ = this.§5k§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§4$1§(_loc7_,this.§]O§,this.§<",§);
               while(this.§<",§.length > 0)
               {
                  this.§]O§[this.§]O§.length] = this.§<",§.pop();
               }
               this.§;$7§[this.§;$7§.length] = _loc7_;
               if(_loc7_.right > this.§81§)
               {
                  this.§81§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§0#0§)
               {
                  this.§0#0§ = _loc7_.bottom;
               }
            }
            this.§5"`§(_loc2_);
         }
         return this.§<#v§;
      }
      
      private function §]#Z§(param1:Vector.<§4!!§>) : void
      {
         var _loc3_:§4!!§ = null;
         var _loc4_:int = 0;
         var _loc5_:§4!!§ = null;
         var _loc6_:§4!!§ = null;
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
                     this.§1$+§(_loc3_);
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
      
      private function §4$1§(param1:§4!!§, param2:Vector.<§4!!§>, param3:Vector.<§4!!§>) : void
      {
         var _loc10_:§4!!§ = null;
         var _loc11_:§4!!§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1 + this.§3#z§;
         var _loc7_:int = param1.bottom + 1 + this.§3#z§;
         var _loc8_:§4!!§ = null;
         if(this.§3#z§ == 0)
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
                  _loc8_ = this.§5k§(param1.x,param1.y,param1.width + this.§3#z§,param1.height + this.§3#z§);
               }
               this.§`$2§(_loc8_,_loc10_,param3);
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
            this.§1$+§(_loc8_);
         }
         this.§]#Z§(param3);
      }
      
      private function §`$2§(param1:§4!!§, param2:§4!!§, param3:Vector.<§4!!§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§5k§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§5k§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§5k§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§5k§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§1$+§(param2);
         }
      }
      
      private function §##N§(param1:int, param2:int) : int
      {
         var _loc9_:§4!!§ = null;
         var _loc3_:§4!!§ = this.§#g§;
         var _loc4_:int = -1;
         var _loc5_:int = param1 + this.§3#z§;
         var _loc6_:int = param2 + this.§3#z§;
         var _loc7_:int;
         var _loc8_:int = (_loc7_ = this.§]O§.length) - 1;
         while(_loc8_ >= 0)
         {
            if((_loc9_ = this.§]O§[_loc8_]).x < this.§81§ || _loc9_.y < this.§0#0§)
            {
               if(_loc9_.x < _loc3_.x && _loc5_ <= _loc9_.width && _loc6_ <= _loc9_.height)
               {
                  _loc4_ = _loc8_;
                  if(_loc5_ == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§4"V§ || _loc6_ == _loc9_.height && _loc9_.height <= _loc9_.width)
                  {
                     break;
                  }
                  _loc3_ = _loc9_;
               }
            }
            else if(_loc9_.x < _loc3_.x && param1 <= _loc9_.width && param2 <= _loc9_.height)
            {
               _loc4_ = _loc8_;
               if(param1 == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§4"V§ || param2 == _loc9_.height && _loc9_.height <= _loc9_.width)
               {
                  break;
               }
               _loc3_ = _loc9_;
            }
            _loc8_--;
         }
         return _loc4_;
      }
      
      private function §5k§(param1:int, param2:int, param3:int, param4:int) : §4!!§
      {
         var _loc5_:§4!!§ = null;
         if(this.§2"7§.length > 0)
         {
            (_loc5_ = this.§2"7§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §4!!§(param1,param2,param3,param4);
      }
      
      private function §1$+§(param1:§4!!§) : void
      {
         this.§2"7§[this.§2"7§.length] = param1;
      }
      
      private function §;#=§(param1:int, param2:int, param3:int) : §0#8§
      {
         var _loc4_:§0#8§ = null;
         if(this.§3#d§.length > 0)
         {
            (_loc4_ = this.§3#d§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §0#8§(param1,param2,param3);
      }
      
      private function §5"`§(param1:§0#8§) : void
      {
         this.§3#d§[this.§3#d§.length] = param1;
      }
   }
}
