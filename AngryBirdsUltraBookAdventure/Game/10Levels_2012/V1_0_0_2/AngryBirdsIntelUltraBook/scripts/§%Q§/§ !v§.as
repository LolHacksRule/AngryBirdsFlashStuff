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
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(_loc11_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(!(_loc3_ && _loc3_))
         {
            if(§?!M§.mTryToBlink <= 0)
            {
               if(§?!M§.mIsBlinking)
               {
                  while(true)
                  {
                     if(_loc4_ || this)
                     {
                        §?!M§.mTryToBlink = 0;
                        while(true)
                        {
                           if(_loc4_)
                           {
                              §?!M§.mIsBlinking = false;
                              continue;
                           }
                           addr169:
                           while(true)
                           {
                              if(§?!M§.mTryToBlink >= §'!%§.§?r§)
                              {
                                 while(true)
                                 {
                                    §§push(true);
                                    addr175:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr176:
                                       loop15:
                                       while(true)
                                       {
                                          §?!M§.mTryToBlink = §'!%§.§?r§ - 1;
                                          addr164:
                                          while(true)
                                          {
                                             continue loop15;
                                          }
                                       }
                                    }
                                 }
                                 addr174:
                              }
                              while(true)
                              {
                                 §?!M§.mTryToBlink -= param1;
                                 loop9:
                                 while(§?!M§.mTryToBlink <= 0)
                                 {
                                    while(true)
                                    {
                                       if(!(_loc4_ || param1))
                                       {
                                          continue loop9;
                                       }
                                       §§push(true);
                                       loop11:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr125:
                                          while(true)
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                if(!(_loc3_ && this))
                                                {
                                                   break loop9;
                                                }
                                                §§goto(addr174);
                                             }
                                             §§goto(addr176);
                                             continue loop11;
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr27);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr116);
                     if(!(_loc4_ || param1))
                     {
                        continue;
                     }
                     §§goto(addr50);
                     §§push(true);
                  }
               }
               addr27:
               loop12:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc3_ && _loc3_)
                  {
                     while(true)
                     {
                        _loc2_ = §§pop();
                        if(!_loc4_)
                        {
                           break;
                        }
                        if(!(_loc3_ && this))
                        {
                           if(!(_loc3_ && this))
                           {
                              continue loop12;
                           }
                        }
                        else
                        {
                           §§goto(addr125);
                        }
                        §§goto(addr164);
                        continue loop12;
                     }
                     continue loop1;
                     addr50:
                  }
                  if(!(_loc3_ && this))
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     §§goto(addr175);
                  }
                  else
                  {
                     §§goto(addr124);
                  }
                  §§goto(addr125);
               }
               return §§pop();
            }
            §§goto(addr169);
         }
         §§goto(addr176);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(_loc4_)
         {
            if(§?!M§.mTryToScream <= 0)
            {
               if(§?!M§.mIsScreaming)
               {
                  loop0:
                  while(true)
                  {
                     if(_loc4_)
                     {
                        §?!M§.mTryToScream = 0;
                        loop1:
                        while(true)
                        {
                           §?!M§.mIsScreaming = false;
                           while(true)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(true);
                                       loop3:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             _loc2_ = §§pop();
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             if(_loc3_)
                                             {
                                                continue loop1;
                                             }
                                             if(!_loc4_)
                                             {
                                                continue loop0;
                                             }
                                             if(_loc4_ || param1)
                                             {
                                                continue;
                                             }
                                             loop4:
                                             while(true)
                                             {
                                                loop5:
                                                while(true)
                                                {
                                                   §?!M§.mTryToScream -= param1;
                                                   loop6:
                                                   while(§?!M§.mTryToScream <= 0)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc3_ && _loc2_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§push(true);
                                                         while(true)
                                                         {
                                                            if(_loc4_ || param1)
                                                            {
                                                               _loc2_ = §§pop();
                                                               while(true)
                                                               {
                                                                  break loop6;
                                                               }
                                                               addr117:
                                                            }
                                                            else
                                                            {
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     this.playScreamingSoundEffect();
                                                                     addr146:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc4_ || _loc3_))
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        addr165:
                                                                        while(true)
                                                                        {
                                                                           if(§?!M§.mTryToScream >= §'!%§.§2<§)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr109);
                                       }
                                       continue;
                                    }
                                    §§goto(addr170);
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr117);
                           }
                        }
                     }
                     §§goto(addr146);
                  }
               }
               §§goto(addr22);
            }
         }
         §§goto(addr165);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §@j§(§<!R§.§;8§);
         }
      }
   }
}
