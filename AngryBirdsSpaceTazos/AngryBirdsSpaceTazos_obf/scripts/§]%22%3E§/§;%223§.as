package §]">§
{
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §;"3§ extends §&5§
   {
      
      public static const §,Y§:String = "idleState";
      
      public static const §^"7§:String = "happyState";
      
      public static const §;"§:String = "sleepyState";
      
      public static const § !Z§:String = "sleepState";
      
      public static const §@b§:String = "nervousState";
      
      public static const §`!%§:String = "relievedState";
      
      public static const §`!Q§:String = "damagedState";
      
      public static const §"2§:String = "freezeState";
      
      public static const §%!=§:String = "sneezeState";
      
      public static const §,7§:String = "eatingState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §,Y§ = "idleState";
            loop0:
            while(true)
            {
               §^"7§ = "happyState";
               addr125:
               while(true)
               {
                  §;"§ = "sleepyState";
               }
               while(true)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §@b§ = "nervousState";
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr125);
            }
         }
         §§goto(addr120);
      }
      
      protected var §%C§:§3?§;
      
      public function §;"3§(param1:§#r§, param2:Sprite, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super(param1,param2,param3);
         }
      }
      
      public function set §6m§(param1:§3?§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%C§ = param1;
         }
      }
      
      override protected function initializeImage() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §;!S§ = new Sprite();
            do
            {
               super.initializeImage();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function §+"8§() : Sprite
      {
         return §;!S§;
      }
      
      override public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc3_:§#r§ = §]!k§.getSubAnimation(param1);
         if(!_loc6_)
         {
            §§push(Boolean(§^@§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §2!0§(param2);
                           loop3:
                           while(true)
                           {
                              §^@§ = _loc3_;
                              loop4:
                              for(; !(_loc6_ && _loc3_); if(_loc6_ && param2)
                              {
                                 continue;
                              },if(!(_loc6_ && param1))
                              {
                                 §§goto(addr93);
                                 §§push(int(§^@§.subAnimationCount));
                              })
                              {
                                 §7Y§ = true;
                                 loop5:
                                 while(!_loc6_)
                                 {
                                    if(§^@§)
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop7:
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             while(!(_loc6_ && param2))
                                             {
                                                if(param1 != §]!k§.defaultSubAnimationName)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   loop10:
                                                   while(!(_loc6_ && param2))
                                                   {
                                                      addr103:
                                                      §§push(int(Math.floor(Math.random() * _loc5_)));
                                                      if(_loc7_)
                                                      {
                                                         _loc4_ = §§pop();
                                                         do
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               continue loop6;
                                                            }
                                                         }
                                                         while(_loc7_);
                                                         
                                                         continue loop5;
                                                         addr54:
                                                      }
                                                      else
                                                      {
                                                         addr93:
                                                      }
                                                      while(!_loc6_)
                                                      {
                                                         _loc5_ = §§pop();
                                                         continue loop10;
                                                         §§goto(addr103);
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue;
                                                   addr96:
                                                }
                                                while(true)
                                                {
                                                   this.selectSubAnimation(_loc4_,param2);
                                                   if(_loc7_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr96);
                                                   }
                                                   §§goto(addr54);
                                                }
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                    return;
                                 }
                                 while(true)
                                 {
                                    continue loop2;
                                 }
                              }
                              addr175:
                              addr174:
                              while(true)
                              {
                                 §§push(§^@§.name == _loc3_.name);
                                 if(_loc6_ && param1)
                                 {
                                    break;
                                 }
                                 if(!_loc6_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 §§pop();
                                 §§goto(addr175);
                              }
                           }
                        }
                     }
                     return;
                  }
               }
               §§goto(addr174);
            }
         }
         §§goto(addr169);
      }
      
      override public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.selectSubAnimation(param1,param2);
         }
         while(§@D§)
         {
            if(_loc3_ || param1)
            {
               §§push(this.§%C§);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        addr50:
                        if(!_loc3_)
                        {
                           continue;
                        }
                        addr64:
                        this.§%C§.playSound(§@D§.soundName);
                     }
                     break;
                  }
                  break;
               }
               §§goto(addr64);
            }
            §§goto(addr50);
         }
      }
      
      override public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §3"D§ = param1;
         }
         return false;
      }
      
      override protected function handleAnimationEnd() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.handleAnimationEnd();
         }
         while(true)
         {
            §§push(this.§%C§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  addr67:
               }
               return;
            }
            break;
         }
         §§pop().handleAnimationEnd(§^@§.name,§[6§,§^@§.subAnimationCount);
         §§goto(addr67);
      }
   }
}
