package §-!&§
{
   import § N§.Sprite;
   import §2G§.§0Z§;
   import §9T§.§1r§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §=!A§ extends §3!,§
   {
       
      
      public function §=!A§(param1:§20§, param2:Sprite, param3:b2World, param4:§1r§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
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
         if(_loc4_ || _loc3_)
         {
            if(§3! §.mTryToBlink <= 0)
            {
               if(§3! §.mIsBlinking)
               {
                  if(!_loc3_)
                  {
                     §3! §.mTryToBlink = 0;
                     if(!(_loc3_ && this))
                     {
                        if(_loc4_ || this)
                        {
                           §3! §.mIsBlinking = false;
                           loop0:
                           while(true)
                           {
                              §§push(true);
                              loop1:
                              while(true)
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    continue loop0;
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    addr112:
                                    while(true)
                                    {
                                       if(!(_loc4_ || this))
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             §3! §.mTryToBlink = §?k§.§[R§ - 1;
                                             addr130:
                                             while(true)
                                             {
                                                §3! §.mTryToBlink -= param1;
                                                if(§3! §.mTryToBlink <= 0)
                                                {
                                                   continue loop2;
                                                }
                                             }
                                             addr155:
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                continue loop4;
                                                addr36:
                                                if(!(_loc3_ && this))
                                                {
                                                   addr43:
                                                   return §§pop();
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        else
                        {
                           addr154:
                           §§push(true);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr112);
                  }
                  else
                  {
                     addr149:
                     if(§3! §.mTryToBlink >= §?k§.§[R§)
                     {
                        §§goto(addr154);
                     }
                  }
                  §§goto(addr130);
               }
               §§goto(addr27);
            }
            §§goto(addr149);
         }
         §§goto(addr154);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = false;
         if(§3! §.mTryToScream > 0)
         {
            if(§3! §.mTryToScream >= §?k§.§1J§)
            {
               while(true)
               {
                  §§push(true);
                  addr138:
                  loop6:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     addr139:
                     while(true)
                     {
                        this.playScreamingSoundEffect();
                        §3! §.mTryToScream = §?k§.§1J§ - 1;
                        addr123:
                        while(true)
                        {
                        }
                        continue loop6;
                     }
                  }
               }
               addr137:
            }
            while(true)
            {
               §3! §.mTryToScream -= param1;
               while(true)
               {
                  if(§3! §.mTryToScream <= 0)
                  {
                     §§push(true);
                     while(true)
                     {
                        _loc2_ = §§pop();
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              while(true)
                              {
                                 §§goto(addr19);
                              }
                              addr70:
                           }
                           else
                           {
                              §§goto(addr137);
                           }
                           §§goto(addr138);
                        }
                     }
                  }
                  §§goto(addr70);
               }
            }
         }
         else if(§3! §.mIsScreaming)
         {
            §3! §.mTryToScream = 0;
            §§goto(addr79);
         }
         addr19:
         loop11:
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr138);
            }
            else
            {
               while(true)
               {
                  if(!_loc4_)
                  {
                     addr32:
                     _loc2_ = §§pop();
                     if(!(_loc3_ || _loc3_))
                     {
                        break;
                     }
                     continue loop11;
                  }
                  continue loop2;
               }
               while(true)
               {
                  if(!_loc3_)
                  {
                     continue loop8;
                  }
                  if(_loc3_ || _loc2_)
                  {
                     §3! §.mIsScreaming = false;
                     if(!(_loc3_ || this))
                     {
                        continue loop4;
                     }
                     if(!(_loc4_ && param1))
                     {
                        §§goto(addr30);
                        §§push(true);
                     }
                     else
                     {
                        §§goto(addr139);
                     }
                  }
                  §§goto(addr32);
               }
               addr30:
               addr79:
            }
            §§goto(addr123);
         }
         return §§pop();
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §,A§(§0Z§.§-R§);
         }
      }
   }
}
