package §&!y§
{
   import flash.geom.Rectangle;
   
   public class §+!v§
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var §'!K§:int = 0;
      
      private var §%O§:int = 0;
      
      private var §7§:int = 8;
      
      private var §0!?§:int = 0;
      
      private var § "E§:int = 0;
      
      private var §-1§:Array;
      
      private var §;!Z§:Vector.<§%!'§>;
      
      private var §;,§:Vector.<§%!'§>;
      
      private var §%m§:Vector.<§%!'§>;
      
      private var §1r§:§%!'§;
      
      private var §50§:Vector.<§5A§>;
      
      private var §6!A§:Vector.<§%!'§>;
      
      public function §+!v§(param1:int, param2:int, param3:int = 0)
      {
         this.§-1§ = [];
         this.§;!Z§ = new Vector.<§%!'§>();
         this.§;,§ = new Vector.<§%!'§>();
         this.§%m§ = new Vector.<§%!'§>();
         this.§50§ = new Vector.<§5A§>();
         this.§6!A§ = new Vector.<§%!'§>();
         super();
         this.§1r§ = new §%!'§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2,param3);
      }
      
      public function get §]!K§() : int
      {
         return this.§;!Z§.length;
      }
      
      public function get §5!A§() : int
      {
         return this.§0!?§;
      }
      
      public function get §2#§() : int
      {
         return this.§ "E§;
      }
      
      public function get §=§() : int
      {
         return this.§7§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         while(this.§;!Z§.length)
         {
            this.§3q§(this.§;!Z§.pop());
         }
         while(this.§;,§.length)
         {
            this.§3q§(this.§;,§.pop());
         }
         this.§'!K§ = param1;
         this.§%O§ = param2;
         this.§0!?§ = 0;
         this.§ "E§ = 0;
         this.§;,§[0] = this.§6!o§(0,0,this.§'!K§,this.§%O§);
         while(this.§-1§.length)
         {
            this.§-!o§(this.§-1§.pop());
         }
         this.§7§ = param3;
      }
      
      public function §4!4§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§%!'§ = this.§;!Z§[param1];
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
      
      public function §&!t§(param1:int) : int
      {
         var _loc2_:§%!'§ = this.§;!Z§[param1];
         return _loc2_.id;
      }
      
      public function §80§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§5A§ = this.§%p§(param1,param2,param3);
         this.§-1§.push(_loc4_);
      }
      
      public function §"!]§(param1:Boolean = true) : int
      {
         var _loc2_:§5A§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§%!'§ = null;
         var _loc7_:§%!'§ = null;
         if(param1)
         {
            this.§-1§.sortOn("width",Array.NUMERIC);
         }
         while(this.§-1§.length > 0)
         {
            _loc2_ = this.§-1§.pop() as §5A§;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§!!z§(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§;,§[_loc5_];
               (_loc7_ = this.§6!o§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§+!E§(_loc7_,this.§;,§,this.§%m§);
               while(this.§%m§.length > 0)
               {
                  this.§;,§[this.§;,§.length] = this.§%m§.pop();
               }
               this.§;!Z§[this.§;!Z§.length] = _loc7_;
               if(_loc7_.right > this.§0!?§)
               {
                  this.§0!?§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§ "E§)
               {
                  this.§ "E§ = _loc7_.bottom;
               }
            }
            this.§-!o§(_loc2_);
         }
         return this.§]!K§;
      }
      
      private function §[§(param1:Vector.<§%!'§>) : void
      {
         var _loc3_:§%!'§ = null;
         var _loc4_:int = 0;
         var _loc5_:§%!'§ = null;
         var _loc6_:§%!'§ = null;
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
                     this.§3q§(_loc3_);
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
      
      private function §+!E§(param1:§%!'§, param2:Vector.<§%!'§>, param3:Vector.<§%!'§>) : void
      {
         var _loc10_:§%!'§ = null;
         var _loc11_:§%!'§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1 + this.§7§;
         var _loc7_:int = param1.bottom + 1 + this.§7§;
         var _loc8_:§%!'§ = null;
         if(this.§7§ == 0)
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
                  _loc8_ = this.§6!o§(param1.x,param1.y,param1.width + this.§7§,param1.height + this.§7§);
               }
               this.§3"D§(_loc8_,_loc10_,param3);
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
            this.§3q§(_loc8_);
         }
         this.§[§(param3);
      }
      
      private function §3"D§(param1:§%!'§, param2:§%!'§, param3:Vector.<§%!'§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§6!o§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§6!o§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§6!o§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§6!o§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§3q§(param2);
         }
      }
      
      private function §!!z§(param1:int, param2:int) : int
      {
         var _loc7_:§%!'§ = null;
         var _loc3_:§%!'§ = this.§1r§;
         var _loc4_:int = -1;
         var _loc5_:int;
         var _loc6_:int = (_loc5_ = this.§;,§.length) - 1;
         while(_loc6_ >= 0)
         {
            if((_loc7_ = this.§;,§[_loc6_]).x < _loc3_.x && param1 <= _loc7_.width && param2 <= _loc7_.height)
            {
               _loc4_ = _loc6_;
               if(param1 == _loc7_.width && _loc7_.width <= _loc7_.height && _loc7_.right < this.§'!K§ || param2 == _loc7_.height && _loc7_.height <= _loc7_.width)
               {
                  break;
               }
               _loc3_ = _loc7_;
            }
            _loc6_--;
         }
         return _loc4_;
      }
      
      private function §6!o§(param1:int, param2:int, param3:int, param4:int) : §%!'§
      {
         var _loc5_:§%!'§ = null;
         if(this.§6!A§.length > 0)
         {
            (_loc5_ = this.§6!A§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §%!'§(param1,param2,param3,param4);
      }
      
      private function §3q§(param1:§%!'§) : void
      {
         this.§6!A§[this.§6!A§.length] = param1;
      }
      
      private function §%p§(param1:int, param2:int, param3:int) : §5A§
      {
         var _loc4_:§5A§ = null;
         if(this.§50§.length > 0)
         {
            (_loc4_ = this.§50§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §5A§(param1,param2,param3);
      }
      
      private function §-!o§(param1:§5A§) : void
      {
         this.§50§[this.§50§.length] = param1;
      }
   }
}
