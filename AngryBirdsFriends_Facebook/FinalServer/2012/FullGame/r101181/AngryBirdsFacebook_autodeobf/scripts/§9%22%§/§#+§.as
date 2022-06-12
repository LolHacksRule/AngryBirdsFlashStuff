package §9"%§
{
   import §%Q§.§;!y§;
   import §1!$§.Sprite;
   import §48§.b2World;
   import §9"!§.§9"3§;
   
   public class §#+§ extends §&!r§
   {
       
      
      public function §#+§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(!(_loc3_ && param1))
         {
            if(§"!&§.mTryToBlink <= 0)
            {
               if(§"!&§.mIsBlinking)
               {
                  loop0:
                  while(true)
                  {
                     §"!&§.mTryToBlink = 0;
                     loop1:
                     while(true)
                     {
                        §"!&§.mIsBlinking = false;
                        loop2:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              if(_loc4_)
                              {
                                 while(true)
                                 {
                                    §§push(true);
                                    loop11:
                                    while(!_loc3_)
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          continue loop1;
                                       }
                                       if(!_loc4_)
                                       {
                                          continue loop0;
                                       }
                                       addr62:
                                       if(_loc4_ || param1)
                                       {
                                          if(_loc4_)
                                          {
                                             if(_loc4_ || _loc2_)
                                             {
                                                addr88:
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc4_ || _loc3_))
                                                   {
                                                      continue loop11;
                                                   }
                                                   addr36:
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   loop7:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      addr117:
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ || _loc3_))
                                                         {
                                                            loop5:
                                                            while(true)
                                                            {
                                                               if(§"!&§.mTryToBlink <= 0)
                                                               {
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(true);
                                                                        continue loop7;
                                                                     }
                                                                     addr154:
                                                                     while(true)
                                                                     {
                                                                        if(§"!&§.mTryToBlink >= §#!D§.§ !'§)
                                                                        {
                                                                           break loop6;
                                                                        }
                                                                        addr135:
                                                                        while(true)
                                                                        {
                                                                           §"!&§.mTryToBlink -= param1;
                                                                           continue loop5;
                                                                        }
                                                                     }
                                                                     §§goto(addr62);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(true);
                                                                     break loop11;
                                                                  }
                                                                  addr159:
                                                                  addr113:
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop10;
                                                         }
                                                      }
                                                   }
                                                }
                                                return §§pop();
                                                addr27:
                                             }
                                             §§goto(addr159);
                                          }
                                          loop13:
                                          while(true)
                                          {
                                             §"!&§.mTryToBlink = §#!D§.§ !'§ - 1;
                                             addr149:
                                             while(true)
                                             {
                                                §§goto(addr135);
                                                continue loop13;
                                             }
                                          }
                                          addr161:
                                       }
                                       §§goto(addr113);
                                    }
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       §§goto(addr161);
                                    }
                                 }
                                 addr97:
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr117);
                        }
                     }
                  }
               }
               §§goto(addr27);
            }
            §§goto(addr154);
         }
         §§goto(addr97);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(!(_loc3_ && param1))
         {
            if(§"!&§.mTryToScream <= 0)
            {
               if(§"!&§.mIsScreaming)
               {
                  if(_loc4_ || param1)
                  {
                     if(_loc4_)
                     {
                        addr105:
                        §"!&§.mTryToScream = 0;
                        while(true)
                        {
                           §"!&§.mIsScreaming = false;
                           while(true)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(true);
                                 continue;
                              }
                              loop4:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          while(true)
                                          {
                                             §§goto(addr27);
                                          }
                                          addr90:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(true);
                                          }
                                          addr185:
                                       }
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr187:
                                          while(true)
                                          {
                                             this.playScreamingSoundEffect();
                                             break loop4;
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    if(§"!&§.mTryToScream <= 0)
                                    {
                                       while(true)
                                       {
                                          addr53:
                                          §§push(true);
                                          if(!(_loc4_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          if(!(_loc3_ && this))
                                          {
                                             §§goto(addr27);
                                          }
                                          while(true)
                                          {
                                             addr140:
                                             while(true)
                                             {
                                                §"!&§.mTryToScream -= param1;
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr90);
                                    }
                                    §§goto(addr115);
                                 }
                              }
                              while(_loc4_ || this)
                              {
                                 §"!&§.mTryToScream = §#!D§.§%"$§ - 1;
                                 §§goto(addr164);
                              }
                              §§goto(addr187);
                           }
                        }
                        addr108:
                     }
                     else
                     {
                        addr180:
                        if(§"!&§.mTryToScream >= §#!D§.§%"$§)
                        {
                           §§goto(addr185);
                        }
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr108);
               }
               addr27:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc3_)
                  {
                     continue loop7;
                  }
                  if(!(_loc3_ && _loc3_))
                  {
                     break;
                  }
                  addr115:
                  while(_loc4_ || _loc3_)
                  {
                     _loc2_ = §§pop();
                     continue loop4;
                  }
               }
               return §§pop();
            }
            §§goto(addr180);
         }
         §§goto(addr105);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&x§(§;!y§.§4>§);
         }
      }
   }
}
