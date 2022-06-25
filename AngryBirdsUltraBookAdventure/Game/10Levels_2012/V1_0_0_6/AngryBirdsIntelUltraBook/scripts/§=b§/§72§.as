package §=b§
{
   import §#V§.b2World;
   import §-d§.§-C§;
   import §2_§.§'u§;
   import §7!B§.Sprite;
   
   public class §72§ extends §`!_§
   {
       
      
      public function §72§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!_loc11_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = false;
         if(!_loc4_)
         {
            if(§7![§.mTryToBlink <= 0)
            {
               if(§7![§.mIsBlinking)
               {
                  while(true)
                  {
                     §7![§.mTryToBlink = 0;
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           §7![§.mIsBlinking = false;
                           loop2:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 §§push(true);
                                 continue;
                              }
                              addr163:
                              while(true)
                              {
                                 §§push(true);
                                 loop8:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop9:
                                    while(true)
                                    {
                                       §7![§.mTryToBlink = § 6§.§;3§ - 1;
                                       loop10:
                                       while(true)
                                       {
                                          addr139:
                                          loop4:
                                          while(true)
                                          {
                                             §7![§.mTryToBlink -= param1;
                                             addr146:
                                             while(true)
                                             {
                                                if(§7![§.mTryToBlink <= 0)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc4_ && this)
                                                      {
                                                         continue loop9;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(true);
                                                         addr113:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ || param1))
                                                            {
                                                               continue loop8;
                                                            }
                                                            _loc2_ = §§pop();
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ || param1))
                                                               {
                                                                  continue loop10;
                                                               }
                                                               addr138:
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr121);
                                                }
                                                while(true)
                                                {
                                                   addr21:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!(_loc3_ || this))
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr113);
                                                   }
                                                   return §§pop();
                                                   §§goto(addr138);
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr121);
                     }
                  }
               }
               §§goto(addr21);
            }
            §§goto(addr158);
         }
         §§goto(addr112);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = false;
         if(!_loc4_)
         {
            if(§7![§.mTryToScream <= 0)
            {
               if(§7![§.mIsScreaming)
               {
                  loop0:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           §7![§.mTryToScream = 0;
                           loop1:
                           while(true)
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 §7![§.mIsScreaming = false;
                                 continue;
                              }
                              addr179:
                              while(true)
                              {
                                 if(§7![§.mTryToScream >= § 6§.§8!3§)
                                 {
                                    while(true)
                                    {
                                       §§push(true);
                                       addr185:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr186:
                                          while(true)
                                          {
                                             this.playScreamingSoundEffect();
                                             addr174:
                                             loop10:
                                             while(true)
                                             {
                                                §7![§.mTryToScream = § 6§.§8!3§ - 1;
                                                addr170:
                                                while(true)
                                                {
                                                   continue loop10;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr184:
                                 }
                                 loop9:
                                 while(true)
                                 {
                                    §7![§.mTryToScream -= param1;
                                    addr161:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          addr163:
                                          if(§7![§.mTryToScream <= 0)
                                          {
                                             while(true)
                                             {
                                                §§push(true);
                                                addr135:
                                                loop5:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   addr136:
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ || _loc3_))
                                                      {
                                                         continue loop9;
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                                §§goto(addr163);
                                             }
                                             addr134:
                                          }
                                          while(true)
                                          {
                                             addr21:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(_loc4_ && _loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(_loc4_ && this)
                                                      {
                                                         break;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop1;
                                                   addr44:
                                                }
                                                if(_loc3_)
                                                {
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr135);
                                                }
                                             }
                                             return §§pop();
                                             §§goto(addr163);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr184);
                                       }
                                       §§goto(addr185);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr161);
                  }
               }
               §§goto(addr21);
            }
            §§goto(addr179);
         }
         §§goto(addr186);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §+!G§(§-C§.§2!j§);
         }
      }
   }
}
