package §9_§
{
   import §4N§.§7E§;
   import §[x§.§2^§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §<F§ extends §+>§
   {
       
      
      public function §<F§(param1:§?!!§, param2:Sprite, param3:b2World, param4:§2^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = false;
         if(§<p§.mTryToBlink <= 0)
         {
            if(§<p§.mIsBlinking)
            {
               while(true)
               {
                  §<p§.mTryToBlink = 0;
                  while(true)
                  {
                     §<p§.mIsBlinking = false;
                     if(!(_loc3_ || this))
                     {
                        break;
                     }
                     §§push(true);
                     loop2:
                     while(true)
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           _loc2_ = §§pop();
                           if(_loc3_ || _loc2_)
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!_loc3_)
                                 {
                                    continue loop2;
                                 }
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 addr129:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc4_ && _loc3_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       continue loop8;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§<p§.mTryToBlink >= §`-§.§&H§)
                                    {
                                       addr134:
                                       §§push(true);
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          §<p§.mTryToBlink = §`-§.§&H§ - 1;
                                          §§goto(addr134);
                                       }
                                       addr135:
                                    }
                                    while(true)
                                    {
                                       §<p§.mTryToBlink -= param1;
                                       while(§<p§.mTryToBlink <= 0)
                                       {
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          §§goto(addr91);
                                          §§push(true);
                                       }
                                       §§goto(addr68);
                                    }
                                 }
                                 addr91:
                              }
                              return §§pop();
                              addr19:
                           }
                           break;
                        }
                        §§goto(addr135);
                     }
                  }
               }
            }
            §§goto(addr19);
         }
         §§goto(addr129);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(_loc4_)
         {
            if(§<p§.mTryToScream > 0)
            {
               addr137:
               if(§<p§.mTryToScream >= §`-§.§`w§)
               {
                  while(true)
                  {
                     §§push(true);
                     addr143:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        this.playScreamingSoundEffect();
                        §<p§.mTryToScream = §`-§.§`w§ - 1;
                        addr128:
                        while(true)
                        {
                        }
                        addr33:
                        if(!(_loc3_ && this))
                        {
                           §§goto(addr40);
                        }
                     }
                  }
                  addr142:
               }
               while(true)
               {
                  §<p§.mTryToScream -= param1;
                  addr121:
                  while(true)
                  {
                     if(§<p§.mTryToScream <= 0)
                     {
                        if(_loc4_)
                        {
                           §§push(true);
                           while(true)
                           {
                              _loc2_ = §§pop();
                              addr26:
                              if(_loc3_ && this)
                              {
                                 continue;
                              }
                              §§goto(addr33);
                           }
                        }
                        while(true)
                        {
                        }
                        addr113:
                     }
                     while(true)
                     {
                     }
                  }
               }
            }
            else if(§<p§.mIsScreaming)
            {
               loop0:
               while(true)
               {
                  §<p§.mTryToScream = 0;
                  if(!_loc3_)
                  {
                     §<p§.mIsScreaming = false;
                     while(true)
                     {
                        §§push(true);
                        loop2:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           if(!(_loc4_ || this))
                           {
                              break;
                           }
                           if(!_loc4_)
                           {
                              continue loop0;
                           }
                           if(_loc4_)
                           {
                              if(_loc4_ || param1)
                              {
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc4_)
                                       {
                                          continue loop2;
                                       }
                                       §§goto(addr26);
                                    }
                                    addr40:
                                    return §§pop();
                                    addr22:
                                 }
                                 else
                                 {
                                    §§goto(addr142);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr121);
                        }
                     }
                  }
                  §§goto(addr113);
               }
            }
            §§goto(addr22);
         }
         §§goto(addr137);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §;v§(§7E§.§[s§);
         }
      }
   }
}
