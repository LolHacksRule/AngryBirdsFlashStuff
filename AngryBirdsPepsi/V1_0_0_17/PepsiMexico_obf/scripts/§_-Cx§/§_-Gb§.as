package §_-Cx§
{
   import §_-LP§.Sprite;
   import §_-Ra§.§_-2X§;
   import §_-Ra§.§_-M7§;
   
   public class §_-Gb§
   {
      
      public static const §_-uJ§:int = 0;
      
      public static const §_-kL§:int = 1;
      
      public static const §_-oO§:int = 2;
      
      public static const §_-l4§:int = 3;
      
      public static const §_-NR§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-uJ§ = 0;
            if(!_loc2_)
            {
               §_-kL§ = 1;
               addr20:
               if(!_loc2_)
               {
                  §§goto(addr32);
               }
               §§goto(addr49);
            }
            addr32:
            §_-oO§ = 2;
            if(!(_loc2_ && _loc1_))
            {
               addr49:
               §_-l4§ = 3;
               if(!_loc2_)
               {
                  §_-NR§ = 4;
               }
            }
            return;
         }
         §§goto(addr20);
      }
      
      private var §_-4i§:Vector.<§_-pw§>;
      
      private var §_-Mi§:§_-M7§;
      
      private var §_-gS§:§_-2X§;
      
      public function §_-Gb§(param1:§_-M7§, param2:§_-2X§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            if(_loc5_ || param2)
            {
               this.§_-Mi§ = param1;
               if(_loc4_ && _loc3_)
               {
               }
               §§goto(addr47);
            }
            this.§_-gS§ = param2;
            if(!_loc4_)
            {
               addr47:
               this.§_-4i§ = new Vector.<§_-pw§>();
               §§goto(addr53);
            }
            addr53:
            var _loc3_:int = 0;
            while(_loc3_ < §_-NR§)
            {
               this.§_-4i§[_loc3_] = new §_-pw§();
               if(_loc5_)
               {
                  _loc3_++;
                  if(_loc4_ && param2)
                  {
                     break;
                  }
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-pw§ = null;
         if(!_loc2_)
         {
            if(this.§_-4i§)
            {
               §§goto(addr22);
            }
            §§goto(addr63);
         }
         addr22:
         while(this.§_-4i§.length)
         {
            _loc1_ = this.§_-4i§.pop();
            if(!(_loc2_ && this))
            {
               _loc1_.dispose();
            }
         }
         if(_loc3_ || this)
         {
            addr63:
            this.§_-4i§ = null;
         }
      }
      
      public function §_-JY§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc16_:§_-UW§ = new §_-UW§(this.§_-Mi§,this.§_-gS§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§_-pw§;
         if(_loc17_ = this.§_-nK§(param2))
         {
            if(_loc19_)
            {
               _loc17_.§_-JY§(_loc16_);
               if(_loc18_)
               {
               }
            }
         }
         else
         {
            _loc16_.dispose();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-4i§.length)
         {
            this.§_-nK§(_loc2_).update(param1);
            if(_loc4_ || _loc2_)
            {
               _loc2_++;
               if(_loc3_)
               {
                  break;
               }
            }
         }
      }
      
      public function §_-QQ§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-pw§ = this.§_-nK§(param1);
         if(!(_loc3_ && param1))
         {
            if(_loc2_)
            {
               if(_loc4_)
               {
                  addr44:
                  _loc2_.clear();
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §_-IW§(param1:int) : Sprite
      {
         return this.§_-nK§(param1).sprite;
      }
      
      private function §_-nK§(param1:Number) : §_-pw§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§_-4i§ != null)
            {
               if(_loc2_ || _loc3_)
               {
                  §§goto(addr45);
               }
            }
            return null;
         }
         addr45:
         return this.§_-4i§[param1];
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            this.§_-QQ§(§_-uJ§);
         }
         var _loc1_:§_-pw§ = this.§_-nK§(§_-kL§);
         var _loc2_:§_-pw§ = this.§_-nK§(§_-uJ§);
         if(!(_loc4_ && this))
         {
            _loc1_.§_-63§(_loc2_);
         }
      }
      
      public function §_-lt§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§_-pw§ = null;
         for each(_loc3_ in this.§_-4i§)
         {
            if(_loc7_)
            {
               _loc3_.§_-8v§(param1,param2);
            }
         }
      }
   }
}
