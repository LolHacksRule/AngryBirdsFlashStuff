package §5#E§
{
   import flash.geom.Rectangle;
   
   public class §;B§
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var §@!l§:int = 0;
      
      private var §,7§:int = 0;
      
      private var §-#@§:int = 8;
      
      private var §<$0§:int = 0;
      
      private var §?#q§:int = 0;
      
      private var §8#h§:Array;
      
      private var §1i§:Vector.<§'#N§>;
      
      private var §#t§:Vector.<§'#N§>;
      
      private var §`"r§:Vector.<§'#N§>;
      
      private var §9$?§:§'#N§;
      
      private var §9#K§:Vector.<§@%§>;
      
      private var § "P§:Vector.<§'#N§>;
      
      public function §;B§(param1:int, param2:int, param3:int = 0)
      {
         this.§8#h§ = [];
         this.§1i§ = new Vector.<§'#N§>();
         this.§#t§ = new Vector.<§'#N§>();
         this.§`"r§ = new Vector.<§'#N§>();
         this.§9#K§ = new Vector.<§@%§>();
         this.§ "P§ = new Vector.<§'#N§>();
         super();
         this.§9$?§ = new §'#N§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2,param3);
      }
      
      public function get §;!o§() : int
      {
         return this.§1i§.length;
      }
      
      public function get §0#G§() : int
      {
         return this.§<$0§;
      }
      
      public function get §4"Q§() : int
      {
         return this.§?#q§;
      }
      
      public function get §0[§() : int
      {
         return this.§-#@§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         while(this.§1i§.length)
         {
            this.§&!9§(this.§1i§.pop());
         }
         while(this.§#t§.length)
         {
            this.§&!9§(this.§#t§.pop());
         }
         this.§@!l§ = param1;
         this.§,7§ = param2;
         this.§<$0§ = 0;
         this.§?#q§ = 0;
         this.§#t§[0] = this.§%T§(0,0,this.§@!l§,this.§,7§);
         while(this.§8#h§.length)
         {
            this.§#!C§(this.§8#h§.pop());
         }
         this.§-#@§ = param3;
      }
      
      public function §5##§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§'#N§ = this.§1i§[param1];
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
      
      public function §2"[§(param1:int) : int
      {
         var _loc2_:§'#N§ = this.§1i§[param1];
         return _loc2_.id;
      }
      
      public function §1y§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§@%§ = this.§@$$§(param1,param2,param3);
         this.§8#h§.push(_loc4_);
      }
      
      public function §?"e§(param1:Boolean = true) : int
      {
         var _loc2_:§@%§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§'#N§ = null;
         var _loc7_:§'#N§ = null;
         if(param1)
         {
            this.§8#h§.sortOn("width",Array.NUMERIC);
         }
         while(this.§8#h§.length > 0)
         {
            _loc2_ = this.§8#h§.pop() as §@%§;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§]#c§(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§#t§[_loc5_];
               (_loc7_ = this.§%T§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§?"8§(_loc7_,this.§#t§,this.§`"r§);
               while(this.§`"r§.length > 0)
               {
                  this.§#t§[this.§#t§.length] = this.§`"r§.pop();
               }
               this.§1i§[this.§1i§.length] = _loc7_;
               if(_loc7_.right > this.§<$0§)
               {
                  this.§<$0§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§?#q§)
               {
                  this.§?#q§ = _loc7_.bottom;
               }
            }
            this.§#!C§(_loc2_);
         }
         return this.§;!o§;
      }
      
      private function §5#1§(param1:Vector.<§'#N§>) : void
      {
         var _loc3_:§'#N§ = null;
         var _loc4_:int = 0;
         var _loc5_:§'#N§ = null;
         var _loc6_:§'#N§ = null;
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
                     this.§&!9§(_loc3_);
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
      
      private function §?"8§(param1:§'#N§, param2:Vector.<§'#N§>, param3:Vector.<§'#N§>) : void
      {
         var _loc10_:§'#N§ = null;
         var _loc11_:§'#N§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1 + this.§-#@§;
         var _loc7_:int = param1.bottom + 1 + this.§-#@§;
         var _loc8_:§'#N§ = null;
         if(this.§-#@§ == 0)
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
                  _loc8_ = this.§%T§(param1.x,param1.y,param1.width + this.§-#@§,param1.height + this.§-#@§);
               }
               this.§5j§(_loc8_,_loc10_,param3);
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
            this.§&!9§(_loc8_);
         }
         this.§5#1§(param3);
      }
      
      private function §5j§(param1:§'#N§, param2:§'#N§, param3:Vector.<§'#N§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§%T§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§%T§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§%T§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§%T§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§&!9§(param2);
         }
      }
      
      private function §]#c§(param1:int, param2:int) : int
      {
         var _loc9_:§'#N§ = null;
         var _loc3_:§'#N§ = this.§9$?§;
         var _loc4_:int = -1;
         var _loc5_:int = param1 + this.§-#@§;
         var _loc6_:int = param2 + this.§-#@§;
         var _loc8_:int = int(this.§#t§.length) - 1;
         while(_loc8_ >= 0)
         {
            if((_loc9_ = this.§#t§[_loc8_]).x < this.§<$0§ || _loc9_.y < this.§?#q§)
            {
               if(_loc9_.x < _loc3_.x && _loc5_ <= _loc9_.width && _loc6_ <= _loc9_.height)
               {
                  _loc4_ = _loc8_;
                  if(_loc5_ == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§@!l§ || _loc6_ == _loc9_.height && _loc9_.height <= _loc9_.width)
                  {
                     break;
                  }
                  _loc3_ = _loc9_;
               }
            }
            else if(_loc9_.x < _loc3_.x && param1 <= _loc9_.width && param2 <= _loc9_.height)
            {
               _loc4_ = _loc8_;
               if(param1 == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§@!l§ || param2 == _loc9_.height && _loc9_.height <= _loc9_.width)
               {
                  break;
               }
               _loc3_ = _loc9_;
            }
            _loc8_--;
         }
         return _loc4_;
      }
      
      private function §%T§(param1:int, param2:int, param3:int, param4:int) : §'#N§
      {
         var _loc5_:§'#N§ = null;
         if(this.§ "P§.length > 0)
         {
            (_loc5_ = this.§ "P§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §'#N§(param1,param2,param3,param4);
      }
      
      private function §&!9§(param1:§'#N§) : void
      {
         this.§ "P§[this.§ "P§.length] = param1;
      }
      
      private function §@$$§(param1:int, param2:int, param3:int) : §@%§
      {
         var _loc4_:§@%§ = null;
         if(this.§9#K§.length > 0)
         {
            (_loc4_ = this.§9#K§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §@%§(param1,param2,param3);
      }
      
      private function §#!C§(param1:§@%§) : void
      {
         this.§9#K§[this.§9#K§.length] = param1;
      }
   }
}
