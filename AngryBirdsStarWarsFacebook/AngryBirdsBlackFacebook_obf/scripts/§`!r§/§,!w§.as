package §`!r§
{
   import §!!U§.Sprite;
   import §7!F§.§7§;
   import §7!F§.§`y§;
   
   public class §,!w§
   {
      
      public static const §#Z§:int = 0;
      
      public static const §9F§:int = 1;
      
      public static const §7!v§:int = 2;
      
      public static const § !B§:int = 3;
      
      public static const §,!"§:int = 4;
      
      public static const §7"-§:int = 5;
      
      public static const §'#L§:int = 6;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §#Z§ = 0;
            while(true)
            {
               §9F§ = 1;
               loop1:
               while(true)
               {
                  §7!v§ = 2;
                  while(true)
                  {
                     § !B§ = 3;
                     continue loop1;
                     loop6:
                     while(_loc2_ || _loc2_)
                     {
                        §'#L§ = 6;
                        if(_loc1_)
                        {
                           continue;
                        }
                        addr35:
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              return;
                              addr44:
                           }
                           continue loop1;
                        }
                        addr71:
                        while(true)
                        {
                           §7"-§ = 5;
                           continue loop6;
                           §§goto(addr35);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §,!"§ = 4;
            §§goto(addr71);
         }
         §§goto(addr44);
      }
      
      private var §9!Q§:Vector.<§1$§>;
      
      private var §+"4§:§`y§;
      
      private var §6V§:§7#5§;
      
      public function §,!w§(param1:§`y§, param2:§7#5§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            super();
            loop0:
            while(true)
            {
               this.§+"4§ = param1;
               loop1:
               while(true)
               {
                  addr38:
                  while(true)
                  {
                     this.§6V§ = param2;
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr38);
         }
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= §'#L§)
            {
               if(_loc4_)
               {
                  continue;
               }
               if(!(_loc4_ && param2))
               {
                  break;
               }
            }
            else
            {
               this.§9!Q§[_loc3_] = new §1$§();
            }
            _loc3_++;
         }
      }
      
      public function get animationManager() : §`y§
      {
         return this.§+"4§;
      }
      
      public function get textureManager() : §7#5§
      {
         return this.§6V§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§1$§ = null;
         if(_loc3_)
         {
            if(this.§9!Q§)
            {
               §§goto(addr35);
            }
            §§goto(addr62);
         }
         addr35:
         while(this.§9!Q§.length)
         {
            _loc1_ = this.§9!Q§.pop();
            if(!_loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc2_)
         {
            addr62:
            this.§9!Q§ = null;
         }
      }
      
      public function §;!0§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : § U§
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc16_:§ U§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§1$§;
         if(_loc17_ = this.§1"<§(param2))
         {
            if(_loc18_)
            {
               _loc17_.§;!0§(_loc16_);
               if(!_loc18_)
               {
               }
            }
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      public function §`?§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc17_:§@!d§ = new §@!d§(this.§+"4§,this.§6V§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§1$§;
         if(_loc18_ = this.§1"<§(param3))
         {
            if(_loc19_ || param1)
            {
               _loc18_.§;!0§(_loc17_);
               if(_loc20_)
               {
               }
            }
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : § U§
      {
         return new § U§(this.§+"4§,this.§6V§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§9!Q§.length)
            {
               if(_loc4_)
               {
                  continue;
               }
               if(!(_loc4_ && _loc3_))
               {
                  break;
               }
            }
            else
            {
               this.§1"<§(_loc2_).update(param1);
            }
            _loc2_++;
         }
      }
      
      public function §7p§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§1$§ = this.§1"<§(param1);
         if(_loc3_ || param1)
         {
            if(_loc2_)
            {
               if(!(_loc4_ && this))
               {
                  _loc2_.clear();
               }
            }
         }
      }
      
      public function §>!z§(param1:int) : Sprite
      {
         return this.§1"<§(param1).sprite;
      }
      
      public function §1"<§(param1:Number) : §1$§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§9!Q§ != null)
            {
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr50);
               }
            }
            return null;
         }
         addr50:
         return this.§9!Q§[param1];
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§7p§(§#Z§);
         }
         var _loc1_:§1$§ = this.§1"<§(§9F§);
         var _loc2_:§1$§ = this.§1"<§(§#Z§);
         if(!(_loc3_ && this))
         {
            _loc1_.§^@§(_loc2_);
         }
         do
         {
            _loc2_.sprite.flatten();
         }
         while(_loc3_);
         
      }
      
      public function §'"0§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§1$§ = null;
         for each(_loc3_ in this.§9!Q§)
         {
            if(!_loc7_)
            {
               _loc3_.§>"Y§(param1,param2);
            }
         }
      }
   }
}
