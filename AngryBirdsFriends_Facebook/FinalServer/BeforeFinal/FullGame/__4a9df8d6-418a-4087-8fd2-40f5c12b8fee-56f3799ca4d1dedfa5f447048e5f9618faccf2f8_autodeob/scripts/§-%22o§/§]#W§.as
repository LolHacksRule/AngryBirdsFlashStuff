package §-"o§
{
   import flash.geom.Rectangle;
   
   public class §]#W§
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var §>H§:int = 0;
      
      private var §^l§:int = 0;
      
      private var §4#h§:int = 8;
      
      private var §5"0§:int = 0;
      
      private var §>!U§:int = 0;
      
      private var §<#z§:Array;
      
      private var §-"-§:Vector.<§#>§>;
      
      private var §`#'§:Vector.<§#>§>;
      
      private var §7!&§:Vector.<§#>§>;
      
      private var §4",§:§#>§;
      
      private var §;!E§:Vector.<§3#u§>;
      
      private var §5#j§:Vector.<§#>§>;
      
      public function §]#W§(param1:int, param2:int, param3:int = 0)
      {
         this.§<#z§ = [];
         this.§-"-§ = new Vector.<§#>§>();
         this.§`#'§ = new Vector.<§#>§>();
         this.§7!&§ = new Vector.<§#>§>();
         this.§;!E§ = new Vector.<§3#u§>();
         this.§5#j§ = new Vector.<§#>§>();
         super();
         this.§4",§ = new §#>§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2,param3);
      }
      
      public function get §[";§() : int
      {
         return this.§-"-§.length;
      }
      
      public function get §5#y§() : int
      {
         return this.§5"0§;
      }
      
      public function get §>a§() : int
      {
         return this.§>!U§;
      }
      
      public function get §7!F§() : int
      {
         return this.§4#h§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         while(this.§-"-§.length)
         {
            this.§0#_§(this.§-"-§.pop());
         }
         while(this.§`#'§.length)
         {
            this.§0#_§(this.§`#'§.pop());
         }
         this.§>H§ = param1;
         this.§^l§ = param2;
         this.§5"0§ = 0;
         this.§>!U§ = 0;
         this.§`#'§[0] = this.§,$<§(0,0,this.§>H§,this.§^l§);
         while(this.§<#z§.length)
         {
            this.§,#J§(this.§<#z§.pop());
         }
         this.§4#h§ = param3;
      }
      
      public function §[#0§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§#>§ = this.§-"-§[param1];
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
      
      public function §+"$§(param1:int) : int
      {
         var _loc2_:§#>§ = this.§-"-§[param1];
         return _loc2_.id;
      }
      
      public function §^#;§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§3#u§ = this.§2#p§(param1,param2,param3);
         this.§<#z§.push(_loc4_);
      }
      
      public function §]#f§(param1:Boolean = true) : int
      {
         var _loc2_:§3#u§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§#>§ = null;
         var _loc7_:§#>§ = null;
         if(param1)
         {
            this.§<#z§.sortOn("width",Array.NUMERIC);
         }
         while(this.§<#z§.length > 0)
         {
            _loc2_ = this.§<#z§.pop() as §3#u§;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§-!5§(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§`#'§[_loc5_];
               (_loc7_ = this.§,$<§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§,!j§(_loc7_,this.§`#'§,this.§7!&§);
               while(this.§7!&§.length > 0)
               {
                  this.§`#'§[this.§`#'§.length] = this.§7!&§.pop();
               }
               this.§-"-§[this.§-"-§.length] = _loc7_;
               if(_loc7_.right > this.§5"0§)
               {
                  this.§5"0§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§>!U§)
               {
                  this.§>!U§ = _loc7_.bottom;
               }
            }
            this.§,#J§(_loc2_);
         }
         return this.§[";§;
      }
      
      private function each(param1:Vector.<§#>§>) : void
      {
         var _loc3_:§#>§ = null;
         var _loc4_:int = 0;
         var _loc5_:§#>§ = null;
         var _loc6_:§#>§ = null;
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
                     this.§0#_§(_loc3_);
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
      
      private function §,!j§(param1:§#>§, param2:Vector.<§#>§>, param3:Vector.<§#>§>) : void
      {
         var _loc10_:§#>§ = null;
         var _loc11_:§#>§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1 + this.§4#h§;
         var _loc7_:int = param1.bottom + 1 + this.§4#h§;
         var _loc8_:§#>§ = null;
         if(this.§4#h§ == 0)
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
                  _loc8_ = this.§,$<§(param1.x,param1.y,param1.width + this.§4#h§,param1.height + this.§4#h§);
               }
               this.§?#Z§(_loc8_,_loc10_,param3);
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
            this.§0#_§(_loc8_);
         }
         this.each(param3);
      }
      
      private function §?#Z§(param1:§#>§, param2:§#>§, param3:Vector.<§#>§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§,$<§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§,$<§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§,$<§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§,$<§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§0#_§(param2);
         }
      }
      
      private function §-!5§(param1:int, param2:int) : int
      {
         var _loc9_:§#>§ = null;
         var _loc3_:§#>§ = this.§4",§;
         var _loc4_:int = -1;
         var _loc5_:int = param1 + this.§4#h§;
         var _loc6_:int = param2 + this.§4#h§;
         var _loc7_:int;
         var _loc8_:int = (_loc7_ = this.§`#'§.length) - 1;
         while(_loc8_ >= 0)
         {
            if((_loc9_ = this.§`#'§[_loc8_]).x < this.§5"0§ || _loc9_.y < this.§>!U§)
            {
               if(_loc9_.x < _loc3_.x && _loc5_ <= _loc9_.width && _loc6_ <= _loc9_.height)
               {
                  _loc4_ = _loc8_;
                  if(_loc5_ == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§>H§ || _loc6_ == _loc9_.height && _loc9_.height <= _loc9_.width)
                  {
                     break;
                  }
                  _loc3_ = _loc9_;
               }
            }
            else if(_loc9_.x < _loc3_.x && param1 <= _loc9_.width && param2 <= _loc9_.height)
            {
               _loc4_ = _loc8_;
               if(param1 == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§>H§ || param2 == _loc9_.height && _loc9_.height <= _loc9_.width)
               {
                  break;
               }
               _loc3_ = _loc9_;
            }
            _loc8_--;
         }
         return _loc4_;
      }
      
      private function §,$<§(param1:int, param2:int, param3:int, param4:int) : §#>§
      {
         var _loc5_:§#>§ = null;
         if(this.§5#j§.length > 0)
         {
            (_loc5_ = this.§5#j§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §#>§(param1,param2,param3,param4);
      }
      
      private function §0#_§(param1:§#>§) : void
      {
         this.§5#j§[this.§5#j§.length] = param1;
      }
      
      private function §2#p§(param1:int, param2:int, param3:int) : §3#u§
      {
         var _loc4_:§3#u§ = null;
         if(this.§;!E§.length > 0)
         {
            (_loc4_ = this.§;!E§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §3#u§(param1,param2,param3);
      }
      
      private function §,#J§(param1:§3#u§) : void
      {
         this.§;!E§[this.§;!E§.length] = param1;
      }
   }
}
