package § "?§
{
   import §&"5§.§1!A§;
   import §&"5§.§7!P§;
   import §default§.Sprite;
   
   public class §-5§
   {
      
      public static const §@T§:int = 0;
      
      public static const §&b§:int = 1;
      
      public static const §<!W§:int = 2;
      
      public static const §5Q§:int = 3;
      
      public static const §@S§:int = 4;
      
      public static const §7$§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@T§ = 0;
         }
         loop0:
         while(true)
         {
            §&b§ = 1;
            loop1:
            do
            {
               §<!W§ = 2;
               while(_loc2_)
               {
                  §5Q§ = 3;
                  while(!_loc1_)
                  {
                     §@S§ = 4;
                     while(_loc2_ || _loc1_)
                     {
                        §7$§ = 5;
                        if(!(_loc1_ && _loc1_))
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               continue loop0;
            }
            while(_loc1_);
            
            return;
         }
      }
      
      private var §7!%§:Vector.<§#$§>;
      
      private var §7!a§:§1!A§;
      
      private var §2"!§:§7!P§;
      
      public function §-5§(param1:§1!A§, param2:§7!P§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super();
            while(true)
            {
               this.§7!a§ = param1;
            }
            addr61:
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               this.§2"!§ = param2;
               while(_loc4_)
               {
                  if(_loc4_)
                  {
                     this.§7!%§ = new Vector.<§#$§>();
                     if(_loc4_)
                     {
                        if(true)
                        {
                           break loop2;
                        }
                        continue loop2;
                     }
                     continue;
                  }
                  §§goto(addr61);
               }
               continue loop1;
            }
            var _loc3_:int = 0;
            while(true)
            {
               if(_loc3_ >= §7$§)
               {
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  if(!(_loc5_ && param1))
                  {
                     break;
                  }
               }
               else
               {
                  this.§7!%§[_loc3_] = new §#$§();
               }
               _loc3_++;
            }
            return;
         }
      }
      
      public function get §<"%§() : §1!A§
      {
         return this.§7!a§;
      }
      
      public function get §7!J§() : §7!P§
      {
         return this.§2"!§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§#$§ = null;
         if(_loc2_)
         {
            if(this.§7!%§)
            {
               §§goto(addr24);
            }
            §§goto(addr71);
         }
         addr24:
         while(this.§7!%§.length)
         {
            _loc1_ = this.§7!%§.pop();
            if(_loc2_ || _loc2_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc3_ && _loc2_))
         {
            addr71:
            this.§7!%§ = null;
         }
      }
      
      public function §@"&§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc17_:§#!!§ = new §#!!§(this.§7!a§,this.§2"!§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§#$§;
         if(_loc18_ = this.§=i§(param3))
         {
            if(!(_loc20_ && param2))
            {
               _loc18_.§[b§(_loc17_);
               if(!_loc19_)
               {
               }
            }
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §[b§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §&!>§
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc16_:§&!>§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§#$§;
         if(_loc17_ = this.§=i§(param2))
         {
            if(_loc18_)
            {
               _loc17_.§[b§(_loc16_);
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
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §&!>§
      {
         return new §&!>§(this.§7!a§,this.§2"!§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§7!%§.length)
            {
               if(!(_loc4_ || _loc2_))
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
               this.§=i§(_loc2_).update(param1);
            }
            _loc2_++;
         }
      }
      
      public function §'!F§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§#$§ = this.§=i§(param1);
         if(!(_loc4_ && this))
         {
            if(_loc2_)
            {
               if(!(_loc4_ && _loc2_))
               {
                  addr57:
                  _loc2_.clear();
               }
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function §[O§(param1:int) : Sprite
      {
         return this.§=i§(param1).sprite;
      }
      
      public function §=i§(param1:Number) : §#$§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§7!%§ != null)
            {
               if(_loc2_)
               {
                  §§goto(addr49);
               }
            }
            return null;
         }
         addr49:
         return this.§7!%§[param1];
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§'!F§(§@T§);
         }
         var _loc1_:§#$§ = this.§=i§(§&b§);
         var _loc2_:§#$§ = this.§=i§(§@T§);
         if(!(_loc4_ && _loc2_))
         {
            _loc1_.§<!H§(_loc2_);
         }
         do
         {
            _loc2_.sprite.flatten();
         }
         while(!_loc3_);
         
      }
      
      public function §%]§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§#$§ = null;
         for each(_loc3_ in this.§7!%§)
         {
            if(!(_loc7_ && param2))
            {
               _loc3_.§"!8§(param1,param2);
            }
         }
      }
   }
}
