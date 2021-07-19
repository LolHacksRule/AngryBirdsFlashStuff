package §&!8§
{
   import § o§.b2World;
   import §!r§.§"B§;
   import §,§.§ p§;
   import §^a§.Sprite;
   
   public class §-!K§ extends §[g§
   {
       
      
      public function §-!K§(param1:§+!6§, param2:Sprite, param3:b2World, param4:§ p§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
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
            if(§5d§.mTryToBlink <= 0)
            {
               if(§5d§.mIsBlinking)
               {
                  if(!_loc3_)
                  {
                     if(_loc4_)
                     {
                        §5d§.mTryToBlink = 0;
                        while(true)
                        {
                           if(_loc4_ || _loc3_)
                           {
                              §5d§.mIsBlinking = false;
                              while(_loc4_)
                              {
                                 addr62:
                                 if(!_loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(true);
                                       loop7:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          if(_loc4_)
                                          {
                                             if(_loc4_ || param1)
                                             {
                                                continue;
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                addr108:
                                                loop9:
                                                while(true)
                                                {
                                                   §5d§.mTryToBlink -= param1;
                                                   addr115:
                                                   while(true)
                                                   {
                                                      if(§5d§.mTryToBlink <= 0)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(true);
                                                            addr104:
                                                            addr145:
                                                            while(_loc4_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               addr146:
                                                               while(true)
                                                               {
                                                                  §5d§.mTryToBlink = §%$§.§7I§ - 1;
                                                                  continue loop8;
                                                               }
                                                            }
                                                            §§goto(addr62);
                                                         }
                                                         addr103:
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop7;
                                                         §§goto(addr107);
                                                      }
                                                      continue loop9;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr107);
                                       }
                                       continue;
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr103);
                              }
                              continue;
                           }
                           addr127:
                           while(true)
                           {
                              if(§5d§.mTryToBlink >= §%$§.§7I§)
                              {
                                 if(_loc4_)
                                 {
                                    §§goto(addr145);
                                    §§push(true);
                                 }
                                 §§goto(addr146);
                              }
                           }
                           §§goto(addr108);
                        }
                        addr90:
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr90);
               }
               §§goto(addr22);
            }
            §§goto(addr127);
         }
         §§goto(addr146);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = false;
         if(!_loc4_)
         {
            if(§5d§.mTryToScream <= 0)
            {
               if(§5d§.mIsScreaming)
               {
                  loop0:
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              §5d§.mTryToScream = 0;
                              loop17:
                              while(true)
                              {
                                 §5d§.mIsScreaming = false;
                                 addr49:
                                 while(_loc4_)
                                 {
                                    continue loop17;
                                 }
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§push(true);
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       if(!_loc4_)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr49);
                                    }
                                    addr34:
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    §5d§.mTryToScream = §%$§.§&!D§ - 1;
                                    loop7:
                                    for(; _loc3_ || this; loop8:
                                    while(true)
                                    {
                                       if(_loc4_ && this)
                                       {
                                          continue loop7;
                                       }
                                       addr114:
                                       if(§5d§.mTryToScream <= 0)
                                       {
                                          while(true)
                                          {
                                             §§push(true);
                                             break loop8;
                                             §§goto(addr114);
                                          }
                                          addr88:
                                       }
                                       while(true)
                                       {
                                          addr21:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc3_)
                                             {
                                                if(_loc4_)
                                                {
                                                   break loop8;
                                                }
                                                if(!_loc4_)
                                                {
                                                   break;
                                                }
                                                addr155:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   addr156:
                                                   while(true)
                                                   {
                                                      this.playScreamingSoundEffect();
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr34);
                                             }
                                             addr44:
                                          }
                                          return §§pop();
                                          §§goto(addr114);
                                       }
                                    },while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr90:
                                       while(true)
                                       {
                                          if(_loc3_ || param1)
                                          {
                                             if(_loc3_)
                                             {
                                                §§goto(addr59);
                                             }
                                             §§goto(addr156);
                                          }
                                          else
                                          {
                                             §§goto(addr107);
                                          }
                                       }
                                    },addr107:)
                                    {
                                       if(_loc4_)
                                       {
                                          while(true)
                                          {
                                             if(§5d§.mTryToScream >= §%$§.§&!D§)
                                             {
                                                break loop7;
                                             }
                                          }
                                          addr149:
                                       }
                                       while(true)
                                       {
                                          §5d§.mTryToScream -= param1;
                                          continue loop7;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr155);
                                    }
                                 }
                              }
                           }
                           addr79:
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr90);
                  }
               }
               §§goto(addr21);
            }
            §§goto(addr149);
         }
         §§goto(addr79);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §0!5§(§"B§.§5!O§);
         }
      }
   }
}
