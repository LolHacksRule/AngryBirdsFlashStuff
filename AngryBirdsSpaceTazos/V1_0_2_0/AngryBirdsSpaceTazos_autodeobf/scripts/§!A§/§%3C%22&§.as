package §!A§
{
   import flash.geom.Rectangle;
   
   public class §<"&§
   {
      
      public static const VERSION:String = "1.2.0";
       
      
      private var §^M§:int = 0;
      
      private var §2!u§:int = 0;
      
      private var §["G§:int = 0;
      
      private var §2"-§:int = 0;
      
      private var §4!6§:Array;
      
      private var §&@§:Vector.<§>!M§>;
      
      private var §]!D§:Vector.<§>!M§>;
      
      private var §1M§:Vector.<§>!M§>;
      
      private var §<3§:§>!M§;
      
      private var §2"@§:Vector.<§2!o§>;
      
      private var §>"3§:Vector.<§>!M§>;
      
      public function §<"&§(param1:int, param2:int)
      {
         this.§4!6§ = [];
         this.§&@§ = new Vector.<§>!M§>();
         this.§]!D§ = new Vector.<§>!M§>();
         this.§1M§ = new Vector.<§>!M§>();
         this.§2"@§ = new Vector.<§2!o§>();
         this.§>"3§ = new Vector.<§>!M§>();
         super();
         this.§<3§ = new §>!M§(param1 + 1,param2 + 1,0,0);
         this.reset(param1,param2);
      }
      
      public function get §=4§() : int
      {
         return this.§&@§.length;
      }
      
      public function get §""A§() : int
      {
         return this.§["G§;
      }
      
      public function get §`!K§() : int
      {
         return this.§2"-§;
      }
      
      public function reset(param1:int, param2:int) : void
      {
         while(this.§&@§.length)
         {
            this.§!!m§(this.§&@§.pop());
         }
         while(this.§]!D§.length)
         {
            this.§!!m§(this.§]!D§.pop());
         }
         this.§^M§ = param1;
         this.§2!u§ = param2;
         this.§["G§ = 0;
         this.§2"-§ = 0;
         this.§]!D§[0] = this.§1!G§(0,0,this.§^M§,this.§2!u§);
         while(this.§4!6§.length)
         {
            this.§1!&§(this.§4!6§.pop());
         }
      }
      
      public function §2t§(param1:int, param2:Rectangle) : Rectangle
      {
         var _loc3_:§>!M§ = this.§&@§[param1];
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
      
      public function §@"&§(param1:int) : int
      {
         var _loc2_:§>!M§ = this.§&@§[param1];
         return _loc2_.id;
      }
      
      public function §%Q§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:§2!o§ = this.§;" §(param1,param2,param3);
         this.§4!6§.push(_loc4_);
      }
      
      public function §+v§(param1:Boolean = true) : int
      {
         var _loc2_:§2!o§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§>!M§ = null;
         var _loc7_:§>!M§ = null;
         if(param1)
         {
            this.§4!6§.sortOn("width",Array.NUMERIC);
         }
         while(this.§4!6§.length > 0)
         {
            _loc2_ = this.§4!6§.pop() as §2!o§;
            _loc3_ = _loc2_.width;
            _loc4_ = _loc2_.height;
            if((_loc5_ = this.§ "@§(_loc3_,_loc4_)) >= 0)
            {
               _loc6_ = this.§]!D§[_loc5_];
               (_loc7_ = this.§1!G§(_loc6_.x,_loc6_.y,_loc3_,_loc4_)).id = _loc2_.id;
               this.§#!,§(_loc7_,this.§]!D§,this.§1M§);
               while(this.§1M§.length > 0)
               {
                  this.§]!D§[this.§]!D§.length] = this.§1M§.pop();
               }
               this.§&@§[this.§&@§.length] = _loc7_;
               if(_loc7_.right > this.§["G§)
               {
                  this.§["G§ = _loc7_.right;
               }
               if(_loc7_.bottom > this.§2"-§)
               {
                  this.§2"-§ = _loc7_.bottom;
               }
            }
            this.§1!&§(_loc2_);
         }
         return this.§=4§;
      }
      
      private function §?!i§(param1:Vector.<§>!M§>) : void
      {
         var _loc3_:§>!M§ = null;
         var _loc4_:int = 0;
         var _loc5_:§>!M§ = null;
         var _loc6_:§>!M§ = null;
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
                     this.§!!m§(_loc3_);
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
      
      private function §#!,§(param1:§>!M§, param2:Vector.<§>!M§>, param3:Vector.<§>!M§>) : void
      {
         var _loc9_:§>!M§ = null;
         var _loc10_:§>!M§ = null;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = param1.right + 1;
         var _loc7_:int = param1.bottom + 1;
         var _loc8_:int = param2.length - 1;
         while(_loc8_ >= 0)
         {
            _loc9_ = param2[_loc8_];
            if(!(_loc4_ >= _loc9_.right || _loc6_ <= _loc9_.x || _loc5_ >= _loc9_.bottom || _loc7_ <= _loc9_.y))
            {
               this.§'"C§(param1,_loc9_,param3);
               _loc10_ = param2.pop();
               if(_loc8_ < param2.length)
               {
                  param2[_loc8_] = _loc10_;
               }
            }
            _loc8_--;
         }
         this.§?!i§(param3);
      }
      
      private function §'"C§(param1:§>!M§, param2:§>!M§, param3:Vector.<§>!M§>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int;
         if((_loc5_ = param2.right - param1.right) > 0)
         {
            param3[param3.length] = this.§1!G§(param1.right,param2.y,_loc5_,param2.height);
            _loc4_++;
         }
         var _loc6_:int;
         if((_loc6_ = param1.x - param2.x) > 0)
         {
            param3[param3.length] = this.§1!G§(param2.x,param2.y,_loc6_,param2.height);
            _loc4_++;
         }
         var _loc7_:int;
         if((_loc7_ = param2.bottom - param1.bottom) > 0)
         {
            param3[param3.length] = this.§1!G§(param2.x,param1.bottom,param2.width,_loc7_);
            _loc4_++;
         }
         var _loc8_:int;
         if((_loc8_ = param1.y - param2.y) > 0)
         {
            param3[param3.length] = this.§1!G§(param2.x,param2.y,param2.width,_loc8_);
            _loc4_++;
         }
         if(_loc4_ == 0 && (param1.width < param2.width || param1.height < param2.height))
         {
            param3[param3.length] = param2;
         }
         else
         {
            this.§!!m§(param2);
         }
      }
      
      private function § "@§(param1:int, param2:int) : int
      {
         var _loc7_:§>!M§ = null;
         var _loc3_:§>!M§ = this.§<3§;
         var _loc4_:int = -1;
         var _loc5_:int;
         var _loc6_:int = (_loc5_ = this.§]!D§.length) - 1;
         while(_loc6_ >= 0)
         {
            if((_loc7_ = this.§]!D§[_loc6_]).x < _loc3_.x && param1 <= _loc7_.width && param2 <= _loc7_.height)
            {
               _loc4_ = _loc6_;
               if(param1 == _loc7_.width && _loc7_.width <= _loc7_.height && _loc7_.right < this.§^M§ || param2 == _loc7_.height && _loc7_.height <= _loc7_.width)
               {
                  break;
               }
               _loc3_ = _loc7_;
            }
            _loc6_--;
         }
         return _loc4_;
      }
      
      private function §1!G§(param1:int, param2:int, param3:int, param4:int) : §>!M§
      {
         var _loc5_:§>!M§ = null;
         if(this.§>"3§.length > 0)
         {
            (_loc5_ = this.§>"3§.pop()).x = param1;
            _loc5_.y = param2;
            _loc5_.width = param3;
            _loc5_.height = param4;
            _loc5_.right = param1 + param3;
            _loc5_.bottom = param2 + param4;
            return _loc5_;
         }
         return new §>!M§(param1,param2,param3,param4);
      }
      
      private function §!!m§(param1:§>!M§) : void
      {
         this.§>"3§[this.§>"3§.length] = param1;
      }
      
      private function §;" §(param1:int, param2:int, param3:int) : §2!o§
      {
         var _loc4_:§2!o§ = null;
         if(this.§2"@§.length > 0)
         {
            (_loc4_ = this.§2"@§.pop()).width = param1;
            _loc4_.height = param2;
            _loc4_.id = param3;
            return _loc4_;
         }
         return new §2!o§(param1,param2,param3);
      }
      
      private function §1!&§(param1:§2!o§) : void
      {
         this.§2"@§[this.§2"@§.length] = param1;
      }
   }
}
