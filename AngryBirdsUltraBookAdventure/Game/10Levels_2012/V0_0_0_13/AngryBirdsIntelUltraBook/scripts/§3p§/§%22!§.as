package §3p§
{
   import §2!H§.LevelMain;
   import §6!7§.Sprite;
   import §;T§.LevelItemSoundResource;
   import §]=§.b2World;
   
   public class §"!§ extends LevelObject
   {
       
      
      public function §"!§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(false);
         if(_loc3_ || _loc2_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            if(§7!O§.mTryToBlink <= 0)
            {
               if(§7!O§.mIsBlinking)
               {
                  while(true)
                  {
                     if(!(_loc4_ && this))
                     {
                        §7!O§.mTryToBlink = 0;
                        while(true)
                        {
                           §7!O§.mIsBlinking = false;
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 §§push(true);
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr125:
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§goto(addr34);
                                                      }
                                                   }
                                                   addr134:
                                                }
                                                §§goto(addr186);
                                             }
                                             §§goto(addr144);
                                          }
                                       }
                                    }
                                    §§goto(addr57);
                                 }
                              }
                              §§goto(addr125);
                           }
                        }
                     }
                     §§goto(addr113);
                  }
               }
               addr34:
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        _loc2_ = §§pop();
                        if(_loc4_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     continue loop2;
                     addr57:
                  }
                  if(!_loc3_)
                  {
                     continue loop3;
                  }
                  if(_loc3_)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        break;
                     }
                     loop9:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        while(true)
                        {
                           §7!O§.mTryToBlink = LevelObjectRenderer.§[W§ - 1;
                           loop11:
                           while(_loc3_ || this)
                           {
                              while(true)
                              {
                                 §7!O§.mTryToBlink -= param1;
                                 addr144:
                                 loop13:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop11;
                                    }
                                    if(§7!O§.mTryToBlink > 0)
                                    {
                                       continue loop19;
                                    }
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§push(true);
                                          while(true)
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                break loop13;
                                             }
                                          }
                                          addr116:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(§7!O§.mTryToBlink < LevelObjectRenderer.§[W§)
                                             {
                                                continue loop13;
                                             }
                                             while(true)
                                             {
                                                §§push(true);
                                             }
                                          }
                                          addr179:
                                       }
                                       while(true)
                                       {
                                          continue loop9;
                                       }
                                    }
                                 }
                                 continue loop6;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr116);
               }
               return §§pop();
            }
            §§goto(addr179);
         }
         §§goto(addr134);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(false);
         if(_loc4_ || param1)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            if(§7!O§.mTryToScream <= 0)
            {
               if(§7!O§.mIsScreaming)
               {
                  loop0:
                  while(true)
                  {
                     §7!O§.mTryToScream = 0;
                     while(true)
                     {
                        if(!(_loc3_ && this))
                        {
                           §7!O§.mIsScreaming = false;
                           for(; !(_loc3_ && param1); while(true)
                           {
                              _loc2_ = §§pop();
                              if(!(_loc4_ || param1))
                              {
                                 break;
                              }
                              if(_loc4_ || _loc3_)
                              {
                                 continue;
                              }
                              §§goto(addr186);
                           })
                           {
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              if(_loc4_ || this)
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§push(true);
                                       if(_loc3_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             continue;
                                          }
                                          loop3:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             loop4:
                                             while(true)
                                             {
                                                this.playScreamingSoundEffect();
                                                addr211:
                                                while(true)
                                                {
                                                   §7!O§.mTryToScream = LevelObjectRenderer.§9!g§ - 1;
                                                   loop12:
                                                   while(true)
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §7!O§.mTryToScream -= param1;
                                                         addr186:
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(§7!O§.mTryToScream <= 0)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!(_loc4_ || this))
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(true);
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        addr166:
                                                                        §§push(Boolean(§§pop()));
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_ && _loc3_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           _loc2_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr166:
                                                                     }
                                                                     §§goto(addr166);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§7!O§.mTryToScream < LevelObjectRenderer.§9!g§)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(true);
                                                                           continue loop3;
                                                                        }
                                                                     }
                                                                     addr217:
                                                                  }
                                                                  continue loop17;
                                                               }
                                                               addr148:
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr30);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr224);
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr174);
                           }
                           continue;
                        }
                        §§goto(addr211);
                     }
                  }
               }
               addr30:
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc3_ && _loc2_))
                  {
                     break;
                  }
                  continue loop2;
               }
               return §§pop();
            }
            §§goto(addr217);
         }
         §§goto(addr186);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@r§(LevelItemSoundResource.§6!=§);
         }
      }
   }
}
