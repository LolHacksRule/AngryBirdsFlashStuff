package §-!<§
{
   import § N§.Sprite;
   import §#e§.§'?§;
   import §#e§.§@!+§;
   
   public class §5!5§
   {
      
      public static const §[f§:int = 0;
      
      public static const §&!J§:int = 1;
      
      public static const §[!K§:int = 2;
      
      public static const §-U§:int = 3;
      
      public static const §6!Q§:int = 4;
      
      public static const §]!K§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         do
         {
            §-U§ = 3;
            do
            {
               §6!Q§ = 4;
            }
            while(!_loc2_);
            
            §]!K§ = 5;
         }
         while(!(_loc2_ || §5!5§));
         
      }
      
      private var §9%§:Vector.<§5D§>;
      
      private var §'_§:§@!+§;
      
      private var §2"§:§'?§;
      
      public function §5!5§(param1:§@!+§, param2:§'?§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super();
         }
         while(true)
         {
            this.§'_§ = param1;
            loop1:
            while(_loc4_ || this)
            {
               do
               {
                  this.§2"§ = param2;
                  while(_loc4_ || _loc3_)
                  {
                     this.§9%§ = new Vector.<§5D§>();
                     if(_loc5_)
                     {
                        continue;
                     }
                     §§goto(addr33);
                  }
                  continue loop1;
               }
               while(false);
               
               var _loc3_:int = 0;
               while(true)
               {
                  if(_loc3_ >= §]!K§)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     loop5:
                     while(_loc5_ && param2)
                     {
                        while(true)
                        {
                           _loc3_++;
                           continue loop5;
                        }
                     }
                     continue;
                  }
                  this.§9%§[_loc3_] = new §5D§();
                  §§goto(addr112);
               }
               return;
            }
         }
      }
      
      public function get §<'§() : §@!+§
      {
         return this.§'_§;
      }
      
      public function get textureManager() : §'?§
      {
         return this.§2"§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§5D§ = null;
         if(!_loc2_)
         {
            if(this.§9%§)
            {
               §§goto(addr45);
            }
            §§goto(addr67);
         }
         addr45:
         while(this.§9%§.length)
         {
            _loc1_ = this.§9%§.pop();
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dispose();
            }
         }
         if(_loc3_)
         {
            addr67:
            this.§9%§ = null;
         }
      }
      
      public function §;!8§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc17_:§=K§ = new §=K§(this.§'_§,this.§2"§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§5D§;
         if(_loc18_ = this.§+! §(param3))
         {
            if(_loc20_ || param2)
            {
               _loc18_.addParticle(_loc17_);
               if(!_loc20_)
               {
               }
               §§goto(addr83);
            }
         }
         else
         {
            _loc17_.dispose();
         }
         addr83:
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §8R§
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc16_:§8R§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§5D§;
         if(_loc17_ = this.§+! §(param2))
         {
            if(_loc19_)
            {
               _loc17_.addParticle(_loc16_);
               if(!_loc19_)
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
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §8R§
      {
         return new §8R§(this.§'_§,this.§2"§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§9%§.length)
            {
               if(!_loc3_)
               {
                  break;
               }
               loop1:
               while(!(_loc4_ || _loc3_))
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            this.§+! §(_loc2_).update(param1);
            §§goto(addr58);
         }
      }
      
      public function §@!3§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§5D§ = this.§+! §(param1);
         if(!(_loc3_ && _loc2_))
         {
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  addr43:
                  _loc2_.clear();
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §[!8§(param1:int) : Sprite
      {
         return this.§+! §(param1).sprite;
      }
      
      public function §+! §(param1:Number) : §5D§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§9%§ != null)
            {
               if(!_loc3_)
               {
                  §§goto(addr24);
               }
            }
            return null;
         }
         addr24:
         return this.§9%§[param1];
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            this.§@!3§(§[f§);
         }
         var _loc1_:§5D§ = this.§+! §(§&!J§);
         var _loc2_:§5D§ = this.§+! §(§[f§);
         if(!_loc4_)
         {
            _loc1_.§1!0§(_loc2_);
            do
            {
               _loc2_.sprite.flatten();
            }
            while(_loc4_);
            
         }
      }
      
      public function §<E§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§5D§ = null;
         for each(_loc3_ in this.§9%§)
         {
            if(!_loc6_)
            {
               _loc3_.§0!0§(param1,param2);
            }
         }
      }
   }
}
