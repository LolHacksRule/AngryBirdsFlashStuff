package §6!!§
{
   import §#!,§.Sprite;
   import §>!L§.b2World;
   import §]!@§.LevelMain;
   import §package§.LevelItemSoundResource;
   
   public class §;!4§ extends LevelObject
   {
       
      
      public function §;!4§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!(_loc11_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(false);
         if(!(_loc3_ && param1))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(§`!P§.mTryToBlink <= 0)
            {
               if(§`!P§.mIsBlinking)
               {
                  if(!(_loc3_ && param1))
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr120:
                        §`!P§.mTryToBlink = 0;
                        while(true)
                        {
                           if(_loc4_ || this)
                           {
                              if(_loc4_ || param1)
                              {
                                 §`!P§.mIsBlinking = false;
                                 continue;
                              }
                              while(§`!P§.mTryToBlink > 0)
                              {
                                 while(true)
                                 {
                                    §§goto(addr30);
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(true);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              addr154:
                              while(true)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§goto(addr161);
                                 }
                                 §§goto(addr214);
                              }
                           }
                        }
                        addr124:
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr124);
               }
               addr30:
               loop13:
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc3_ && param1))
                  {
                     break;
                  }
                  addr56:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     if(!(_loc4_ || param1))
                     {
                        break;
                     }
                     if(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           continue loop13;
                        }
                        addr205:
                        while(true)
                        {
                           if(§`!P§.mTryToBlink >= LevelObjectRenderer.§;B§)
                           {
                              while(true)
                              {
                                 §§push(true);
                                 addr213:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    addr214:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr215:
                                       loop11:
                                       while(true)
                                       {
                                          §`!P§.mTryToBlink = LevelObjectRenderer.§;B§ - 1;
                                          addr199:
                                          addr161:
                                          addr162:
                                          while(true)
                                          {
                                             continue loop11;
                                          }
                                          _loc2_ = §§pop();
                                          while(true)
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                continue loop1;
                                             }
                                             §§goto(addr199);
                                             §§goto(addr161);
                                          }
                                       }
                                    }
                                 }
                              }
                              addr212:
                           }
                           while(true)
                           {
                              §`!P§.mTryToBlink -= param1;
                              continue loop4;
                              §§goto(addr199);
                           }
                        }
                     }
                     §§goto(addr212);
                     continue loop13;
                  }
                  continue loop5;
               }
               return §§pop();
            }
            §§goto(addr205);
         }
         §§goto(addr120);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(false);
         if(_loc3_ || this)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            if(§`!P§.mTryToScream <= 0)
            {
               if(§`!P§.mIsScreaming)
               {
                  if(!(_loc4_ && this))
                  {
                     if(!_loc4_)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           §`!P§.mTryToScream = 0;
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    §`!P§.mIsScreaming = false;
                                    continue;
                                 }
                                 while(true)
                                 {
                                    if(§`!P§.mTryToScream <= 0)
                                    {
                                       if(!(_loc4_ && param1))
                                       {
                                          if(!(_loc4_ && param1))
                                          {
                                             §§push(true);
                                             loop2:
                                             while(_loc3_ || _loc2_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   addr153:
                                                   while(true)
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         while(true)
                                                         {
                                                            §§goto(addr34);
                                                         }
                                                         addr81:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(true);
                                                            break loop2;
                                                         }
                                                         addr208:
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                addr210:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                }
                                             }
                                             addr144:
                                          }
                                          while(true)
                                          {
                                             this.playScreamingSoundEffect();
                                             addr195:
                                             while(true)
                                             {
                                                §`!P§.mTryToScream = LevelObjectRenderer.§9I§ - 1;
                                                §§goto(addr190);
                                             }
                                          }
                                       }
                                       §§goto(addr153);
                                    }
                                    §§goto(addr81);
                                 }
                              }
                              §§goto(addr153);
                           }
                           addr118:
                        }
                        else
                        {
                           addr201:
                           if(§`!P§.mTryToScream >= LevelObjectRenderer.§9I§)
                           {
                              §§goto(addr208);
                           }
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr118);
               }
               addr34:
               loop13:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc3_)
                  {
                     break;
                  }
                  addr55:
                  while(true)
                  {
                     if(_loc4_)
                     {
                        continue loop3;
                     }
                     _loc2_ = §§pop();
                     if(!_loc3_)
                     {
                        break;
                     }
                     if(!(_loc4_ && this))
                     {
                        continue loop13;
                     }
                     addr190:
                     while(true)
                     {
                        addr161:
                        while(true)
                        {
                           §`!P§.mTryToScream -= param1;
                           continue loop1;
                        }
                     }
                  }
                  continue loop8;
               }
               return §§pop();
            }
         }
         §§goto(addr201);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §!d§(LevelItemSoundResource.§5W§);
         }
      }
   }
}
