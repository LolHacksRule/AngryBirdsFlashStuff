package §1!4§
{
   import §9t§.§&!W§;
   import §9t§.§=!>§;
   import §^a§.Sprite;
   
   public class §do§
   {
      
      public static const §`!Z§:int = 0;
      
      public static const §[N§:int = 1;
      
      public static const §&!d§:int = 2;
      
      public static const §+!c§:int = 3;
      
      public static const §+Z§:int = 4;
      
      public static const §'U§:int = 5;
      
      public static const §2t§:int = 6;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §do§))
         {
            §`!Z§ = 0;
            while(true)
            {
               §[N§ = 1;
               addr67:
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               §'U§ = 5;
               do
               {
                  §2t§ = 6;
               }
               while(!_loc1_);
               
               addr74:
               if(!_loc2_)
               {
                  addr36:
                  if(!_loc2_)
                  {
                     addr38:
                     if(_loc2_)
                     {
                        while(true)
                        {
                           §&!d§ = 2;
                           addr94:
                           while(true)
                           {
                              §+!c§ = 3;
                              while(true)
                              {
                                 §+Z§ = 4;
                                 addr60:
                                 while(!(_loc2_ && _loc2_))
                                 {
                                    §§goto(addr67);
                                    §§goto(addr74);
                                 }
                              }
                              §§goto(addr36);
                           }
                           §§goto(addr38);
                        }
                        addr99:
                     }
                     return;
                  }
                  §§goto(addr94);
               }
               §§goto(addr60);
            }
         }
         §§goto(addr99);
      }
      
      private var §6D§:Vector.<§3!^§>;
      
      protected var §^H§:§&!W§;
      
      protected var §>!K§:§=!>§;
      
      public function §do§(param1:§&!W§, param2:§=!>§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§^H§ = param1;
            loop1:
            while(true)
            {
               addr40:
               addr72:
               while(true)
               {
                  this.§>!K§ = param2;
                  addr44:
                  while(_loc4_)
                  {
                     continue loop0;
                  }
                  continue loop1;
               }
               var _loc3_:int = 0;
               addr75:
               if(_loc3_ >= §2t§)
               {
                  if(_loc4_)
                  {
                     if(!(_loc4_ || param1))
                     {
                        _loc3_++;
                        addr93:
                        §§goto(addr75);
                        addr112:
                     }
                     return;
                  }
                  §§goto(addr93);
               }
               this.§6D§[_loc3_] = new §3!^§();
               §§goto(addr112);
            }
         }
      }
      
      public function get §#U§() : §&!W§
      {
         return this.§^H§;
      }
      
      public function get §],§() : §=!>§
      {
         return this.§>!K§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§3!^§ = null;
         if(_loc2_)
         {
            if(this.§6D§)
            {
               §§goto(addr24);
            }
            §§goto(addr66);
         }
         addr24:
         while(this.§6D§.length)
         {
            _loc1_ = this.§6D§.pop();
            if(!_loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc3_ && _loc2_))
         {
            addr66:
            this.§6D§ = null;
         }
      }
      
      public function §2!L§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc17_:§3J§ = new §3J§(this.§^H§,this.§>!K§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§3!^§;
         if(_loc18_ = this.§[P§(param3))
         {
            if(!(_loc19_ && param2))
            {
               _loc18_.addParticle(_loc17_);
               if(!_loc20_)
               {
               }
            }
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §7!?§
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc16_:§7!?§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§3!^§;
         if(_loc17_ = this.§[P§(param2))
         {
            if(!_loc19_)
            {
               _loc17_.addParticle(_loc16_);
               if(_loc18_ || this)
               {
               }
               §§goto(addr77);
            }
         }
         else
         {
            _loc16_.dispose();
         }
         addr77:
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §7!?§
      {
         return new §7!?§(this.§^H§,this.§>!K§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§6D§.length)
            {
               if(_loc3_)
               {
                  continue;
               }
               if(!(_loc3_ && _loc3_))
               {
                  break;
               }
            }
            else
            {
               this.§[P§(_loc2_).update(param1);
            }
            _loc2_++;
         }
      }
      
      public function §#9§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§3!^§ = this.§[P§(param1);
         if(_loc3_ || _loc2_)
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  _loc2_.clear();
               }
            }
         }
      }
      
      public function §#!g§(param1:int) : Sprite
      {
         return this.§[P§(param1).sprite;
      }
      
      public function §[P§(param1:Number) : §3!^§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§6D§ != null)
            {
               if(!_loc3_)
               {
                  §§goto(addr49);
               }
            }
            return null;
         }
         addr49:
         return this.§6D§[param1];
      }
      
      public function moveTrailsNewToOld() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§#9§(§`!Z§);
         }
         var _loc1_:§3!^§ = this.§[P§(§[N§);
         var _loc2_:§3!^§ = this.§[P§(§`!Z§);
         if(!_loc4_)
         {
            _loc1_.§[%§(_loc2_);
            do
            {
               _loc2_.sprite.flatten();
            }
            while(_loc4_ && _loc2_);
            
         }
      }
      
      public function §1q§(param1:Number, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§3!^§ = null;
         for each(_loc3_ in this.§6D§)
         {
            if(_loc6_)
            {
               _loc3_.§ !h§(param1,param2);
            }
         }
      }
   }
}
