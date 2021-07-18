package §,h§
{
   import §!X§.§86§;
   import §]@§.Sprite;
   import §`j§.b2World;
   import §default§.§!A§;
   
   public class §9!@§ extends §+0§
   {
       
      
      public function §9!@§(param1:§6M§, param2:Sprite, param3:b2World, param4:§86§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(_loc12_)
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
            if(§2P§.mTryToBlink <= 0)
            {
               if(§2P§.mIsBlinking)
               {
                  while(true)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        §2P§.mTryToBlink = 0;
                        loop1:
                        while(true)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              §2P§.mIsBlinking = false;
                              while(true)
                              {
                                 if(_loc3_ || param1)
                                 {
                                    if(_loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§push(true);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(§2P§.mTryToBlink >= §0q§.§?r§)
                                             {
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
                                                         §2P§.mTryToBlink = §0q§.§?r§ - 1;
                                                         addr138:
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
                                                §2P§.mTryToBlink -= param1;
                                                loop7:
                                                while(true)
                                                {
                                                   if(§2P§.mTryToBlink <= 0)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(true);
                                                         addr120:
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            addr121:
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                            }
                                                         }
                                                         continue loop7;
                                                      }
                                                      addr119:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr21);
                                                   }
                                                }
                                                §§goto(addr138);
                                             }
                                          }
                                          addr153:
                                       }
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop1;
                                       }
                                       continue;
                                    }
                                    §§goto(addr158);
                                 }
                                 §§goto(addr138);
                              }
                           }
                           §§goto(addr160);
                        }
                     }
                     §§goto(addr121);
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     if(!_loc4_)
                     {
                        §§goto(addr21);
                     }
                     §§goto(addr119);
                  }
               }
               addr21:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc3_)
                  {
                     if(_loc3_ || this)
                     {
                        if(_loc3_ || this)
                        {
                           break;
                        }
                        §§goto(addr159);
                     }
                     else
                     {
                        §§goto(addr120);
                     }
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr153);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc4_)
         {
            if(§2P§.mTryToScream <= 0)
            {
               if(§2P§.mIsScreaming)
               {
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           §2P§.mTryToScream = 0;
                           loop1:
                           while(true)
                           {
                              if(!(_loc3_ && this))
                              {
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       §2P§.mIsScreaming = false;
                                       continue loop1;
                                    }
                                    addr104:
                                 }
                                 else
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       §2P§.mTryToScream = §0q§.§<!6§ - 1;
                                       loop3:
                                       while(true)
                                       {
                                          addr120:
                                          while(true)
                                          {
                                             §2P§.mTryToScream -= param1;
                                             continue loop3;
                                          }
                                       }
                                       while(true)
                                       {
                                          this.playScreamingSoundEffect();
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr119);
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              if(§2P§.mTryToScream >= §0q§.§<!6§)
                              {
                                 §§goto(addr165);
                              }
                           }
                           addr160:
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr110);
                  }
               }
               §§goto(addr22);
            }
            §§goto(addr160);
         }
         §§goto(addr104);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            § !=§(§!A§.§8s§);
         }
      }
   }
}
