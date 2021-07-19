package §-!7§
{
   import §&!"§.b2World;
   import §9N§.§9!%§;
   import §?7§.§=!5§;
   import §`a§.Sprite;
   
   public class §!!!§ extends §@m§
   {
       
      
      public function §!!!§(param1:§&$§, param2:Sprite, param3:b2World, param4:§9!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(!(_loc12_ && param1))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(_loc4_)
         {
            if(§%n§.mTryToBlink <= 0)
            {
               if(§%n§.mIsBlinking)
               {
                  loop0:
                  while(true)
                  {
                     if(_loc4_)
                     {
                        if(_loc4_ || param1)
                        {
                           if(_loc4_)
                           {
                              while(true)
                              {
                                 §%n§.mTryToBlink = 0;
                                 loop16:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       §%n§.mIsBlinking = false;
                                       loop13:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop16;
                                          }
                                          §§push(true);
                                          loop12:
                                          for(; _loc4_ || _loc3_; §§goto(addr62))
                                          {
                                             _loc2_ = §§pop();
                                             if(_loc3_)
                                             {
                                                continue loop13;
                                             }
                                             if(_loc3_)
                                             {
                                                continue loop0;
                                             }
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                addr55:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      break;
                                                   }
                                                   continue loop12;
                                                   §§goto(addr55);
                                                }
                                                return §§pop();
                                                addr22:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(§%n§.mTryToBlink >= §'x§.§@x§)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(true);
                                                         addr155:
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            addr156:
                                                            while(true)
                                                            {
                                                               §%n§.mTryToBlink = §'x§.§@x§ - 1;
                                                               break loop13;
                                                            }
                                                         }
                                                      }
                                                      addr154:
                                                   }
                                                   addr120:
                                                   while(true)
                                                   {
                                                      §%n§.mTryToBlink -= param1;
                                                      addr127:
                                                      while(true)
                                                      {
                                                         if(§%n§.mTryToBlink <= 0)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(true);
                                                               break loop12;
                                                            }
                                                            addr101:
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr22);
                                                            addr119:
                                                         }
                                                      }
                                                   }
                                                }
                                                addr149:
                                             }
                                             §§goto(addr22);
                                          }
                                          addr62:
                                          while(true)
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                _loc2_ = §§pop();
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         §§goto(addr119);
                                                      }
                                                      §§goto(addr154);
                                                   }
                                                   §§goto(addr127);
                                                }
                                                addr110:
                                             }
                                             §§goto(addr155);
                                          }
                                       }
                                       addr95:
                                    }
                                    while(true)
                                    {
                                       §§goto(addr120);
                                    }
                                 }
                              }
                              addr90:
                           }
                           §§goto(addr156);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr110);
                  }
               }
               §§goto(addr22);
            }
            §§goto(addr149);
         }
         §§goto(addr90);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = false;
         if(_loc3_)
         {
            if(§%n§.mTryToScream <= 0)
            {
               if(§%n§.mIsScreaming)
               {
                  loop0:
                  while(true)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        if(!_loc4_)
                        {
                           §%n§.mTryToScream = 0;
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 if(_loc3_)
                                 {
                                    §%n§.mIsScreaming = false;
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    this.playScreamingSoundEffect();
                                    while(true)
                                    {
                                       §%n§.mTryToScream = §'x§.§ H§ - 1;
                                       loop7:
                                       while(true)
                                       {
                                          addr114:
                                          addr106:
                                          while(true)
                                          {
                                             §%n§.mTryToScream -= param1;
                                          }
                                          while(true)
                                          {
                                             if(!(_loc3_ || param1))
                                             {
                                                continue loop7;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr21);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              loop10:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    while(true)
                                    {
                                       if(§%n§.mTryToScream <= 0)
                                       {
                                          while(true)
                                          {
                                             §§goto(addr103);
                                          }
                                          addr102:
                                       }
                                       §§goto(addr64);
                                    }
                                    addr123:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(§%n§.mTryToScream < §'x§.§ H§)
                                       {
                                          continue loop10;
                                       }
                                    }
                                    addr149:
                                 }
                                 §§goto(addr154);
                              }
                           }
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr106);
                  }
               }
               addr21:
               loop15:
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc3_ || param1))
                  {
                     while(true)
                     {
                        _loc2_ = §§pop();
                        if(_loc4_ && _loc2_)
                        {
                           break;
                        }
                        if(_loc4_)
                        {
                           continue loop1;
                        }
                        if(!_loc3_)
                        {
                           continue loop6;
                        }
                        if(!_loc4_)
                        {
                           continue loop15;
                        }
                        addr154:
                        while(true)
                        {
                           §§push(true);
                        }
                        continue loop15;
                     }
                     continue loop0;
                     addr37:
                  }
                  if(!_loc4_)
                  {
                     break;
                  }
                  addr103:
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        _loc2_ = §§pop();
                        continue loop13;
                     }
                  }
                  while(true)
                  {
                     _loc2_ = §§pop();
                     continue loop9;
                  }
               }
               return §§pop();
            }
            §§goto(addr149);
         }
         §§goto(addr123);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,!L§(§=!5§.§2!#§);
         }
      }
   }
}
