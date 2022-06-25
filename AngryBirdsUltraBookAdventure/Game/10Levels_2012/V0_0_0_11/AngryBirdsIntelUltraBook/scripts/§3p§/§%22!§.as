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
         if(_loc11_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(false);
         if(!_loc4_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            if(§7!O§.mTryToBlink <= 0)
            {
               if(§7!O§.mIsBlinking)
               {
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        §7!O§.mTryToBlink = 0;
                        while(true)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              §7!O§.mIsBlinking = false;
                              continue;
                           }
                           while(true)
                           {
                              while(true)
                              {
                                 §7!O§.mTryToBlink -= param1;
                                 loop8:
                                 while(true)
                                 {
                                    if(§7!O§.mTryToBlink <= 0)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(true);
                                          addr141:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   _loc2_ = §§pop();
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ || this))
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§goto(addr29);
                                                         }
                                                         addr113:
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                   addr150:
                                                }
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   §§goto(addr214);
                                                }
                                             }
                                             continue loop10;
                                          }
                                       }
                                    }
                                    §§goto(addr113);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr150);
                     if(!(_loc3_ || param1))
                     {
                        continue;
                     }
                     §§push(true);
                     if(_loc3_ || _loc2_)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr60);
                           §§push(Boolean(§§pop()));
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr60);
                  }
               }
               addr29:
               loop13:
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        break;
                     }
                     continue loop4;
                  }
                  addr60:
                  addr60:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     if(!(_loc3_ || _loc3_))
                     {
                        break;
                     }
                     if(_loc4_ && this)
                     {
                        continue loop10;
                     }
                     if(!(_loc4_ && this))
                     {
                        continue loop13;
                     }
                     addr195:
                     while(true)
                     {
                        if(§7!O§.mTryToBlink < LevelObjectRenderer.§[W§)
                        {
                           continue loop7;
                        }
                        if(_loc3_ || this)
                        {
                           §§push(true);
                           if(!_loc4_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                        while(true)
                        {
                           §7!O§.mTryToBlink = LevelObjectRenderer.§[W§ - 1;
                           continue loop11;
                        }
                     }
                  }
                  continue loop1;
               }
               return §§pop();
            }
            §§goto(addr195);
         }
         §§goto(addr214);
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
         if(_loc3_)
         {
            if(§7!O§.mTryToScream > 0)
            {
               if(_loc3_)
               {
                  if(§7!O§.mTryToScream >= LevelObjectRenderer.§9!g§)
                  {
                     while(true)
                     {
                        §§push(true);
                        loop13:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop12:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              addr191:
                              while(true)
                              {
                                 this.playScreamingSoundEffect();
                                 loop1:
                                 while(true)
                                 {
                                    §7!O§.mTryToScream = LevelObjectRenderer.§9!g§ - 1;
                                    while(true)
                                    {
                                       addr122:
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§push(true);
                                          if(!_loc4_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                _loc2_ = §§pop();
                                                while(!_loc4_)
                                                {
                                                   while(true)
                                                   {
                                                      §§goto(addr24);
                                                   }
                                                }
                                                continue loop1;
                                             }
                                             continue loop13;
                                          }
                                          continue loop13;
                                       }
                                    }
                                 }
                                 continue loop12;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §7!O§.mTryToScream -= param1;
                     §§goto(addr148);
                  }
               }
               §§goto(addr191);
            }
            else if(§7!O§.mIsScreaming)
            {
               if(_loc3_)
               {
                  if(!_loc4_)
                  {
                     addr100:
                     §7!O§.mTryToScream = 0;
                     §§goto(addr104);
                  }
                  §§goto(addr191);
               }
               §§goto(addr104);
            }
            addr24:
            loop16:
            while(true)
            {
               §§push(_loc2_);
               if(_loc3_ || this)
               {
                  addr33:
                  if(_loc3_ || this)
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop5;
                  }
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     §§goto(addr33);
                  }
                  addr47:
               }
               while(true)
               {
                  if(_loc3_ || param1)
                  {
                     _loc2_ = §§pop();
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop16;
                  }
                  continue loop12;
               }
               addr64:
               addr104:
               while(_loc3_ || _loc3_)
               {
                  if(!(_loc3_ || _loc2_))
                  {
                     continue loop14;
                  }
                  §§goto(addr47);
                  §§push(true);
               }
               while(true)
               {
                  if(!_loc3_)
                  {
                     continue loop6;
                  }
                  addr106:
                  if(_loc3_ || _loc3_)
                  {
                     §7!O§.mIsScreaming = false;
                     continue;
                  }
                  addr148:
                  while(_loc3_)
                  {
                     §§goto(addr122);
                     §§goto(addr106);
                  }
                  while(true)
                  {
                     if(§7!O§.mTryToScream > 0)
                     {
                        continue loop7;
                     }
                     §§goto(addr120);
                  }
                  addr120:
               }
            }
            return §§pop();
         }
         §§goto(addr100);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@r§(LevelItemSoundResource.§6!=§);
         }
      }
   }
}
