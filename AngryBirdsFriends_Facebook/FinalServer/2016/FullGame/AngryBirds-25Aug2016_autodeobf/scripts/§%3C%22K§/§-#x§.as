package §<"K§
{
   import flash.geom.Rectangle;
   
   public class §-#x§
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var §]<§:int = 0;
      
      private var §""b§:int = 0;
      
      private var §9!2§:int = 8;
      
      private var §3!o§:int = 0;
      
      private var §-#1§:int = 0;
      
      private var §#!o§:Array;
      
      private var §3"P§:Vector.<§#![§>;
      
      private var §]!+§:Vector.<§#![§>;
      
      private var §+'§:Vector.<§#![§>;
      
      private var §&@§:§#![§;
      
      private var §-#B§:Vector.<§!#,§>;
      
      private var §%#j§:Vector.<§#![§>;
      
      public function §-#x§(param1:int, param2:int, param3:int = 0)
      {
         this.§#!o§ = [];
         this.§3"P§ = new Vector.<§#![§>();
         this.§]!+§ = new Vector.<§#![§>();
         this.§+'§ = new Vector.<§#![§>();
         this.§-#B§ = new Vector.<§!#,§>();
         this.§%#j§ = new Vector.<§#![§>();
         super();
         this.§&@§ = new §#![§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2,param3);
      }
      
      public function get §5#o§() : int
      {
         return this.§3"P§.length;
      }
      
      public function get §+!t§() : int
      {
         return this.§3!o§;
      }
      
      public function get §>"#§() : int
      {
         return this.§-#1§;
      }
      
      public function get §;"w§() : int
      {
         return this.§9!2§;
      }
      
      public function reset(param1:int, param2:int, param3:int = 0) : void
      {
         while(this.§3"P§.length)
         {
            this.§7f§(this.§3"P§.pop());
         }
         while(this.§]!+§.length)
         {
            this.§7f§(this.§]!+§.pop());
         }
         this.§]<§ = param1;
         this.§""b§ = param2;
         this.§3!o§ = 0;
         this.§-#1§ = 0;
         this.§]!+§[0] = this.§`#=§(0,0,this.§]<§,this.§""b§);
         while(this.§#!o§.length)
         {
            this.§=",§(this.§#!o§.pop());
         }
         this.§9!2§ = param3;
      }
      
      public function §@!;§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§#![§ = this.§3"P§[param1];
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
      
      public function §^K§(param1:int) : int
      {
         var _loc2_:§#![§ = this.§3"P§[param1];
         return _loc2_.id;
      }
      
      public function §1#-§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§!#,§ = this.§+"C§(param1,param2,param3);
         this.§#!o§.push(_loc4_);
      }
      
      public function §["n§(param1:Boolean = true) : int
      {
         var _loc2_:§!#,§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§#![§ = null;
         var _loc7_:§#![§ = null;
         if(param1)
         {
            this.§#!o§.sortOn("width",Array.NUMERIC);
         }
         while(this.§#!o§.length > 0)
         {
            _loc2_ = this.§#!o§.pop() as §!#,§;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§use §(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§]!+§[_loc5_];
               (_loc7_ = this.§`#=§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§'$2§(_loc7_,this.§]!+§,this.§+'§);
               while(this.§+'§.length > 0)
               {
                  this.§]!+§[this.§]!+§.length] = this.§+'§.pop();
               }
               this.§3"P§[this.§3"P§.length] = _loc7_;
               if(_loc7_.right > this.§3!o§)
               {
                  this.§3!o§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§-#1§)
               {
                  this.§-#1§ = _loc7_.bottom;
               }
            }
            this.§=",§(_loc2_);
         }
         return this.§5#o§;
      }
      
      private function §08§(param1:Vector.<§#![§>) : void
      {
         var _loc3_:§#![§ = null;
         var _loc4_:int = 0;
         var _loc5_:§#![§ = null;
         var _loc6_:§#![§ = null;
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
                     this.§7f§(_loc3_);
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
      
      private function §'$2§(param1:§#![§, param2:Vector.<§#![§>, param3:Vector.<§#![§>) : void
      {
         var _loc10_:§#![§ = null;
         var _loc11_:§#![§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1 + this.§9!2§;
         var _loc7_:int = param1.bottom + 1 + this.§9!2§;
         var _loc8_:§#![§ = null;
         if(this.§9!2§ == 0)
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
                  _loc8_ = this.§`#=§(param1.x,param1.y,param1.width + this.§9!2§,param1.height + this.§9!2§);
               }
               this.§><§(_loc8_,_loc10_,param3);
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
            this.§7f§(_loc8_);
         }
         this.§08§(param3);
      }
      
      private function §><§(param1:§#![§, param2:§#![§, param3:Vector.<§#![§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§`#=§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§`#=§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§`#=§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§`#=§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§7f§(param2);
         }
      }
      
      private function §use §(param1:int, param2:int) : int
      {
         var _loc9_:§#![§ = null;
         var _loc3_:§#![§ = this.§&@§;
         var _loc4_:int = -1;
         var _loc5_:int = param1 + this.§9!2§;
         var _loc6_:int = param2 + this.§9!2§;
         var _loc8_:int = int(this.§]!+§.length) - 1;
         while(_loc8_ >= 0)
         {
            if((_loc9_ = this.§]!+§[_loc8_]).x < this.§3!o§ || _loc9_.y < this.§-#1§)
            {
               if(_loc9_.x < _loc3_.x && _loc5_ <= _loc9_.width && _loc6_ <= _loc9_.height)
               {
                  _loc4_ = _loc8_;
                  if(_loc5_ == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§]<§ || _loc6_ == _loc9_.height && _loc9_.height <= _loc9_.width)
                  {
                     break;
                  }
                  _loc3_ = _loc9_;
               }
            }
            else if(_loc9_.x < _loc3_.x && param1 <= _loc9_.width && param2 <= _loc9_.height)
            {
               _loc4_ = _loc8_;
               if(param1 == _loc9_.width && _loc9_.width <= _loc9_.height && _loc9_.right < this.§]<§ || param2 == _loc9_.height && _loc9_.height <= _loc9_.width)
               {
                  break;
               }
               _loc3_ = _loc9_;
            }
            _loc8_--;
         }
         return _loc4_;
      }
      
      private function §`#=§(param1:int, param2:int, param3:int, param4:int) : §#![§
      {
         var _loc5_:§#![§ = null;
         if(this.§%#j§.length > 0)
         {
            (_loc5_ = this.§%#j§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §#![§(param1,param2,param3,param4);
      }
      
      private function §7f§(param1:§#![§) : void
      {
         this.§%#j§[this.§%#j§.length] = param1;
      }
      
      private function §+"C§(param1:int, param2:int, param3:int) : §!#,§
      {
         var _loc4_:§!#,§ = null;
         if(this.§-#B§.length > 0)
         {
            (_loc4_ = this.§-#B§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §!#,§(param1,param2,param3);
      }
      
      private function §=",§(param1:§!#,§) : void
      {
         this.§-#B§[this.§-#B§.length] = param1;
      }
   }
}
