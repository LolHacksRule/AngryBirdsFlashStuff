package §_-lt§
{
   import §_-0DG§.§_-a2§;
   import §_-TG§.§_-00u§;
   import §_-aU§.b2World;
   import §_-uY§.Sprite;
   
   public class §_-0f§ extends §_-eZ§
   {
       
      
      public function §_-0f§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
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
         if(!_loc3_)
         {
            if(§_-U-§.mTryToBlink <= 0)
            {
               if(§_-U-§.mIsBlinking)
               {
                  if(!_loc3_)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §_-U-§.mTryToBlink = 0;
                        loop5:
                        while(true)
                        {
                           if(_loc4_ || this)
                           {
                              §_-U-§.mIsBlinking = false;
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(true);
                                       loop7:
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             if(!_loc3_)
                                             {
                                                _loc2_ = §§pop();
                                                if(!_loc4_)
                                                {
                                                   break;
                                                }
                                                if(!_loc4_)
                                                {
                                                   continue loop5;
                                                }
                                                if(_loc4_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop7;
                                                   }
                                                   return §§pop();
                                                   addr22:
                                                }
                                                else
                                                {
                                                   while(_loc4_ || _loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§goto(addr22);
                                                      }
                                                   }
                                                   addr102:
                                                }
                                                §§goto(addr22);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                }
                                                addr145:
                                             }
                                             while(true)
                                             {
                                                §_-U-§.mTryToBlink = §_-05W§.§_-Og§ - 1;
                                                addr134:
                                                loop12:
                                                while(true)
                                                {
                                                   addr120:
                                                   while(true)
                                                   {
                                                      §_-U-§.mTryToBlink -= param1;
                                                      addr127:
                                                      while(true)
                                                      {
                                                         if(§_-U-§.mTryToBlink <= 0)
                                                         {
                                                            if(_loc4_ || param1)
                                                            {
                                                               §§push(true);
                                                               while(true)
                                                               {
                                                                  _loc2_ = §§pop();
                                                               }
                                                               addr101:
                                                            }
                                                            §§goto(addr102);
                                                         }
                                                         §§goto(addr52);
                                                      }
                                                      continue loop12;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr101);
                                       }
                                       continue;
                                    }
                                    addr144:
                                    while(true)
                                    {
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr134);
                              }
                           }
                           §§goto(addr127);
                        }
                        addr80:
                     }
                     else
                     {
                        addr139:
                        if(§_-U-§.mTryToBlink >= §_-05W§.§_-Og§)
                        {
                           §§goto(addr144);
                        }
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr80);
               }
               §§goto(addr22);
            }
            §§goto(addr139);
         }
         §§goto(addr134);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(!_loc3_)
         {
            if(§_-U-§.mTryToScream <= 0)
            {
               if(§_-U-§.mIsScreaming)
               {
                  loop0:
                  while(true)
                  {
                     §_-U-§.mTryToScream = 0;
                     while(true)
                     {
                        if(_loc4_)
                        {
                           if(_loc4_)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 §_-U-§.mIsScreaming = false;
                                 loop2:
                                 for(; _loc4_ || _loc3_; while(true)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc3_ && _loc3_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 })
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(true);
                                       continue;
                                    }
                                    addr165:
                                    while(true)
                                    {
                                       if(§_-U-§.mTryToScream >= §_-05W§.§_-0C9§)
                                       {
                                          while(true)
                                          {
                                             §§push(true);
                                             addr171:
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                addr172:
                                                while(true)
                                                {
                                                   this.playScreamingSoundEffect();
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §_-U-§.mTryToScream = §_-05W§.§_-0C9§ - 1;
                                                      addr149:
                                                      while(true)
                                                      {
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                         }
                                                         continue loop9;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr170:
                                       }
                                       while(true)
                                       {
                                          §_-U-§.mTryToScream -= param1;
                                          addr142:
                                          while(true)
                                          {
                                             if(§_-U-§.mTryToScream <= 0)
                                             {
                                                addr120:
                                                while(true)
                                                {
                                                   §§push(true);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      addr122:
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            addr124:
                                                            while(true)
                                                            {
                                                               addr22:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  if(_loc3_ && _loc3_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr171);
                                                               }
                                                               return §§pop();
                                                               §§goto(addr124);
                                                            }
                                                            addr94:
                                                         }
                                                         §§goto(addr172);
                                                      }
                                                   }
                                                }
                                                addr120:
                                             }
                                             §§goto(addr94);
                                          }
                                       }
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr142);
                        }
                        §§goto(addr122);
                     }
                     if(_loc3_ && param1)
                     {
                        continue;
                     }
                     if(_loc4_ || param1)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr22);
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr120);
                  }
               }
               §§goto(addr22);
            }
            §§goto(addr165);
         }
         §§goto(addr120);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §_-Dv§(§_-a2§.§_-Pz§);
         }
      }
   }
}
