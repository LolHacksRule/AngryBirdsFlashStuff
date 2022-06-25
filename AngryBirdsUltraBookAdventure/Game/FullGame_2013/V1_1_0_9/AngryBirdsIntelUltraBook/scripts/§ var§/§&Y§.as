package § var§
{
   import §#I§.b2World;
   import §0S§.§6!D§;
   import §40§.§5G§;
   import §`g§.Sprite;
   
   public class §&Y§ extends §!u§
   {
       
      
      public function §&Y§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!(_loc11_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = false;
         if(!(_loc4_ && param1))
         {
            if(§+!j§.mTryToBlink > 0)
            {
               if(_loc3_ || this)
               {
                  if(§+!j§.mTryToBlink >= §7!r§.§=2§)
                  {
                     while(true)
                     {
                        §§push(true);
                        addr154:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           addr155:
                           loop9:
                           while(true)
                           {
                              §+!j§.mTryToBlink = §7!r§.§=2§ - 1;
                              addr134:
                              while(!_loc3_)
                              {
                                 continue loop9;
                              }
                           }
                        }
                     }
                     addr153:
                  }
                  while(true)
                  {
                     §+!j§.mTryToBlink -= param1;
                     loop4:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           loop14:
                           while(true)
                           {
                              if(§+!j§.mTryToBlink <= 0)
                              {
                                 while(true)
                                 {
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       continue loop4;
                                    }
                                    §§push(true);
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr107:
                                       while(true)
                                       {
                                       }
                                    }
                                    continue loop14;
                                 }
                                 addr98:
                              }
                              while(true)
                              {
                                 §§goto(addr26);
                              }
                           }
                           addr127:
                        }
                        §§goto(addr134);
                     }
                  }
               }
               §§goto(addr155);
            }
            else if(§+!j§.mIsBlinking)
            {
               if(!_loc4_)
               {
                  if(_loc3_)
                  {
                     §+!j§.mTryToBlink = 0;
                     §§goto(addr92);
                  }
                  §§goto(addr98);
               }
               §§goto(addr92);
            }
            addr26:
            loop13:
            while(true)
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr106);
               }
               else
               {
                  addr92:
                  while(true)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        _loc2_ = §§pop();
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           if(!(_loc4_ && param1))
                           {
                              continue loop13;
                           }
                           §§goto(addr153);
                        }
                        else
                        {
                           §§goto(addr107);
                        }
                     }
                     §§goto(addr154);
                  }
                  while(!(_loc4_ && param1))
                  {
                     §§goto(addr37);
                     §§push(true);
                  }
                  addr37:
                  while(true)
                  {
                     §+!j§.mIsBlinking = false;
                     §§goto(addr61);
                  }
                  addr61:
                  addr92:
               }
               §§goto(addr107);
            }
            return §§pop();
         }
         §§goto(addr127);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(_loc4_ || _loc2_)
         {
            if(§+!j§.mTryToScream <= 0)
            {
               if(§+!j§.mIsScreaming)
               {
                  if(!(_loc3_ && this))
                  {
                     if(_loc4_)
                     {
                        §+!j§.mTryToScream = 0;
                     }
                     loop15:
                     while(true)
                     {
                        if(§+!j§.mTryToScream <= 0)
                        {
                           loop9:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 §§push(true);
                                 loop10:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       addr95:
                                       while(true)
                                       {
                                          addr27:
                                          loop12:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                if(!_loc3_)
                                                {
                                                   break;
                                                }
                                                continue loop10;
                                             }
                                             addr113:
                                             while(true)
                                             {
                                                if(_loc4_ || _loc2_)
                                                {
                                                   addr50:
                                                   _loc2_ = §§pop();
                                                   if(!(_loc4_ || _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   loop3:
                                                   while(true)
                                                   {
                                                      this.playScreamingSoundEffect();
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §+!j§.mTryToScream = §7!r§.§<!c§ - 1;
                                                         addr162:
                                                         while(true)
                                                         {
                                                            if(_loc3_ && param1)
                                                            {
                                                               continue loop4;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§+!j§.mTryToScream >= §7!r§.§<!c§)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(true);
                                                                        continue loop3;
                                                                     }
                                                                     addr185:
                                                                  }
                                                               }
                                                               addr180:
                                                            }
                                                            while(true)
                                                            {
                                                               §+!j§.mTryToScream -= param1;
                                                               continue loop15;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr187:
                                                }
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   §§goto(addr187);
                                                }
                                                continue loop12;
                                             }
                                             while(!(_loc3_ && param1))
                                             {
                                                if(_loc3_ && param1)
                                                {
                                                   continue loop7;
                                                }
                                                §§goto(addr43);
                                                §§push(true);
                                                §§goto(addr50);
                                             }
                                             addr43:
                                             while(true)
                                             {
                                                if(_loc3_ && this)
                                                {
                                                   continue loop9;
                                                }
                                                if(_loc4_ || this)
                                                {
                                                   §+!j§.mIsScreaming = false;
                                                   continue;
                                                }
                                                §§goto(addr162);
                                             }
                                             addr70:
                                          }
                                          return §§pop();
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr185);
                           }
                        }
                        §§goto(addr95);
                     }
                     addr145:
                  }
                  §§goto(addr113);
               }
               §§goto(addr27);
            }
            §§goto(addr180);
         }
         §§goto(addr145);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §'!S§(§6!D§.§5K§);
         }
      }
   }
}
