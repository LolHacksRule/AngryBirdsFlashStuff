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
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(_loc11_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(§+!j§.mTryToBlink <= 0)
            {
               if(§+!j§.mIsBlinking)
               {
                  loop0:
                  while(true)
                  {
                     §+!j§.mTryToBlink = 0;
                     addr91:
                     while(true)
                     {
                        §+!j§.mIsBlinking = false;
                        continue loop0;
                     }
                  }
               }
               §§goto(addr27);
            }
            §§goto(addr149);
         }
         §§goto(addr81);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(!(_loc3_ && param1))
         {
            if(§+!j§.mTryToScream <= 0)
            {
               if(§+!j§.mIsScreaming)
               {
                  while(true)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §+!j§.mTryToScream = 0;
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    §+!j§.mIsScreaming = false;
                                    continue;
                                 }
                                 addr192:
                                 while(true)
                                 {
                                    this.playScreamingSoundEffect();
                                    addr173:
                                    while(true)
                                    {
                                       §+!j§.mTryToScream = §7!r§.§<!c§ - 1;
                                       addr169:
                                       while(true)
                                       {
                                          addr145:
                                          while(true)
                                          {
                                             §+!j§.mTryToScream -= param1;
                                          }
                                       }
                                    }
                                 }
                                 addr192:
                              }
                              loop10:
                              while(true)
                              {
                                 if(§+!j§.mTryToScream <= 0)
                                 {
                                    while(true)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(true);
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             addr137:
                                             while(true)
                                             {
                                                if(!(_loc3_ && param1))
                                                {
                                                   while(true)
                                                   {
                                                      §§goto(addr27);
                                                   }
                                                   addr90:
                                                }
                                                §§goto(addr173);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(§+!j§.mTryToScream >= §7!r§.§<!c§)
                                             {
                                                if(!(_loc3_ && param1))
                                                {
                                                   §§goto(addr190);
                                                }
                                                §§goto(addr192);
                                             }
                                          }
                                          addr178:
                                       }
                                       §§goto(addr145);
                                       continue loop10;
                                    }
                                    addr128:
                                 }
                                 §§goto(addr90);
                              }
                           }
                           §§goto(addr137);
                        }
                     }
                     §§goto(addr169);
                     if(!(_loc4_ || param1))
                     {
                        continue;
                     }
                     if(_loc4_ || _loc3_)
                     {
                        §§goto(addr38);
                        §§push(true);
                     }
                     §§goto(addr128);
                  }
               }
               addr27:
               loop14:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop6;
                  }
                  addr38:
                  while(true)
                  {
                     if(!(_loc3_ && param1))
                     {
                        addr45:
                        _loc2_ = §§pop();
                        if(!(_loc4_ || this))
                        {
                           break;
                        }
                        continue loop14;
                     }
                     loop4:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        §§goto(addr192);
                        addr190:
                        while(true)
                        {
                           continue loop4;
                        }
                     }
                  }
                  continue loop1;
               }
               return §§pop();
            }
            §§goto(addr178);
         }
         §§goto(addr190);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §'!S§(§6!D§.§5K§);
         }
      }
   }
}
