package §4h§
{
   import flash.geom.Rectangle;
   
   public class §##W§
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var §@#Z§:int = 0;
      
      private var §+#j§:int = 0;
      
      private var §>#p§:int = 8;
      
      private var §?!R§:int = 0;
      
      private var §=!q§:int = 0;
      
      private var §5"A§:Array;
      
      private var §'!=§:Vector.<§6#1§>;
      
      private var §0"?§:Vector.<§6#1§>;
      
      private var § "I§:Vector.<§6#1§>;
      
      private var §1T§:§6#1§;
      
      private var §3!A§:Vector.<§8"M§>;
      
      private var §!#s§:Vector.<§6#1§>;
      
      public function §##W§(param1:int, param2:int, param3:int = 0)
      {
         this.§5"A§ = [];
         this.§'!=§ = new Vector.<§6#1§>();
         this.§0"?§ = new Vector.<§6#1§>();
         this.§ "I§ = new Vector.<§6#1§>();
         this.§3!A§ = new Vector.<§8"M§>();
         this.§!#s§ = new Vector.<§6#1§>();
         super();
         this.§1T§ = new §6#1§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2,param3);
      }
      
      public function get §;"y§() : int
      {
         return this.§'!=§.length;
      }
      
      public function get §?7§() : int
      {
         return this.§?!R§;
      }
      
      public function get §`$$§() : int
      {
         return this.§=!q§;
      }
      
      public function get §3_§() : int
      {
         return this.§>#p§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         while(this.§'!=§.length)
         {
            this.§&#K§(this.§'!=§.pop());
         }
         while(this.§0"?§.length)
         {
            this.§&#K§(this.§0"?§.pop());
         }
         this.§@#Z§ = param1;
         this.§+#j§ = param2;
         this.§?!R§ = 0;
         this.§=!q§ = 0;
         this.§0"?§[0] = this.§!"9§(0,0,this.§@#Z§,this.§+#j§);
         while(this.§5"A§.length)
         {
            this.§"Y§(this.§5"A§.pop());
         }
         this.§>#p§ = param3;
      }
      
      public function §="L§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§6#1§ = this.§'!=§[param1];
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
      
      public function §;#1§(param1:int) : int
      {
         var _loc2_:§6#1§ = this.§'!=§[param1];
         return _loc2_.id;
      }
      
      public function §@"!§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§8"M§ = this.§9#m§(param1,param2,param3);
         this.§5"A§.push(_loc4_);
      }
      
      public function § L§(param1:Boolean = true) : int
      {
         var _loc2_:§8"M§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§6#1§ = null;
         var _loc7_:§6#1§ = null;
         if(param1)
         {
            this.§5"A§.sortOn("width",Array.NUMERIC);
         }
         while(this.§5"A§.length > 0)
         {
            _loc2_ = this.§5"A§.pop() as §8"M§;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§-!x§(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§0"?§[_loc5_];
               (_loc7_ = this.§!"9§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§>!c§(_loc7_,this.§0"?§,this.§ "I§);
               while(this.§ "I§.length > 0)
               {
                  this.§0"?§[this.§0"?§.length] = this.§ "I§.pop();
               }
               this.§'!=§[this.§'!=§.length] = _loc7_;
               if(_loc7_.right > this.§?!R§)
               {
                  this.§?!R§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§=!q§)
               {
                  this.§=!q§ = _loc7_.bottom;
               }
            }
            this.§"Y§(_loc2_);
         }
         return this.§;"y§;
      }
      
      private function §`"p§(param1:Vector.<§6#1§>) : void
      {
         var _loc3_:§6#1§ = null;
         var _loc4_:int = 0;
         var _loc5_:§6#1§ = null;
         var _loc6_:§6#1§ = null;
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
                     this.§&#K§(_loc3_);
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
      
      private function §>!c§(param1:§6#1§, param2:Vector.<§6#1§>, param3:Vector.<§6#1§>) : void
      {
         var _loc10_:§6#1§ = null;
         var _loc11_:§6#1§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1 + this.§>#p§;
         var _loc7_:int = param1.bottom + 1 + this.§>#p§;
         var _loc8_:§6#1§ = null;
         if(this.§>#p§ == 0)
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
                  _loc8_ = this.§!"9§(param1.x,param1.y,param1.width + this.§>#p§,param1.height + this.§>#p§);
               }
               this.§,#D§(_loc8_,_loc10_,param3);
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
            this.§&#K§(_loc8_);
         }
         this.§`"p§(param3);
      }
      
      private function §,#D§(param1:§6#1§, param2:§6#1§, param3:Vector.<§6#1§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§!"9§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§!"9§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§!"9§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§!"9§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§&#K§(param2);
         }
      }
      
      private function §-!x§(param1:int, param2:int) : int
      {
         var _loc9_:§6#1§ = null;
         var _loc3_:§6#1§ = this.§1T§;
         var _loc4_:int = -1;
         var _loc5_:int = param1 + this.§>#p§;
         var _loc6_:int = param2 + this.§>#p§;
         var _loc8_:int = int(this.§0"?§.length) - 1;
         while(_loc8_ >= 0)
         {
            if((_loc9_ = this.§0"?§[_loc8_]).x < this.§?!R§ || _loc9_.y < this.§=!q§)
            {
               if(_loc9_.x < _loc3_.x && _loc5_ <= _loc9_.width && _loc6_ <= _loc9_.height)
               {
                  _loc4_ = _loc8_;
                  if(_loc5_ == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§@#Z§ || _loc6_ == _loc9_.height && _loc9_.height <= _loc9_.width)
                  {
                     break;
                  }
                  _loc3_ = _loc9_;
               }
            }
            else if(_loc9_.x < _loc3_.x && param1 <= _loc9_.width && param2 <= _loc9_.height)
            {
               _loc4_ = _loc8_;
               if(param1 == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§@#Z§ || param2 == _loc9_.height && _loc9_.height <= _loc9_.width)
               {
                  break;
               }
               _loc3_ = _loc9_;
            }
            _loc8_--;
         }
         return _loc4_;
      }
      
      private function §!"9§(param1:int, param2:int, param3:int, param4:int) : §6#1§
      {
         var _loc5_:§6#1§ = null;
         if(this.§!#s§.length > 0)
         {
            (_loc5_ = this.§!#s§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §6#1§(param1,param2,param3,param4);
      }
      
      private function §&#K§(param1:§6#1§) : void
      {
         this.§!#s§[this.§!#s§.length] = param1;
      }
      
      private function §9#m§(param1:int, param2:int, param3:int) : §8"M§
      {
         var _loc4_:§8"M§ = null;
         if(this.§3!A§.length > 0)
         {
            (_loc4_ = this.§3!A§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §8"M§(param1,param2,param3);
      }
      
      private function §"Y§(param1:§8"M§) : void
      {
         this.§3!A§[this.§3!A§.length] = param1;
      }
   }
}
