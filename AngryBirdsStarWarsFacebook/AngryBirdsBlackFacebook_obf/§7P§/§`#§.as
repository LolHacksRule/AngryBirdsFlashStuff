package §7P§
{
   import §!!U§.Sprite;
   import §7!F§.§>"G§;
   
   public class §`#§ extends §,D§
   {
      
      public static const §8!h§:String = "idleState";
      
      public static const § E§:String = "happyState";
      
      public static const §="Z§:String = "sleepyState";
      
      public static const §4a§:String = "sleepState";
      
      public static const §,!Y§:String = "nervousState";
      
      public static const § # §:String = "relievedState";
      
      public static const §^!e§:String = "damagedState";
      
      public static const §0!D§:String = "freezeState";
      
      public static const §`#>§:String = "sneezeState";
      
      public static const §`"r§:String = "eatingState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §8!h§ = "idleState";
            while(true)
            {
               § E§ = "happyState";
               addr126:
               loop1:
               while(true)
               {
                  §="Z§ = "sleepyState";
                  addr121:
                  while(true)
                  {
                     §4a§ = "sleepState";
                     while(true)
                     {
                        §,!Y§ = "nervousState";
                        while(_loc2_)
                        {
                           if(_loc1_)
                           {
                              continue loop1;
                           }
                           if(_loc2_ || _loc1_)
                           {
                              return;
                              addr51:
                           }
                        }
                     }
                  }
               }
            }
            addr130:
         }
         while(true)
         {
            § # § = "relievedState";
            loop6:
            for(; _loc2_; while(!(_loc1_ && §`#§))
            {
               §`#>§ = "sneezeState";
               do
               {
                  §`"r§ = "eatingState";
               }
               while(!_loc2_);
               
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr42);
            })
            {
               if(_loc2_)
               {
                  §^!e§ = "damagedState";
                  do
                  {
                     §0!D§ = "freezeState";
                     continue loop6;
                  }
                  while(_loc1_);
                  
                  §§goto(addr44);
               }
               else
               {
                  §§goto(addr130);
               }
            }
            §§goto(addr121);
         }
         §§goto(addr51);
      }
      
      protected var §'"G§:§^#R§;
      
      public function §`#§(param1:§>"G§, param2:Sprite, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      public function set §""E§(param1:§^#R§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§'"G§ = param1;
         }
      }
      
      override protected function initializeImage() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §&!!§ = new Sprite();
         }
         do
         {
            super.initializeImage();
         }
         while(!(_loc1_ || this));
         
      }
      
      public function §-#L§() : Sprite
      {
         return §&!!§;
      }
      
      override public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc3_:§>"G§ = §]!`§.getSubAnimation(param1);
         if(!_loc7_)
         {
            §§push(Boolean(§##+§));
            if(_loc6_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop9:
                     while(true)
                     {
                        §§push(§##+§.name == _loc3_.name);
                        if(!_loc6_)
                        {
                           break;
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 §'!!§(param2);
                                 loop2:
                                 while(true)
                                 {
                                    §##+§ = _loc3_;
                                    loop3:
                                    while(true)
                                    {
                                       §&+§ = true;
                                       loop4:
                                       while(!(_loc7_ && this))
                                       {
                                          if(§##+§)
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                §§push(0);
                                                while(true)
                                                {
                                                   _loc4_ = §§pop();
                                                   loop7:
                                                   while(_loc6_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(param1 == §]!`§.defaultSubAnimationName)
                                                         {
                                                            loop15:
                                                            while(true)
                                                            {
                                                               this.selectSubAnimation(_loc4_,param2);
                                                               if(!(_loc7_ && param2))
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr28);
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  addr89:
                                                                  while(_loc6_)
                                                                  {
                                                                     if(_loc7_ && param1)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     §§push(int(§##+§.subAnimationCount));
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        addr102:
                                                                        while(_loc6_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  §§goto(addr102);
                                                                  continue loop15;
                                                               }
                                                               continue loop4;
                                                            }
                                                            addr32:
                                                         }
                                                         §§goto(addr89);
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          addr28:
                                          return;
                                       }
                                    }
                                 }
                              }
                           }
                           return;
                           continue loop9;
                        }
                     }
                  }
                  addr163:
               }
               §§goto(addr143);
            }
            §§goto(addr163);
         }
         §§goto(addr112);
      }
      
      override public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super.selectSubAnimation(param1,param2);
         }
         while(§6#%§)
         {
            if(!_loc4_)
            {
               §§push(this.§'"G§);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        if(_loc4_)
                        {
                           continue;
                        }
                        §§push(this.§'"G§);
                     }
                     addr67:
                     break;
                  }
                  break;
               }
               §§pop().§"#_§(§6#%§.soundName);
            }
            §§goto(addr67);
         }
      }
      
      override public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §;z§ = param1;
         }
         return false;
      }
      
      override protected function handleAnimationEnd() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.handleAnimationEnd();
         }
         do
         {
            §§push(this.§'"G§);
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
                  §§goto(addr20);
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§push(this.§'"G§);
            }
            §§pop().handleAnimationEnd(§##+§.name,§!"]§,§##+§.subAnimationCount);
         }
         while(_loc1_);
         
         addr20:
      }
   }
}
