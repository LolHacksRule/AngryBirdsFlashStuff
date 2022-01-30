package §-!4§
{
   import flash.geom.Rectangle;
   
   public class §,w§
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var §""7§:int = 0;
      
      private var §%>§:int = 0;
      
      private var §]!<§:int = 8;
      
      private var §`!M§:int = 0;
      
      private var §#!X§:int = 0;
      
      private var §%"!§:Array;
      
      private var §2!R§:Vector.<§2!Y§>;
      
      private var §1!v§:Vector.<§2!Y§>;
      
      private var §9!K§:Vector.<§2!Y§>;
      
      private var §&!x§:§2!Y§;
      
      private var §3!<§:Vector.<§7!V§>;
      
      private var §?!'§:Vector.<§2!Y§>;
      
      public function §,w§(param1:int, param2:int, param3:int = 0)
      {
         this.§%"!§ = [];
         this.§2!R§ = new Vector.<§2!Y§>();
         this.§1!v§ = new Vector.<§2!Y§>();
         this.§9!K§ = new Vector.<§2!Y§>();
         this.§3!<§ = new Vector.<§7!V§>();
         this.§?!'§ = new Vector.<§2!Y§>();
         super();
         this.§&!x§ = new §2!Y§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2,param3);
      }
      
      public function get §;!p§() : int
      {
         return this.§2!R§.length;
      }
      
      public function get §`!I§() : int
      {
         return this.§`!M§;
      }
      
      public function get §6!c§() : int
      {
         return this.§#!X§;
      }
      
      public function get §`g§() : int
      {
         return this.§]!<§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         while(this.§2!R§.length)
         {
            this.§=r§(this.§2!R§.pop());
         }
         while(this.§1!v§.length)
         {
            this.§=r§(this.§1!v§.pop());
         }
         this.§""7§ = param1;
         this.§%>§ = param2;
         this.§`!M§ = 0;
         this.§#!X§ = 0;
         this.§1!v§[0] = this.§],§(0,0,this.§""7§,this.§%>§);
         while(this.§%"!§.length)
         {
            this.§#"6§(this.§%"!§.pop());
         }
         this.§]!<§ = param3;
      }
      
      public function §+!F§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§2!Y§ = this.§2!R§[param1];
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
      
      public function §8"3§(param1:int) : int
      {
         var _loc2_:§2!Y§ = this.§2!R§[param1];
         return _loc2_.id;
      }
      
      public function §;!g§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§7!V§ = this.§4!v§(param1,param2,param3);
         this.§%"!§.push(_loc4_);
      }
      
      public function §-H§(param1:Boolean = true) : int
      {
         var _loc2_:§7!V§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§2!Y§ = null;
         var _loc7_:§2!Y§ = null;
         if(param1)
         {
            this.§%"!§.sortOn("width",Array.NUMERIC);
         }
         while(this.§%"!§.length > 0)
         {
            _loc2_ = this.§%"!§.pop() as §7!V§;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§2!@§(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§1!v§[_loc5_];
               (_loc7_ = this.§],§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§2q§(_loc7_,this.§1!v§,this.§9!K§);
               while(this.§9!K§.length > 0)
               {
                  this.§1!v§[this.§1!v§.length] = this.§9!K§.pop();
               }
               this.§2!R§[this.§2!R§.length] = _loc7_;
               if(_loc7_.right > this.§`!M§)
               {
                  this.§`!M§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§#!X§)
               {
                  this.§#!X§ = _loc7_.bottom;
               }
            }
            this.§#"6§(_loc2_);
         }
         return this.§;!p§;
      }
      
      private function §0!l§(param1:Vector.<§2!Y§>) : void
      {
         var _loc3_:§2!Y§ = null;
         var _loc4_:int = 0;
         var _loc5_:§2!Y§ = null;
         var _loc6_:§2!Y§ = null;
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
                     this.§=r§(_loc3_);
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
      
      private function §2q§(param1:§2!Y§, param2:Vector.<§2!Y§>, param3:Vector.<§2!Y§>) : void
      {
         var _loc10_:§2!Y§ = null;
         var _loc11_:§2!Y§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1 + this.§]!<§;
         var _loc7_:int = param1.bottom + 1 + this.§]!<§;
         var _loc8_:§2!Y§ = null;
         if(this.§]!<§ == 0)
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
                  _loc8_ = this.§],§(param1.x,param1.y,param1.width + this.§]!<§,param1.height + this.§]!<§);
               }
               this.§&!H§(_loc8_,_loc10_,param3);
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
            this.§=r§(_loc8_);
         }
         this.§0!l§(param3);
      }
      
      private function §&!H§(param1:§2!Y§, param2:§2!Y§, param3:Vector.<§2!Y§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§],§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§],§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§],§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§],§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§=r§(param2);
         }
      }
      
      private function §2!@§(param1:int, param2:int) : int
      {
         var _loc9_:§2!Y§ = null;
         var _loc3_:§2!Y§ = this.§&!x§;
         var _loc4_:int = -1;
         var _loc5_:int = param1 + this.§]!<§;
         var _loc6_:int = param2 + this.§]!<§;
         var _loc7_:int;
         var _loc8_:int = (_loc7_ = this.§1!v§.length) - 1;
         while(_loc8_ >= 0)
         {
            if((_loc9_ = this.§1!v§[_loc8_]).x < this.§`!M§ || _loc9_.y < this.§#!X§)
            {
               if(_loc9_.x < _loc3_.x && _loc5_ <= _loc9_.width && _loc6_ <= _loc9_.height)
               {
                  _loc4_ = _loc8_;
                  if(_loc5_ == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§""7§ || _loc6_ == _loc9_.height && _loc9_.height <= _loc9_.width)
                  {
                     break;
                  }
                  _loc3_ = _loc9_;
               }
            }
            else if(_loc9_.x < _loc3_.x && param1 <= _loc9_.width && param2 <= _loc9_.height)
            {
               _loc4_ = _loc8_;
               if(param1 == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§""7§ || param2 == _loc9_.height && _loc9_.height <= _loc9_.width)
               {
                  break;
               }
               _loc3_ = _loc9_;
            }
            _loc8_--;
         }
         return _loc4_;
      }
      
      private function §],§(param1:int, param2:int, param3:int, param4:int) : §2!Y§
      {
         var _loc5_:§2!Y§ = null;
         if(this.§?!'§.length > 0)
         {
            (_loc5_ = this.§?!'§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §2!Y§(param1,param2,param3,param4);
      }
      
      private function §=r§(param1:§2!Y§) : void
      {
         this.§?!'§[this.§?!'§.length] = param1;
      }
      
      private function §4!v§(param1:int, param2:int, param3:int) : §7!V§
      {
         var _loc4_:§7!V§ = null;
         if(this.§3!<§.length > 0)
         {
            (_loc4_ = this.§3!<§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §7!V§(param1,param2,param3);
      }
      
      private function §#"6§(param1:§7!V§) : void
      {
         this.§3!<§[this.§3!<§.length] = param1;
      }
   }
}
