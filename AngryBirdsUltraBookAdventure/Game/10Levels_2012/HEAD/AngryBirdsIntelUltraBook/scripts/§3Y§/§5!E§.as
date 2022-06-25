package §3Y§
{
   import §1!&§.Sprite;
   import §1%§.b2World;
   import §?A§.LevelMain;
   import §^L§.LevelItemSoundResource;
   
   public class §5!E§ extends LevelObject
   {
       
      
      public function §5!E§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(_loc12_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(false);
         if(_loc4_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            if(§ get§.mTryToBlink <= 0)
            {
               if(§ get§.mIsBlinking)
               {
                  loop0:
                  while(true)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        if(_loc4_)
                        {
                           § get§.mTryToBlink = 0;
                           loop17:
                           while(true)
                           {
                              § get§.mIsBlinking = false;
                              loop18:
                              while(true)
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    if(!(_loc3_ && param1))
                                    {
                                       §§push(true);
                                       loop14:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop15:
                                          for(; _loc4_; continue loop14)
                                          {
                                             _loc2_ = §§pop();
                                             if(!_loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      addr75:
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!(_loc4_ || param1))
                                                         {
                                                            continue loop15;
                                                         }
                                                         if(!(_loc4_ || _loc2_))
                                                         {
                                                            continue loop15;
                                                         }
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            if(!(_loc3_ && this))
                                                            {
                                                               break;
                                                            }
                                                            loop12:
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               addr200:
                                                               while(true)
                                                               {
                                                                  § get§.mTryToBlink = LevelObjectRenderer.§&3§ - 1;
                                                                  loop2:
                                                                  while(true)
                                                                  {
                                                                     addr155:
                                                                     while(true)
                                                                     {
                                                                        § get§.mTryToBlink -= param1;
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           if(§ get§.mTryToBlink <= 0)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(true);
                                                                                    break loop15;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              addr133:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 continue loop13;
                                                                                 addr154:
                                                                              }
                                                                           }
                                                                           addr140:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ || this))
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 §§goto(addr154);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(true);
                                                                                    addr198:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                 }
                                                                                 addr197:
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop12;
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               §§goto(addr140);
                                                            }
                                                            §§goto(addr198);
                                                         }
                                                      }
                                                      return §§pop();
                                                      addr30:
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop17;
                                             }
                                             continue loop18;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr137);
                                          }
                                          §§goto(addr105);
                                       }
                                       addr105:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          if(§ get§.mTryToBlink >= LevelObjectRenderer.§&3§)
                                          {
                                             §§goto(addr197);
                                          }
                                       }
                                       addr190:
                                    }
                                    §§goto(addr155);
                                 }
                                 §§goto(addr140);
                              }
                           }
                           addr126:
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr133);
                  }
               }
               §§goto(addr30);
            }
            §§goto(addr190);
         }
         §§goto(addr126);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(false);
         if(_loc3_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            if(§ get§.mTryToScream > 0)
            {
               if(_loc3_ || _loc2_)
               {
                  if(§ get§.mTryToScream >= LevelObjectRenderer.§6!H§)
                  {
                     while(true)
                     {
                        §§push(true);
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                              _loc2_ = §§pop();
                              addr231:
                              while(true)
                              {
                                 this.playScreamingSoundEffect();
                                 while(true)
                                 {
                                    § get§.mTryToScream = LevelObjectRenderer.§6!H§ - 1;
                                    loop4:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(_loc4_ && param1)
                                          {
                                             continue loop4;
                                          }
                                          addr171:
                                          while(true)
                                          {
                                             §§goto(addr29);
                                          }
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
                     § get§.mTryToScream -= param1;
                     §§goto(addr181);
                  }
               }
               §§goto(addr231);
            }
            else if(§ get§.mIsScreaming)
            {
               §§goto(addr113);
            }
            addr29:
            loop16:
            while(true)
            {
               §§push(_loc2_);
               if(!(_loc4_ && _loc2_))
               {
                  break;
               }
               loop17:
               while(!_loc4_)
               {
                  addr60:
                  _loc2_ = §§pop();
                  if(_loc3_ || param1)
                  {
                     addr68:
                     if(!(_loc4_ && this))
                     {
                        addr75:
                        if(!(_loc4_ && this))
                        {
                           continue loop16;
                        }
                        addr181:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              continue loop10;
                           }
                           if(§ get§.mTryToScream > 0)
                           {
                              continue loop6;
                           }
                           §§goto(addr75);
                        }
                        continue loop10;
                     }
                     addr113:
                     while(true)
                     {
                        § get§.mTryToScream = 0;
                        while(true)
                        {
                           if(_loc4_ && param1)
                           {
                              continue loop13;
                           }
                           if(_loc3_ || _loc3_)
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 § get§.mIsScreaming = false;
                                 while(_loc3_ || _loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(true);
                                       if(!(_loc3_ || _loc2_))
                                       {
                                          continue loop17;
                                       }
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          continue loop17;
                                       }
                                       addr156:
                                       while(true)
                                       {
                                          if(!(_loc4_ && param1))
                                          {
                                             _loc2_ = §§pop();
                                             continue loop13;
                                          }
                                          continue loop11;
                                       }
                                    }
                                    §§goto(addr60);
                                 }
                                 continue;
                                 addr88:
                              }
                              continue loop3;
                           }
                        }
                        §§goto(addr68);
                     }
                     while(true)
                     {
                        if(_loc3_)
                        {
                           §§push(true);
                           break loop17;
                        }
                        continue loop14;
                     }
                  }
                  §§goto(addr88);
               }
               while(true)
               {
                  if(_loc4_ && _loc3_)
                  {
                     continue loop12;
                  }
                  §§goto(addr156);
                  return Boolean(§§pop());
               }
            }
            return §§pop();
         }
         §§goto(addr95);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §8!9§(LevelItemSoundResource.§0!7§);
         }
      }
   }
}
