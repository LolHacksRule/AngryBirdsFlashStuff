package §+!o§
{
   import §+S§.b2World;
   import §,a§.§+"&§;
   import §5!V§.§!w§;
   import §default§.Sprite;
   
   public class §2f§ extends §]"5§
   {
       
      
      public function §2f§(param1:§?"-§, param2:Sprite, param3:b2World, param4:§!w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(!_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = false;
         if(_loc3_ || _loc3_)
         {
            if(§[!g§.mTryToBlink > 0)
            {
               if(!(_loc4_ && param1))
               {
                  if(§[!g§.mTryToBlink >= §<Y§.§?!§)
                  {
                     addr158:
                     while(true)
                     {
                        §§push(true);
                        addr159:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           addr160:
                           while(true)
                           {
                              §[!g§.mTryToBlink = §<Y§.§?!§ - 1;
                              addr131:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr158:
                  }
                  while(true)
                  {
                     §[!g§.mTryToBlink -= param1;
                     while(_loc3_)
                     {
                        addr124:
                        if(§[!g§.mTryToBlink <= 0)
                        {
                           while(true)
                           {
                              §§push(true);
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    _loc2_ = §§pop();
                                    while(true)
                                    {
                                       addr69:
                                       while(true)
                                       {
                                          §§goto(addr26);
                                       }
                                    }
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr124);
                           }
                           addr110:
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr160);
                  }
               }
               §§goto(addr158);
            }
            else if(§[!g§.mIsBlinking)
            {
               if(_loc3_ || param1)
               {
                  if(!(_loc4_ && param1))
                  {
                     §[!g§.mTryToBlink = 0;
                     §§goto(addr102);
                  }
                  §§goto(addr110);
               }
               §§goto(addr102);
            }
            addr26:
            loop12:
            while(true)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  break;
               }
               addr102:
               while(true)
               {
                  if(!(_loc4_ && this))
                  {
                     addr42:
                     _loc2_ = §§pop();
                     if(_loc4_ && param1)
                     {
                        break;
                     }
                     if(!_loc4_)
                     {
                        continue loop12;
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
               while(!_loc4_)
               {
                  if(!(_loc3_ || param1))
                  {
                     continue loop7;
                  }
                  if(_loc3_)
                  {
                     §§goto(addr35);
                     §§push(true);
                  }
                  else
                  {
                     §§goto(addr131);
                  }
                  §§goto(addr42);
               }
               addr35:
               while(true)
               {
                  if(!_loc4_)
                  {
                     §[!g§.mIsBlinking = false;
                     §§goto(addr57);
                  }
                  else
                  {
                     §§goto(addr158);
                  }
               }
               addr57:
            }
            return §§pop();
         }
         §§goto(addr158);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(_loc4_)
         {
            if(§[!g§.mTryToScream <= 0)
            {
               if(§[!g§.mIsScreaming)
               {
                  loop0:
                  while(true)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        if(_loc4_ || param1)
                        {
                           §[!g§.mTryToScream = 0;
                           while(true)
                           {
                              if(!(_loc3_ && param1))
                              {
                                 §[!g§.mIsScreaming = false;
                                 while(_loc4_)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    if(_loc4_ || this)
                                    {
                                       §§push(true);
                                       loop3:
                                       while(true)
                                       {
                                          if(!(_loc3_ && param1))
                                          {
                                             _loc2_ = §§pop();
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             if(!_loc3_)
                                             {
                                                if(!(_loc3_ && param1))
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc3_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(!(_loc3_ && this))
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         addr122:
                                                         loop6:
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(true);
                                                                  addr166:
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     addr167:
                                                                     while(true)
                                                                     {
                                                                        this.playScreamingSoundEffect();
                                                                        addr145:
                                                                        while(true)
                                                                        {
                                                                           §[!g§.mTryToScream = §<Y§.§^!7§ - 1;
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              addr125:
                                                                              loop10:
                                                                              while(true)
                                                                              {
                                                                                 §[!g§.mTryToScream -= param1;
                                                                                 addr132:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    addr134:
                                                                                    if(§[!g§.mTryToScream <= 0)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop6;
                                                                                          §§goto(addr134);
                                                                                       }
                                                                                       addr120:
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr165:
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop13;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   return §§pop();
                                                   addr22:
                                                }
                                                §§goto(addr120);
                                             }
                                             §§goto(addr122);
                                          }
                                          §§goto(addr166);
                                       }
                                       continue;
                                    }
                                    §§goto(addr132);
                                 }
                                 continue;
                              }
                              addr160:
                              while(true)
                              {
                                 if(§[!g§.mTryToScream >= §<Y§.§^!7§)
                                 {
                                    §§goto(addr165);
                                 }
                              }
                              §§goto(addr125);
                           }
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr145);
                  }
               }
               §§goto(addr22);
            }
            §§goto(addr160);
         }
         §§goto(addr167);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §"!a§(§+"&§.§#!^§);
         }
      }
   }
}
