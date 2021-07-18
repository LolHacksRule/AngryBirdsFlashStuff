package §+!8§
{
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §3!R§.b2World;
   import §@0§.§!k§;
   
   public class § !5§ extends §,_§
   {
       
      
      public function § !5§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
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
         if(_loc4_)
         {
            if(§[r§.mTryToBlink > 0)
            {
               if(!(_loc3_ && _loc3_))
               {
                  if(§[r§.mTryToBlink >= §&!_§.§`I§)
                  {
                     if(_loc4_)
                     {
                        §§push(true);
                        while(true)
                        {
                           _loc2_ = §§pop();
                           addr151:
                           while(true)
                           {
                              §[r§.mTryToBlink = §&!_§.§`I§ - 1;
                              addr120:
                              while(true)
                              {
                              }
                           }
                        }
                        addr150:
                     }
                     §§goto(addr151);
                  }
                  while(true)
                  {
                     §[r§.mTryToBlink -= param1;
                     loop1:
                     while(true)
                     {
                        if(§[r§.mTryToBlink <= 0)
                        {
                           if(_loc4_)
                           {
                              §§push(true);
                              while(true)
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    _loc2_ = §§pop();
                                 }
                                 else
                                 {
                                    §§goto(addr150);
                                 }
                              }
                              §§goto(addr151);
                              addr95:
                           }
                           while(true)
                           {
                              if(_loc3_)
                              {
                              }
                              §§goto(addr151);
                              addr43:
                              if(!(_loc4_ || _loc2_))
                              {
                                 continue;
                              }
                              if(!_loc3_)
                              {
                                 addr52:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc4_ || param1))
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          if(!_loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                §§goto(addr43);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(_loc3_ && param1)
                                                   {
                                                      break loop10;
                                                   }
                                                   while(true)
                                                   {
                                                      §[r§.mTryToBlink = 0;
                                                      addr86:
                                                      while(true)
                                                      {
                                                         §[r§.mIsBlinking = false;
                                                      }
                                                   }
                                                }
                                                addr66:
                                             }
                                          }
                                          while(!_loc4_)
                                          {
                                             §§goto(addr86);
                                          }
                                       }
                                       continue loop1;
                                    }
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    §§goto(addr95);
                                    §§goto(addr52);
                                 }
                                 return §§pop();
                                 addr22:
                              }
                              §§goto(addr120);
                           }
                        }
                        while(true)
                        {
                           §§goto(addr22);
                        }
                     }
                  }
               }
               §§goto(addr151);
            }
            else if(§[r§.mIsBlinking)
            {
               §§goto(addr66);
            }
            §§goto(addr22);
         }
         §§goto(addr83);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(_loc4_)
         {
            if(§[r§.mTryToScream <= 0)
            {
               if(§[r§.mIsScreaming)
               {
                  if(_loc4_)
                  {
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && param1))
                        {
                           §[r§.mTryToScream = 0;
                           loop7:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    §[r§.mIsScreaming = false;
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(true);
                                          loop9:
                                          while(true)
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                _loc2_ = §§pop();
                                                if(!_loc4_)
                                                {
                                                   break;
                                                }
                                                if(!_loc4_)
                                                {
                                                   continue loop7;
                                                }
                                                addr43:
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop9;
                                                   }
                                                   return §§pop();
                                                   addr22:
                                                }
                                                else
                                                {
                                                   loop2:
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         §§push(true);
                                                         while(_loc4_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            loop4:
                                                            while(true)
                                                            {
                                                               addr58:
                                                               while(true)
                                                               {
                                                                  §§goto(addr22);
                                                                  continue loop4;
                                                               }
                                                            }
                                                            continue loop9;
                                                         }
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            addr157:
                                                            while(true)
                                                            {
                                                               this.playScreamingSoundEffect();
                                                               addr135:
                                                               while(true)
                                                               {
                                                                  §[r§.mTryToScream = §&!_§.§6!c§ - 1;
                                                                  break loop2;
                                                               }
                                                            }
                                                         }
                                                         addr106:
                                                         addr156:
                                                      }
                                                      break;
                                                      §§goto(addr43);
                                                   }
                                                   while(_loc3_ && this)
                                                   {
                                                      §§goto(addr157);
                                                      §§goto(addr135);
                                                   }
                                                   addr131:
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §[r§.mTryToScream -= param1;
                                                      addr117:
                                                      while(true)
                                                      {
                                                         if(§[r§.mTryToScream <= 0)
                                                         {
                                                            §§goto(addr98);
                                                         }
                                                         §§goto(addr58);
                                                         continue loop0;
                                                      }
                                                   }
                                                   addr98:
                                                   addr110:
                                                }
                                                §§goto(addr22);
                                             }
                                             §§goto(addr106);
                                          }
                                          continue;
                                       }
                                       §§goto(addr135);
                                    }
                                 }
                                 else
                                 {
                                    addr155:
                                    while(true)
                                    {
                                    }
                                    addr155:
                                 }
                                 §§goto(addr156);
                              }
                              §§goto(addr109);
                           }
                           addr88:
                        }
                        else
                        {
                           addr150:
                           if(§[r§.mTryToScream >= §&!_§.§6!c§)
                           {
                              §§goto(addr155);
                           }
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr88);
               }
               §§goto(addr22);
            }
            §§goto(addr150);
         }
         §§goto(addr155);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §^!H§(§!k§.§!X§);
         }
      }
   }
}
