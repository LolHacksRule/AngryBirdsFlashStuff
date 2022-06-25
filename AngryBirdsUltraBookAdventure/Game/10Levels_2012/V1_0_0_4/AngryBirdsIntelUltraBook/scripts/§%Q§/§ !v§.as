package §%Q§
{
   import §'!9§.Sprite;
   import §,!5§.§^g§;
   import §<!1§.§<!R§;
   import §`w§.b2World;
   
   public class § !v§ extends §`!<§
   {
       
      
      public function § !v§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!(_loc11_ && param1))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = false;
         if(_loc3_)
         {
            if(§?!M§.mTryToBlink <= 0)
            {
               if(§?!M§.mIsBlinking)
               {
                  loop0:
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        §?!M§.mTryToBlink = 0;
                        loop1:
                        while(true)
                        {
                           §?!M§.mIsBlinking = false;
                           while(true)
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(true);
                                       loop3:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             _loc2_ = §§pop();
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             if(!_loc3_)
                                             {
                                                continue loop1;
                                             }
                                             if(_loc4_)
                                             {
                                                continue loop0;
                                             }
                                             if(!(_loc4_ && param1))
                                             {
                                                continue;
                                             }
                                             loop4:
                                             while(true)
                                             {
                                                addr117:
                                                addr160:
                                                while(true)
                                                {
                                                   §?!M§.mTryToBlink -= param1;
                                                   while(true)
                                                   {
                                                      if(§?!M§.mTryToBlink <= 0)
                                                      {
                                                         continue;
                                                      }
                                                      addr83:
                                                      while(true)
                                                      {
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                                addr160:
                                                while(true)
                                                {
                                                   §?!M§.mTryToBlink = §'!%§.§?r§ - 1;
                                                   continue loop4;
                                                }
                                             }
                                          }
                                          loop5:
                                          while(true)
                                          {
                                             if(!(_loc4_ && param1))
                                             {
                                                _loc2_ = §§pop();
                                                while(true)
                                                {
                                                   break loop5;
                                                }
                                                addr116:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   §§goto(addr160);
                                                }
                                                addr159:
                                             }
                                          }
                                          §§goto(addr83);
                                       }
                                       continue;
                                    }
                                    addr146:
                                    while(true)
                                    {
                                       if(§?!M§.mTryToBlink >= §'!%§.§?r§)
                                       {
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             while(true)
                                             {
                                                §§goto(addr159);
                                             }
                                             addr158:
                                          }
                                          §§goto(addr160);
                                       }
                                    }
                                    §§goto(addr117);
                                 }
                                 §§goto(addr100);
                              }
                              §§goto(addr116);
                           }
                        }
                     }
                     §§goto(addr160);
                  }
               }
               §§goto(addr21);
            }
            §§goto(addr146);
         }
         §§goto(addr158);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(!(_loc3_ && this))
         {
            if(§?!M§.mTryToScream <= 0)
            {
               if(§?!M§.mIsScreaming)
               {
                  loop0:
                  while(true)
                  {
                     §?!M§.mTryToScream = 0;
                     while(true)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §?!M§.mIsScreaming = false;
                           while(_loc4_ || this)
                           {
                              if(_loc4_)
                              {
                                 §§push(true);
                                 loop3:
                                 while(true)
                                 {
                                    if(_loc4_ || this)
                                    {
                                       _loc2_ = §§pop();
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       if(_loc4_ || this)
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                             continue;
                                          }
                                          loop4:
                                          while(true)
                                          {
                                             this.playScreamingSoundEffect();
                                             addr160:
                                             loop15:
                                             while(true)
                                             {
                                                §?!M§.mTryToScream = §'!%§.§2<§ - 1;
                                                addr149:
                                                while(!(_loc4_ || _loc2_))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(true);
                                                      continue loop4;
                                                   }
                                                }
                                                loop14:
                                                while(true)
                                                {
                                                   §?!M§.mTryToScream -= param1;
                                                   addr142:
                                                   while(true)
                                                   {
                                                      if(§?!M§.mTryToScream <= 0)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop15;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(true);
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     _loc2_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        break loop5;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  addr90:
                                                                  addr121:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(§?!M§.mTryToScream < §'!%§.§2<§)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                                  addr165:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr149);
                                                            }
                                                            §§goto(addr170);
                                                         }
                                                         §§goto(addr124);
                                                      }
                                                      §§goto(addr90);
                                                      continue loop14;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr124);
                                    }
                                    §§goto(addr121);
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                           continue;
                        }
                        §§goto(addr142);
                     }
                  }
               }
               §§goto(addr27);
            }
            §§goto(addr165);
         }
         §§goto(addr160);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §@j§(§<!R§.§;8§);
         }
      }
   }
}
