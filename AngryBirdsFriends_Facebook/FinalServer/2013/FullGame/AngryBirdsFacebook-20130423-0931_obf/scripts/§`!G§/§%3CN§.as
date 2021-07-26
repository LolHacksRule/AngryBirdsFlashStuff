package §`!G§
{
   import §'!6§.Sprite;
   import §-f§.§[!J§;
   import §4!<§.§'!S§;
   import §6"1§.b2World;
   
   public class §<N§ extends §[!8§
   {
       
      
      public function §<N§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(!(_loc3_ && param1))
         {
            if(§2!8§.mTryToBlink <= 0)
            {
               if(§2!8§.mIsBlinking)
               {
                  if(!(_loc3_ && this))
                  {
                     if(!(_loc3_ && param1))
                     {
                        if(_loc4_ || _loc2_)
                        {
                           §2!8§.mTryToBlink = 0;
                           loop7:
                           while(true)
                           {
                              §2!8§.mIsBlinking = false;
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(_loc4_ || this)
                                       {
                                          §§push(true);
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                _loc2_ = §§pop();
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                continue loop7;
                                             }
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                addr127:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§goto(addr27);
                                                   }
                                                }
                                             }
                                          }
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr170);
                                       }
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr145);
                              }
                           }
                           addr119:
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr119);
               }
               addr27:
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     continue loop9;
                  }
                  if(!(_loc3_ && _loc2_))
                  {
                     break;
                  }
                  addr170:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     addr171:
                     loop12:
                     while(true)
                     {
                        §2!8§.mTryToBlink = §+T§.§4!V§ - 1;
                        addr159:
                        while(true)
                        {
                           loop1:
                           while(true)
                           {
                              §2!8§.mTryToBlink -= param1;
                              addr145:
                              loop2:
                              while(true)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(§2!8§.mTryToBlink > 0)
                                    {
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       continue loop5;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(§2!8§.mTryToBlink >= §+T§.§4!V§)
                                       {
                                          break loop2;
                                       }
                                       continue loop1;
                                    }
                                    addr164:
                                 }
                              }
                           }
                           continue loop12;
                        }
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr164);
         }
         §§goto(addr57);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = false;
         if(_loc3_ || _loc2_)
         {
            if(§2!8§.mTryToScream <= 0)
            {
               if(§2!8§.mIsScreaming)
               {
                  if(_loc3_ || param1)
                  {
                     if(_loc3_)
                     {
                        §2!8§.mTryToScream = 0;
                        while(true)
                        {
                           if(_loc3_)
                           {
                              §2!8§.mIsScreaming = false;
                              while(!_loc4_)
                              {
                                 §§push(true);
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc4_ && _loc3_)
                                    {
                                       break;
                                    }
                                    §§goto(addr26);
                                 }
                              }
                              continue;
                           }
                           §§goto(addr101);
                        }
                        addr93:
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr93);
               }
               addr26:
               loop13:
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc3_ || param1))
                  {
                     continue loop8;
                  }
                  if(_loc3_)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        break;
                     }
                     loop11:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        loop12:
                        while(true)
                        {
                           this.playScreamingSoundEffect();
                           addr154:
                           while(true)
                           {
                              §2!8§.mTryToScream = §+T§.§<!t§ - 1;
                              addr150:
                              loop4:
                              while(true)
                              {
                                 addr136:
                                 while(true)
                                 {
                                    §2!8§.mTryToScream -= param1;
                                    addr143:
                                    addr110:
                                    loop5:
                                    while(true)
                                    {
                                       if(§2!8§.mTryToScream <= 0)
                                       {
                                          while(true)
                                          {
                                             if(_loc4_ && _loc2_)
                                             {
                                                continue loop12;
                                             }
                                             if(_loc3_)
                                             {
                                                break loop5;
                                             }
                                             while(true)
                                             {
                                                continue loop11;
                                             }
                                          }
                                          addr101:
                                       }
                                       addr65:
                                       while(true)
                                       {
                                          continue loop13;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(true);
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                  }
                  loop14:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     addr112:
                     while(true)
                     {
                        if(_loc3_ || param1)
                        {
                           if(_loc3_)
                           {
                              if(_loc3_)
                              {
                                 if(_loc4_)
                                 {
                                    while(true)
                                    {
                                       if(§2!8§.mTryToScream >= §+T§.§<!t§)
                                       {
                                          §§goto(addr164);
                                       }
                                       §§goto(addr136);
                                    }
                                    addr159:
                                 }
                                 §§goto(addr65);
                              }
                              §§goto(addr154);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr143);
                        continue loop14;
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr159);
         }
         §§goto(addr110);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §8X§(§[!J§.§]"3§);
         }
      }
   }
}
