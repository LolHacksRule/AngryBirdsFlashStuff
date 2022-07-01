package §?!t§
{
   import flash.geom.Rectangle;
   
   public class §=s§
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var §?!<§:int = 0;
      
      private var §1+§:int = 0;
      
      private var §[!I§:int = 8;
      
      private var §2$§:int = 0;
      
      private var §,!c§:int = 0;
      
      private var §,!V§:Array;
      
      private var §?! §:Vector.<§#!8§>;
      
      private var §,""§:Vector.<§#!8§>;
      
      private var §8v§:Vector.<§#!8§>;
      
      private var §9!]§:§#!8§;
      
      private var § !-§:Vector.<§^!#§>;
      
      private var §@""§:Vector.<§#!8§>;
      
      public function §=s§(param1:int, param2:int, param3:int = 0)
      {
         this.§,!V§ = [];
         this.§?! § = new Vector.<§#!8§>();
         this.§,""§ = new Vector.<§#!8§>();
         this.§8v§ = new Vector.<§#!8§>();
         this.§ !-§ = new Vector.<§^!#§>();
         this.§@""§ = new Vector.<§#!8§>();
         super();
         this.§9!]§ = new §#!8§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2,param3);
      }
      
      public function get §5!I§() : int
      {
         return this.§?! §.length;
      }
      
      public function get §8!B§() : int
      {
         return this.§2$§;
      }
      
      public function get §%D§() : int
      {
         return this.§,!c§;
      }
      
      public function get §3"1§() : int
      {
         return this.§[!I§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         while(this.§?! §.length)
         {
            this.§,!5§(this.§?! §.pop());
         }
         while(this.§,""§.length)
         {
            this.§,!5§(this.§,""§.pop());
         }
         this.§?!<§ = param1;
         this.§1+§ = param2;
         this.§2$§ = 0;
         this.§,!c§ = 0;
         this.§,""§[0] = this.§!j§(0,0,this.§?!<§,this.§1+§);
         while(this.§,!V§.length)
         {
            this.§^o§(this.§,!V§.pop());
         }
         this.§[!I§ = param3;
      }
      
      public function §'!&§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§#!8§ = this.§?! §[param1];
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
      
      public function §&!4§(param1:int) : int
      {
         var _loc2_:§#!8§ = this.§?! §[param1];
         return _loc2_.id;
      }
      
      public function §-h§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§^!#§ = this.§?9§(param1,param2,param3);
         this.§,!V§.push(_loc4_);
      }
      
      public function §+"2§(param1:Boolean = true) : int
      {
         var _loc2_:§^!#§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§#!8§ = null;
         var _loc7_:§#!8§ = null;
         if(param1)
         {
            this.§,!V§.sortOn("width",Array.NUMERIC);
         }
         while(this.§,!V§.length > 0)
         {
            _loc2_ = this.§,!V§.pop() as §^!#§;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§<!U§(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§,""§[_loc5_];
               (_loc7_ = this.§!j§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§#_§(_loc7_,this.§,""§,this.§8v§);
               while(this.§8v§.length > 0)
               {
                  this.§,""§[this.§,""§.length] = this.§8v§.pop();
               }
               this.§?! §[this.§?! §.length] = _loc7_;
               if(_loc7_.right > this.§2$§)
               {
                  this.§2$§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§,!c§)
               {
                  this.§,!c§ = _loc7_.bottom;
               }
            }
            this.§^o§(_loc2_);
         }
         return this.§5!I§;
      }
      
      private function §-!y§(param1:Vector.<§#!8§>) : void
      {
         var _loc3_:§#!8§ = null;
         var _loc4_:int = 0;
         var _loc5_:§#!8§ = null;
         var _loc6_:§#!8§ = null;
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
                     this.§,!5§(_loc3_);
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
      
      private function §#_§(param1:§#!8§, param2:Vector.<§#!8§>, param3:Vector.<§#!8§>) : void
      {
         var _loc10_:§#!8§ = null;
         var _loc11_:§#!8§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1 + this.§[!I§;
         var _loc7_:int = param1.bottom + 1 + this.§[!I§;
         var _loc8_:§#!8§ = null;
         if(this.§[!I§ == 0)
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
                  _loc8_ = this.§!j§(param1.x,param1.y,param1.width + this.§[!I§,param1.height + this.§[!I§);
               }
               this.§'!8§(_loc8_,_loc10_,param3);
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
            this.§,!5§(_loc8_);
         }
         this.§-!y§(param3);
      }
      
      private function §'!8§(param1:§#!8§, param2:§#!8§, param3:Vector.<§#!8§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§!j§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§!j§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§!j§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§!j§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§,!5§(param2);
         }
      }
      
      private function §<!U§(param1:int, param2:int) : int
      {
         var _loc9_:§#!8§ = null;
         var _loc3_:§#!8§ = this.§9!]§;
         var _loc4_:int = -1;
         var _loc5_:int = param1 + this.§[!I§;
         var _loc6_:int = param2 + this.§[!I§;
         var _loc7_:int;
         var _loc8_:int = (_loc7_ = this.§,""§.length) - 1;
         while(_loc8_ >= 0)
         {
            if((_loc9_ = this.§,""§[_loc8_]).x < this.§2$§ || _loc9_.y < this.§,!c§)
            {
               if(_loc9_.x < _loc3_.x && _loc5_ <= _loc9_.width && _loc6_ <= _loc9_.height)
               {
                  _loc4_ = _loc8_;
                  if(_loc5_ == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§?!<§ || _loc6_ == _loc9_.height && _loc9_.height <= _loc9_.width)
                  {
                     break;
                  }
                  _loc3_ = _loc9_;
               }
            }
            else if(_loc9_.x < _loc3_.x && param1 <= _loc9_.width && param2 <= _loc9_.height)
            {
               _loc4_ = _loc8_;
               if(param1 == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§?!<§ || param2 == _loc9_.height && _loc9_.height <= _loc9_.width)
               {
                  break;
               }
               _loc3_ = _loc9_;
            }
            _loc8_--;
         }
         return _loc4_;
      }
      
      private function §!j§(param1:int, param2:int, param3:int, param4:int) : §#!8§
      {
         var _loc5_:§#!8§ = null;
         if(this.§@""§.length > 0)
         {
            (_loc5_ = this.§@""§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §#!8§(param1,param2,param3,param4);
      }
      
      private function §,!5§(param1:§#!8§) : void
      {
         this.§@""§[this.§@""§.length] = param1;
      }
      
      private function §?9§(param1:int, param2:int, param3:int) : §^!#§
      {
         var _loc4_:§^!#§ = null;
         if(this.§ !-§.length > 0)
         {
            (_loc4_ = this.§ !-§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §^!#§(param1,param2,param3);
      }
      
      private function §^o§(param1:§^!#§) : void
      {
         this.§ !-§[this.§ !-§.length] = param1;
      }
   }
}
