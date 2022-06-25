package §_-N3§
{
   import §_-8d§.§_-0FF§;
   import §_-8d§.§_-Ew§;
   import §_-uY§.Sprite;
   
   public class §_-Zc§
   {
      
      public static const §_-zS§:int = 0;
      
      public static const §_-WZ§:int = 1;
      
      public static const §_-sa§:int = 2;
      
      public static const §_-MP§:int = 3;
      
      public static const §_-zj§:int = 4;
      
      public static const §_-X-§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-zS§ = 0;
            while(true)
            {
               §_-WZ§ = 1;
               loop1:
               while(true)
               {
                  §_-sa§ = 2;
                  while(true)
                  {
                     §_-MP§ = 3;
                     while(!(_loc2_ && _loc2_))
                     {
                        continue loop1;
                        if(!(_loc2_ && §_-Zc§))
                        {
                           return;
                           addr46:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      private var §_-t1§:Vector.<§_-kh§>;
      
      private var §_-P4§:§_-Ew§;
      
      private var §_-00g§:§_-0FF§;
      
      public function §_-Zc§(param1:§_-Ew§, param2:§_-0FF§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§_-P4§ = param1;
               loop1:
               for(; !_loc5_; while(true)
               {
                  if(_loc4_ || _loc3_)
                  {
                     this.§_-t1§ = new Vector.<§_-kh§>();
                     if(_loc4_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop1;
               })
               {
                  while(true)
                  {
                     this.§_-00g§ = param2;
                     continue loop1;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr30);
         }
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= §_-X-§)
            {
               if(_loc4_ || _loc3_)
               {
                  break;
               }
               loop6:
               while(_loc5_ && this)
               {
                  while(true)
                  {
                     _loc3_++;
                     continue loop6;
                  }
               }
               continue;
            }
            this.§_-t1§[_loc3_] = new §_-kh§();
            §§goto(addr107);
         }
      }
      
      public function get animationManager() : §_-Ew§
      {
         return this.§_-P4§;
      }
      
      public function get textureManager() : §_-0FF§
      {
         return this.§_-00g§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-kh§ = null;
         if(_loc2_)
         {
            if(this.§_-t1§)
            {
               §§goto(addr44);
            }
            §§goto(addr66);
         }
         addr44:
         while(this.§_-t1§.length)
         {
            _loc1_ = this.§_-t1§.pop();
            if(_loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc2_ || this)
         {
            addr66:
            this.§_-t1§ = null;
         }
      }
      
      public function §_-0-N§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc17_:§get § = new §get §(this.§_-P4§,this.§_-00g§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§_-kh§;
         if(_loc18_ = this.§_-a§(param3))
         {
            if(!(_loc20_ && param2))
            {
               _loc18_.§_-0EQ§(_loc17_);
               if(_loc19_ || param3)
               {
               }
            }
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §_-0EQ§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §_-Hv§
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc16_:§_-Hv§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§_-kh§;
         if(_loc17_ = this.§_-a§(param2))
         {
            if(_loc18_)
            {
               _loc17_.§_-0EQ§(_loc16_);
               if(_loc19_)
               {
               }
               §§goto(addr72);
            }
         }
         else
         {
            _loc16_.dispose();
         }
         addr72:
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §_-Hv§
      {
         return new §_-Hv§(this.§_-P4§,this.§_-00g§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§_-t1§.length)
            {
               if(!_loc4_)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  break;
               }
            }
            else
            {
               this.§_-a§(_loc2_).update(param1);
            }
            _loc2_++;
         }
      }
      
      public function §_-cF§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-kh§ = this.§_-a§(param1);
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_)
            {
               if(_loc4_)
               {
                  _loc2_.clear();
               }
            }
         }
      }
      
      public function §_-Ry§(param1:int) : Sprite
      {
         return this.§_-a§(param1).sprite;
      }
      
      public function §_-a§(param1:Number) : §_-kh§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§_-t1§ != null)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr45);
               }
            }
            return null;
         }
         addr45:
         return this.§_-t1§[param1];
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§_-cF§(§_-zS§);
         }
         var _loc1_:§_-kh§ = this.§_-a§(§_-WZ§);
         var _loc2_:§_-kh§ = this.§_-a§(§_-zS§);
         if(_loc4_ || this)
         {
            _loc1_.§_-5B§(_loc2_);
         }
         do
         {
            _loc2_.sprite.flatten();
         }
         while(_loc3_ && _loc1_);
         
      }
      
      public function §_-12§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§_-kh§ = null;
         for each(_loc3_ in this.§_-t1§)
         {
            if(_loc6_ || param1)
            {
               _loc3_.§_-PS§(param1,param2);
            }
         }
      }
   }
}
