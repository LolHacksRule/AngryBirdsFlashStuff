package §&!P§
{
   import §"J§.b2World;
   import §%!0§.§,4§;
   import §+!-§.Sprite;
   import §]";§.§34§;
   
   public class §!>§ extends §``§
   {
       
      
      public function §!>§(param1:§^!!§, param2:Sprite, param3:b2World, param4:§,4§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
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
         var _loc2_:* = false;
         if(!_loc4_)
         {
            if(§8C§.mTryToBlink <= 0)
            {
               if(§8C§.mIsBlinking)
               {
                  if(_loc3_ || this)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        if(_loc3_ || param1)
                        {
                           §8C§.mTryToBlink = 0;
                           while(true)
                           {
                              §8C§.mIsBlinking = false;
                              while(_loc3_)
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§push(true);
                                       loop9:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc3_)
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(_loc4_)
                                                {
                                                   continue loop9;
                                                }
                                                if(_loc3_)
                                                {
                                                   if(!_loc4_)
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
                                                         §8C§.mTryToBlink = §0;§.§]!7§ - 1;
                                                         loop2:
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            while(true)
                                                            {
                                                               §8C§.mTryToBlink -= param1;
                                                               addr117:
                                                               while(_loc3_ || _loc3_)
                                                               {
                                                                  addr124:
                                                                  if(§8C§.mTryToBlink <= 0)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        §§push(true);
                                                                        while(true)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           addr109:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                        §§goto(addr124);
                                                                     }
                                                                     addr105:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               addr153:
                                                               while(true)
                                                               {
                                                                  continue loop11;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr108);
                                             }
                                             return §§pop();
                                             addr21:
                                          }
                                          break;
                                       }
                                       continue;
                                    }
                                    addr148:
                                    while(true)
                                    {
                                       if(§8C§.mTryToBlink >= §0;§.§]!7§)
                                       {
                                          §§goto(addr153);
                                       }
                                    }
                                    §§goto(addr110);
                                 }
                                 §§goto(addr117);
                              }
                           }
                           addr99:
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr99);
               }
               §§goto(addr21);
            }
         }
         §§goto(addr148);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = false;
         if(!(_loc4_ && _loc2_))
         {
            if(§8C§.mTryToScream > 0)
            {
               if(_loc3_)
               {
                  if(§8C§.mTryToScream >= §0;§.§2!_§)
                  {
                     while(true)
                     {
                        §§push(true);
                        loop1:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           while(true)
                           {
                              this.playScreamingSoundEffect();
                              addr135:
                              while(!_loc4_)
                              {
                                 §8C§.mTryToScream = §0;§.§2!_§ - 1;
                                 while(true)
                                 {
                                    addr59:
                                    if(_loc3_ || param1)
                                    {
                                       addr66:
                                       loop11:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          addr35:
                                          addr115:
                                          while(!(_loc4_ && _loc2_))
                                          {
                                             continue loop1;
                                          }
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             addr116:
                                             while(true)
                                             {
                                                addr86:
                                                while(true)
                                                {
                                                   continue loop11;
                                                }
                                             }
                                             §§goto(addr35);
                                          }
                                          addr35:
                                       }
                                       return §§pop();
                                       addr26:
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr159:
                  }
                  while(true)
                  {
                     §8C§.mTryToScream -= param1;
                     §§goto(addr124);
                  }
               }
               §§goto(addr159);
            }
            else if(§8C§.mIsScreaming)
            {
               §§goto(addr92);
            }
            §§goto(addr26);
         }
         §§goto(addr99);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^!x§(§34§.§ use§);
         }
      }
   }
}
