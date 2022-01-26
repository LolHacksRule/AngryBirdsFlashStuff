package §1"%§
{
   import flash.geom.Rectangle;
   
   public class §?#§
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var §<`§:int = 0;
      
      private var §#!A§:int = 0;
      
      private var §!!7§:int = 8;
      
      private var §-v§:int = 0;
      
      private var §%!h§:int = 0;
      
      private var §0i§:Array;
      
      private var §7!G§:Vector.<§!R§>;
      
      private var §61§:Vector.<§!R§>;
      
      private var §,!K§:Vector.<§!R§>;
      
      private var §@R§:§!R§;
      
      private var §%p§:Vector.<§6r§>;
      
      private var §"%§:Vector.<§!R§>;
      
      public function §?#§(param1:int, param2:int, param3:int = 0)
      {
         this.§0i§ = [];
         this.§7!G§ = new Vector.<§!R§>();
         this.§61§ = new Vector.<§!R§>();
         this.§,!K§ = new Vector.<§!R§>();
         this.§%p§ = new Vector.<§6r§>();
         this.§"%§ = new Vector.<§!R§>();
         super();
         this.§@R§ = new §!R§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2,param3);
      }
      
      public function get §+I§() : int
      {
         return this.§7!G§.length;
      }
      
      public function get §9!J§() : int
      {
         return this.§-v§;
      }
      
      public function get §&;§() : int
      {
         return this.§%!h§;
      }
      
      public function get §-!c§() : int
      {
         return this.§!!7§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         while(this.§7!G§.length)
         {
            this.§5!X§(this.§7!G§.pop());
         }
         while(this.§61§.length)
         {
            this.§5!X§(this.§61§.pop());
         }
         this.§<`§ = param1;
         this.§#!A§ = param2;
         this.§-v§ = 0;
         this.§%!h§ = 0;
         this.§61§[0] = this.§&,§(0,0,this.§<`§,this.§#!A§);
         while(this.§0i§.length)
         {
            this.§1!V§(this.§0i§.pop());
         }
         this.§!!7§ = param3;
      }
      
      public function §6!'§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§!R§ = this.§7!G§[param1];
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
      
      public function §<P§(param1:int) : int
      {
         var _loc2_:§!R§ = this.§7!G§[param1];
         return _loc2_.id;
      }
      
      public function §&!`§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§6r§ = this.§1R§(param1,param2,param3);
         this.§0i§.push(_loc4_);
      }
      
      public function §6!_§(param1:Boolean = true) : int
      {
         var _loc2_:§6r§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§!R§ = null;
         var _loc7_:§!R§ = null;
         if(param1)
         {
            this.§0i§.sortOn("width",Array.NUMERIC);
         }
         while(this.§0i§.length > 0)
         {
            _loc2_ = this.§0i§.pop() as §6r§;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§@!S§(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§61§[_loc5_];
               (_loc7_ = this.§&,§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§4"#§(_loc7_,this.§61§,this.§,!K§);
               while(this.§,!K§.length > 0)
               {
                  this.§61§[this.§61§.length] = this.§,!K§.pop();
               }
               this.§7!G§[this.§7!G§.length] = _loc7_;
               if(_loc7_.right > this.§-v§)
               {
                  this.§-v§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§%!h§)
               {
                  this.§%!h§ = _loc7_.bottom;
               }
            }
            this.§1!V§(_loc2_);
         }
         return this.§+I§;
      }
      
      private function §!!1§(param1:Vector.<§!R§>) : void
      {
         var _loc3_:§!R§ = null;
         var _loc4_:int = 0;
         var _loc5_:§!R§ = null;
         var _loc6_:§!R§ = null;
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
                     this.§5!X§(_loc3_);
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
      
      private function §4"#§(param1:§!R§, param2:Vector.<§!R§>, param3:Vector.<§!R§>) : void
      {
         var _loc10_:§!R§ = null;
         var _loc11_:§!R§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1 + this.§!!7§;
         var _loc7_:int = param1.bottom + 1 + this.§!!7§;
         var _loc8_:§!R§ = null;
         if(this.§!!7§ == 0)
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
                  _loc8_ = this.§&,§(param1.x,param1.y,param1.width + this.§!!7§,param1.height + this.§!!7§);
               }
               this.§switch§(_loc8_,_loc10_,param3);
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
            this.§5!X§(_loc8_);
         }
         this.§!!1§(param3);
      }
      
      private function §switch§(param1:§!R§, param2:§!R§, param3:Vector.<§!R§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§&,§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§&,§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§&,§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§&,§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§5!X§(param2);
         }
      }
      
      private function §@!S§(param1:int, param2:int) : int
      {
         var _loc9_:§!R§ = null;
         var _loc3_:§!R§ = this.§@R§;
         var _loc4_:int = -1;
         var _loc5_:int = param1 + this.§!!7§;
         var _loc6_:int = param2 + this.§!!7§;
         var _loc7_:int;
         var _loc8_:int = (_loc7_ = this.§61§.length) - 1;
         while(_loc8_ >= 0)
         {
            if((_loc9_ = this.§61§[_loc8_]).x < this.§-v§ || _loc9_.y < this.§%!h§)
            {
               if(_loc9_.x < _loc3_.x && _loc5_ <= _loc9_.width && _loc6_ <= _loc9_.height)
               {
                  _loc4_ = _loc8_;
                  if(_loc5_ == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§<`§ || _loc6_ == _loc9_.height && _loc9_.height <= _loc9_.width)
                  {
                     break;
                  }
                  _loc3_ = _loc9_;
               }
            }
            else if(_loc9_.x < _loc3_.x && param1 <= _loc9_.width && param2 <= _loc9_.height)
            {
               _loc4_ = _loc8_;
               if(param1 == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§<`§ || param2 == _loc9_.height && _loc9_.height <= _loc9_.width)
               {
                  break;
               }
               _loc3_ = _loc9_;
            }
            _loc8_--;
         }
         return _loc4_;
      }
      
      private function §&,§(param1:int, param2:int, param3:int, param4:int) : §!R§
      {
         var _loc5_:§!R§ = null;
         if(this.§"%§.length > 0)
         {
            (_loc5_ = this.§"%§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §!R§(param1,param2,param3,param4);
      }
      
      private function §5!X§(param1:§!R§) : void
      {
         this.§"%§[this.§"%§.length] = param1;
      }
      
      private function §1R§(param1:int, param2:int, param3:int) : §6r§
      {
         var _loc4_:§6r§ = null;
         if(this.§%p§.length > 0)
         {
            (_loc4_ = this.§%p§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §6r§(param1,param2,param3);
      }
      
      private function §1!V§(param1:§6r§) : void
      {
         this.§%p§[this.§%p§.length] = param1;
      }
   }
}
